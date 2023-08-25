create database if not exists spark_etl;


drop table if exists public.se_client_info;
create table public.se_client_info
(
    id                 varchar(100),
    client_no          varchar(100),
    client_name        varchar(100),
    certificate_type   varchar(2),
    certificate_number varchar(100),
    sex                varchar(1),
    birthday           varchar(10),
    region_code        varchar(2)
);



drop table if exists public.se_certificate_type_tbl;
create table public.se_certificate_type_tbl
(
    id                    varchar(100),
    certificate_type      varchar(2),
    certificate_type_name varchar(100)
);



create table public.se_region_tbl
(
    id          varchar(100),
    region_code varchar(2),
    region_name varchar(100)
);



drop table if exists public.se_currency_tbl;
create table public.se_currency_tbl
(
    id            varchar(100),
    currency      varchar(10),
    currency_name varchar(100)
);



drop table if exists spark_etl.se_currency_rate;
create table public.se_currency_rate
(
    id         varchar(100),
    currency   varchar(10),
    stats_date date,
    rate       numeric(5, 2)
);



drop table if exists public.se_transaction_info;
create table public.se_transaction_info
(
    id               varchar(100),
    transaction_no   varchar(100),
    client_no        varchar(100),
    amount           numeric(10, 2),
    currency         varchar(10),
    transaction_date date
);
