#!/bin/bash

#enable pm log

while [ 0 ]; do
    if [ -f "stop_power_dump.txt" ]; then
	sudo rm -rf stop_power_dump.txt
	exit 0 
    fi

    if [ -f "start_power_dump.txt" ]; then
    	echo "Waiting for Start Power Dump Signal:$num"
    	sudo /home/wxn/aliu/MB_NewTask/new/miopen-benchmark-master/atitool -i=0 -pmloggroups="Power,Telemetry,State Residencies,Frequencies" -pmperiod=50 -pmstopcheck -pmoutput=pm.csv
    	sleep 0.1
    	continue
    fi
done






