# IT&E Rhex Experiments

*Limbo experiment*: IT&E code for developing rhex experiments similar to [Cully et al. (2015), Nature](https://github.com/resibots/cully_2015_nature).

## Authors
- Other contributors: Vassilis Vassiliades, Antoine Cully, Jean-Baptiste Mouret, Konstantinos Chatzilygeroudis
- Original Rhex controllers and models: Roman Buckley
- Rhex ITE implentation : Aran Smith

## How to compile

### Dependencies

#### Setting up the ResiBots environment

We use the environmental `RESIBOTS_DIR` variable for easy configuration and library finding (it basically points to one folder where every local installation happens that is related to the project). Thus, before installing/compiling anything, make sure that you add this line to your `~/.bashrc` or `~/.zshrc` file:

```bash
export RESIBOTS_DIR=/path/to/resibots/installation/folder
```

From now on, we assume that the `RESIBOTS_DIR` variable is set.

#### Installing DART

To simulate our rhex we are using the [DART] simulator. To install use the following procedure:

```bash
sudo apt-add-repository ppa:libccd-debs/ppa
sudo apt-add-repository ppa:fcl-debs/ppa
sudo apt-add-repository ppa:dartsim/ppa
sudo apt-get update

sudo apt-get install build-essential cmake pkg-config git
sudo apt-get install libeigen3-dev libassimp-dev libccd-dev libfcl-dev libboost-regex-dev libboost-system-dev libode-dev
sudo apt-get install libopenscenegraph-dev

sudo apt-get install libtinyxml-dev libtinyxml2-dev
sudo apt-get install liburdfdom-dev liburdfdom-headers-dev

cd /path/to/tmp/folder
git clone git://github.com/dartsim/dart.git
cd dart
git checkout v6.3.0

mkdir build
cd build
cmake -DDART_ENABLE_SIMD=ON ..
make -j4
sudo make install
```

#### Installing the rhex common files

In order to simulate the rhex you nead to get the URDF file and the controller library:

```bash
cd /path/to/tmp/folder
git clone https://github.com/AranBSmith/rhex_common.git
cd rhex_common/rhex_models
./waf configure --prefix=$RESIBOTS_DIR
./waf install
cd ../rhex_controller
./waf configure --prefix=$RESIBOTS_DIR
./waf
./waf install
```

#### Installing the DART wrapper

To facilitate the simulation we have created a simple wrapper over the DART simulator that is specific to our rhex robot:

```bash
cd /path/to/tmp/folder
git clone https://github.com/AranBSmith/rhex_simu.git
cd rhex_simu/rhex_dart
./waf configure --prefix=$RESIBOTS_DIR
./waf
./waf install
```

#### Installing limbo's dependencies

```bash
sudo apt-get update
sudo apt-get install libeigen3-dev libboost-serialization-dev libboost-filesystem-dev libboost-test-dev libboost-program-options-dev libboost-thread-dev libboost-regex-dev libboost-graph-dev
sudo apt-get install libtbb-dev
```

### Compiling the experiment

- Get [limbo]: `git clone https://github.com/resibots/limbo.git`
- Go to your `limbo` root directory
- Create an experiment folder (if there's none) and cd to it: `mkdir exp && cd exp`
- Clone rhex-ite: `git clone https://github.com/AranBSmith/rhex-ite.git`
- Go back to your `limbo` root directory
- Configure the experiment: `./waf configure --exp rhex-ite`
- Compile the experiment: `./waf --exp rhex-ite`

## How to run

- Compile the experiment (as shown above)
- Run it (assuming you are on limbo root dir and the `RESIBOTS_DIR` folder is set properly):
    - `./build/exp/rhex-ite/rhex_simu path_to_archive [-l id_of_to_be_removed] [-n number_of_BO_iterations]`
    - `./build/exp/rhex-ite/rhex_graphic path_to_archive [-l id_of_to_be_removed] [-n number_of_BO_iterations]` for the graphics version
    - the ids of the legs are zero-based; i.e., they span from 0 to 5
    - **the arguments parser is not very sophisticated**, here are some examples as a guide.
    - e.g. `./build/exp/rhex-ite/rhex_simu exp/rhex-ite/archives/archive_3600.dat -w 0 -l 1 -d -1` tests in flat terrain, with no damage -l 1 -d -1 indicates no damage for leg 1, or any other leg, however must be specified this way for the no damage case.
    - other options also exist e.g. `./build/exp/rhex-ite/rhex_simu exp/rhex-ite/archives/archive_3600.dat -f 0.45 -w 1 -l 1 -d -1` tests with a friction coefficient of .45, and in world 1 (sand dune). 
    - e.g. `./build/exp/rhex-ite/rhex_simu exp/rhex-ite/archives/archive_3600.dat -w 0 -l 0 4 -d 0 0` : middle right leg and left hind leg removed
    - e.g. `./build/exp/rhex-ite/rhex_simu exp/rhex-ite/archives/archive_3600.dat -m 1 -w 0 -l 1 -d -1` : choose model with flag `-m 1`, specifying a model with a hind leg that has a weaker spring coefficient.
    - e.g. `./build/exp/rhex-ite/rhex_simu exp/rhex-ite/archives/archive_3600.dat -w 0 -n 1 -c 1 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0.5 0 0.5 -l 1 -d -1` : tests the tripod gait with just one iteration, and no damage.
    - e.g. `./build/exp/rhex-ite/rhex_graphic exp/rhex-ite/archives/archive_3600.dat -f 0.45 -m 1 -w 0 -n 1 -c 1 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0.5 0 0.5 -l 1 -d 0` : command with all flags in action.
    - Possible flags are: -f (friction) -m (model) -w (world) -n (iterations) -c (control parameters) -l (leg id) -d (damage id)
    - Finally, when you specify the -c flag, the archive argument will neglected, and only the control parameters will be used.
    - The experiments ran in this work can be found in the testbo.sh and testdynfbc.sh files.

## LICENSE

[CeCILL]

[CeCILL]: http://www.cecill.info/index.en.html
[DART]: https://github.com/dartsim/dart
[limbo]: https://github.com/resibots/limbo
