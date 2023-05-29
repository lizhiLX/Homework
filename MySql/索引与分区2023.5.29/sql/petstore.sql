# （1）使用create创建索引
create index I_em_ind on account (email desc);

create index C_fa_ind on account (fullname, address);

create unique index U_na_ind on product (name(4));

# (2)使用alter添加索引
alter table category
    add primary key (catid),
    add unique index U_ca_ind (catname);

alter table lineitem
    add primary key (orderid, itemid),
    add index C_qu_ind (quantity, unitprice);

alter table account
    add primary key (userid),
    add unique index U_fu_ind (fullname);

# (3)创建表时创建索引
create table shopcat
(
    shopcatid int(11)        not null primary key,
    userid    char(10)       not null,
    itemid    char(10)       not null,
    quantity  int(11)        not null,
    unitprice decimal(10, 2) not null,
    index C_up_ind (userid, itemid)
);

# (4)显示shopcat索引
show index from shopcat;

# (5)删除shopcat索引
drop index C_up_ind on shopcat;

# 添加分区
alter table orders partition by key () partitions 3;