# (1)
alter table course
    add index (课程名(3) asc);

# (2)
alter table class
    add index I_cx (院系, 年级);

# (3)
alter table course
    add primary key (课程名);

# (5)
alter table score
    add primary key (学号, 课程号),
    add index (成绩);

# (6)
alter table course
    drop primary key;

# 分区
alter table course partition by key (学分) partitions 4