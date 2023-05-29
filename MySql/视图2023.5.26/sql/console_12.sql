# 1
create view L_view1 as
select 读者编号, 姓名, 类名, 可借天数, 可借数量
from 读者表
         join 读者类型表 读 on 读.类别号 = 读者表.类别号;

# 2
select 读者编号, 姓名, 可借天数, 可借数量
from l_view1;

# 3
create view L_view2 as
select 借阅号, 书号, 姓名, 借阅日期, 还书日期
from 借阅表
         join 读者表 读 on 读.读者编号 = 借阅表.读者编号
         join 库存表 库 on 库.条码 = 借阅表.条码;

# 4
select * from l_view2 where 还书日期 is null;

# 5
create view L_view3 as
select *
from 借阅表
where 借阅状态 in ('借阅', '已还')
with check option;