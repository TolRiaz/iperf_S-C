#!/bin/bash

i=0
timer=$1
wget="time wget -r $2"

while [ $i -ne $timer ]
do
        $wget | ./wget.out
        sleep 1s
        i=$(($i+1))
done
