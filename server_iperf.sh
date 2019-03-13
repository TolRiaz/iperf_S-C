#!/bin/bash

if $1 
then
	iperf -s -u -i1
else
	iperf -s -u -i$1
fi
