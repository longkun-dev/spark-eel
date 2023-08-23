#!/bin/bash

start_date="$1"
end_date="$2"
yarn_job_queue=default
username=postgres
password=secret

database=spark_etl
jbdc_url=jdbc:postgresql://1.117.115.130:5432/${database}
table_name=se_client_info
columns=id,client_no,client_name,certificate_type,certificate_number,sex,birthday,region_code
query="select * from public.se_client_info where 1 = 1 and \$CONDITIONS"


sqoop import \
  --connect "${jbdc_url}" \
  --username "${username}" \
  --password "${password}" \
  --hive-import \
  --hive-database "${database}" \
  --hive-table "${table_name}" \
  --columns "${columns}" \
  --query "${query}" \
  --fields-terminated-by ',' \
  --lines-terminated-by '\n' \
  --null-string "" \
  --hive-overwrite \
  --delete-target-dir \
  --target-dir "/sqoop/${database}/${table_name}/tmp" \
  --num-mappers 1
