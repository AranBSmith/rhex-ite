#!/bin/bash

# c1: test archives with no damage

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/2/archive_3600.dat -w 0 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/3/archive_3600.dat -w 0 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/5/archive_3550.dat -w 0 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/4/archive_3050.dat -w 0 -l 1 -d -1

# NOTE: choosing the maps here have no effect but they are required, we only test the 
# control parameters here, not the map.
# tripod 
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0.5 0 0.5 -l 1 -d -1

# hill climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0 0.5 0.5 0.5 -l 1 -d -1

# stair climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.32 0.66 0 0.32 0.66 -l 1 -d -1

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.175 0.85 0.7 0.475 0.725 0.225 0.675 0.6 0.125 0.25 0.375 0.7 0.15 0.8 0.45 0.425 0.5 0.225 0.275 0.175 0.45 0 0.825 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.275 0.4 0.125 0.425 0.325 0.125 0.85 0.45 0.825 0.4 0.775 0.225 0.35 0.75 0.25 0.85 0.475 0 0.975 0.025 0.525 0.775 0.925 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.575 0.275 0.9 0.7 0.925 1 0.8 0.725 0.175 0.9 0.55 0.375 0.8 0 0.325 0.475 0.85  0.4 0.45 0.3 0.175 0.625 0.65 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.55  0.025 0.725 0.175 0.25 0.35 0.425 0.975 0.45 0 0.35 0.575 0.45 1 0.7 0.325 0.975 0.2 0.275 0.325 0 0.55 0.25 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.75 0.825 0.675 0.775 0.775 0.975 0.625 0.35 0.125 0.725 0.025 0.225 0.425 0.45  0.475 0.75 0.225 0.35  0.15  0.3 0.05 0.425 0.05 -l 1 -d -1



# c2: test archives with missing middle leg

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -l 1 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/2/archive_3600.dat -w 0 -l 1 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/3/archive_2400.dat -w 0 -l 1 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/5/archive_3550.dat -w 0 -l 1 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/4/archive_3050.dat -w 0 -l 1 -d 0

# tripod
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0.5 0 0.5 -l 1 -d 0

# hill climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0 0.5 0.5 0.5 -l 1 -d 0

# stair climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.32 0.66 0 0.32 0.66 -l 1 -d 0

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.175 0.85 0.7 0.475 0.725 0.225 0.675 0.6 0.125 0.25 0.375 0.7 0.15 0.8 0.45 0.425 0.5 0.225 0.275 0.175 0.45 0 0.825 -l 1 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.275 0.4 0.125 0.425 0.325 0.125 0.85 0.45 0.825 0.4 0.775 0.225 0.35 0.75 0.25 0.85 0.475 0 0.975 0.025 0.525 0.775 0.925 -l 1 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.575 0.275 0.9 0.7 0.925 1 0.8 0.725 0.175 0.9 0.55 0.375 0.8 0 0.325 0.475 0.85  0.4 0.45 0.3 0.175 0.625 0.65 -l 1 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.55  0.025 0.725 0.175 0.25 0.35 0.425 0.975 0.45 0 0.35 0.575 0.45 1 0.7 0.325 0.975 0.2 0.275 0.325 0 0.55 0.25 -l 1 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.75 0.825 0.675 0.775 0.775 0.975 0.625 0.35 0.125 0.725 0.025 0.225 0.425 0.45  0.475 0.75 0.225 0.35  0.15  0.3 0.05 0.425 0.05 -l 1 -d 0

# c3: test archives with missing hind leg

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -l 4 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/2/archive_3600.dat -w 0 -l 4 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/3/archive_2400.dat -w 0 -l 4 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/5/archive_3550.dat -w 0 -l 4 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/4/archive_3050.dat -w 0 -l 4 -d 0

# tripod
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0.5 0 0.5 -l 4 -d 0

# hill climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0 0.5 0.5 0.5 -l 4 -d 0

# stair climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.32 0.66 0 0.32 0.66 -l 4 -d 0


# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.175 0.85 0.7 0.475 0.725 0.225 0.675 0.6 0.125 0.25 0.375 0.7 0.15 0.8 0.45 0.425 0.5 0.225 0.275 0.175 0.45 0 0.825 -l 4 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.275 0.4 0.125 0.425 0.325 0.125 0.85 0.45 0.825 0.4 0.775 0.225 0.35 0.75 0.25 0.85 0.475 0 0.975 0.025 0.525 0.775 0.925 -l 4 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.575 0.275 0.9 0.7 0.925 1 0.8 0.725 0.175 0.9 0.55 0.375 0.8 0 0.325 0.475 0.85  0.4 0.45 0.3 0.175 0.625 0.65 -l 4 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.55  0.025 0.725 0.175 0.25 0.35 0.425 0.975 0.45 0 0.35 0.575 0.45 1 0.7 0.325 0.975 0.2 0.275 0.325 0 0.55 0.25 -l 4 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.75 0.825 0.675 0.775 0.775 0.975 0.625 0.35 0.125 0.725 0.025 0.225 0.425 0.45  0.475 0.75 0.225 0.35  0.15  0.3 0.05 0.425 0.05 -l 4 -d 0

# c4: test archives with missing front leg

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -l 2 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/2/archive_3600.dat -w 0 -l 2 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/3/archive_2400.dat -w 0 -l 2 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/5/archive_3550.dat -w 0 -l 2 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/4/archive_3050.dat -w 0 -l 2 -d 0

# tripod
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0.5 0 0.5 -l 2 -d 0

# hill climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0 0.5 0.5 0.5 -l 2 -d 0

# stair climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.32 0.66 0 0.32 0.66 -l 2 -d 0

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.175 0.85 0.7 0.475 0.725 0.225 0.675 0.6 0.125 0.25 0.375 0.7 0.15 0.8 0.45 0.425 0.5 0.225 0.275 0.175 0.45 0 0.825 -l 2 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.275 0.4 0.125 0.425 0.325 0.125 0.85 0.45 0.825 0.4 0.775 0.225 0.35 0.75 0.25 0.85 0.475 0 0.975 0.025 0.525 0.775 0.925 -l 2 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.575 0.275 0.9 0.7 0.925 1 0.8 0.725 0.175 0.9 0.55 0.375 0.8 0 0.325 0.475 0.85  0.4 0.45 0.3 0.175 0.625 0.65 -l 2 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.55  0.025 0.725 0.175 0.25 0.35 0.425 0.975 0.45 0 0.35 0.575 0.45 1 0.7 0.325 0.975 0.2 0.275 0.325 0 0.55 0.25 -l 2 -d 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.75 0.825 0.675 0.775 0.775 0.975 0.625 0.35 0.125 0.725 0.025 0.225 0.425 0.45  0.475 0.75 0.225 0.35  0.15  0.3 0.05 0.425 0.05 -l 2 -d 0

# c5: middle right leg and left hind leg removed

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -l 0 4 -d 0 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/2/archive_3600.dat -w 0 -l 0 4 -d 0 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/3/archive_2400.dat -w 0 -l 0 4 -d 0 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/5/archive_3550.dat -w 0 -l 0 4 -d 0 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/4/archive_3050.dat -w 0 -l 0 4 -d 0 0
 
# tripod
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0.5 0 0.5 -l 0 4 -d 0 0

# hill climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0 0.5 0.5 0.5 -l 0 4 -d 0 0

# stair climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.32 0.66 0 0.32 0.66 -l 0 4 -d 0 0

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.175 0.85 0.7 0.475 0.725 0.225 0.675 0.6 0.125 0.25 0.375 0.7 0.15 0.8 0.45 0.425 0.5 0.225 0.275 0.175 0.45 0 0.825 -l 0 4 -d 0 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.275 0.4 0.125 0.425 0.325 0.125 0.85 0.45 0.825 0.4 0.775 0.225 0.35 0.75 0.25 0.85 0.475 0 0.975 0.025 0.525 0.775 0.925 -l 0 4 -d 0 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.575 0.275 0.9 0.7 0.925 1 0.8 0.725 0.175 0.9 0.55 0.375 0.8 0 0.325 0.475 0.85  0.4 0.45 0.3 0.175 0.625 0.65 -l 0 4 -d 0 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.55  0.025 0.725 0.175 0.25 0.35 0.425 0.975 0.45 0 0.35 0.575 0.45 1 0.7 0.325 0.975 0.2 0.275 0.325 0 0.55 0.25 -l 0 4 -d 0 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.75 0.825 0.675 0.775 0.775 0.975 0.625 0.35 0.125 0.725 0.025 0.225 0.425 0.45  0.475 0.75 0.225 0.35  0.15  0.3 0.05 0.425 0.05 -l 0 4 -d 0 0

# c6: shortened hind leg

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -l 3 -d 1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/2/archive_3600.dat -w 0 -l 3 -d 1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/3/archive_2400.dat -w 0 -l 3 -d 1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/5/archive_3550.dat -w 0 -l 3 -d 1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/4/archive_3050.dat -w 0 -l 3 -d 1

# tripod
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0.5 0 0.5 -l 3 -d 1

# hill climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0 0.5 0.5 0.5 -l 3 -d 1

# stair climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.32 0.66 0 0.32 0.66 -l 3 -d 1

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.175 0.85 0.7 0.475 0.725 0.225 0.675 0.6 0.125 0.25 0.375 0.7 0.15 0.8 0.45 0.425 0.5 0.225 0.275 0.175 0.45 0 0.825 -l 3 -d 1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.275 0.4 0.125 0.425 0.325 0.125 0.85 0.45 0.825 0.4 0.775 0.225 0.35 0.75 0.25 0.85 0.475 0 0.975 0.025 0.525 0.775 0.925 -l 3 -d 1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.575 0.275 0.9 0.7 0.925 1 0.8 0.725 0.175 0.9 0.55 0.375 0.8 0 0.325 0.475 0.85  0.4 0.45 0.3 0.175 0.625 0.65 -l 3 -d 1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.55  0.025 0.725 0.175 0.25 0.35 0.425 0.975 0.45 0 0.35 0.575 0.45 1 0.7 0.325 0.975 0.2 0.275 0.325 0 0.55 0.25 -l 3 -d 1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.75 0.825 0.675 0.775 0.775 0.975 0.625 0.35 0.125 0.725 0.025 0.225 0.425 0.45  0.475 0.75 0.225 0.35  0.15  0.3 0.05 0.425 0.05 -l 3 -d 1

# c7: middle leg stuck

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -l 1 -d 2

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/2/archive_3600.dat -w 0 -l 1 -d 2

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/3/archive_2400.dat -w 0 -l 1 -d 2

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/5/archive_3550.dat -w 0 -l 1 -d 2

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/4/archive_3050.dat -w 0 -l 1 -d 2

# tripod
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0.5 0 0.5 -l 1 -d 2

# hill climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0 0.5 0.5 0.5 -l 1 -d 2

# stair climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.32 0.66 0 0.32 0.66 -l 1 -d 2

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.175 0.85 0.7 0.475 0.725 0.225 0.675 0.6 0.125 0.25 0.375 0.7 0.15 0.8 0.45 0.425 0.5 0.225 0.275 0.175 0.45 0 0.825 -l 1 -d 2

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.275 0.4 0.125 0.425 0.325 0.125 0.85 0.45 0.825 0.4 0.775 0.225 0.35 0.75 0.25 0.85 0.475 0 0.975 0.025 0.525 0.775 0.925 -l 1 -d 2

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.575 0.275 0.9 0.7 0.925 1 0.8 0.725 0.175 0.9 0.55 0.375 0.8 0 0.325 0.475 0.85  0.4 0.45 0.3 0.175 0.625 0.65 -l 1 -d 2

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.55  0.025 0.725 0.175 0.25 0.35 0.425 0.975 0.45 0 0.35 0.575 0.45 1 0.7 0.325 0.975 0.2 0.275 0.325 0 0.55 0.25 -l 1 -d 2

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.75 0.825 0.675 0.775 0.775 0.975 0.625 0.35 0.125 0.725 0.025 0.225 0.425 0.45  0.475 0.75 0.225 0.35  0.15  0.3 0.05 0.425 0.05 -l 1 -d 2

# c8: hind spring stiffness, use different rhex model so no damages selected here

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -m 1 -w 0 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/2/archive_3600.dat -m 1 -w 0 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/3/archive_2400.dat -m 1 -w 0 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/5/archive_3550.dat -m 1 -w 0 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/4/archive_3050.dat -m 1 -w 0 -l 1 -d -1

# tripod
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -m 1 -w 0 -n 1 -c 1 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0.5 0 0.5 -l 1 -d -1

# hill climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -m 1 -w 0 -n 1 -c  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0 0.5 0.5 0.5 -l 1 -d -1

# stair climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -m 1 -w 0 -n 1 -c 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.32 0.66 0 0.32 0.66 -l 1 -d -1

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -m 1 -w 0 -n 1 -c 1 0.175 0.85 0.7 0.475 0.725 0.225 0.675 0.6 0.125 0.25 0.375 0.7 0.15 0.8 0.45 0.425 0.5 0.225 0.275 0.175 0.45 0 0.825 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -m 1 -w 0 -n 1 -c 1 0.275 0.4 0.125 0.425 0.325 0.125 0.85 0.45 0.825 0.4 0.775 0.225 0.35 0.75 0.25 0.85 0.475 0 0.975 0.025 0.525 0.775 0.925 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -m 1 -w 0 -n 1 -c 1 0.575 0.275 0.9 0.7 0.925 1 0.8 0.725 0.175 0.9 0.55 0.375 0.8 0 0.325 0.475 0.85  0.4 0.45 0.3 0.175 0.625 0.65 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -m 1 -w 0 -n 1 -c 1 0.55  0.025 0.725 0.175 0.25 0.35 0.425 0.975 0.45 0 0.35 0.575 0.45 1 0.7 0.325 0.975 0.2 0.275 0.325 0 0.55 0.25 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -m 1 -w 0 -n 1 -c 1 0.75 0.825 0.675 0.775 0.775 0.975 0.625 0.35 0.125 0.725 0.025 0.225 0.425 0.45  0.475 0.75 0.225 0.35  0.15  0.3 0.05 0.425 0.05 -l 1 -d -1

# c9: middle legs removed, quad gaits

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -l 1 4 -d 0 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/2/archive_3600.dat -w 0 -l 1 4 -d 0 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/3/archive_2400.dat -w 0 -l 1 4 -d 0 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/5/archive_3550.dat -w 0 -l 1 4 -d 0 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/4/archive_3050.dat -w 0 -l 1 4 -d 0 0

# tripod
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0.5 0 0.5 -l 1 4 -d 0 0

# hill climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0 0.5 0.5 0.5 -l 1 4 -d 0 0

# stair climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.32 0.66 0 0.32 0.66 -l 1 4 -d 0 0

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.175 0.85 0.7 0.475 0.725 0.225 0.675 0.6 0.125 0.25 0.375 0.7 0.15 0.8 0.45 0.425 0.5 0.225 0.275 0.175 0.45 0 0.825 -l 1 4 -d 0 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.275 0.4 0.125 0.425 0.325 0.125 0.85 0.45 0.825 0.4 0.775 0.225 0.35 0.75 0.25 0.85 0.475 0 0.975 0.025 0.525 0.775 0.925 -l 1 4 -d 0 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.575 0.275 0.9 0.7 0.925 1 0.8 0.725 0.175 0.9 0.55 0.375 0.8 0 0.325 0.475 0.85  0.4 0.45 0.3 0.175 0.625 0.65 -l 1 4 -d 0 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.55  0.025 0.725 0.175 0.25 0.35 0.425 0.975 0.45 0 0.35 0.575 0.45 1 0.7 0.325 0.975 0.2 0.275 0.325 0 0.55 0.25 -l 1 4 -d 0 0

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 0 -n 1 -c 1 0.75 0.825 0.675 0.775 0.775 0.975 0.625 0.35 0.125 0.725 0.025 0.225 0.425 0.45  0.475 0.75 0.225 0.35  0.15  0.3 0.05 0.425 0.05 -l 1 4 -d 0 0

# e2: bump environment
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 4 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/2/archive_3600.dat -w 4 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/3/archive_2400.dat -w 4 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/5/archive_3550.dat -w 4 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/4/archive_3050.dat -w 4 -l 1 -d -1

# tripod
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 4 -n 1 -c 1 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0.5 0 0.5 -l 1 -d -1

# hill climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 4 -n 1 -c  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0 0.5 0.5 0.5 -l 1 -d -1

# stair climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 4 -n 1 -c 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.32 0.66 0 0.32 0.66 -l 1 -d -1

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 4 -n 1 -c 1 0.175 0.85 0.7 0.475 0.725 0.225 0.675 0.6 0.125 0.25 0.375 0.7 0.15 0.8 0.45 0.425 0.5 0.225 0.275 0.175 0.45 0 0.825 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 4 -n 1 -c 1 0.275 0.4 0.125 0.425 0.325 0.125 0.85 0.45 0.825 0.4 0.775 0.225 0.35 0.75 0.25 0.85 0.475 0 0.975 0.025 0.525 0.775 0.925 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 4 -n 1 -c 1 0.575 0.275 0.9 0.7 0.925 1 0.8 0.725 0.175 0.9 0.55 0.375 0.8 0 0.325 0.475 0.85  0.4 0.45 0.3 0.175 0.625 0.65 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 4 -n 1 -c 1 0.55  0.025 0.725 0.175 0.25 0.35 0.425 0.975 0.45 0 0.35 0.575 0.45 1 0.7 0.325 0.975 0.2 0.275 0.325 0 0.55 0.25 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 4 -n 1 -c 1 0.75 0.825 0.675 0.775 0.775 0.975 0.625 0.35 0.125 0.725 0.025 0.225 0.425 0.45  0.475 0.75 0.225 0.35  0.15  0.3 0.05 0.425 0.05 -l 1 -d -1

# e3: stairs environment

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 2 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/2/archive_3600.dat -w 2 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/3/archive_2400.dat -w 2 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/5/archive_3550.dat -w 2 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/4/archive_3050.dat -w 2 -l 1 -d -1

# tripod
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 2 -n 1 -c 1 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0.5 0 0.5 -l 1 -d -1

# hill climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 2 -n 1 -c  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0 0.5 0.5 0.5 -l 1 -d -1

# stair climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 2 -n 1 -c 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.32 0.66 0 0.32 0.66 -l 1 -d -1

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 2 -n 1 -c 1 0.175 0.85 0.7 0.475 0.725 0.225 0.675 0.6 0.125 0.25 0.375 0.7 0.15 0.8 0.45 0.425 0.5 0.225 0.275 0.175 0.45 0 0.825 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 2 -n 1 -c 1 0.275 0.4 0.125 0.425 0.325 0.125 0.85 0.45 0.825 0.4 0.775 0.225 0.35 0.75 0.25 0.85 0.475 0 0.975 0.025 0.525 0.775 0.925 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 2 -n 1 -c 1 0.575 0.275 0.9 0.7 0.925 1 0.8 0.725 0.175 0.9 0.55 0.375 0.8 0 0.325 0.475 0.85  0.4 0.45 0.3 0.175 0.625 0.65 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 2 -n 1 -c 1 0.55  0.025 0.725 0.175 0.25 0.35 0.425 0.975 0.45 0 0.35 0.575 0.45 1 0.7 0.325 0.975 0.2 0.275 0.325 0 0.55 0.25 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 2 -n 1 -c 1 0.75 0.825 0.675 0.775 0.775 0.975 0.625 0.35 0.125 0.725 0.025 0.225 0.425 0.45  0.475 0.75 0.225 0.35  0.15  0.3 0.05 0.425 0.05 -l 1 -d -1

# e4: sand dune (hill with less friction)

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -f 0.45 -w 1 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/2/archive_3600.dat -f 0.45 -w 1 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/3/archive_2400.dat -f 0.45 -w 1 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/5/archive_3550.dat -f 0.45 -w 1 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/4/archive_3050.dat -f 0.45 -w 1 -l 1 -d -1


# tripod
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -f 0.45 -w 1 -n 1 -c 1 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0.5 0 0.5 -l 1 -d -1

# hill climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -f 0.45 -w 1 -n 1 -c  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0 0.5 0.5 0.5 -l 1 -d -1

# stair climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -f 0.45 -w 1 -n 1 -c 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.32 0.66 0 0.32 0.66 -l 1 -d -1

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -f 0.45 -w 1 -n 1 -c 1 0.175 0.85 0.7 0.475 0.725 0.225 0.675 0.6 0.125 0.25 0.375 0.7 0.15 0.8 0.45 0.425 0.5 0.225 0.275 0.175 0.45 0 0.825 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -f 0.45 -w 1 -n 1 -c 1 0.275 0.4 0.125 0.425 0.325 0.125 0.85 0.45 0.825 0.4 0.775 0.225 0.35 0.75 0.25 0.85 0.475 0 0.975 0.025 0.525 0.775 0.925 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -f 0.45 -w 1 -n 1 -c 1 0.575 0.275 0.9 0.7 0.925 1 0.8 0.725 0.175 0.9 0.55 0.375 0.8 0 0.325 0.475 0.85  0.4 0.45 0.3 0.175 0.625 0.65 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -f 0.45 -w 1 -n 1 -c 1 0.55  0.025 0.725 0.175 0.25 0.35 0.425 0.975 0.45 0 0.35 0.575 0.45 1 0.7 0.325 0.975 0.2 0.275 0.325 0 0.55 0.25 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -f 0.45 -w 1 -n 1 -c 1 0.75 0.825 0.675 0.775 0.775 0.975 0.625 0.35 0.125 0.725 0.025 0.225 0.425 0.45  0.475 0.75 0.225 0.35  0.15  0.3 0.05 0.425 0.05 -l 1 -d -1

# e5: slope climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 3 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/2/archive_3600.dat -w 3 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/3/archive_2400.dat -w 3 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/5/archive_3550.dat -w 3 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/4/archive_3050.dat -w 3 -l 1 -d -1

# tripod
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 3 -n 1 -c 1 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0.5 0 0.5 -l 1 -d -1

# hill climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 3 -n 1 -c  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0 0.5 0.5 0.5 -l 1 -d -1

# stair climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 3 -n 1 -c 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.32 0.66 0 0.32 0.66 -l 1 -d -1

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 3 -n 1 -c 1 0.175 0.85 0.7 0.475 0.725 0.225 0.675 0.6 0.125 0.25 0.375 0.7 0.15 0.8 0.45 0.425 0.5 0.225 0.275 0.175 0.45 0 0.825 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 3 -n 1 -c 1 0.275 0.4 0.125 0.425 0.325 0.125 0.85 0.45 0.825 0.4 0.775 0.225 0.35 0.75 0.25 0.85 0.475 0 0.975 0.025 0.525 0.775 0.925 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 3 -n 1 -c 1 0.575 0.275 0.9 0.7 0.925 1 0.8 0.725 0.175 0.9 0.55 0.375 0.8 0 0.325 0.475 0.85  0.4 0.45 0.3 0.175 0.625 0.65 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 3 -n 1 -c 1 0.55  0.025 0.725 0.175 0.25 0.35 0.425 0.975 0.45 0 0.35 0.575 0.45 1 0.7 0.325 0.975 0.2 0.275 0.325 0 0.55 0.25 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 3 -n 1 -c 1 0.75 0.825 0.675 0.775 0.775 0.975 0.625 0.35 0.125 0.725 0.025 0.225 0.425 0.45  0.475 0.75 0.225 0.35  0.15  0.3 0.05 0.425 0.05 -l 1 -d -1

# e6: ditch traversal
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 5 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/2/archive_3600.dat -w 5 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/3/archive_2400.dat -w 5 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/5/archive_3550.dat -w 5 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/4/archive_3050.dat -w 5 -l 1 -d -1

# tripod
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 5 -n 1 -c 1 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0.5 0 0.5 -l 1 -d -1

# hill climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 5 -n 1 -c  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0 0.5 0.5 0.5 -l 1 -d -1

# stair climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 5 -n 1 -c 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.32 0.66 0 0.32 0.66 -l 1 -d -1

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 5 -n 1 -c 1 0.175 0.85 0.7 0.475 0.725 0.225 0.675 0.6 0.125 0.25 0.375 0.7 0.15 0.8 0.45 0.425 0.5 0.225 0.275 0.175 0.45 0 0.825 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 5 -n 1 -c 1 0.275 0.4 0.125 0.425 0.325 0.125 0.85 0.45 0.825 0.4 0.775 0.225 0.35 0.75 0.25 0.85 0.475 0 0.975 0.025 0.525 0.775 0.925 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 5 -n 1 -c 1 0.575 0.275 0.9 0.7 0.925 1 0.8 0.725 0.175 0.9 0.55 0.375 0.8 0 0.325 0.475 0.85  0.4 0.45 0.3 0.175 0.625 0.65 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 5 -n 1 -c 1 0.55  0.025 0.725 0.175 0.25 0.35 0.425 0.975 0.45 0 0.35 0.575 0.45 1 0.7 0.325 0.975 0.2 0.275 0.325 0 0.55 0.25 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 5 -n 1 -c 1 0.75 0.825 0.675 0.775 0.775 0.975 0.625 0.35 0.125 0.725 0.025 0.225 0.425 0.45  0.475 0.75 0.225 0.35  0.15  0.3 0.05 0.425 0.05 -l 1 -d -1

# e7: pipes traversal
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 6 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/2/archive_3600.dat -w 6 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/3/archive_2400.dat -w 6 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/5/archive_3550.dat -w 6 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/4/archive_3050.dat -w 6 -l 1 -d -1

# tripod
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 6 -n 1 -c 1 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0.5 0 0.5 -l 1 -d -1

# hill climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 6 -n 1 -c  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0 0.5 0.5 0.5 -l 1 -d -1

# stair climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 6 -n 1 -c 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.32 0.66 0 0.32 0.66 -l 1 -d -1

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 6 -n 1 -c 1 0.175 0.85 0.7 0.475 0.725 0.225 0.675 0.6 0.125 0.25 0.375 0.7 0.15 0.8 0.45 0.425 0.5 0.225 0.275 0.175 0.45 0 0.825 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 6 -n 1 -c 1 0.275 0.4 0.125 0.425 0.325 0.125 0.85 0.45 0.825 0.4 0.775 0.225 0.35 0.75 0.25 0.85 0.475 0 0.975 0.025 0.525 0.775 0.925 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 6 -n 1 -c 1 0.575 0.275 0.9 0.7 0.925 1 0.8 0.725 0.175 0.9 0.55 0.375 0.8 0 0.325 0.475 0.85  0.4 0.45 0.3 0.175 0.625 0.65 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 6 -n 1 -c 1 0.55  0.025 0.725 0.175 0.25 0.35 0.425 0.975 0.45 0 0.35 0.575 0.45 1 0.7 0.325 0.975 0.2 0.275 0.325 0 0.55 0.25 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 6 -n 1 -c 1 0.75 0.825 0.675 0.775 0.775 0.975 0.625 0.35 0.125 0.725 0.025 0.225 0.425 0.45  0.475 0.75 0.225 0.35  0.15  0.3 0.05 0.425 0.05 -l 1 -d -1

# e8: ditch traversal
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 7 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/2/archive_3600.dat -w 7 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/3/archive_2400.dat -w 7 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/5/archive_3550.dat -w 7 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/4/archive_3050.dat -w 7 -l 1 -d -1

# tripod
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 7 -n 1 -c 1 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0.5 0 0.5 -l 1 -d -1

# hill climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 7 -n 1 -c  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0 0.5 0.5 0.5 -l 1 -d -1

# stair climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 7 -n 1 -c 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.32 0.66 0 0.32 0.66 -l 1 -d -1

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 7 -n 1 -c 1 0.175 0.85 0.7 0.475 0.725 0.225 0.675 0.6 0.125 0.25 0.375 0.7 0.15 0.8 0.45 0.425 0.5 0.225 0.275 0.175 0.45 0 0.825 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 7 -n 1 -c 1 0.275 0.4 0.125 0.425 0.325 0.125 0.85 0.45 0.825 0.4 0.775 0.225 0.35 0.75 0.25 0.85 0.475 0 0.975 0.025 0.525 0.775 0.925 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 7 -n 1 -c 1 0.575 0.275 0.9 0.7 0.925 1 0.8 0.725 0.175 0.9 0.55 0.375 0.8 0 0.325 0.475 0.85  0.4 0.45 0.3 0.175 0.625 0.65 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 7 -n 1 -c 1 0.55  0.025 0.725 0.175 0.25 0.35 0.425 0.975 0.45 0 0.35 0.575 0.45 1 0.7 0.325 0.975 0.2 0.275 0.325 0 0.55 0.25 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 7 -n 1 -c 1 0.75 0.825 0.675 0.775 0.775 0.975 0.625 0.35 0.125 0.725 0.025 0.225 0.425 0.45  0.475 0.75 0.225 0.35  0.15  0.3 0.05 0.425 0.05 -l 1 -d -1

# e9: thick pipe traversal
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 8 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/2/archive_3600.dat -w 8 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/3/archive_2400.dat -w 8 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/5/archive_3550.dat -w 8 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/4/archive_3050.dat -w 8 -l 1 -d -1

# tripod
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 8 -n 1 -c 1 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0.5 0 0.5 -l 1 -d -1

# hill climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 8 -n 1 -c  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0 0.5 0.5 0.5 -l 1 -d -1

# stair climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 8 -n 1 -c 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.32 0.66 0 0.32 0.66 -l 1 -d -1

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 8 -n 1 -c 1 0.175 0.85 0.7 0.475 0.725 0.225 0.675 0.6 0.125 0.25 0.375 0.7 0.15 0.8 0.45 0.425 0.5 0.225 0.275 0.175 0.45 0 0.825 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 8 -n 1 -c 1 0.275 0.4 0.125 0.425 0.325 0.125 0.85 0.45 0.825 0.4 0.775 0.225 0.35 0.75 0.25 0.85 0.475 0 0.975 0.025 0.525 0.775 0.925 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 8 -n 1 -c 1 0.575 0.275 0.9 0.7 0.925 1 0.8 0.725 0.175 0.9 0.55 0.375 0.8 0 0.325 0.475 0.85  0.4 0.45 0.3 0.175 0.625 0.65 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 8 -n 1 -c 1 0.55  0.025 0.725 0.175 0.25 0.35 0.425 0.975 0.45 0 0.35 0.575 0.45 1 0.7 0.325 0.975 0.2 0.275 0.325 0 0.55 0.25 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 8 -n 1 -c 1 0.75 0.825 0.675 0.775 0.775 0.975 0.625 0.35 0.125 0.725 0.025 0.225 0.425 0.45  0.475 0.75 0.225 0.35  0.15  0.3 0.05 0.425 0.05 -l 1 -d -1

# e10: thin pipe traversal
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 9 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/2/archive_3600.dat -w 9 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/3/archive_2400.dat -w 9 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/5/archive_3550.dat -w 9 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/4/archive_3050.dat -w 9 -l 1 -d -1

# tripod
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 9 -n 1 -c 1 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0.5 0 0.5 -l 1 -d -1

# hill climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 9 -n 1 -c  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0 0.5 0.5 0.5 -l 1 -d -1

# stair climb
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 9 -n 1 -c 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.32 0.66 0 0.32 0.66 -l 1 -d -1

# best map gaits
./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 9 -n 1 -c 1 0.175 0.85 0.7 0.475 0.725 0.225 0.675 0.6 0.125 0.25 0.375 0.7 0.15 0.8 0.45 0.425 0.5 0.225 0.275 0.175 0.45 0 0.825 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 9 -n 1 -c 1 0.275 0.4 0.125 0.425 0.325 0.125 0.85 0.45 0.825 0.4 0.775 0.225 0.35 0.75 0.25 0.85 0.475 0 0.975 0.025 0.525 0.775 0.925 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 9 -n 1 -c 1 0.575 0.275 0.9 0.7 0.925 1 0.8 0.725 0.175 0.9 0.55 0.375 0.8 0 0.325 0.475 0.85  0.4 0.45 0.3 0.175 0.625 0.65 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 9 -n 1 -c 1 0.55  0.025 0.725 0.175 0.25 0.35 0.425 0.975 0.45 0 0.35 0.575 0.45 1 0.7 0.325 0.975 0.2 0.275 0.325 0 0.55 0.25 -l 1 -d -1

./build/exp/rhex-ite/rhex_simu ~/itev2/map_stats/dcf0608/1/archive_2300.dat -w 9 -n 1 -c 1 0.75 0.825 0.675 0.775 0.775 0.975 0.625 0.35 0.125 0.725 0.025 0.225 0.425 0.45  0.475 0.75 0.225 0.35  0.15  0.3 0.05 0.425 0.05 -l 1 -d -1

echo "Finished Experiments"
