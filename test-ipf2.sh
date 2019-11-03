#!/bin/bash

if $1 && $2 && $3 && $4
then
        echo "ERROR ex) client_iperf.sh {IP address} {Mb
else
        ipf="iperf -c $1 -u -i1 -b$2M -p $3 -P $4 -t 5"
fi

while true
do
        { $ipf | grep 'read failed: Connection refused';
        sleep 1
done
