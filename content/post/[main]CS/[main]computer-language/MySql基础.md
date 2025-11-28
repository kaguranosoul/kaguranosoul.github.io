---
uuid: 378532a6-051d-11ed-a2ee-ff4233c822df
title: MySql基础
hide: false
slug: 16977
date: 2022-07-13 10:55:52
tags: 
categories: 技术笔记
image: https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220729003418.png

---



# 数据库应用

数据库能存储大量

Database 数据库

Database Management System DBMS数据库管理系统

SQL 结构化查询语言

## RDBMS and 非RDBMS

rdbms是最古老的数据类型 把复杂的数据类型归纳为简单的二元关系

以row coumn的形式组成的

非rdbms 查找速度快



# Mysql数据库基本操作-DDL



| 功能               | sql                                                       |
| ------------------ | --------------------------------------------------------- |
| **查看所有数据库** | **show databases;**                                       |
| **创建数据库**     | **create database [if not exists] mydb1 [charset=utf8];** |
| **切换数据库**     | **use mydb1;**                                            |
| **删除数据库**     | **drop database [if exists] mydb1;**                      |
| 修改数据库编码     | alter databse mydb1 character set utf8;                   |

```mysql
-- 1.DDL操作数据库操作
-- 查看所有数据库
show DATABASES;
-- 创建数据库
-- CREATE DATABASE mydb1;
CREATE DATABASE if NOT EXISTS mydb1;
-- 选择数据库
use mydb1;
-- 删除数据库
DROP DATABASE mydb1;
```

## 创建表

```mysql
-- 创建表
-- 选择mydb1
use mydb1
create table if not exists student(
sid int,
name varchar(20),
gender varchar(2),
age int,
birth data,
address varchar(20),
score double
);
```

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220718144540.png)

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220718151607.png)

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220718151826.png)

## 其他操作

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220718152143.png)

```mysql
-- 创建表
-- 选择mydb1
use sqldb1;
create table if not exists student(
name1 char(22),
sid int,
score double

);
-- 查看所有的表
show tables;
-- 查看指定表的创建语句
show create table student;
-- 查看表结构
desc student;
-- 删除表
drop table student;
```

## 修改表结构

```mysql
alter table name add 列名 type 约束
```

```mysql
-- 查看所有的表
show tables;
-- 查看指定表的创建语句
show create table student;

-- 删除表
-- drop table student;
-- 创建新的列
alter table student add dept varchar(22);
-- 修改
alter table student dept department VARCHAR(33);
-- 删除表列
alter table student drop deparment;
-- 修改表名
rename table student to stu;

desc student;

```

## DML

data manipulation language

用来对数据库表中的元素进行增删改

**插入insert   删除delete   更新update**

美*/*ɪnˈsɜːrt*/ *美*/*dɪˈliːt*/* 美*/*ˌʌpˈdeɪt/

DML是指着数据操作语言 

### insert

```
insert into 表(列名1，列名2...) values (值1，值2....)；
insert into 表 values (值1，值2....);

```

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220718160920.png)

### update

```
update 表名 set 字段名=值,。。。。。。
update 表明 set 字段名=值。。。。。。 where 条件
```

```mysql
update student set sid =0000;
--update student set score =100 where name1='zhangziyu';

```

### delete

```mysql
delete from 表名 [where 条件] -- 不加条件全部删除
或者
truncate table 表名 where条件
```

```
创建employee表，id name gender salary
```

## DQL

data query language 数据查询语言 用来查找 **select**

```mysql
create table emp
(
    id          int comment '编号',
    workno      varchar(10) comment '工号',
    name        varchar(10) comment '姓名',
    gender      char(1) comment '性别',
    age         tinyint unsigned comment '年龄',
    idcard      char(18) comment '身份证号',
    workaddress varchar(50) comment '工作地址',
    entrydate   date comment '入职时间'
) comment '员工表';

insert into emp(id, workno, name, gender, age, idcard, workaddress, entrydate)
VALUES (1, '1', '柳岩', '女', 20, '123456789012345678', '北京', '2000-01-01'),
       (2, '2', '张无忌', '男', 18, '123456789012345670', '北京', '2005-09-01'),
       (3, '3', '韦一笑', '女', 38, '123456789012345670', '上海', '2005-08-01'),
       (4, '4', '赵敏', '女', 18, '123456789012345670', '北京', '2009-12-01'),
       (5, '5', '小昭', '女', 16, '123456789012345678', '上海', '2007-07-01'),
       (6, '6', '杨逍', '男', 28, '12345678901234567X', '北京', '2006-01-01'),
       (7, '7', '范瑶', '男', 40, '123456789012345670', '北京', '2005-05-01'),
       (8, '8', '黛绮丝', '女', 38, '123456789012345670', '天津', '2015-05-01'),
       (9, '9', '范凉凉', '女', 45, '123456789012345678', '北京', '2010-04-01'),
       (10, '10', '陈友谅', '男', 53, '123456789012345670', '上海', '2011-01-01'),
       (11, '11', '张士诚', '男', 55, '123456789012345670', '江苏', '2015-05-01'),
       (12, '12', '常遇春', '男', 32, '123456789012345670', '北京', '2004-02-01'),
       (13, '13', '张三丰', '男', 88, '123456789012345678', '江苏', '2020-11-01'),
       (14, '14', '灭绝', '女', 65, '123456789012345670', '西安', '2019-05-01'),
       (15, '15', '胡青牛', '男', 70, '12345678901234567X', '西安', '2018-04-01'),
       (16, '16', '周芷若', '女', 18, null, '北京', '2012-06-01');

-- 1查询 name workno age
select name ,workno,age from emp;

```

```mysql
select name ,workno,age from emp;
```

![image-20220722210718745](C:/Users/SYR/AppData/Roaming/Typora/typora-user-images/image-20220722210718745.png)

### 条件查询

```mysql
-- 1.查询 name workno age
 select name ,workno,age from emp;
-- 2.查询 所有字段此返回
 select *from emp;
-- 3.查询所有员工的地址和起别名
 select workaddress as '工作地址'from emp;
-- 4 查询去除重复
select distinct workaddress '工作地址' from emp;
```

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220722220616.png)

```mysql
-- 1.查询 name workno age
-- select name ,workno,age from emp;
-- 2.查询 所有字段此返回
-- select *from emp;
-- 3.查询所有员工的地址和起别名
-- select workaddress as '工作地址'from emp;
-- 4 查询去除重复
-- select distinct workaddress '工作地址' from emp;
-- select 字段列表 from 表名 where 条件列表
-- 条件
select *from emp where age=88;
-- 13,13,张三丰,男,88,123456789012345678,江苏,2020-11-01
select *from emp where age<20;
/*
2,2,张无忌,男,18,123456789012345670,北京,2005-09-01
4,4,赵敏,女,18,123456789012345670,北京,2009-12-01
5,5,小昭,女,16,123456789012345678,上海,2007-07-01
16,16,周芷若,女,18,,北京,2012-06-01
*/
-- select *from emp where idcard is null;

-- select *from emp where idcard is not null;

-- select *from emp where age!=88;

-- select *from emp where age>=15 and age<=20;
/*
select *
from emp where age<25 and gender = '女';

select *from emp where age in(18,20,40);

-- 两个字的
select *
from emp where name like '__';
*/

-- 最后身份证是x的
select *
from emp where idcard like '%x';
```

### 聚合函数

| count | 统计数量 |
| ----- | -------- |
| max   | 最大     |
| min   |          |
| avg   | 平均数   |
| sum   | 求和     |
|       |          |

```mysql
select count(*) from emp;
select max(age) from emp;

```

### 分组查询

```
select 字段列表 from 表名 where group by 分组字段名 having
```

```mysql
select gender ,avg(age) from emp group by gender;
```

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220723131438.png)

```mysql
select gender ,count(*) from emp group by gender;
select gender ,avg(age) from emp group by gender;
select workaddress ,count(*) address_count from emp where age<45 group by workaddress having address_count>=3

```

### 排序查询

group up

```mysql
select 字段列表 from 表名 order by 字段1 排序方式1.....
/*asc升序 desc降序
*/
```

```mysql

select * from emp order by age asc;
select * from emp order by age desc;

select *from emp order by age asc,entrydate desc;
```

### 分页查询

```mysql
select  字段列表 from 表名 limt 起始索引，查询记录数;
0,10;
```

```
-- 查询年龄为20212223女性
select *from emp where gender='女' and age in(20,21,22,23);
-- 查男性 年龄在20-40 名字为3个字的
select *from emp where gender='男' and  age between 20 and 40 and name like '___';
-- 小于60 男女总人数
select gender ,count(*) from emp where age<60 group by gender;
-- 年龄小于35 员工年龄和姓名 对年龄升序 相同年龄降序
select name,age from emp where age<=35 order by age asc,entrydate desc ;
-- 性别男 20-40岁 的前五个员工  年龄升序 相同年龄降序
select *from emp where gender='男' and age between 20 and 40 order by age asc,entrydate asc limit 5;
```

## DCL

data control language **数据控制语言**

### 查询用户

```
create user 'itcast'@'localhost' identified by '123456';
create user 'heima'@'%' identified by '123456';

alter user 'heima'@'%' identified with mysql_native_password by '123';

drop user 'itcast'@'localhost';
```

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220724093558.png)

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220724093911.png)

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220724110518.png)

# 函数

## 字符串函数

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220724185821.png)

```mysql
update emp set workno = lpad(workno,5,0);
-- 补充五位
```

## 数值函数







## 日期函数

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220724201941.png)

```mysql
select curdate();
select curtime();
select year(now());
select month(now());

select date_add(now(),INTERVAL 70 YEAR );

select datediff('2000-10-3',now());

select name,datediff(curdate(),entrydate) as 'entrydays' from emp order by entrydays asc ;
```

## 流程控制函数

```

```

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220724210906.png)

```mysql
select ifnull(null,111231);

select
    name,
    (case workaddress when '北京' then '一线城市' when '上海' then '一线城市' else '二线城市' end) as '工作地址'
from emp;
```

# 约束

## 约束演示

用于作用于表中字段的规则，用于限制在表中的数据

保证数据库中的数据正确 有效性和完整性



![image-20220918220615229](C:/Users/SYR/AppData/Roaming/Typora/typora-user-images/image-20220918220615229.png)

# 多表查询
