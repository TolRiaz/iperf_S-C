#!/bin/bash

i=0
timer=$1

while [ $i -ne $timer ]
do
        (time wget -r $2) 2>> index.html
        sleep 1s
        i=$(($i+1))
done
