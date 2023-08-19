#!/bin/bash

start_date="$1"
end_date="$2"
yarn_job_queue=default
jbdc_url=jdbc:postgresql://vm2:5432/spark_etl
username=postgres
password=secret

database=spark_etl
table_name=se_transaction_info
columns=id,transaction_no,client_no,amount,currency,transaction_date
query="select ${columns} from spark_etl.se_transaction_info where transaction_date = ${start_date}"

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
