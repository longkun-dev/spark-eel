#!/bin/bash

start_date="$1"
end_date="$2"
yarn_job_queue=default
username=postgres
password=secret

database=spark_etl
jbdc_url=jdbc:postgresql://1.117.115.130:5432/${database}
table_name=se_transaction_info
columns=id,transaction_no,client_no,amount,currency,transaction_date
query="select id,transaction_no,client_no,amount::text,currency,
 regexp_replace(regexp_replace(transaction_date::text, '-', ''), '-', '') as transaction_date
 from public.se_transaction_info
 where transaction_date = to_date('${start_date}', 'yyyy-MM-dd')
   and \$CONDITIONS"

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
  --delete-target-dir \
  --target-dir "/sqoop/${database}/${table_name}/tmp" \
  --num-mappers 1
