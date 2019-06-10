# IT&E Rhex Experiments

*Limbo experiment*: IT&E code for developing rhex experiments similar to [Cully et al. (2015), Nature](https://github.com/resibots/cully_2015_nature).

## Authors
- Author/Maintainer: Konstantinos Chatzilygeroudis
- Other contributors: Vassilis Vassiliades, Antoine Cully, Jean-Baptiste Mouret
- Original Rhex controllers and models: Roman Buckley
- Rhex ITE implentation: Aran Smith

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
    - `./build/exp/ite_v2/rhex_simu path_to_archive [-l id_of_to_be_removed] [-n number_of_BO_iterations]`
    - `./build/exp/ite_v2/rhex_graphic path_to_archive [-l id_of_to_be_removed] [-n number_of_BO_iterations]` for the graphics version
    - the ids of the legs are zero-based; i.e., they span from 0 to 5
- Some **already generated archives** (to save you time) are in the `archives` folder. You can use [MAP-Elites-Rhex](https://github.com/AranBSmith/MAP-Elites-Rhex) to generate new ones.

## Funding

This work has been funded by the European Research Council (ERC) under the European Union’s Horizon 2020 research and innovation programme (grant agreement number 637972 - ResiBots).

## LICENSE

[CeCILL]

[CeCILL]: http://www.cecill.info/index.en.html
[DART]: https://github.com/dartsim/dart
[limbo]: https://github.com/resibots/limbo
