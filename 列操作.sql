-- 给列添加表名
ALTER TABLE student MODIFY COLUMN name VARCHAR(100) COMMENT '姓名';


--查询
select  fieldname1,filed2 from tablename --查询字段从某个表格
select * from tablename --查询表中所有信息
select filed1<operation><number> [as] [alias] from tablename --字段是可以参与运算的以及起别名
select field1,filed2 from tablename where condtion=true --条件查询
select * from tablename order by field1 desc --降序排序
select * from tablename order by field1 asc --升序排序
select * from tablename order by 3 asc --升序排序（按序号排序，不推荐）
select ename hiredate from emp where hiredate=str_to_date(‘12-03-1981’，‘%m-%d-%Y’)
select substr(ename,0,1) as ename from emp;--执行函数
select trim(filed1) as trim from emp;--执行函数
select ename,（sal+ifnull(comm,0))*12 as yearsal from emp;--执行函数
select distince filed1 from emp1;--去重
select job,avg(sal) as avgsal from emp group by job having avgsal>2000 -- having，必须和groupby联合使用

--表链接查询

--笛卡尔现象(cross in)
select field1,field2 from table1,table2 --查询两张表的不同记录笛卡尔积


--- 内连接A表和B表能够完全匹配的记录查询出来 等值连接

--等值连接，内链接

select field1,field2 from table1,table2 where 表的连接条件 --SQL92写法
select xxxx from A表名 join B表名 on 表的连接条件 --SQL99写法,可加inner

-- 非等值连接
select e.name,e.sal,s.grade from emp e inner join salgrade s on s.sal between s.losal and s.hisal 

--自连接(把一张表看成两张表)
select a.ename,b.ename as leadname from emp a join emp b on a.mgr=b.emno 

--外连接左外连接(左连接)
--包含所有的的左边表的记录甚至是右边表中没有和它匹配的记录
select e.name,d.name from emp e left outer join dept d on e.deptno=d.deptno --outer可省略


--右外连接(又连接)包含所有的的右边表的记录甚至是左边表中没有和它匹配的记录

select e.name,d.name from emp e right outer join dept d on e.deptno=d.deptno #outer可省略


-- 全链接

select ename,job from emp where job='manage'
union
select ename,job from emp where job='salary'

--插入数据
INSERT INTO 表名称[（列1，列2，...）]VALUES（值1，值2，...）；

--修改数据
UPDATE 表名称 SET 字段1=值1，字段2=值2，...[WHERE 更新条件(s)];

--删除数据
DELETE FROM 表名称 WHERE ;











