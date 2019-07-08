#!/bin/bash

i=0
timer=$1

while [ $i -ne $timer ]
do
        time wget -r $2
#       index=time wget -r $2
#       echo "$index" >> index.html
        sleep 1s
        i=$(($i+1))
done
