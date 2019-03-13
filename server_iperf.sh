#!/bin/bash

if $1 
then
	iperf -s -u -i1 | grep SUM
else
	iperf -s -u -i$1 | grep SUM
fi
