#!/bin/bash
make
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 64 -C 3 -K 64 -H 224 -W 224 -R 3 -P 1 -i 10000 | tee W_N64_C3_K64_H224_W224.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N64_C3_K64_H224_W224.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 128 -C 3 -K 64 -H 224 -W 224 -R 3 -P 1 -i 10000 | tee W_N128_C3_K64_H224_W224.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N128_C3_K64_H224_W224.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 256 -C 3 -K 64 -H 224 -W 224 -R 3 -P 1 -i 10000 | tee W_N256_C3_K64_H224_W224.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N256_C3_K64_H224_W224.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 63 -C 3 -K 64 -H 224 -W 224 -R 3 -P 1 -i 10000 | tee W_N63_C3_K64_H224_W224.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N63_C3_K64_H224_W224.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 127 -C 3 -K 64 -H 224 -W 224 -R 3 -P 1 -i 10000 | tee W_N127_C3_K64_H224_W224.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N127_C3_K64_H224_W224.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 255 -C 3 -K 64 -H 224 -W 224 -R 3 -P 1 -i 10000 | tee W_N255_C3_K64_H224_W224.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N255_C3_K64_H224_W224.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 32 -C 64 -K 64 -H 224 -W 224 -R 3 -P 1 -i 10000 | tee W_N32_C64_K64_H224_W224.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N32_C64_K64_H224_W224.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 32 -C 64 -K 128 -H 112 -W 112 -R 3 -P 1 -i 10000 | tee W_N32_C64_K128_H112_W112.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N32_C64_K128_H112_W112.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 32 -C 128 -K 128 -H 112 -W 112 -R 3 -P 1 -i 10000 | tee W_N32_C128_K128_H112_W112.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N32_C128_K128_H112_W112.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 32 -C 128 -K 256 -H 56 -W 56 -R 3 -P 1 -i 10000 | tee W_N32_C32_K128_H56_W56.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N32_C32_K128_H56_W56.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 32 -C 256 -K 256 -H 56 -W 56 -R 3 -P 1 -i 10000 | tee W_N32_C256_K128_H56_W56.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N32_C256_K128_H56_W56.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 32 -C 256 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N32_C256_K512_H28_W28.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N32_C256_K512_H28_W28.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 32 -C 512 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N32_C512_K512_H28_W28.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N32_C512_K512_H28_W28.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 64 -C 512 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N64_C512_K512_H28_W28.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N64_C512_K512_H28_W28.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 128 -C 512 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N128_C512_K512_H28_W28.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N128_C512_K512_H28_W28.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 256 -C 512 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N256_C512_K512_H28_W28.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N256_C512_K512_H28_W28.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 63 -C 512 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N63_C512_K512_H28_W28.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N63_C512_K512_H28_W28.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 127 -C 512 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N127_C512_K512_H28_W28.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N127_C512_K512_H28_W28.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 255 -C 512 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N255_C512_K512_H28_W28.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N255_C512_K512_H28_W28.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 511 -C 512 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N511_C512_K512_H28_W28.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N511_C512_K512_H28_W28.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 32 -C 512 -K 512 -H 14 -W 14 -R 3 -P 1 -i 10000 | tee W_N32_C512_K512_H14_W14.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N32_C512_K512_H14_W14.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 64 -C 256 -K 256 -H 56 -W 56 -R 3 -P 1 -i 10000 | tee W_N64_C256_K256_H56_W56.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N64_C256_K256_H56_W56.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 128 -C 256 -K 256 -H 56 -W 56 -R 3 -P 1 -i 10000 | tee W_N128_C256_K256_H56_W56.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N128_C256_K256_H56_W56.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 256 -C 256 -K 256 -H 56 -W 56 -R 3 -P 1 -i 10000 | tee W_N256_C256_K256_H56_W56.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N256_C256_K256_H56_W56.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 63 -C 256 -K 256 -H 56 -W 56 -R 3 -P 1 -i 10000 | tee W_N63_C256_K256_H56_W56.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N63_C256_K256_H56_W56.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 127 -C 256 -K 256 -H 56 -W 56 -R 3 -P 1 -i 10000 | tee W_N127_C256_K256_H56_W56.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N127_C256_K256_H56_W56.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 255 -C 256 -K 256 -H 56 -W 56 -R 3 -P 1 -i 10000 | tee W_N255_C256_K256_H56_W56.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N255_C256_K256_H56_W56.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 511 -C 256 -K 256 -H 56 -W 56 -R 3 -P 1 -i 10000 | tee W_N511_C256_K256_H56_W56.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N511_C256_K256_H56_W56.csv
touch start_power_dump.txt
##################################################################################################################
./benchmark_wino_2 W1 -N 64 -C 256 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N64_C256_K512_H28_W28.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N64_C256_K512_H28_W28.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 128 -C 256 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N128_C256_K512_H28_W28.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N128_C256_K512_H28_W28.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 256 -C 256 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N256_C256_K512_H28_W28.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N256_C256_K512_H28_W28.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 63 -C 256 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N63_C256_K512_H28_W28.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N63_C256_K512_H28_W28.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 127 -C 256 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N127_C256_K512_H28_W28.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N127_C256_K512_H28_W28.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 255 -C 256 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N255_C256_K512_H28_W28.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N255_C256_K512_H28_W28.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 511 -C 256 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N511_C256_K512_H28_W28.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N511_C256_K512_H28_W28.csv
touch start_power_dump.txt
##################################################################################################################
./benchmark_wino_2 W1 -N 64 -C 128 -K 128 -H 112 -W 112 -R 3 -P 1 -i 10000 | tee W_N64_C128_K128_H112_W112.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N64_C128_K128_H112_W112.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 128 -C 128 -K 128 -H 112 -W 112 -R 3 -P 1 -i 10000 | tee W_N128_C128_K128_H112_W112.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N128_C128_K128_H112_W112.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 256 -C 128 -K 128 -H 112 -W 112 -R 3 -P 1 -i 10000 | tee W_N256_C128_K128_H112_W112.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N256_C128_K128_H112_W112.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 63 -C 128 -K 128 -H 112 -W 112 -R 3 -P 1 -i 10000 | tee W_N63_C128_K128_H112_W112.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N63_C128_K128_H112_W112.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 127 -C 128 -K 128 -H 112 -W 112 -R 3 -P 1 -i 10000 | tee W_N127_C128_K128_H112_W112.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N127_C128_K128_H112_W112.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 255 -C 128 -K 128 -H 112 -W 112 -R 3 -P 1 -i 10000 | tee W_N255_C128_K128_H112_W112.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N255_C128_K128_H112_W112.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 32 -C 512 -K 512 -H 56 -W 56 -R 3 -P 1 -i 10000 | tee W_N32_C512_K512_H56_W56.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N32_C512_K512_H56_W56.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 511 -C 520 -K 520 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N511_C520_K520_H28_W28.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N511_C520_K520_H28_W28.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 512 -C 512 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N512_C512_K512_H28_W28.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N512_C512_K512_H28_W28.csv
touch start_power_dump.txt
./benchmark_wino_2 W1 -N 512 -C 520 -K 520 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N512_C520_K520_H28_W28.log
rm start_power_dump.txt -rf
touch terminate.txt
mv pm.csv W_N512_C520_K520_H28_W28.csv
touch stop_power_dump.txt
bash miopen_max_current.sh





