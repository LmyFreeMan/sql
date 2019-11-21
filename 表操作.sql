--创建表
create table tutorials_tbl(
   tutorial_id INT NOT NULL AUTO_INCREMENT,
   tutorial_title VARCHAR(100) NOT NULL,
   tutorial_author VARCHAR(40) NOT NULL,
   submission_date DATE,
   PRIMARY KEY ( tutorial_id )
);

--删除表
drop table tablename
--删除表，只支持mysql
drop table if exists tablename 



--更改表
alter table 表名 add 字段名(字段长度) 字段约束 --添加字段
alter table 表名 modify 字段名(字段长度) 字段约束 --修改字段长度
alter table 表名 change 旧字段名(字段长度) 字段约束 新字段名(字段长度) 字段约束 --修改字段名称
alter table 表名 drop 字段名(字段长度) 字段约束 --删除字段
alter table tablename rename[to] new_tablename --将表改名字


-- 视图
create view 视图名 --创建视图
create view  视图名称 as 查询语句 --创建视图
drop view 视图名 --删除视图


--复制表
creat table tablename1 as select * from emp

--查看表结构
select * from user_tab_columns where table_name='S_PRODUCT_PLAN_SALE_TYPE_POINT'; 

--给表添加注释
ALTER TABLE student COMMENT '学生表';

--索引
creat index 索引名 on 表名(列名)
create index 索引名 on 表名(col_name(n)) --建立前缀索引
creat unique index 索引名 on 表名(列名) --需要有unque约束
show index from tablename #查看索引
drop index 索引名 on 表名

