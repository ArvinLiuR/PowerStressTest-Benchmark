# MIOpen Benchmarks Power Stress Test

### Tools

- Benchmarking class to log kernel runtime and hardware details (temp, clock) to `tsv` and log files
- `Atitool`: auto monitor power/current

### Building
```
make
```

### Specific Steps
1．	Decompress and enter files in miopen-benchmark-master folder
    a. If you already had original miopen-benchmark folder, you can unzip the tarball 'PowerStressTest.zip' in the old folder 
	   (original files won't be replaced except for Makefile)
	b. If you don't have any miopen-benchmark files before, you can directly unzip the tarball 'Miopen-Benchmark-Power-Stress'

2.  Install the ATITOOL monitor
    i. Whatever you unzip each tarball, you will get another tarball named 'ATITOOL_1.11.57.59_Linux_64bit.tar' 
	   and extract it with your files in same folder (especially 'atitool')
	ii. Get current directory path and go to the file 'miopen_power_pm.sh' Line 13 to replace the original path of 'atitool'
	    (eg: "sudo /home/wxn/aliu/MB_NewTask/new/miopen-benchmark-master/atitool" can be replaced to "sudo /home/test/miopen-benchmark/atitool". )
	    and keep remaining code in Line 13)

3．	Input your parameters
    i. Users can open "miopen_perf_1.sh", "miopen_perf_45.sh" or ""miopen_perf_DPM.sh" to input different variables
	ii. Users can change number after after the "-argument"
	    (eg: "./benchmark_wino_2 W1 -N 512 -C 512 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10000 | tee W_N512_C512_K512_H28_W28.log" 
	    can be replaced to "./benchmark_wino_2 W1 -N 511 -C 512 -K 512 -H 28 -W 28 -R 3 -P 1 -i 10 | tee W_N511_C512_K512_H28_W28.log". )
    Tips: a. Argument Meaning:
	         Batch Size (N), Input Maps (C), Output (K), Input Height (H), Input Width (W), Filter (R x S), Padding (P), Times (i)
	      b. Change the output log/csv files name reasonably

4.  Run the program
    i. Open one terminal command window and change dictionary to your power stress path
	ii. Use "sh miopen_power_pm.sh" to run the monitor program
	iii. Open another terminal command window and change dictionary to your power stress path
	iv. Start main program
	    a. If you want to test different cases in one time, you can input your variables and use "sh miopen_perf_45.sh"
		   (I made 45 cases from VGG16 and other nets to test Conv(3x3). Users can add or subtract new input according to their own needs.)
		b. If you want to add new cases and compare with old tests, you can add and use "sh miopen_perf_1.sh" 
		c. If you want to test input in different DPM environments, you can edit and use "sh miopen_perf_DPM.sh"
    Tips: There are a lot of commands (like rocm-smi) involved in the Linux ststem's sudo level, so it will pause the program and let user enter sudo password. 
	      For program continuity, I recommend that users turn off the step of sudo password protecting in the Linux system ahead of time. 

5.  Check the result
    i. Open the 'power_result.csv' and save in Excel workform type



