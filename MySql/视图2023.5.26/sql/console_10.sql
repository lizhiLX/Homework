# 1
create view account_v1 as
select userid as 用户名, fullname as 姓名, password as 密码, sex as 性别, phone as 电话
from account
where sex = '男'
with check option;

# 2
select *
from account_v1
where 姓名 like '张%';

# 3
create view orders_v2 as
select o.orderid, a.fullname, a.address, o.orderdate, o.totalprice
from account as a
         join orders as o on a.userid = o.userid;

# 4
select *
from orders_v2
where orderdate like '2013%';

# 5
create view lineitem_v3 as
select p.name, o.orderdate, lineitem.quantity, lineitem.unitprice
from lineitem
         join product p on p.productid = lineitem.itemid
         join orders o on o.orderid = lineitem.orderid;