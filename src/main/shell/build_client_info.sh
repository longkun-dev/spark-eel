#!/bin/bash

start_date="$1"
end_date="$2"

echo "${start_date}"
echo "${end_date}"

spark-submit \
  --class com.chenxii.sparketl.service.BuildClientInfoService \
  --master yarn \
  --deploy-mode cluster \
  --driver-memory 1g \
  --executor-memory 1g \
  --driver-cores 1 \
  --executor-cores 1 \
  --queue default \
  spark-etl-1.1.0.jar \
  "${start_date}" \
  "${end_date}"
