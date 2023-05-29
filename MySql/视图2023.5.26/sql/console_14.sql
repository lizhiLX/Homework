# 1
create view V_score as
select student.学号, student.姓名, student.民族, c.课程号, s.成绩
from student
         join score s on student.学号 = s.学号
         join course c on s.课程号 = c.课程号
where 性别 = '男';

# 2
select *
from V_score
where 民族 != '汉';

# 3
create view V_avg as
select 学号 as num, avg(成绩) as score_avg
from score
group by 学号;

# 4
select * from v_avg where score_avg >= 80;

# 5
create view V_student as
select *
from student
where 民族 = '汉';

insert into v_student values ('2020410001','李牧','男','1998-10-21','广东','汉',null);

# 7
delete from v_student where 性别 = '女';