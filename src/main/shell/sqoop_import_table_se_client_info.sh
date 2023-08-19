#!/bin/bash

start_date="$1"
end_date="$2"
yarn_job_queue=default
jbdc_url=jdbc:postgresql://vm2:5432/spark_etl
username=postgres
password=secret

database=spark_etl
table_name=se_client_info
columns=id,client_no,client_name,certificate_type,certificate_number,sex,birthday,region_code
query="select * from spark_etl.se_client_info"

#spark-submit --class com.chenxii.sparketl.task.XXXX \
#  --executor-cores 1 \
#  --executor-memory 200m \
#  --total-executor-cores 1 \
#  --driver memory 300m \
#  --master yarn \
#  --name sqoop_import_table_se_client_info \

sqoop import \
  --connect "${jbdc_url}" \
  --username "${username}" \
  --password "${password}" \
  --hive-import \
  --hive-database "${database}" \
  --hive-table "${table_name}" \
  --columns "${columns}" \
  --query "${query}" \
  --input-fields-terminated-by ',' \
  --input-line-terminated-by '\n' \
  --null-string "" \
  --hive-overwrite \
  --num-mappers 1
