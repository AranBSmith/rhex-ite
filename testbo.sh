#!/bin/bash
# c1: test archives with no damage
echo "======================c1========================"
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/2/archive_2200.dat -w 0 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/3/archive_1900.dat -w 0 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/5/archive_2400.dat -w 0 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/4/archive_2450.dat -w 0 -l 1 -d -1

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.65 0.925 0.725 0.325 0.625 0.125 0.725 0.425 0.175 0.075 0 0.65 0.425 0.65 0.45 1 0.425 0.325 0.525 0.1 0.525 0.275 0.625 -l 1 -d -1 >> boc1bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.45 0.15 0 0.75 0.625 0.35 0.975 0.3 0.7 0.525 0.925 0.45 0.3 0.925 0.3 0 0.95 0.625 0.55 0.875 0.775 0.25 0.05 -l 1 -d -1 >> boc1bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.375 0.4 0.825 0.725 0.675 0.975 0.9 0.825 0.225 1 0 0.375 0.9 0.125 0.4 0.95 0.225 0.375 0.45 0.425 0.775 0.55 0.875 -l 1 -d -1 >> boc1bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.575 0.475 0.8 0.5 0.375 0.7 0.725 0.325 0.05 0.425 0.25 0.825 1 0.025 0.4 0.475 0.675 0.175 0.85 0.975 0.9 0.75 0.2 -l 1 -d -1 >> boc1bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.15 0.65 0.2 0.1 0.375 0.325 0.775 0.2 0.625 0.25 0.625 0.9 0.575 0.75 0.125 0.775 0.1 0.475 0.125 0.2 0.1 0.475 0.2 -l 1 -d -1 >> boc1bestgaitreference.log

# c2: test archives with missing middle leg
echo "======================c2========================"
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -l 1 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/2/archive_2200.dat -w 0 -l 1 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/3/archive_1900.dat -w 0 -l 1 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/5/archive_2400.dat -w 0 -l 1 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/4/archive_2450.dat -w 0 -l 1 -d 0

# test best controllers here
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.65 0.925 0.725 0.325 0.625 0.125 0.725 0.425 0.175 0.075 0 0.65 0.425 0.65 0.45 1 0.425 0.325 0.525 0.1 0.525 0.275 0.625 -l 1 -d 0 >> boc2bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.45 0.15 0 0.75 0.625 0.35 0.975 0.3 0.7 0.525 0.925 0.45 0.3 0.925 0.3 0 0.95 0.625 0.55 0.875 0.775 0.25 0.05 -l 1 -d 0 >> boc2bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.375 0.4 0.825 0.725 0.675 0.975 0.9 0.825 0.225 1 0 0.375 0.9 0.125 0.4 0.95 0.225 0.375 0.45 0.425 0.775 0.55 0.875 -l 1 -d 0 >> boc2bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.575 0.475 0.8 0.5 0.375 0.7 0.725 0.325 0.05 0.425 0.25 0.825 1 0.025 0.4 0.475 0.675 0.175 0.85 0.975 0.9 0.75 0.2 -l 1 -d 0 >> boc2bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.15 0.65 0.2 0.1 0.375 0.325 0.775 0.2 0.625 0.25 0.625 0.9 0.575 0.75 0.125 0.775 0.1 0.475 0.125 0.2 0.1 0.475 0.2 -l 1 -d 0 >> boc2bestgaitreference.log

# c3: test archives with missing hind leg
echo "======================c3========================"
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -l 4 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/2/archive_2200.dat -w 0 -l 4 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/3/archive_1900.dat -w 0 -l 4 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/5/archive_2400.dat -w 0 -l 4 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/4/archive_2450.dat -w 0 -l 4 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.65 0.925 0.725 0.325 0.625 0.125 0.725 0.425 0.175 0.075 0 0.65 0.425 0.65 0.45 1 0.425 0.325 0.525 0.1 0.525 0.275 0.625 -l 4 -d 0 >> boc3bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.45 0.15 0 0.75 0.625 0.35 0.975 0.3 0.7 0.525 0.925 0.45 0.3 0.925 0.3 0 0.95 0.625 0.55 0.875 0.775 0.25 0.05 -l 4 -d 0 >> boc3bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.375 0.4 0.825 0.725 0.675 0.975 0.9 0.825 0.225 1 0 0.375 0.9 0.125 0.4 0.95 0.225 0.375 0.45 0.425 0.775 0.55 0.875 -l 4 -d 0 >> boc3bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.575 0.475 0.8 0.5 0.375 0.7 0.725 0.325 0.05 0.425 0.25 0.825 1 0.025 0.4 0.475 0.675 0.175 0.85 0.975 0.9 0.75 0.2 -l 4 -d 0 >> boc3bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.15 0.65 0.2 0.1 0.375 0.325 0.775 0.2 0.625 0.25 0.625 0.9 0.575 0.75 0.125 0.775 0.1 0.475 0.125 0.2 0.1 0.475 0.2 -l 4 -d 0 >> boc3bestgaitreference.log

# c4: test archives with missing front leg
echo "======================c4========================"
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -l 2 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/2/archive_2200.dat -w 0 -l 2 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/3/archive_1900.dat -w 0 -l 2 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/5/archive_2400.dat -w 0 -l 2 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/4/archive_2450.dat -w 0 -l 2 -d 0

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.65 0.925 0.725 0.325 0.625 0.125 0.725 0.425 0.175 0.075 0 0.65 0.425 0.65 0.45 1 0.425 0.325 0.525 0.1 0.525 0.275 0.625 -l 2 -d 0 >> boc4bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.45 0.15 0 0.75 0.625 0.35 0.975 0.3 0.7 0.525 0.925 0.45 0.3 0.925 0.3 0 0.95 0.625 0.55 0.875 0.775 0.25 0.05 -l 2 -d 0 >> boc4bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.375 0.4 0.825 0.725 0.675 0.975 0.9 0.825 0.225 1 0 0.375 0.9 0.125 0.4 0.95 0.225 0.375 0.45 0.425 0.775 0.55 0.875 -l 2 -d 0 >> boc4bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.575 0.475 0.8 0.5 0.375 0.7 0.725 0.325 0.05 0.425 0.25 0.825 1 0.025 0.4 0.475 0.675 0.175 0.85 0.975 0.9 0.75 0.2 -l 2 -d 0 >> boc4bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.15 0.65 0.2 0.1 0.375 0.325 0.775 0.2 0.625 0.25 0.625 0.9 0.575 0.75 0.125 0.775 0.1 0.475 0.125 0.2 0.1 0.475 0.2 -l 2 -d 0 >> boc4bestgaitreference.log


# c5: middle right leg and left hind leg removed
echo "======================c5========================"
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -l 0 4 -d 0 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/2/archive_2200.dat -w 0 -l 0 4 -d 0 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/3/archive_1900.dat -w 0 -l 0 4 -d 0 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/5/archive_2400.dat -w 0 -l 0 4 -d 0 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/4/archive_2450.dat -w 0 -l 0 4 -d 0 0
 
# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.65 0.925 0.725 0.325 0.625 0.125 0.725 0.425 0.175 0.075 0 0.65 0.425 0.65 0.45 1 0.425 0.325 0.525 0.1 0.525 0.275 0.625 -l 0 4 -d 0 0 >> boc5bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.45 0.15 0 0.75 0.625 0.35 0.975 0.3 0.7 0.525 0.925 0.45 0.3 0.925 0.3 0 0.95 0.625 0.55 0.875 0.775 0.25 0.05 -l 0 4 -d 0 0 >> boc5bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.375 0.4 0.825 0.725 0.675 0.975 0.9 0.825 0.225 1 0 0.375 0.9 0.125 0.4 0.95 0.225 0.375 0.45 0.425 0.775 0.55 0.875 -l 0 4 -d 0 0 >> boc5bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.575 0.475 0.8 0.5 0.375 0.7 0.725 0.325 0.05 0.425 0.25 0.825 1 0.025 0.4 0.475 0.675 0.175 0.85 0.975 0.9 0.75 0.2 -l 0 4 -d 0 0 >> boc5bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.15 0.65 0.2 0.1 0.375 0.325 0.775 0.2 0.625 0.25 0.625 0.9 0.575 0.75 0.125 0.775 0.1 0.475 0.125 0.2 0.1 0.475 0.2 -l 0 4 -d 0 0 >> boc5bestgaitreference.log


# c6: shortened hind leg
echo "======================c6========================"
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -l 3 -d 1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/2/archive_2200.dat -w 0 -l 3 -d 1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/3/archive_1900.dat -w 0 -l 3 -d 1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/5/archive_2400.dat -w 0 -l 3 -d 1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/4/archive_2450.dat -w 0 -l 3 -d 1

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.65 0.925 0.725 0.325 0.625 0.125 0.725 0.425 0.175 0.075 0 0.65 0.425 0.65 0.45 1 0.425 0.325 0.525 0.1 0.525 0.275 0.625 -l 3 -d 1 >> boc6bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.45 0.15 0 0.75 0.625 0.35 0.975 0.3 0.7 0.525 0.925 0.45 0.3 0.925 0.3 0 0.95 0.625 0.55 0.875 0.775 0.25 0.05 -l 3 -d 1 >> boc6bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.375 0.4 0.825 0.725 0.675 0.975 0.9 0.825 0.225 1 0 0.375 0.9 0.125 0.4 0.95 0.225 0.375 0.45 0.425 0.775 0.55 0.875 -l 3 -d 1 >> boc6bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.575 0.475 0.8 0.5 0.375 0.7 0.725 0.325 0.05 0.425 0.25 0.825 1 0.025 0.4 0.475 0.675 0.175 0.85 0.975 0.9 0.75 0.2 -l 3 -d 1 >> boc6bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.15 0.65 0.2 0.1 0.375 0.325 0.775 0.2 0.625 0.25 0.625 0.9 0.575 0.75 0.125 0.775 0.1 0.475 0.125 0.2 0.1 0.475 0.2 -l 3 -d 1 >> boc6bestgaitreference.log

# c7: middle leg stuck
echo "======================c7========================"
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -l 1 -d 2

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/2/archive_2200.dat -w 0 -l 1 -d 2

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/3/archive_1900.dat -w 0 -l 1 -d 2

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/5/archive_2400.dat -w 0 -l 1 -d 2

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/4/archive_2450.dat -w 0 -l 1 -d 2

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.65 0.925 0.725 0.325 0.625 0.125 0.725 0.425 0.175 0.075 0 0.65 0.425 0.65 0.45 1 0.425 0.325 0.525 0.1 0.525 0.275 0.625 -l 1 -d 2 >> boc7bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.45 0.15 0 0.75 0.625 0.35 0.975 0.3 0.7 0.525 0.925 0.45 0.3 0.925 0.3 0 0.95 0.625 0.55 0.875 0.775 0.25 0.05 -l 1 -d 2 >> boc7bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.375 0.4 0.825 0.725 0.675 0.975 0.9 0.825 0.225 1 0 0.375 0.9 0.125 0.4 0.95 0.225 0.375 0.45 0.425 0.775 0.55 0.875 -l 1 -d 2 >> boc7bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.575 0.475 0.8 0.5 0.375 0.7 0.725 0.325 0.05 0.425 0.25 0.825 1 0.025 0.4 0.475 0.675 0.175 0.85 0.975 0.9 0.75 0.2 -l 1 -d 2 >> boc7bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.15 0.65 0.2 0.1 0.375 0.325 0.775 0.2 0.625 0.25 0.625 0.9 0.575 0.75 0.125 0.775 0.1 0.475 0.125 0.2 0.1 0.475 0.2 -l 1 -d 2 >> boc7bestgaitreference.log

# c8: hind spring stiffness, use different rhex model so no damages selected here
echo "======================c8========================"
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -m 1 -w 0 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/2/archive_2200.dat -m 1 -w 0 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/3/archive_1900.dat -m 1 -w 0 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/5/archive_2400.dat -m 1 -w 0 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/4/archive_2450.dat -m 1 -w 0 -l 1 -d -1

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -m 1 -w 0 -n 1 -c 1 0.65 0.925 0.725 0.325 0.625 0.125 0.725 0.425 0.175 0.075 0 0.65 0.425 0.65 0.45 1 0.425 0.325 0.525 0.1 0.525 0.275 0.625 -l 1 -d -1 >> boc8bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -m 1 -w 0 -n 1 -c 1 0.45 0.15 0 0.75 0.625 0.35 0.975 0.3 0.7 0.525 0.925 0.45 0.3 0.925 0.3 0 0.95 0.625 0.55 0.875 0.775 0.25 0.05 -l 1 -d -1 >> boc8bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -m 1 -w 0 -n 1 -c 1 0.375 0.4 0.825 0.725 0.675 0.975 0.9 0.825 0.225 1 0 0.375 0.9 0.125 0.4 0.95 0.225 0.375 0.45 0.425 0.775 0.55 0.875 -l 1 -d -1 >> boc8bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -m 1 -w 0 -n 1 -c 1 0.575 0.475 0.8 0.5 0.375 0.7 0.725 0.325 0.05 0.425 0.25 0.825 1 0.025 0.4 0.475 0.675 0.175 0.85 0.975 0.9 0.75 0.2 -l 1 -d -1 >> boc8bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -m 1 -w 0 -n 1 -c 1 0.15 0.65 0.2 0.1 0.375 0.325 0.775 0.2 0.625 0.25 0.625 0.9 0.575 0.75 0.125 0.775 0.1 0.475 0.125 0.2 0.1 0.475 0.2 -l 1 -d -1 >> boc8bestgaitreference.log
 

# c9: middle legs removed, quad gaits
echo "======================c9========================"
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -l 1 4 -d 0 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/2/archive_2200.dat -w 0 -l 1 4 -d 0 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/3/archive_1900.dat -w 0 -l 1 4 -d 0 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/5/archive_2400.dat -w 0 -l 1 4 -d 0 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/4/archive_2450.dat -w 0 -l 1 4 -d 0 0

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.65 0.925 0.725 0.325 0.625 0.125 0.725 0.425 0.175 0.075 0 0.65 0.425 0.65 0.45 1 0.425 0.325 0.525 0.1 0.525 0.275 0.625 -l 1 4 -d 0 0 >> boc9bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.45 0.15 0 0.75 0.625 0.35 0.975 0.3 0.7 0.525 0.925 0.45 0.3 0.925 0.3 0 0.95 0.625 0.55 0.875 0.775 0.25 0.05 -l 1 4 -d 0 0 >> boc9bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.375 0.4 0.825 0.725 0.675 0.975 0.9 0.825 0.225 1 0 0.375 0.9 0.125 0.4 0.95 0.225 0.375 0.45 0.425 0.775 0.55 0.875 -l 1 4 -d 0 0 >> boc9bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.575 0.475 0.8 0.5 0.375 0.7 0.725 0.325 0.05 0.425 0.25 0.825 1 0.025 0.4 0.475 0.675 0.175 0.85 0.975 0.9 0.75 0.2 -l 1 4 -d 0 0 >> boc9bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 0 -n 1 -c 1 0.15 0.65 0.2 0.1 0.375 0.325 0.775 0.2 0.625 0.25 0.625 0.9 0.575 0.75 0.125 0.775 0.1 0.475 0.125 0.2 0.1 0.475 0.2 -l 1 4 -d 0 0 >> boc9bestgaitreference.log


# e2: bump environment
echo "======================e2========================"
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 4 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/2/archive_2200.dat -w 4 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/3/archive_1900.dat -w 4 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/5/archive_2400.dat -w 4 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/4/archive_2450.dat -w 4 -l 1 -d -1

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 4 -n 1 -c 1 0.65 0.925 0.725 0.325 0.625 0.125 0.725 0.425 0.175 0.075 0 0.65 0.425 0.65 0.45 1 0.425 0.325 0.525 0.1 0.525 0.275 0.625 -l 1 -d -1 >> boe2bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 4 -n 1 -c 1 0.45 0.15 0 0.75 0.625 0.35 0.975 0.3 0.7 0.525 0.925 0.45 0.3 0.925 0.3 0 0.95 0.625 0.55 0.875 0.775 0.25 0.05 -l 1 -d -1 >> boe2bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 4 -n 1 -c 1 0.375 0.4 0.825 0.725 0.675 0.975 0.9 0.825 0.225 1 0 0.375 0.9 0.125 0.4 0.95 0.225 0.375 0.45 0.425 0.775 0.55 0.875 -l 1 -d -1 >> boe2bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 4 -n 1 -c 1 0.575 0.475 0.8 0.5 0.375 0.7 0.725 0.325 0.05 0.425 0.25 0.825 1 0.025 0.4 0.475 0.675 0.175 0.85 0.975 0.9 0.75 0.2 -l 1 -d -1 >> boe2bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 4 -n 1 -c 1 0.15 0.65 0.2 0.1 0.375 0.325 0.775 0.2 0.625 0.25 0.625 0.9 0.575 0.75 0.125 0.775 0.1 0.475 0.125 0.2 0.1 0.475 0.2 -l 1 -d -1 >> boe2bestgaitreference.log

# e3: stairs environment
echo "======================e3========================"
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 2 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/2/archive_2200.dat -w 2 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/3/archive_1900.dat -w 2 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/5/archive_2400.dat -w 2 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/4/archive_2450.dat -w 2 -l 1 -d -1

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 2 -n 1 -c 1 0.65 0.925 0.725 0.325 0.625 0.125 0.725 0.425 0.175 0.075 0 0.65 0.425 0.65 0.45 1 0.425 0.325 0.525 0.1 0.525 0.275 0.625 -l 1 -d -1 >> boe3bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 2 -n 1 -c 1 0.45 0.15 0 0.75 0.625 0.35 0.975 0.3 0.7 0.525 0.925 0.45 0.3 0.925 0.3 0 0.95 0.625 0.55 0.875 0.775 0.25 0.05 -l 1 -d -1 >> boe3bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 2 -n 1 -c 1 0.375 0.4 0.825 0.725 0.675 0.975 0.9 0.825 0.225 1 0 0.375 0.9 0.125 0.4 0.95 0.225 0.375 0.45 0.425 0.775 0.55 0.875 -l 1 -d -1 >> boe3bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 2 -n 1 -c 1 0.575 0.475 0.8 0.5 0.375 0.7 0.725 0.325 0.05 0.425 0.25 0.825 1 0.025 0.4 0.475 0.675 0.175 0.85 0.975 0.9 0.75 0.2 -l 1 -d -1 >> boe3bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 2 -n 1 -c 1 0.15 0.65 0.2 0.1 0.375 0.325 0.775 0.2 0.625 0.25 0.625 0.9 0.575 0.75 0.125 0.775 0.1 0.475 0.125 0.2 0.1 0.475 0.2 -l 1 -d -1 >> boe3bestgaitreference.log


# e4: sand dune (hill with less friction)
echo "======================e4========================"

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -f 0.45 -w 1 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/2/archive_2200.dat -f 0.45 -w 1 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/3/archive_1900.dat -f 0.45 -w 1 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/5/archive_2400.dat -f 0.45 -w 1 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/4/archive_2450.dat -f 0.45 -w 1 -l 1 -d -1

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -f 0.45 -w 1 -n 1 -c 1 0.65 0.925 0.725 0.325 0.625 0.125 0.725 0.425 0.175 0.075 0 0.65 0.425 0.65 0.45 1 0.425 0.325 0.525 0.1 0.525 0.275 0.625 -l 1 -d -1 >> boe4bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -f 0.45 -w 1 -n 1 -c 1 0.45 0.15 0 0.75 0.625 0.35 0.975 0.3 0.7 0.525 0.925 0.45 0.3 0.925 0.3 0 0.95 0.625 0.55 0.875 0.775 0.25 0.05 -l 1 -d -1 >> boe4bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -f 0.45 -w 1 -n 1 -c 1 0.375 0.4 0.825 0.725 0.675 0.975 0.9 0.825 0.225 1 0 0.375 0.9 0.125 0.4 0.95 0.225 0.375 0.45 0.425 0.775 0.55 0.875 -l 1 -d -1 >> boe4bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -f 0.45 -w 1 -n 1 -c 1 0.575 0.475 0.8 0.5 0.375 0.7 0.725 0.325 0.05 0.425 0.25 0.825 1 0.025 0.4 0.475 0.675 0.175 0.85 0.975 0.9 0.75 0.2 -l 1 -d -1 >> boe4bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -f 0.45 -w 1 -n 1 -c 1 0.15 0.65 0.2 0.1 0.375 0.325 0.775 0.2 0.625 0.25 0.625 0.9 0.575 0.75 0.125 0.775 0.1 0.475 0.125 0.2 0.1 0.475 0.2 -l 1 -d -1 >> boe4bestgaitreference.log

# e5: slope climb
echo "======================e5========================"
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 3 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/2/archive_2200.dat -w 3 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/3/archive_1900.dat -w 3 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/5/archive_2400.dat -w 3 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/4/archive_2450.dat -w 3 -l 1 -d -1

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 3 -n 1 -c 1 0.65 0.925 0.725 0.325 0.625 0.125 0.725 0.425 0.175 0.075 0 0.65 0.425 0.65 0.45 1 0.425 0.325 0.525 0.1 0.525 0.275 0.625 -l 1 -d -1 >> boe5bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 3 -n 1 -c 1 0.45 0.15 0 0.75 0.625 0.35 0.975 0.3 0.7 0.525 0.925 0.45 0.3 0.925 0.3 0 0.95 0.625 0.55 0.875 0.775 0.25 0.05 -l 1 -d -1 >> boe5bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 3 -n 1 -c 1 0.375 0.4 0.825 0.725 0.675 0.975 0.9 0.825 0.225 1 0 0.375 0.9 0.125 0.4 0.95 0.225 0.375 0.45 0.425 0.775 0.55 0.875 -l 1 -d -1 >> boe5bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 3 -n 1 -c 1 0.575 0.475 0.8 0.5 0.375 0.7 0.725 0.325 0.05 0.425 0.25 0.825 1 0.025 0.4 0.475 0.675 0.175 0.85 0.975 0.9 0.75 0.2 -l 1 -d -1 >> boe5bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 3 -n 1 -c 1 0.15 0.65 0.2 0.1 0.375 0.325 0.775 0.2 0.625 0.25 0.625 0.9 0.575 0.75 0.125 0.775 0.1 0.475 0.125 0.2 0.1 0.475 0.2 -l 1 -d -1 >> boe5bestgaitreference.log

# e6: ditch traversal
echo "======================e6========================"
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 5 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/2/archive_2200.dat -w 5 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/3/archive_1900.dat -w 5 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/5/archive_2400.dat -w 5 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/4/archive_2450.dat -w 5 -l 1 -d -1

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 5 -n 1 -c 1 0.65 0.925 0.725 0.325 0.625 0.125 0.725 0.425 0.175 0.075 0 0.65 0.425 0.65 0.45 1 0.425 0.325 0.525 0.1 0.525 0.275 0.625 -l 1 -d -1 >> boe6bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 5 -n 1 -c 1 0.45 0.15 0 0.75 0.625 0.35 0.975 0.3 0.7 0.525 0.925 0.45 0.3 0.925 0.3 0 0.95 0.625 0.55 0.875 0.775 0.25 0.05 -l 1 -d -1 >> boe6bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 5 -n 1 -c 1 0.375 0.4 0.825 0.725 0.675 0.975 0.9 0.825 0.225 1 0 0.375 0.9 0.125 0.4 0.95 0.225 0.375 0.45 0.425 0.775 0.55 0.875 -l 1 -d -1 >> boe6bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 5 -n 1 -c 1 0.575 0.475 0.8 0.5 0.375 0.7 0.725 0.325 0.05 0.425 0.25 0.825 1 0.025 0.4 0.475 0.675 0.175 0.85 0.975 0.9 0.75 0.2 -l 1 -d -1 >> boe6bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 5 -n 1 -c 1 0.15 0.65 0.2 0.1 0.375 0.325 0.775 0.2 0.625 0.25 0.625 0.9 0.575 0.75 0.125 0.775 0.1 0.475 0.125 0.2 0.1 0.475 0.2 -l 1 -d -1 >> boe6bestgaitreference.log

# e7: pipes traversal
echo "======================e7========================"
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 6 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/2/archive_2200.dat -w 6 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/3/archive_1900.dat -w 6 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/5/archive_2400.dat -w 6 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/4/archive_2450.dat -w 6 -l 1 -d -1

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 6 -n 1 -c 1 0.65 0.925 0.725 0.325 0.625 0.125 0.725 0.425 0.175 0.075 0 0.65 0.425 0.65 0.45 1 0.425 0.325 0.525 0.1 0.525 0.275 0.625 -l 1 -d -1 >> boe7bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 6 -n 1 -c 1 0.45 0.15 0 0.75 0.625 0.35 0.975 0.3 0.7 0.525 0.925 0.45 0.3 0.925 0.3 0 0.95 0.625 0.55 0.875 0.775 0.25 0.05 -l 1 -d -1 >> boe7bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 6 -n 1 -c 1 0.375 0.4 0.825 0.725 0.675 0.975 0.9 0.825 0.225 1 0 0.375 0.9 0.125 0.4 0.95 0.225 0.375 0.45 0.425 0.775 0.55 0.875 -l 1 -d -1 >> boe7bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 6 -n 1 -c 1 0.575 0.475 0.8 0.5 0.375 0.7 0.725 0.325 0.05 0.425 0.25 0.825 1 0.025 0.4 0.475 0.675 0.175 0.85 0.975 0.9 0.75 0.2 -l 1 -d -1 >> boe7bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 6 -n 1 -c 1 0.15 0.65 0.2 0.1 0.375 0.325 0.775 0.2 0.625 0.25 0.625 0.9 0.575 0.75 0.125 0.775 0.1 0.475 0.125 0.2 0.1 0.475 0.2 -l 1 -d -1 >> boe7bestgaitreference.log

# e8: ditch traversal
echo "======================e8========================"
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 7 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/2/archive_2200.dat -w 7 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/3/archive_1900.dat -w 7 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/5/archive_2400.dat -w 7 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/4/archive_2450.dat -w 7 -l 1 -d -1

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 7 -n 1 -c 1 0.65 0.925 0.725 0.325 0.625 0.125 0.725 0.425 0.175 0.075 0 0.65 0.425 0.65 0.45 1 0.425 0.325 0.525 0.1 0.525 0.275 0.625 -l 1 -d -1 >> boe8bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 7 -n 1 -c 1 0.45 0.15 0 0.75 0.625 0.35 0.975 0.3 0.7 0.525 0.925 0.45 0.3 0.925 0.3 0 0.95 0.625 0.55 0.875 0.775 0.25 0.05 -l 1 -d -1 >> boe8bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 7 -n 1 -c 1 0.375 0.4 0.825 0.725 0.675 0.975 0.9 0.825 0.225 1 0 0.375 0.9 0.125 0.4 0.95 0.225 0.375 0.45 0.425 0.775 0.55 0.875 -l 1 -d -1 >> boe8bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 7 -n 1 -c 1 0.575 0.475 0.8 0.5 0.375 0.7 0.725 0.325 0.05 0.425 0.25 0.825 1 0.025 0.4 0.475 0.675 0.175 0.85 0.975 0.9 0.75 0.2 -l 1 -d -1 >> boe8bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 7 -n 1 -c 1 0.15 0.65 0.2 0.1 0.375 0.325 0.775 0.2 0.625 0.25 0.625 0.9 0.575 0.75 0.125 0.775 0.1 0.475 0.125 0.2 0.1 0.475 0.2 -l 1 -d -1 >> boe8bestgaitreference.log

# e9: thick pipe
echo "======================e9========================"
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 8 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/2/archive_2200.dat -w 8 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/3/archive_1900.dat -w 8 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/5/archive_2400.dat -w 8 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/4/archive_2450.dat -w 8 -l 1 -d -1

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 8 -n 1 -c 1 0.65 0.925 0.725 0.325 0.625 0.125 0.725 0.425 0.175 0.075 0 0.65 0.425 0.65 0.45 1 0.425 0.325 0.525 0.1 0.525 0.275 0.625 -l 1 -d -1 >> boe9bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 8 -n 1 -c 1 0.45 0.15 0 0.75 0.625 0.35 0.975 0.3 0.7 0.525 0.925 0.45 0.3 0.925 0.3 0 0.95 0.625 0.55 0.875 0.775 0.25 0.05 -l 1 -d -1 >> boe9bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 8 -n 1 -c 1 0.375 0.4 0.825 0.725 0.675 0.975 0.9 0.825 0.225 1 0 0.375 0.9 0.125 0.4 0.95 0.225 0.375 0.45 0.425 0.775 0.55 0.875 -l 1 -d -1 >> boe9bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 8 -n 1 -c 1 0.575 0.475 0.8 0.5 0.375 0.7 0.725 0.325 0.05 0.425 0.25 0.825 1 0.025 0.4 0.475 0.675 0.175 0.85 0.975 0.9 0.75 0.2 -l 1 -d -1 >> boe9bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 8 -n 1 -c 1 0.15 0.65 0.2 0.1 0.375 0.325 0.775 0.2 0.625 0.25 0.625 0.9 0.575 0.75 0.125 0.775 0.1 0.475 0.125 0.2 0.1 0.475 0.2 -l 1 -d -1 >> boe9bestgaitreference.log

# e9: thin pipe
echo "======================e10========================"
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 9 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/2/archive_2200.dat -w 9 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/3/archive_1900.dat -w 9 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/5/archive_2400.dat -w 9 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/4/archive_2450.dat -w 9 -l 1 -d -1

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 9 -n 1 -c 1 0.65 0.925 0.725 0.325 0.625 0.125 0.725 0.425 0.175 0.075 0 0.65 0.425 0.65 0.45 1 0.425 0.325 0.525 0.1 0.525 0.275 0.625 -l 1 -d -1 >> boe10bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 9 -n 1 -c 1 0.45 0.15 0 0.75 0.625 0.35 0.975 0.3 0.7 0.525 0.925 0.45 0.3 0.925 0.3 0 0.95 0.625 0.55 0.875 0.775 0.25 0.05 -l 1 -d -1 >> boe10bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 9 -n 1 -c 1 0.375 0.4 0.825 0.725 0.675 0.975 0.9 0.825 0.225 1 0 0.375 0.9 0.125 0.4 0.95 0.225 0.375 0.45 0.425 0.775 0.55 0.875 -l 1 -d -1 >> boe10bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 9 -n 1 -c 1 0.575 0.475 0.8 0.5 0.375 0.7 0.725 0.325 0.05 0.425 0.25 0.825 1 0.025 0.4 0.475 0.675 0.175 0.85 0.975 0.9 0.75 0.2 -l 1 -d -1 >> boe10bestgaitreference.log

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/bo0208/1/archive_3000.dat -w 9 -n 1 -c 1 0.15 0.65 0.2 0.1 0.375 0.325 0.775 0.2 0.625 0.25 0.625 0.9 0.575 0.75 0.125 0.775 0.1 0.475 0.125 0.2 0.1 0.475 0.2 -l 1 -d -1 >> boe10bestgaitreference.log
