#!/bin/bash
timer=$2
currentBW=0
currentCNT=0
let BW=$1

while [ $currentBW -le $BW ]
do
        currentCNT=$(($currentCNT+1))
        if [ "$currentCNT" = $timer ]; then
                # kill iperf
                kill -9 $(ps -ef | grep "iperf -c" | grep -v grep | awk '{print $2}') &
                currentCNT=0
                currentBW=$(($currentBW+1))
                iperf -c 220.149.13.181 -u -b$(($currentBW))M -t 300 &
        fi

        qperf 220.149.13.181 --listen_port 10110 tcp_bw tcp_lat >> qperf_test_$(($currentBW))M
done

# qperf test with iperf
