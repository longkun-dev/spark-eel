-- PG 表初始化

insert into public.se_client_info (id, client_no, client_name, certificate_type, certificate_number, sex, birthday,
                                   region_code)
values (gen_random_uuid(), 'C202300001', '王青秀', '01', '123456789', '男', '1992-09-10', '01'),
       (gen_random_uuid(), 'C202300002', '徐莉', '05', '0091231333', '女', '1994-12-24', '01'),
       (gen_random_uuid(), 'C202300003', '海曲', '07', '202019992113', '男', '2002-01-19', '02'),
       (gen_random_uuid(), 'C202300004', '皮多夫', '04', '98822133445', '男', '2005-07-31', '02'),
       (gen_random_uuid(), 'C202300005', '韩离', '03', '988213445', '男', '1998-05-15', '03'),
       (gen_random_uuid(), 'C202300006', '李秀玉', '02', '8712631309221', '女', '1999-09-09', '03'),
       (gen_random_uuid(), 'C202300007', '李思雨', '01', '7612902938123', '女', '1996-08-19', '04'),
       (gen_random_uuid(), 'C202300008', '杨浦', '01', '817263812312', '男', '1999-08-01', '04'),
       (gen_random_uuid(), 'C202300009', '陈曦', '04', 'A831235513323', '女', '2000-03-06', '05'),
       (gen_random_uuid(), 'C202300010', '鹏飞', '06', 'G09218324534', '男', '1992-10-15', '05');



insert into public.se_certificate_type_tbl(id, certificate_type, certificate_type_name)
values (gen_random_uuid(), '01', '居民身份证'),
       (gen_random_uuid(), '02', '临时居民身份证'),
       (gen_random_uuid(), '03', '军官证'),
       (gen_random_uuid(), '04', '护照'),
       (gen_random_uuid(), '05', '外国人居留证'),
       (gen_random_uuid(), '06', '外国人出入境证'),
       (gen_random_uuid(), '07', '学生证');



insert into public.se_region_tbl(id, region_code, region_name)
values (gen_random_uuid(), '01', '海南'),
       (gen_random_uuid(), '02', '西藏'),
       (gen_random_uuid(), '03', '青海'),
       (gen_random_uuid(), '04', '云南'),
       (gen_random_uuid(), '05', '广西');



insert into public.se_currency_tbl(id, currency, currency_name)
values (gen_random_uuid(), 'JPY', '日元'),
       (gen_random_uuid(), 'USD', '美元'),
       (gen_random_uuid(), 'EUR', '欧元'),
       (gen_random_uuid(), 'HKD', '港币');



insert into public.se_currency_rate(id, currency, stats_date, rate)
values (gen_random_uuid(), 'JPY', '2023-01-01', 1),
       (gen_random_uuid(), 'USD', '2023-01-01', 4.21),
       (gen_random_uuid(), 'EUR', '2023-01-01', 9.20),
       (gen_random_uuid(), 'HKD', '2023-01-01', 10.32),
       (gen_random_uuid(), 'JPY', '2023-01-02', 1),
       (gen_random_uuid(), 'USD', '2023-01-02', 5.90),
       (gen_random_uuid(), 'EUR', '2023-01-02', 8.20),
       (gen_random_uuid(), 'HKD', '2023-01-02', 10.10);



insert into public.se_transaction_info(id, transaction_no, client_no, amount, currency, transaction_date)
values (gen_random_uuid(), 'N2023010001', 'C202300001', 100, 'JPY', '2023-01-01'),
       (gen_random_uuid(), 'N2023010002', 'C202300001', 150, 'USD', '2023-01-01'),
       (gen_random_uuid(), 'N2023010003', 'C202300002', 200, 'EUR', '2023-01-01'),
       (gen_random_uuid(), 'N2023010004', 'C202300003', 30, 'HKD', '2023-01-01'),
       (gen_random_uuid(), 'N2023010005', 'C202300003', 190, 'JPY', '2023-01-01'),
       (gen_random_uuid(), 'N2023010006', 'C202300003', 900, 'USD', '2023-01-01'),
       (gen_random_uuid(), 'N2023010007', 'C202300004', 10, 'EUR', '2023-01-01'),
       (gen_random_uuid(), 'N2023010008', 'C202300004', 80, 'HKD', '2023-01-01'),
       (gen_random_uuid(), 'N2023010009', 'C202300005', 200, 'JPY', '2023-01-01'),
       (gen_random_uuid(), 'N2023010010', 'C202300005', 290, 'USD', '2023-01-01'),
       (gen_random_uuid(), 'N2023010011', 'C202300006', 170, 'EUR', '2023-01-01'),
       (gen_random_uuid(), 'N2023010012', 'C202300007', 180, 'HKD', '2023-01-01'),
       (gen_random_uuid(), 'N2023010013', 'C202300008', 10, 'JPY', '2023-01-01'),
       (gen_random_uuid(), 'N2023010014', 'C202300008', 40, 'USD', '2023-01-01'),
       (gen_random_uuid(), 'N2023010015', 'C202300009', 90, 'EUR', '2023-01-01'),
       (gen_random_uuid(), 'N2023010016', 'C202300010', 20, 'HKD', '2023-01-01');

insert into public.se_transaction_info(id, transaction_no, client_no, amount, currency, transaction_date)
values (gen_random_uuid(), 'N2023010017', 'C202300001', 120, 'JPY', '2023-01-02'),
       (gen_random_uuid(), 'N2023010018', 'C202300001', 110, 'USD', '2023-01-02'),
       (gen_random_uuid(), 'N2023010019', 'C202300002', 20, 'EUR', '2023-01-02'),
       (gen_random_uuid(), 'N2023010020', 'C202300003', 40, 'HKD', '2023-01-02'),
       (gen_random_uuid(), 'N2023010021', 'C202300003', 90, 'JPY', '2023-01-02'),
       (gen_random_uuid(), 'N2023010022', 'C202300003', 40, 'USD', '2023-01-02'),
       (gen_random_uuid(), 'N2023010023', 'C202300004', 70, 'EUR', '2023-01-02'),
       (gen_random_uuid(), 'N2023010024', 'C202300004', 100, 'HKD', '2023-01-02'),
       (gen_random_uuid(), 'N2023010025', 'C202300005', 170, 'JPY', '2023-01-02'),
       (gen_random_uuid(), 'N2023010026', 'C202300005', 180, 'USD', '2023-01-02'),
       (gen_random_uuid(), 'N2023010027', 'C202300006', 20, 'EUR', '2023-01-02'),
       (gen_random_uuid(), 'N2023010028', 'C202300007', 500, 'HKD', '2023-01-02'),
       (gen_random_uuid(), 'N2023010029', 'C202300008', 90, 'JPY', '2023-01-02'),
       (gen_random_uuid(), 'N2023010030', 'C202300008', 50, 'USD', '2023-01-02'),
       (gen_random_uuid(), 'N2023010031', 'C202300009', 10, 'EUR', '2023-01-02'),
       (gen_random_uuid(), 'N2023010032', 'C202300010', 10, 'HKD', '2023-01-02');

insert into public.se_transaction_info(id, transaction_no, client_no, amount, currency, transaction_date)
values (gen_random_uuid(), 'N2023010033', 'C202300001', 80, 'JPY', '2023-01-03'),
       (gen_random_uuid(), 'N2023010034', 'C202300004', 110, 'USD', '2023-01-03'),
       (gen_random_uuid(), 'N2023010035', 'C202300009', 2010, 'EUR', '2023-01-03'),
       (gen_random_uuid(), 'N2023010036', 'C202300005', 20, 'HKD', '2023-01-03');
