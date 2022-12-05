#!/bin/bash
fileName="memory.log";
if [ -f $fileName ]; then
    rm $fileName
fi
while true; 
do 
    free | grep Mem | awk '{print $2","$3","$3/$2 * 100.0}' >> $fileName; 
    sleep 1; 
done