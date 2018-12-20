#!/bin/bash
make
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 512 -C 512 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N512_C512_K512_H28_W28.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N512_C512_K512_H28_W28.csv
touch stop_power_dump.txt
bash miopen_max_current.sh





