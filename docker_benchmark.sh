#!/bin/bash
TIMEFORMAT='%R'
fileName="docker.log";
if [ -f $fileName ]; then
    rm $fileName
fi

for counter in $(seq 1 3); 
  do
  { time docker run -t -i -p 80:4000 665949732128.dkr.ecr.sa-east-1.amazonaws.com/ban2-api:start-benchmark ; } 2>> docker.log;
done
