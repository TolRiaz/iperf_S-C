#!/bin/bash

if $1 && $2
then
	echo "ERROR ex) client_iperf.sh {IP address} {Mbits}"
else
	ipf="iperf -c $1 -u -i1 -b$2M"
fi

while $ipf
do
	sleep 1
done
