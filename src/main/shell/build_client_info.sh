#!/bin/bash

start_date="$1"
end_date="$2"

echo "1: "
echo "${start_date}"
echo "2: "
echo "${end_date}"

spark-submit \
  --class com.chenxii.sparketl.service.BuildClientInfoService \
  --master yarn \
  --deploy-mode cluster \
  --driver-memory 200m \
  --executor-memory 200m \
  --total-executor-cores 2 \
  --driver-cores 1 \
  --executor-cores 1 \
  --num-executors 2 \
  --queue default \
  spark-etl-1.1.0.jar \
  "${start_date}" \
  "${end_date}"
