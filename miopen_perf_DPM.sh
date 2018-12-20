#!/bin/bash
make
rocm-smi --setsclk 0
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 512 -C 512 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N512_C512_K512_H28_W28_DPM0.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N512_C512_K512_H28_W28_DPM0.csv
rocm-smi --setsclk 1
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 512 -C 512 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N512_C512_K512_H28_W28_DPM1.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N512_C512_K512_H28_W28_DPM1.csv
rocm-smi --setsclk 2
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 512 -C 512 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N512_C512_K512_H28_W28_DPM2.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N512_C512_K512_H28_W28_DPM2.csv
rocm-smi --setsclk 3
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 512 -C 512 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N512_C512_K512_H28_W28_DPM3.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N512_C512_K512_H28_W28_DPM3.csv
rocm-smi --setsclk 4
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 512 -C 512 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N512_C512_K512_H28_W28_DPM4.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N512_C512_K512_H28_W28_DPM4.csv
rocm-smi --setsclk 5
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 512 -C 512 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N512_C512_K512_H28_W28_DPM5.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N512_C512_K512_H28_W28_DPM5.csv
rocm-smi --setsclk 6
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 512 -C 512 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N512_C512_K512_H28_W28_DPM6.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N512_C512_K512_H28_W28_DPM6.csv
rocm-smi --setsclk 7
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 512 -C 512 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N512_C512_K512_H28_W28_DPM7.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N512_C512_K512_H28_W28_DPM7.csv
touch stop_power_dump.txt
bash miopen_max_current.sh





