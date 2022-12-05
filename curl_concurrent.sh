#!/bin/bash
for counter in $(seq 1 1000); 
  do
  curl --location --request GET 'http://ec2-18-230-70-90.sa-east-1.compute.amazonaws.com/healthcheck';
done