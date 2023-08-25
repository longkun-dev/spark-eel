-- 建立数据库
drop database if exists spark_etl;
create database spark_etl;


-- 客户资料表
drop table if exists spark_etl.se_client_info;
create table spark_etl.se_client_info
(
    id                 string comment '主键id',
    client_no          string comment '客户号',
    client_name        string comment '客户姓名',
    certificate_type   string comment '证件类型',
    certificate_number string comment '证件号码',
    sex                string comment '性别',
    birthday           string comment '出生日期(yyyy-MM-dd)'
) partitioned by (region_code string comment '所属行政区编码')
    row format delimited
        fields terminated by ','
        lines terminated by '\n'
    stored as textfile;


drop table if exists spark_etl.se_client_info_step1;
create table spark_etl.se_client_info_step1
(
    id                    string comment '主键id',
    client_no             string comment '客户号',
    client_name           string comment '客户姓名',
    certificate_type_name string comment '证件类型',
    certificate_number    string comment '证件号码',
    sex                   string comment '性别',
    birthday              string comment '出生日期(yyyy-MM-dd)',
    region_name           string comment '所属区域'
) row format delimited
    fields terminated by ','
    lines terminated by '\n'
    stored as textfile;


drop table if exists spark_etl.se_client_info_step2;
create table spark_etl.se_client_info_step2
(
    id                    string comment '主键id',
    client_no             string comment '客户号',
    client_name           string comment '客户姓名',
    certificate_type_name string comment '证件类型',
    certificate_number    string comment '证件号码',
    sex                   string comment '性别',
    birthday              string comment '出生日期(yyyy-MM-dd)',
    region_name           string comment '所属区域'
) row format delimited
    fields terminated by ','
    lines terminated by '\n'
    stored as textfile;


-- 证件类型码表
drop table if exists spark_etl.se_certificate_type_tbl;
create table spark_etl.se_certificate_type_tbl
(
    id                    string comment '主键id',
    certificate_type      string comment '证件类型编码',
    certificate_type_name string comment '证件类型名称'
) row format delimited
    fields terminated by ','
    lines terminated by '\n'
    stored as textfile;


-- 行政区码表
drop table if exists spark_etl.se_region_tbl;
create table spark_etl.se_region_tbl
(
    id          string comment '主键id',
    region_code string comment '行政区编码',
    region_name string comment '行政区名称'
) row format delimited
    fields terminated by ','
    lines terminated by '\n'
    stored as textfile;


-- 交易信息表
drop table if exists spark_etl.se_transaction_info;
create table spark_etl.se_transaction_info
(
    id             string comment '主键id',
    transaction_no string comment '交易流水号',
    client_no      string comment '客户号',
    amount         string comment '交易金额',
    currency       string comment '币种'
) partitioned by (transaction_date string comment '交易日期(yyyyMMdd)')
    row format delimited
        fields terminated by ','
        lines terminated by '\n'
    stored as textfile;


drop table if exists spark_etl.se_transaction_info_step1;
create table spark_etl.se_transaction_info_step1
(
    id             string comment '主键id',
    transaction_no string comment '交易流水号',
    client_name    string comment '客户姓名',
    currency_name  string comment '币种',
    amount         string comment '交易金额'
) partitioned by (transaction_date string comment '交易日期(yyyyMMdd)')
    row format delimited
        fields terminated by ','
        lines terminated by '\n'
    stored as textfile;


drop table if exists spark_etl.se_transaction_info_step2;
create table spark_etl.se_transaction_info_step2
(
    id             string comment '主键id',
    transaction_no string comment '交易流水号',
    client_name    string comment '客户姓名',
    currency_name  string comment '币种',
    amount         string comment '交易金额'
) partitioned by (transaction_date string comment '交易日期(yyyyMMdd)')
    row format delimited
        fields terminated by ','
        lines terminated by '\n'
    stored as textfile;


-- 行政区码表
drop table if exists spark_etl.se_currency_tbl;
create table spark_etl.se_currency_tbl
(
    id            string comment '主键id',
    currency      string comment '币种编码',
    currency_name string comment '币种名称'
) row format delimited
    fields terminated by ','
    lines terminated by '\n'
    stored as textfile;


-- 汇率表
drop table if exists spark_etl.se_currency_rate;
create table spark_etl.se_currency_rate
(
    id         string comment '主键id',
    currency   string comment '币种编码',
    stats_date string comment '日期(yyyy-MM-dd)',
    rate       string comment '汇率'
) row format delimited
    fields terminated by ','
    lines terminated by '\n'
    stored as textfile;
