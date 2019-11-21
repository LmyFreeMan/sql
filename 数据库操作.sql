create database databasename --创建数据库

--使用数据库
user dataBasename;
drop database dbname --删除数据库
--备份数据库
 exp demo/demo@orcl buffer=1024 file=d：\back.dmp full=y
     demo：用户名、密码
     buffer: 缓存大小
     file: 具体的备份文件地址
     full: 是否导出全部文件
     ignore: 忽略错误，如果表已经存在，则也是覆盖
