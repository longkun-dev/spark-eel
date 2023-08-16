insert overwrite table spark_etl.se_client_info
values (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'C202300001', '王青秀', '01', '123456789',
        '男', '1992-09-10', '01'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'C202300002', '徐莉', '05', '0091231333',
        '女', '1994-12-24', '01'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'C202300003', '海曲', '07', '202019992113',
        '男', '2002-01-19', '02'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'C202300004', '皮多夫', '04', '98822133445',
        '男', '2005-07-31', '02'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'C202300005', '韩离', '03', '988213445',
        '男', '1998-05-15', '03'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'C202300006', '李秀玉', '02', '8712631309221',
        '女', '1999-09-09', '03'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'C202300007', '李思雨', '01', '7612902938123',
        '女', '1996-08-19', '04'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'C202300008', '杨浦', '01', '817263812312',
        '男', '1999-08-01', '04'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'C202300009', '陈曦', '04', 'A831235513323',
        '女', '2000-03-06', '05'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'C202300010', '鹏飞', '06', 'G09218324534',
        '男', '1992-10-15', '05');



insert overwrite table spark_etl.se_certificate_type_tbl
values (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), '01', '居民身份证'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), '02', '临时居民身份证'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), '03', '军官证'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), '04', '护照'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), '05', '外国人居留证'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), '06', '外国人出入境证'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), '07', '学生证');



insert overwrite table spark_etl.se_region_tbl
values (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), '01', '海南'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), '02', '西藏'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), '03', '青海'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), '04', '云南'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), '05', '广西');



insert overwrite table spark_etl.se_currency_tbl
values (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), '01', 'JPY'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), '02', 'USD'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), '03', 'EUR'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), '04', 'HKD');



insert overwrite table spark_etl.se_currency_rate
values (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), '01', '20230101', '1'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), '02', '20230101', '4.21'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), '03', '20230101', '9.20'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), '04', '20230101', '10.32'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), '01', '20230102', '1'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), '02', '20230102', '5.90'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), '03', '20230102', '8.20'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), '04', '20230102', '10.10');



insert overwrite table spark_etl.se_transaction_info partition (transaction_date = '20230101')
values (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300001', '100', '01'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300001', '150', '02'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300002', '200', '03'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300003', '30', '04'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300003', '190', '01'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300003', '900', '02'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300004', '10', '03'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300004', '80', '04'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300005', '200', '01'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300005', '290', '02'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300006', '170', '03'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300007', '180', '04'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300008', '10', '01'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300008', '40', '02'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300009', '90', '03'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300010', '20', '04');

insert overwrite table spark_etl.se_transaction_info partition (transaction_date = '20230102')
values (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300001', '120', '01'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300001', '110', '02'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300002', '20', '03'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300003', '40', '04'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300003', '90', '01'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300003', '40', '02'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300004', '70', '03'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300004', '100', '04'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300005', '170', '01'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300005', '180', '02'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300006', '20', '03'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300007', '500', '04'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300008', '90', '01'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300008', '50', '02'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300009', '10', '03'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300010', '10', '04');

insert overwrite table spark_etl.se_transaction_info partition (transaction_date = '20230103')
values (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300001', '80', '01'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300004', '110', '02'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300009', '2010', '03'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'N2023010001', 'C202300005', '20', '04');