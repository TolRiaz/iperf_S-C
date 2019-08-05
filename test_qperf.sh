#!/bin/bash
BW=$1
timer=$2
currentBW=0
currentCNT=0
let term=$timer*4

while [ $currentBW -ne $BW ]
do
        currentCNT=$(($currentCNT+1))
        if [ "$currentCNT" = $timer ]; then
                currentCNT=0
                currentBW=$(($currentBW+2))
                iperf -c 220.149.13.181 -u -b$(($currentBW))M -t $term &
        fi

        qperf 220.149.13.181 --listen_port 10110 tcp_bw tcp_lat >> qperf_test_$(($currentBW))M
done

# qperf test with iperf
