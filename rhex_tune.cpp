#include <iostream>
#include <sstream>
#include <string>

#include <limbo/limbo.hpp>

#include <exhaustive_search_archive.hpp>
#include <map_elites/binary_map.hpp>
#include <mean_archive.hpp>

#include <rhex_dart/rhex_dart_simu.hpp>

using namespace limbo;

struct Params {
    struct bayes_opt_boptimizer : public defaults::bayes_opt_boptimizer {
    };

    struct bayes_opt_bobase : public defaults::bayes_opt_bobase {
        BO_PARAM(int, stats_enabled, true);
    };

    // no noise
    struct kernel : public defaults::kernel {
        BO_PARAM(double, noise, 1e-10);
    };

    struct kernel_maternfivehalves : public defaults::kernel_maternfivehalves {
        BO_DYN_PARAM(double, l);
    };

    struct stop_maxiterations {
        BO_DYN_PARAM(int, iterations);
    };

    struct stop_maxpredictedarchivevalue : public defaults::stop_maxpredictedarchivevalue {
    };

    struct acqui_ucb : public defaults::acqui_ucb {
        BO_DYN_PARAM(double, alpha);
    };

    struct archiveparams {

        struct elem_archive {
            std::vector<double> duty_cycle;
            float fit;
            std::vector<double> controller;
        };

        struct classcomp {
            bool operator()(const std::vector<double>& lhs, const std::vector<double>& rhs) const
            {
                assert(lhs.size() == 6 && rhs.size() == 6);
                int i = 0;
                while (i < 5 && lhs[i] == rhs[i])
                    i++;
                return lhs[i] < rhs[i];
            }
        };
        typedef std::map<std::vector<double>, elem_archive, classcomp> archive_t;
        static std::map<std::vector<double>, elem_archive, classcomp> archive;
    };
};


struct HPParams {
    struct bayes_opt_boptimizer : public defaults::bayes_opt_boptimizer {
    };

// depending on which internal optimizer we use, we need to import different parameters
#ifdef USE_NLOPT
    struct opt_nloptnograd : public defaults::opt_nloptnograd {
    };
#elif defined(USE_LIBCMAES)
    struct opt_cmaes : public defaults::opt_cmaes {
    };
#else
    struct opt_gridsearch : public defaults::opt_gridsearch {
    };
#endif

    // enable / disable the writing of the result files
    struct bayes_opt_bobase : public defaults::bayes_opt_bobase {
        BO_PARAM(int, stats_enabled, true);
    };

    // no noise
    struct kernel : public defaults::kernel {
        BO_PARAM(double, noise, 1e-10);
    };

    struct kernel_maternfivehalves : public defaults::kernel_maternfivehalves {
    };

    // we use 10 random samples to initialize the algorithm
    struct init_randomsampling {
        BO_PARAM(int, samples, 10);
    };

    // we stop after 40 iterations
    struct stop_maxiterations {
        BO_PARAM(int, iterations, 10);
    };

    // we use the default parameters for acqui_ucb
    struct acqui_ucb : public defaults::acqui_ucb {
    };
};

Params::archiveparams::archive_t load_archive(std::string archive_name);

namespace global {
    int _world_option;
    int _model_option;
    double _friction;
    std::shared_ptr<rhex_dart::Rhex> global_robot;
    std::vector<int> brokenLegs;
    std::vector<int> damageType;
    std::vector<rhex_dart::RhexDamage> damages;
    int num_trials;
} // namespace global

struct Eval {
    BO_PARAM(size_t, dim_in, 6);
    BO_PARAM(size_t, dim_out, 1);

    // the function to be optimized
    Eigen::VectorXd operator()(const Eigen::VectorXd& x) const
    {
        global::num_trials += 1;
        std::vector<double> key(x.size(), 0);
        Eigen::VectorXd::Map(key.data(), key.size()) = x;

        std::vector<double> ctrl = Params::archiveparams::archive.at(key).controller;
        float fit = Params::archiveparams::archive.at(key).fit;
        rhex_dart::RhexDARTSimu<> simu(ctrl, global::global_robot->clone(), global::_world_option, global::_friction, global::damages);
        simu.run(5);
        return tools::make_vector(simu.covered_distance());
    }
};

// evaluate hyperparameter selection
struct EvalHP {
    BO_PARAM(size_t, dim_in, 2);
    BO_PARAM(size_t, dim_out, 2);

    // the function to be optimized
    Eigen::VectorXd operator()(const Eigen::VectorXd& x) const
    {
        global::num_trials = 0;
        // be able to adjust alpha
        double opt_alpha = x[0];
        double opt_l = x[1];

        Params::acqui_ucb::set_alpha(opt_alpha);
        Params::kernel_maternfivehalves::set_l(opt_l);

        //std::cout << Params::acqui_ucb::alpha() << std::endl;

        typedef kernel::MaternFiveHalves<Params> Kernel_t;
        typedef opt::ExhaustiveSearchArchive<Params> InnerOpt_t;
        typedef boost::fusion::vector<stop::MaxIterations<Params>, stop::MaxPredictedArchiveValue<Params>> Stop_t;
        typedef mean::MeanArchive<Params> Mean_t;
        typedef boost::fusion::vector<stat::Samples<Params>, stat::BestObservations<Params>,
                stat::ConsoleSummary<Params>, stat::AggregatedObservations<Params>, stat::BestAggregatedObservations<Params>,
                stat::Observations<Params>, stat::BestSamples<Params>> Stat_t;
        typedef init::NoInit<Params> Init_t;
        typedef model::GP<Params, Kernel_t, Mean_t> GP_t;
        typedef acqui::UCB<Params, GP_t> Acqui_t;

        bayes_opt::BOptimizer<Params, modelfun<GP_t>, initfun<Init_t>, acquifun<Acqui_t>, acquiopt<InnerOpt_t>, statsfun<Stat_t>, stopcrit<Stop_t>> opt;
        opt.optimize(Eval());
        auto val = opt.best_observation();
        Eigen::VectorXd result = opt.best_sample().transpose();

        double trials = 10.0 - global::num_trials;
        auto vec = Eigen::VectorXd(2);
        vec[0] = val[0];
        vec[1] = trials;

        std::cout<<"this is the value: " << vec.transpose() << std::endl;

        return vec;
    }

};

void lecture(const std::vector<double>& ctrl)
{

    rhex_dart::RhexDARTSimu<> simu(ctrl, global::global_robot->clone(), global::_world_option, global::_friction, global::damages);
    simu.run(5);
    std::cout << "Covered distance: " << simu.covered_distance() << std::endl;
}

void init_simu(std::string robot_file, std::vector<int> broken_legs = std::vector<int>())
{

    for (size_t i = 0; i < broken_legs.size(); ++i) {
        switch(global::damageType[i]) {
            case -1:
                std::cout << "no_damage" << std::endl;
                global::damages.push_back(rhex_dart::RhexDamage("no_damage", std::to_string(broken_legs[i])));
                break;
            case 0:
                std::cout << "leg_removal" << std::endl;
                global::damages.push_back(rhex_dart::RhexDamage("leg_removal", std::to_string(broken_legs[i])));
                break;
            case 1:
                std::cout << "leg_shortening" << std::endl;
                global::damages.push_back(rhex_dart::RhexDamage("leg_shortening", std::to_string(broken_legs[i])));
                break;
            case 2:
                std::cout << "blocked_joint" << std::endl;
                global::damages.push_back(rhex_dart::RhexDamage("blocked_joint", std::to_string(broken_legs[i])));
                break;
            case 3:
                std::cout << "free_joint" << std::endl;
                global::damages.push_back(rhex_dart::RhexDamage("free_joint", std::to_string(broken_legs[i])));
                break;
        }
    }

    if(global::damages.size() == 0){
        global::damages = {};
        global::global_robot = std::make_shared<rhex_dart::Rhex>(robot_file, "Rhex", false, global::damages);
    }
    else {
        global::global_robot = std::make_shared<rhex_dart::Rhex>(robot_file, "Rhex", false, global::damages);
    }
}

std::map<std::vector<double>, Params::archiveparams::elem_archive, Params::archiveparams::classcomp> load_archive(std::string archive_name)
{

    std::map<std::vector<double>, Params::archiveparams::elem_archive, Params::archiveparams::classcomp> archive;

    size_t lastindex = archive_name.find_last_of(".");
    std::string extension = archive_name.substr(lastindex + 1);

    if (extension == "bin") {
        std::cout << "Loading binary file..." << std::endl;
        try {
            binary_map::BinaryMap m = binary_map::load(archive_name);
            std::vector<binary_map::Elem> v = m.elems;
            std::vector<float> dims = m.dims;
            assert(dims.size() == 6);

            for (size_t i = 0; i < v.size(); i++) {
                Params::archiveparams::elem_archive elem;

                std::vector<int> pos = v[i].pos;

                std::vector<double> candidate(6);
                for (size_t j = 0; j < dims.size(); j++) {
                    candidate[j] = pos[j] / double(dims[j]);
                }

                elem.duty_cycle = candidate;
                elem.fit = v[i].fit;

                elem.controller.clear();
                std::copy(v[i].phen.begin(), v[i].phen.end(), std::back_inserter(elem.controller));

                archive[candidate] = elem;
            }
        }
        catch (...) {
            std::cerr << "ERROR: Could not load the archive." << std::endl;
            return archive;
        }
    }
    else {
        std::cout << "Loading text file..." << std::endl;
        std::ifstream monFlux(archive_name.c_str());
        if (monFlux) {
            std::string line;
            while (std::getline(monFlux, line)) {
                std::istringstream iss(line);
                std::vector<double> numbers;
                double num;
                while (iss >> num) {
                    numbers.push_back(num);
                }

                if (numbers.size() < 31)
                    continue;

                int init_i = 0;
                if (numbers.size() > 31)
                    init_i = 1;

                Params::archiveparams::elem_archive elem;
                std::vector<double> candidate(6);

                for (int i = 0; i < 31; i++) {
                    double data = numbers[init_i + i];
                    if (i <= 5) {
                        candidate[i] = data;
                        elem.duty_cycle.push_back(data);
                    }
                    if (i == 6) {
                        elem.fit = data;
                    }
                    if (i >= 7)
                        elem.controller.push_back(data);
                }
                if (elem.controller.size() == 24) {
                    archive[candidate] = elem;
                }
            }
        }
        else {
            std::cerr << "ERROR: Could not load the archive." << std::endl;
            return archive;
        }
    }

    std::cout << archive.size() << " elements loaded" << std::endl;
    return archive;
}

Params::archiveparams::archive_t Params::archiveparams::archive;
BO_DECLARE_DYN_PARAM(int, Params::stop_maxiterations, iterations);
BO_DECLARE_DYN_PARAM(double, Params::acqui_ucb, alpha);
BO_DECLARE_DYN_PARAM(double, Params::kernel_maternfivehalves, l);

// ./build/exp/rhex-ite/rhex_graphic ~/itev2/map_stats/2307/rhex_text_2019-07-19_15_22_31_12850/archive_2850.dat -w 2 -l 1 -d 0
 // ./waf && ./waf --exp rhex-ite && ./build/exp/rhex-ite/rhex_tune_simu ~/itev2/map_stats/dcf0608/rhex_text_2019-08-08_09_37_38_32558/archive_3600.dat -w 0 -l 1 -d 0

int main(int argc, char** argv)
{
    std::vector<std::string> cmd_args;
    for (int i = 0; i < argc; i++)
        cmd_args.push_back(std::string(argv[i]));

    std::vector<std::string>::iterator w_it = std::find(cmd_args.begin(), cmd_args.end(), "-w"); // selected world
    std::vector<std::string>::iterator f_it = std::find(cmd_args.begin(), cmd_args.end(), "-f"); // selected friction coefficient
    std::vector<std::string>::iterator legs_it = std::find(cmd_args.begin(), cmd_args.end(), "-l"); // legs to align with damages
    std::vector<std::string>::iterator ctrl_it = std::find(cmd_args.begin(), cmd_args.end(), "-c"); // explicit control parameters to test
    std::vector<std::string>::iterator n_it = std::find(cmd_args.begin(), cmd_args.end(), "-n"); // no iterations
    std::vector<std::string>::iterator dt_it = std::find(cmd_args.begin(), cmd_args.end(), "-d"); // damage types
    std::vector<std::string>::iterator m_it = std::find(cmd_args.begin(), cmd_args.end(), "-m"); // selected model

    std::vector<int> brokenleg;
    std::vector<int> damagetype;

    if (legs_it != cmd_args.end()) {

        std::vector<std::string>::iterator end_it = dt_it;

        for (std::vector<std::string>::iterator ii = legs_it + 1; ii != end_it; ii++) {
            brokenleg.push_back(atoi((*ii).c_str()));
        }

        end_it = cmd_args.end();

        for (std::vector<std::string>::iterator ii = dt_it + 1; ii != end_it; ii++) {
            damagetype.push_back(atoi((*ii).c_str()));
        }

        if (brokenleg.size() >= 6) {
            std::cerr << "The robot should at least have one leg!" << std::endl;
            if (global::global_robot)
                global::global_robot.reset();
            return -1;
        }
    }

    global::brokenLegs = brokenleg;
    global::damageType = damagetype;

    if (m_it != cmd_args.end())
        global::_model_option = atoi((m_it + 1)->c_str());
    else
        global::_model_option = 0;

    if (w_it != cmd_args.end())
        global::_world_option = atoi((w_it + 1)->c_str());
    else
        global::_world_option = 0;

    if (f_it != cmd_args.end())
        global::_friction = atoi((f_it + 1)->c_str());
    else
        global::_friction = 1.0;


    std::cout<< "world option: " << global::_world_option;
    std::cout << "loading model" << std::endl;

    switch(global::_model_option) {
        case 0:
            std::cout << "normal model" << std::endl;
            init_simu(std::string(std::getenv("RESIBOTS_DIR")) + "/share/rhex_models/SKEL/raised.skel", global::brokenLegs);
            break;
        case 1:
            std::cout << "loose hind leg model" << std::endl;
            init_simu(std::string(std::getenv("RESIBOTS_DIR")) + "/share/rhex_models/SKEL/raised_loosehind.skel", global::brokenLegs);
            break;
    }

    std::cout << "loaded model" << std::endl;

    if (ctrl_it != cmd_args.end()) {
        std::vector<std::string>::iterator end_it = ctrl_it + 25;

        std::vector<double> ctrl;
        for (std::vector<std::string>::iterator ii = ctrl_it + 1; ii != end_it; ii++) {
            ctrl.push_back(atof((*ii).c_str()));
        }
        if (ctrl.size() != 24) {
            std::cerr << "You have to provide 24 controller parameters!" << std::endl;
            if (global::global_robot)
                global::global_robot.reset();
            return -1;
        }

        lecture(ctrl);

        if (global::global_robot)
            global::global_robot.reset();
        return 1;
    }

    // you need a map if you're not just replaying a controller
    if (argc < 2) {
        std::cerr << "Please provide a map" << std::endl;
        if (global::global_robot)
            global::global_robot.reset();
        return -1;
    }

    std::cout << "loading archive" << std::endl;
    Params::archiveparams::archive = load_archive(argv[1]);
    std::cout << "loaded archive" << std::endl;

    if (n_it != cmd_args.end())
        Params::stop_maxiterations::set_iterations(atoi((n_it + 1)->c_str()));
    else
        Params::stop_maxiterations::set_iterations(10);

    // bayes_opt::BOptimizer<Params, modelfun<HPGP_t>, initfun<HPInit_t>, acquifun<HPAcqui_t>, acquiopt<HPInnerOpt_t>, statsfun<HPStat_t>, stopcrit<HPStop_t>> HPopt;
    // bayes_opt::BOptimizer<HPParams, modelfun<HPGP_t>, initfun<HPInit_t>, acquifun<HPAcqui_t>, statsfun<HPStat_t>, stopcrit<HPStop_t>> HPopt;

    global::num_trials = 0;

    bayes_opt::BOptimizer<HPParams> HPopt;
    HPopt.optimize(EvalHP());
    auto HPval = HPopt.best_observation();
    Eigen::VectorXd HPresult = HPopt.best_sample().transpose();

    std::cout << "max covered distance overall: " << HPval << " with result:  " << HPresult.transpose() << std::endl;

    return 0;
}
