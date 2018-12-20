#!/bin/bash

gpu_max_vddc=0
gpu_max_line=""

#batchsize=$1
timestart=""
timeend=""

echo "File,Time Start,Time End,Time Stamp,GPU0,GPU0 Telemetry Telemetry Current VDDCR_SOC,Max Current VDDCR_SOC" > power_result.csv

ls W_*.csv | while read FILE  
do   
    while read LINE  
    do   
    	IFS=','
    	arr=($LINE)
	
	if [ "${arr[0]}" = "Time Stamp" ] ; then
		continue
	fi

	if [ "${timestart}" = "" ] ; then
	     	timestart=${arr[0]}
	fi 

	if [ $(echo "${arr[6]} > ${gpu_max_vddc}" | bc) -eq 1 ] ;  then
		gpu_max_vddc=${arr[6]}
		gpu_max_line="${arr[0]},${arr[1]},${arr[6]},${gpu_max_vddc}"

	fi
	
	timeend=${arr[0]}

    done < $FILE
    
    
    echo "${FILE},${timestart},${timeend},${gpu_max_line}" >> power_result.csv
    
    gpu_max_vddc=0
    gpu_max_line=""
    timestart=""
    timeend=""

done




