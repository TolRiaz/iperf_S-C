#!/bin/bash

i=0
timer=$1

while [ $i -ne $timer ]
do
        time curl $2
        sleep 1s
        i=$(($i+1))
done
