# 1
insert into l_view3
values (100010, '41112', '2001', '2020-10-18', '2020-10-18', '借出');

# 2
update l_view2
set 借阅日期 = now()
where 借阅号 = '100001';

# 3
delete
from l_view3
where 还书日期 is not null;