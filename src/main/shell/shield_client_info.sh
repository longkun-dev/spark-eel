#!/bin/bash

start_date="$1"
end_date="$2"

spark-submit \
  --class com.chenxii.sparketl.service.ShieldClientInfoService \
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
