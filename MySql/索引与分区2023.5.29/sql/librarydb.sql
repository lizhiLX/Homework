# 1.使用create创建索引
create index I_bm on 读者表 (单位 desc);

create index I_tr on 借阅表 (条码, 读者编号);

create unique index U_wz on 库存表 (位置);

# 2.使用alter添加索引
alter table 图书表
    add unique index (书名),
    add index (作者, 出版社);

alter table 读者类型表
    add primary key (类别号);

# 3.创建表同时创建索引
create table cpk
(
    产品编号 varchar(20) primary key,
    产品名称 varchar(20),
    单价     float,
    库存量   int,
    index (库存量, 单价)
);

# 4.显示图书表索引
show index from 图书表;

# 5.分区
alter table 借阅表 partition by hash ( 借阅号 ) partitions 3;
