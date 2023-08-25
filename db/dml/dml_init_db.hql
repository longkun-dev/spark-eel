-- Hive 表初始化

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
values (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'JPY', '日元'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'USD', '美元'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'EUR', '欧元'),
       (regexp_replace(reflect('java.util.UUID', 'randomUUID'), '-', ''), 'HKD', '港币');
