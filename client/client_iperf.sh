#!/bin/bash

if $1 && $2 && $3
then
	echo "ERROR ex) client_iperf.sh {IP address} {Mbits} {Port}"
else
	ipf="iperf -c $1 -u -i1 -b$2M -p $3"
fi

while $ipf
do
	sleep 1
done
