#!/bin/bash

server="iperf -s -u -i1"

 $server | ./server.out
