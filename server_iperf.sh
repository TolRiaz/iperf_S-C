#!/bin/bash

test='iperf -s -u -i1'

while $test | grep SUM; do echo $(test) > index.html; done
