# 1
insert into account_v1
values ('u0007', '张华', '123456', '男', '13901234567');

# 2
update orders_v2
set totalprice = totalprice + 200
where orderid = 20130411;

# 3
delete
from account_v1
where 用户名 = 'w0002';

# 4
drop view orders_v2,lineitem_v3;