---
title: JavaWeb笔记
hide: false
tags:
  - 后端
  - Javaweb
categories:
  - 技术笔记
slug: 1364342167
date: 2022-09-15 20:41:35
image:
---



# 1

# mysql

SQL 语句可以单行或多行书写，以分号结尾。MySQL 数据库的 SQL 语句不区分大小写，关键字建议使用大写。

同样的一条sql语句写成下图的样子，一样可以运行处结果。单行注释: -- 注释内容 或 #注释内容(MySQL 特有)

## sql分类

- DDL(Data Definition Language) ： 数据定义语言，用来定义数据库对象：数据库，表，列等

  DDL简单理解就是用来操作数据库，表等

  ![image-20210721220032047](https://github.com/Wj-00991314/JavaWebNotes_ItHeiMa/raw/master/day01-MySQL%E5%9F%BA%E7%A1%80/ppt/assets/image-20210721220032047.png)

- DML(Data Manipulation Language) 数据操作语言，用来对数据库中表的数据进行增删改

  DML简单理解就对表中数据进行增删改

  ![image-20210721220132919](https://github.com/Wj-00991314/JavaWebNotes_ItHeiMa/raw/master/day01-MySQL%E5%9F%BA%E7%A1%80/ppt/assets/image-20210721220132919.png)

- DQL(Data Query Language) 数据查询语言，用来查询数据库中表的记录(数据)

  DQL简单理解就是对数据进行查询操作。从数据库表中查询到我们想要的数据。

- DCL(Data Control Language) 数据控制语言，用来定义数据库的访问权限和安全级别，及创建用户

  DML简单理解就是对数据库进行权限控制。比如我让某一个数据库表只能让某一个用户进行操作等。

## DDL

```mysql
SHOW DATABASES;
CREATE DATABASE 数据库名称;
# 创建数据库(判断，如果不存在则创建)
CREATE DATABASE IF NOT EXISTS 数据库名称;
DROP DATABASE 数据库名称;
DROP DATABASE IF EXISTS 数据库名称;
```



数据库创建好了，要在数据库中创建表，得先明确在哪儿个数据库中操作，此时就需要使用数据库。

- **使用数据库**

```
USE 数据库名称;
```

- **查看当前使用的数据库**

```
SELECT DATABASE();
```

运行语句效果如下：

### 数据类型

MySQL 支持多种类型，可以分为三类：

- 数值

  ```
  tinyint : 小整数型，占一个字节
  int	： 大整数类型，占四个字节
  	eg ： age int
  double ： 浮点类型
  	使用格式： 字段名 double(总长度,小数点后保留的位数)
  	eg ： score double(5,2)   
  ```

- 日期

  ```
  date ： 日期值。只包含年月日
  	eg ：birthday date ： 
  datetime ： 混合日期和时间值。包含年月日时分秒
  ```

- 字符串

  ```
  char ： 定长字符串。
  	优点：存储性能高
  	缺点：浪费空间
  	eg ： name char(10)  如果存储的数据字符个数不足10个，也会占10个的空间
  varchar ： 变长字符串。
  	优点：节约空间
  	缺点：存储性能底
  	eg ： name varchar(10) 如果存储的数据字符个数不足10个，那就数据字符个数是几就占几个的空间	
  ```

> 注意：其他类型参考资料中的《MySQL数据类型].xlsx》

**案例：**

```
需求：设计一张学生表，请注重数据类型、长度的合理性
	1. 编号
	2. 姓名，姓名最长不超过10个汉字
	3. 性别，因为取值只有两种可能，因此最多一个汉字
	4. 生日，取值为年月日
	5. 入学成绩，小数点后保留两位
	6. 邮件地址，最大长度不超过 64
	7. 家庭联系电话，不一定是手机号码，可能会出现 - 等字符
	8. 学生状态（用数字表示，正常、休学、毕业...）
```

语句设计如下：

```
create table student (
	id int,
    name varchar(10),
    gender char(1),
    birthday date,
    score double(5,2),
    email varchar(15),
    tel varchar(15),
    status tinyint
);
```



### 删除表



- **
  修改表名**

```
ALTER TABLE 表名 RENAME TO 新的表名;

-- 将表名student修改为stu
alter table student rename to stu;
```

- **添加一列**

```
ALTER TABLE 表名 ADD 列名 数据类型;

-- 给stu表添加一列address，该字段类型是varchar(50)
alter table stu add address varchar(50);
```

- **修改数据类型**

```
ALTER TABLE 表名 MODIFY 列名 新数据类型;

-- 将stu表中的address字段的类型改为 char(50)
alter table stu modify address char(50);
```

- **修改列名和数据类型**

```
ALTER TABLE 表名 CHANGE 列名 新列名 新数据类型;

-- 将stu表中的address字段名改为 addr，类型改为varchar(50)
alter table stu change address addr varchar(50);
```

- **删除列**

```
ALTER TABLE 表名 DROP 列名;

-- 将stu表中的addr字段 删除
alter table stu drop addr;
```

## DML

DML主要是对数据进行增（insert）删（delete）改（update）操作。

### 添加数据

- **给指定列添加数据**

```
INSERT INTO 表名(列名1,列名2,…) VALUES(值1,值2,…);
```

- **给全部列添加数据**

```
INSERT INTO 表名 VALUES(值1,值2,…);
```

- **批量添加数据**

```
INSERT INTO 表名(列名1,列名2,…) VALUES(值1,值2,…),(值1,值2,…),(值1,值2,…)…;
INSERT INTO 表名 VALUES(值1,值2,…),(值1,值2,…),(值1,值2,…)…;
```

- **练习**

为了演示以下的增删改操作是否操作成功，故先将查询所有数据的语句介绍给大家：

```mysql
select * from stu;
-- 给指定列添加数据
INSERT INTO stu (id, NAME) VALUES (1, '张三');
-- 给所有列添加数据，列名的列表可以省略的
INSERT INTO stu (id,NAME,sex,birthday,score,email,tel,STATUS) VALUES (2,'李四','男','1999-11-11',88.88,'lisi@itcast.cn','13888888888',1);

INSERT INTO stu VALUES (2,'李四','男','1999-11-11',88.88,'lisi@itcast.cn','13888888888',1);

-- 批量添加数据
INSERT INTO stu VALUES 
	(2,'李四','男','1999-11-11',88.88,'lisi@itcast.cn','13888888888',1),
	(2,'李四','男','1999-11-11',88.88,'lisi@itcast.cn','13888888888',1),
	(2,'李四','男','1999-11-11',88.88,'lisi@itcast.cn','13888888888',1);
```

### 修改数据

- **修改表数据**

```
UPDATE 表名 SET 列名1=值1,列名2=值2,… [WHERE 条件] ;
```

> 注意：
>
> 1. 修改语句中如果不加条件，则将所有数据都修改！
> 2. 像上面的语句中的中括号，表示在写sql语句中可以省略这部分

- **练习**

  - 将张三的性别改为女

  ```
  update stu set sex = '女' where name = '张三';
  ```

  - 将张三的生日改为 1999-12-12 分数改为99.99

    ```
    update stu set birthday = '1999-12-12', score = 99.99 where name = '张三';
    ```

  - 注意：如果update语句没有加where条件，则会将表中所有数据全部修改！

    ```
    update stu set sex = '女';
    ```

    上面语句的执行完后查询到的结果是：

    [![image-20210722204233305](https://github.com/Wj-00991314/JavaWebNotes_ItHeiMa/raw/master/day01-MySQL%E5%9F%BA%E7%A1%80/ppt/assets/image-20210722204233305.png)](https://github.com/Wj-00991314/JavaWebNotes_ItHeiMa/blob/master/day01-MySQL基础/ppt/assets/image-20210722204233305.png)

### 删除数据

- **删除数据**

```
DELETE FROM 表名 [WHERE 条件] ;
```

- **练习**

```
-- 删除张三记录
delete from stu where name = '张三';

-- 删除stu表中所有的数据
delete from stu;
```

## DQL

下面是黑马程序员展示试题库数据的页面

[![image-20210722215838144](https://github.com/Wj-00991314/JavaWebNotes_ItHeiMa/raw/master/day01-MySQL%E5%9F%BA%E7%A1%80/ppt/assets/image-20210722215838144.png)](https://github.com/Wj-00991314/JavaWebNotes_ItHeiMa/blob/master/day01-MySQL基础/ppt/assets/image-20210722215838144.png)

页面上展示的数据肯定是在数据库中的试题库表中进行存储，而我们需要将数据库中的数据查询出来并展示在页面给用户看。上图中的是最基本的查询效果，那么数据库其实是很多的，不可能在将所有的数据在一页进行全部展示，而页面上会有分页展示的效果，如下：

[![image-20210722220139174](https://github.com/Wj-00991314/JavaWebNotes_ItHeiMa/raw/master/day01-MySQL%E5%9F%BA%E7%A1%80/ppt/assets/image-20210722220139174.png)](https://github.com/Wj-00991314/JavaWebNotes_ItHeiMa/blob/master/day01-MySQL基础/ppt/assets/image-20210722220139174.png)

当然上图中的难度字段当我们点击也可以实现排序查询操作。从这个例子我们就可以看出，对于数据库的查询时灵活多变的，需要根据具体的需求来实现，而数据库查询操作也是最重要的操作，所以此部分需要大家重点掌握。

接下来我们先介绍查询的完整语法：

```
SELECT 
    字段列表
FROM 
    表名列表 
WHERE 
    条件列表
GROUP BY
    分组字段
HAVING
    分组后条件
ORDER BY
    排序字段
LIMIT
    分页限定
```

为了给大家演示查询的语句，我们需要先准备表及一些数据：

```
-- 删除stu表
drop table if exists stu;


-- 创建stu表
CREATE TABLE stu (
 id int, -- 编号
 name varchar(20), -- 姓名
 age int, -- 年龄
 sex varchar(5), -- 性别
 address varchar(100), -- 地址
 math double(5,2), -- 数学成绩
 english double(5,2), -- 英语成绩
 hire_date date -- 入学时间
);

-- 添加数据
INSERT INTO stu(id,NAME,age,sex,address,math,english,hire_date) 
VALUES 
(1,'马运',55,'男','杭州',66,78,'1995-09-01'),
(2,'马花疼',45,'女','深圳',98,87,'1998-09-01'),
(3,'马斯克',55,'男','香港',56,77,'1999-09-02'),
(4,'柳白',20,'女','湖南',76,65,'1997-09-05'),
(5,'柳青',20,'男','湖南',86,NULL,'1998-09-01'),
(6,'刘德花',57,'男','香港',99,99,'1998-09-01'),
(7,'张学右',22,'女','香港',99,99,'1998-09-01'),
(8,'德玛西亚',18,'男','南京',56,65,'1994-09-02');
```

接下来咱们从最基本的查询语句开始学起。

### 基础查询

#### 语法

- **查询多个字段**

```
SELECT 字段列表 FROM 表名;
SELECT * FROM 表名; -- 查询所有数据
```

- **去除重复记录**

```
SELECT DISTINCT 字段列表 FROM 表名;
```

- **起别名**

```
AS: AS 也可以省略
```

#### 练习

- 查询name、age两列

  ```
  select name,age from stu;
  ```

- 查询所有列的数据，列名的列表可以使用*替代

  ```
  select * from stu;
  ```

  上面语句中的*不建议大家使用，因为在这写*不方便我们阅读sql语句。我们写字段列表的话，可以添加注释对每一个字段进行说明

  ![image-20210722221534870](https://github.com/Wj-00991314/JavaWebNotes_ItHeiMa/raw/master/day01-MySQL%E5%9F%BA%E7%A1%80/ppt/assets/image-20210722221534870.png)

  而在上课期间为了简约课程的时间，老师很多地方都会写*。

- 查询地址信息

  ```
  select address from stu;
  ```

  执行上面语句结果如下：

  [![image-20210722221756380](https://github.com/Wj-00991314/JavaWebNotes_ItHeiMa/raw/master/day01-MySQL%E5%9F%BA%E7%A1%80/ppt/assets/image-20210722221756380.png)](https://github.com/Wj-00991314/JavaWebNotes_ItHeiMa/blob/master/day01-MySQL基础/ppt/assets/image-20210722221756380.png)

  从上面的结果我们可以看到有重复的数据，我们也可以使用 `distinct` 关键字去重重复数据。

- 去除重复记录

  ```
  select distinct address from stu;
  ```

- 查询姓名、数学成绩、英语成绩。并通过as给math和english起别名（as关键字可以省略）

  ```
  select name,math as 数学成绩,english as 英文成绩 from stu;
  select name,math 数学成绩,english 英文成绩 from stu;
  ```

### 条件查询

####  语法

```
SELECT 字段列表 FROM 表名 WHERE 条件列表;
```

- **条件**

条件列表可以使用以下运算符

[![image-20210722190508272](https://github.com/Wj-00991314/JavaWebNotes_ItHeiMa/raw/master/day01-MySQL%E5%9F%BA%E7%A1%80/ppt/assets/image-20210722190508272.png)](https://github.com/Wj-00991314/JavaWebNotes_ItHeiMa/blob/master/day01-MySQL基础/ppt/assets/image-20210722190508272.png)

#### 条件查询练习

- 查询年龄大于20岁的学员信息

  ```
  select * from stu where age > 20;
  ```

- 查询年龄大于等于20岁的学员信息

  ```
  select * from stu where age >= 20;
  ```

- 查询年龄大于等于20岁 并且 年龄 小于等于 30岁 的学员信息

  ```
  select * from stu where age >= 20 &&  age <= 30;
  select * from stu where age >= 20 and  age <= 30;
  ```

  > 上面语句中 && 和 and 都表示并且的意思。建议使用 and 。
  >
  > 也可以使用 between ... and 来实现上面需求

  ```
  select * from stu where age BETWEEN 20 and 30;
  ```

- 查询入学日期在'1998-09-01' 到 '1999-09-01' 之间的学员信息

  ```
  select * from stu where hire_date BETWEEN '1998-09-01' and '1999-09-01';
  ```

- 查询年龄等于18岁的学员信息

  ```
  select * from stu where age = 18;
  ```

- 查询年龄不等于18岁的学员信息

  ```
  select * from stu where age != 18;
  select * from stu where age <> 18;
  ```

- 查询年龄等于18岁 或者 年龄等于20岁 或者 年龄等于22岁的学员信息

  ```
  select * from stu where age = 18 or age = 20 or age = 22;
  select * from stu where age in (18,20 ,22);
  ```

- 查询英语成绩为 null的学员信息

  null值的比较不能使用 = 或者 != 。需要使用 is 或者 is not

  ```
  select * from stu where english = null; -- 这个语句是不行的
  select * from stu where english is null;
  select * from stu where english is not null;
  ```

#### 模糊查询练习

> 模糊查询使用like关键字，可以使用通配符进行占位:
>
> （1）_ : 代表单个任意字符
>
> （2）% : 代表任意个数字符

- 查询姓'马'的学员信息

  ```
  select * from stu where name like '马%';
  ```

- 查询第二个字是'花'的学员信息

  ```
  select * from stu where name like '_花%';
  ```

- 查询名字中包含 '德' 的学员信息

  ```
  select * from stu where name like '%德%';
  ```

### 排序查询

#### 语法

```
SELECT 字段列表 FROM 表名 ORDER BY 排序字段名1 [排序方式1],排序字段名2 [排序方式2] …;
```

上述语句中的排序方式有两种，分别是：

- ASC ： 升序排列 **（默认值）**
- DESC ： 降序排列

> 注意：如果有多个排序条件，当前边的条件值一样时，才会根据第二条件进行排序

#### 练习

- 查询学生信息，按照年龄升序排列

  ```
  select * from stu order by age ;
  ```

- 查询学生信息，按照数学成绩降序排列

  ```
  select * from stu order by math desc ;
  ```

- 查询学生信息，按照数学成绩降序排列，如果数学成绩一样，再按照英语成绩升序排列

  ```
  select * from stu order by math desc , english asc ;
  ```

### 聚合函数

#### 概念

==将一列数据作为一个整体，进行纵向计算。==

如何理解呢？假设有如下表

[![image-20210722194410628](https://github.com/Wj-00991314/JavaWebNotes_ItHeiMa/raw/master/day01-MySQL%E5%9F%BA%E7%A1%80/ppt/assets/image-20210722194410628.png)](https://github.com/Wj-00991314/JavaWebNotes_ItHeiMa/blob/master/day01-MySQL基础/ppt/assets/image-20210722194410628.png)

现有一需求让我们求表中所有数据的数学成绩的总和。这就是对math字段进行纵向求和。

#### 8.4.2 聚合函数分类

| 函数名      | 功能                             |
| ----------- | -------------------------------- |
| count(列名) | 统计数量（一般选用不为null的列） |
| max(列名)   | 最大值                           |
| min(列名)   | 最小值                           |
| sum(列名)   | 求和                             |
| avg(列名)   | 平均值                           |

#### 8.4.3 聚合函数语法

```
SELECT 聚合函数名(列名) FROM 表;
```

> 注意：null 值不参与所有聚合函数运算

#### 8.4.4 练习

- 统计班级一共有多少个学生

  ```
  select count(id) from stu;
  select count(english) from stu;
  ```

  上面语句根据某个字段进行统计，如果该字段某一行的值为null的话，将不会被统计。所以可以在count(*) 来实现。* 表示所有字段数据，一行中也不可能所有的数据都为null，所以建议使用 count(*)

  ```
  select count(*) from stu;
  ```

- 查询数学成绩的最高分

  ```
  select max(math) from stu;
  ```

- 查询数学成绩的最低分

  ```
  select min(math) from stu;
  ```

- 查询数学成绩的总分

  ```
  select sum(math) from stu;
  ```

- 查询数学成绩的平均分

  ```
  select avg(math) from stu;
  ```

- 查询英语成绩的最低分

  ```
  select min(english) from stu;
  ```

### 分组查询

#### 语法

```
SELECT 字段列表 FROM 表名 [WHERE 分组前条件限定] GROUP BY 分组字段名 [HAVING 分组后条件过滤];
```

> 注意：分组之后，查询的字段为聚合函数和分组字段，查询其他字段无任何意义

#### 练习

- 查询男同学和女同学各自的数学平均分

  ```
  select sex, avg(math) from stu group by sex;
  ```

  > 注意：分组之后，查询的字段为聚合函数和分组字段，查询其他字段无任何意义

  ```
  select name, sex, avg(math) from stu group by sex;  -- 这里查询name字段就没有任何意义
  ```

- 查询男同学和女同学各自的数学平均分，以及各自人数

  ```
  select sex, avg(math),count(*) from stu group by sex;
  ```

- 查询男同学和女同学各自的数学平均分，以及各自人数，要求：分数低于70分的不参与分组

  ```
  select sex, avg(math),count(*) from stu where math > 70 group by sex;
  ```

- 查询男同学和女同学各自的数学平均分，以及各自人数，要求：分数低于70分的不参与分组，分组之后人数大于2个的

  ```
  select sex, avg(math),count(*) from stu where math > 70 group by sex having count(*)  > 2;
  ```

**where 和 having 区别：**

- 执行时机不一样：where 是分组之前进行限定，不满足where条件，则不参与分组，而having是分组之后对结果进行过滤。
- 可判断的条件不一样：where 不能对聚合函数进行判断，having 可以。

### 8.6 分页查询

如下图所示，大家在很多网站都见过类似的效果，如京东、百度、淘宝等。分页查询是将数据一页一页的展示给用户看，用户也可以通过点击查看下一页的数据。

[![image-20210722230330366](https://github.com/Wj-00991314/JavaWebNotes_ItHeiMa/raw/master/day01-MySQL%E5%9F%BA%E7%A1%80/ppt/assets/image-20210722230330366.png)](https://github.com/Wj-00991314/JavaWebNotes_ItHeiMa/blob/master/day01-MySQL基础/ppt/assets/image-20210722230330366.png)

接下来我们先说分页查询的语法。

#### 8.6.1 语法

```
SELECT 字段列表 FROM 表名 LIMIT  起始索引 , 查询条目数;
```

> 注意： 上述语句中的起始索引是从0开始

#### 8.6.2 练习

- 从0开始查询，查询3条数据

  ```
  select * from stu limit 0 , 3;
  ```

- 每页显示3条数据，查询第1页数据

  ```
  select * from stu limit 0 , 3;
  ```

- 每页显示3条数据，查询第2页数据

  ```
  select * from stu limit 3 , 3;
  ```

- 每页显示3条数据，查询第3页数据

  ```
  select * from stu limit 6 , 3;
  ```

从上面的练习推导出起始索引计算公式：

```
起始索引 = (当前页码 - 1) * 每页显示的条数
```





## 约束



保证数据的正确性和完整性

约束的分类



![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20230101114414.png)







# java网络编程

# JDBC

```

```

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220928211854.png)

JDBC   就是使用Java语言操作关系型数据库的一套API

全称：( Java DataBase Connectivity ) Java 数据库连接

* 官方（sun公司）定义的一套操作所有关系型数据库的规则，即接口
* 各个数据库厂商去实现这套接口，提供数据库驱动jar包
* 我们可以使用这套接口（JDBC）编程，真正执行的代码是驱动jar包中的实现类

* 各数据库厂商使用相同的接口，Java代码不需要针对不同数据库分别开发
* 可随时替换底层数据库，访问数据库的Java代码基本不变

以后编写操作数据库的代码只需要面向JDBC（接口），操作哪儿个关系型数据库就需要导入该数据库的驱动包，如需要操作MySQL数据库，就需要再项目中导入MySQL数据库的驱动包。如下图就是MySQL驱动包

## 快速入门

第一步：编写Java代码

第二步：Java代码将SQL发送到MySQL服务端

第三步：MySQL服务端接收到SQL语句并执行该SQL语句

第四步：将SQL语句执行的结果返回给Java代码

* 创建工程，导入驱动jar包

* 注册驱动

  ```sql
  Class.forName("com.mysql.jdbc.Driver");
  ```

* 获取连接

  ```sql
  Connection conn = DriverManager.getConnection(url, username, password);
  ```

  Java代码需要发送SQL给MySQL服务端，就需要先建立连接

* 定义SQL语句

  ```sql
  String sql =  “update…” ;
  ```

* 获取执行SQL对象

  执行SQL语句需要SQL执行对象，而这个执行对象就是Statement对象

  ```sql
  Statement stmt = conn.createStatement();
  ```

* 执行SQL

  ```sql
  stmt.executeUpdate(sql);  
  ```

* 处理返回结果

* 释放资源

# Maven

Maven是专门用于管理和构建Java项目的工具，它的主要功能有：

* 提供了一套标准化的项目结构

* 提供了一套标准化的构建流程（编译，测试，打包，发布……）

* 提供了一套依赖管理机制

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20221019163934.png)

我们开发了一套系统，代码需要进行编译、测试、打包、发布，这些操作如果需要反复进行就显得特别麻烦，而Maven提供了一套简单的命令来完成项目构建。

##   Maven模型

* 项目对象模型 (Project Object Model)
* 依赖管理模型(Dependency)
* 插件(Plugin)

## Maven 坐标详解

**什么是坐标？**

* Maven 中的坐标是==资源的唯一标识==
* 使用坐标来定义项目或引入项目中需要的依赖

**Maven 坐标主要组成**

* groupId：定义当前Maven项目隶属组织名称（通常是域名反写，例如：com.itheima）
* artifactId：定义当前Maven项目名称（通常是模块名称，例如 order-service、goods-service）
* version：定义当前项目版本号

如下图就是使用坐标表示一个项目：

## 依赖管理

### 使用坐标引入jar包

**使用坐标引入jar包的步骤：**

* 在项目的 pom.xml 中编写 <dependencies> 标签

* 在 <dependencies> 标签中 使用 <dependency> 引入坐标

* 定义坐标的 groupId，artifactId，version

# 快速入门mybatis

### 创建模块，导入坐标

在创建好的模块中的 pom.xml 配置文件中添加依赖的坐标

```xml
<dependencies>
    <!--mybatis 依赖-->
    <dependency>
        <groupId>org.mybatis</groupId>
        <artifactId>mybatis</artifactId>
        <version>3.5.5</version>
    </dependency>

    <!--mysql 驱动-->
    <dependency>
        <groupId>mysql</groupId>
        <artifactId>mysql-connector-java</artifactId>
        <version>5.1.46</version>
    </dependency>

    <!--junit 单元测试-->
    <dependency>
        <groupId>junit</groupId>
        <artifactId>junit</artifactId>
        <version>4.13</version>
        <scope>test</scope>
    </dependency>

    <!-- 添加slf4j日志api -->
    <dependency>
        <groupId>org.slf4j</groupId>
        <artifactId>slf4j-api</artifactId>
        <version>1.7.20</version>
    </dependency>
    <!-- 添加logback-classic依赖 -->
    <dependency>
        <groupId>ch.qos.logback</groupId>
        <artifactId>logback-classic</artifactId>
        <version>1.2.3</version>
    </dependency>
    <!-- 添加logback-core依赖 -->
    <dependency>
        <groupId>ch.qos.logback</groupId>
        <artifactId>logback-core</artifactId>
        <version>1.2.3</version>
    </dependency>
</dependencies>
```

注意：需要在项目的 resources 目录下创建logback的配置文件

### 目录下创建mybatis的配置文件

* 编写 MyBatis 核心配置文件 -- > 替换连接信息 解决硬编码问题

  在模块下的 resources 目录下创建mybatis的配置文件 `mybatis-config.xml`，内容如下

  * 

    ```xml
    <?xml version="1.0" encoding="UTF-8" ?>
    <!DOCTYPE configuration
            PUBLIC "-//mybatis.org//DTD Config 3.0//EN"
            "http://mybatis.org/dtd/mybatis-3-config.dtd">
    <configuration>
    
        <typeAliases>
            <package name="com.itheima.pojo"/>
        </typeAliases>
        
        <!--
        environments：配置数据库连接环境信息。可以配置多个environment，通过default属性切换不同的environment
        -->
        <environments default="development">
            <environment id="development">
                <transactionManager type="JDBC"/>
                <dataSource type="POOLED">
                    <!--数据库连接信息-->
                    <property name="driver" value="com.mysql.jdbc.Driver"/>
                    <property name="url" value="jdbc:mysql:///mybatis?useSSL=false"/>
                    <property name="username" value="root"/>
                    <property name="password" value="1234"/>
                </dataSource>
            </environment>
    
            <environment id="test">
                <transactionManager type="JDBC"/>
                <dataSource type="POOLED">
                    <!--数据库连接信息-->
                    <property name="driver" value="com.mysql.jdbc.Driver"/>
                    <property name="url" value="jdbc:mysql:///mybatis?useSSL=false"/>
                    <property name="username" value="root"/>
                    <property name="password" value="1234"/>
                </dataSource>
            </environment>
        </environments>
        <mappers>
           <!--加载sql映射文件-->
           <mapper resource="UserMapper.xml"/>
        </mappers>
    </configuration>
    ```

  * 编写 SQL 映射文件 --> 统一管理sql语句，解决硬编码问题

    在模块的 `resources` 目录下创建映射配置文件 `UserMapper.xml`，内容如下

### 编写 SQL 映射文件

统一管理sql语句，解决硬编码问题

在模块的 `resources` 目录下创建映射配置文件 `UserMapper.xml`，内容如下

```xml
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="test">
    <select id="selectAll" resultType="com.itheima.pojo.User">
        select * from tb_user;
    </select>
</mapper>
```

### 编码

* 

  * 在 `com.itheima.pojo` 包下创建 User类

    ```java
    public class User {
        private int id;
        private String username;
        private String password;
        private String gender;
        private String addr;
        
        //省略了 setter 和 getter
    }
    ```

  * 在 `com.itheima` 包下编写 MybatisDemo 测试类

    ```java
    public class MyBatisDemo {
    
        public static void main(String[] args) throws IOException {
            //1. 加载mybatis的核心配置文件，获取 SqlSessionFactory
            String resource = "mybatis-config.xml";
            InputStream inputStream = Resources.getResourceAsStream(resource);
            SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
    
            //2. 获取SqlSession对象，用它来执行sql
            SqlSession sqlSession = sqlSessionFactory.openSession();
            //3. 执行sql
            List<User> users = sqlSession.selectList("test.selectAll"); //参数是一个字符串，该字符串必须是映射配置文件的namespace.id
            System.out.println(users);
            //4. 释放资源
            sqlSession.close();
        }
    }
    ```

**解决SQL映射文件的警告提示：**

在入门案例映射配置文件中存在报红的情况。问题如下：

* 产生的原因：Idea和数据库没有建立连接，不识别表信息。但是大家一定要记住，它并不影响程序的执行。
* 解决方式：在Idea中配置MySQL数据库连接。

IDEA中配置MySQL数据库连接

* 点击IDEA右边框的 `Database` ，在展开的界面点击 `+` 选择 `Data Source` ，再选择 `MySQL`

* 在弹出的界面进行基本信息的填写

* 点击完成后就能看到如下界面

  而此界面就和 `navicat` 工具一样可以进行数据库的操作。也可以编写SQL语句

## Mapper代理开发

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20221024183634.png)

* 在 `com.itheima.mapper` 包下创建 UserMapper接口，代码如下：

  ```java
  public interface UserMapper {
      List<User> selectAll();
      User selectById(int id);
  }　
  ```

* 在 `resources` 下创建 `com/itheima/mapper` 目录，并在该目录下创建 UserMapper.xml 映射配置文件

  ```xml
  <!--
      namespace:名称空间。必须是对应接口的全限定名
  -->
  <mapper namespace="com.itheima.mapper.UserMapper">
      <select id="selectAll" resultType="com.itheima.pojo.User">
          select *
          from tb_user;
      </select>
  </mapper>
  ```

* 在 `com.itheima` 包下创建 MybatisDemo2 测试类，代码如下：

  ```java
  /**
   * Mybatis 代理开发
   */
  public class MyBatisDemo2 {
  
      public static void main(String[] args) throws IOException {
  
          //1. 加载mybatis的核心配置文件，获取 SqlSessionFactory
          String resource = "mybatis-config.xml";
          InputStream inputStream = Resources.getResourceAsStream(resource);
          SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
  
          //2. 获取SqlSession对象，用它来执行sql
          SqlSession sqlSession = sqlSessionFactory.openSession();
          //3. 执行sql
          //3.1 获取UserMapper接口的代理对象
          UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
          List<User> users = userMapper.selectAll();
  
          System.out.println(users);
          //4. 释放资源
          sqlSession.close();
      }
  }
  ```

==注意：==

如果Mapper接口名称和SQL映射文件名称相同，并在同一目录下，则可以使用包扫描的方式简化SQL映射文件的加载。也就是将核心配置文件的加载映射配置文件的配置修改为

```xml
<mappers>
    <!--加载sql映射文件-->
    <!-- <mapper resource="com/itheima/mapper/UserMapper.xml"/>-->
    <!--Mapper代理方式-->
    <package name="com.itheima.mapper"/>
</mappers>
```



![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20230107223236.png)

## TOMCAT

##  Tomcat Maven插件

在IDEA中使用本地Tomcat进行项目部署，相对来说步骤比较繁琐，所以我们需要一种更简便的方式来替换它，那就是直接使用Maven中的Tomcat插件来部署项目，具体的实现步骤，只需要两步，分别是:

1. 在pom.xml中添加Tomcat插件

   ```xml
   <build>
       <plugins>
       	<!--Tomcat插件 -->
           <plugin>
               <groupId>org.apache.tomcat.maven</groupId>
               <artifactId>tomcat7-maven-plugin</artifactId>
               <version>2.2</version>
           </plugin>
       </plugins>
   </build>
   ```

2. 使用Maven Helper插件快速启动项目，选中项目，右键-->Run Maven --> tomcat7:run

![1627233963315](E:/JavaWeb-%25E8%25B5%2584%25E6%2596%2599/day08-HTTP&Tomcat&Servlet/ppt/assets/1627233963315.png)

==注意:==

* 如果选中项目并右键点击后，看不到Run Maven和Debug Maven，这个时候就需要在IDEA中下载Maven Helper插件，具体的操作方式为: File --> Settings --> Plugins --> Maven Helper ---> Install,安装完后按照提示重启IDEA，就可以看到了。

![1627234184076](E:/JavaWeb-%25E8%25B5%2584%25E6%2596%2599/day08-HTTP&Tomcat&Servlet/ppt/assets/1627234184076.png)

* Maven Tomcat插件目前只有Tomcat7版本，没有更高的版本可以使用
* 使用Maven Tomcat插件，要想修改Tomcat的端口和访问路径，可以直接修改pom.xml

```xml
<build>
    <plugins>
    	<!--Tomcat插件 -->
        <plugin>
            <groupId>org.apache.tomcat.maven</groupId>
            <artifactId>tomcat7-maven-plugin</artifactId>
            <version>2.2</version>
            <configuration>
            	<port>80</port><!--访问端口号 -->
                <!--项目访问路径
					未配置访问路径: http://localhost:80/tomcat-demo2/a.html
					配置/后访问路径: http://localhost:80/a.html
					如果配置成 /hello,访问路径会变成什么?
						答案: http://localhost:80/hello/a.html
				-->
                <path>/</path>
            </configuration>
        </plugin>
    </plugins>
</build>
```

**小结**

通过这一节的学习，大家要掌握在IDEA中使用Tomcat的两种方式，集成本地Tomcat和使用Maven的Tomcat插件。后者更简单，推荐大家使用，但是如果对于Tomcat的版本有比较高的要求，要在Tomcat7以上，这个时候就只能用前者了。

# jsp

在 `dependencies` 标签中导入 JSP 的依赖，如下

```xml
<dependency>
    <groupId>javax.servlet.jsp</groupId>
    <artifactId>jsp-api</artifactId>
    <version>2.2</version>
    <scope>provided</scope>
</dependency>
```

该依赖的 `scope` 必须设置为 `provided`，因为 tomcat 中有这个jar包了，所以在打包时我们是不希望将该依赖打进到我们工程的war包中。

JSP 脚本有如下三个分类：

* <%...%>：内容会直接放到_jspService()方法之中
* <%=…%>：内容会放到out.print()中，作为out.print()的参数
* <%!…%>：内容会放到_jspService()方法之外，被类直接包含

## mvc模式喝三层架构

MVC 是一种分层开发的模式，其中：

* M：Model，业务模型，处理业务

* V：View，视图，界面展示

* C：Controller，控制器，处理请求，调用模型和视图

控制器（serlvlet）用来接收浏览器发送过来的请求，控制器调用模型（JavaBean）来获取数据，比如从数据库查询数据；控制器获取到数据后再交由视图（JSP）进行数据展示。

**MVC 好处：**

* 职责单一，互不影响。每个角色做它自己的事，各司其职。

* 有利于分工协作。

* 有利于组件重用

三层架构是将我们的项目分成了三个层面，分别是 `表现层`、`业务逻辑层`、`数据访问层`。

三层架构是将我们的项目分成了三个层面，分别是 `表现层`、`业务逻辑层`、`数据访问层`。

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20221025194517.png)

* 数据访问层：对数据库的CRUD基本操作
* 业务逻辑层：对业务逻辑进行封装，组合数据访问层层中基本功能，形成复杂的业务逻辑功能。例如 `注册业务功能` ，我们会先调用 `数据访问层` 的 `selectByName()` 方法判断该用户名是否存在，如果不存在再调用 `数据访问层` 的 `insert()` 方法进行数据的添加操作
* 表现层：接收请求，封装数据，调用业务逻辑层，响应数据

# Cookie和Session

Cookie：客户端会话技术，将数据保存到客户端，以后每次请求都携带Cookie数据进行访问。

## Cookie的基本使用 

对于Cookie的使用，我们更关注的应该是后台代码如何操作Cookie，对于Cookie的操作主要分两大 类，本别是发送Cookie和获取Cookie,对于上面这两块内容，分别该如何实现呢?

创建Cookie对象，并设置数据 发送Cookie到客户端：使用response对象 介绍完发送Cookie对应的步骤后，接下面通过一个案例来完成Coo

3.1 发送Cookie

* 创建Cookie对象，并设置数据

```
Cookie cookie = new Cookie("key","value");
```

* 发送Cookie到客户端：使用==response==对象

```
response.addCookie(cookie);
```

介绍完发送Cookie对应的步骤后，接下面通过一个案例来完成Cookie的发送，具体实现步骤为:

> 需求:在Servlet中生成Cookie对象并存入数据，然后将数据发送给浏览器
>
> 1.创建Maven项目,项目名称为cookie-demo，并在pom.xml添加依赖
>
> 2.编写Servlet类，名称为AServlet
>
> 3.在AServlet中创建Cookie对象，存入数据，发送给前端
>
> 4.启动测试，在浏览器查看Cookie对象中的值

(1)创建Maven项目cookie-demo，并在pom.xml添加依赖

```xml
<properties>
    <maven.compiler.source>8</maven.compiler.source>
    <maven.compiler.target>8</maven.compiler.target>
</properties>

<dependencies>
    <!--servlet-->
    <dependency>
        <groupId>javax.servlet</groupId>
        <artifactId>javax.servlet-api</artifactId>
        <version>3.1.0</version>
        <scope>provided</scope>
    </dependency>
    <!--jsp-->
    <dependency>
        <groupId>javax.servlet.jsp</groupId>
        <artifactId>jsp-api</artifactId>
        <version>2.2</version>
        <scope>provided</scope>
    </dependency>
    <!--jstl-->
    <dependency>
        <groupId>jstl</groupId>
        <artifactId>jstl</artifactId>
        <version>1.2</version>
    </dependency>
    <dependency>
        <groupId>taglibs</groupId>
        <artifactId>standard</artifactId>
        <version>1.1.2</version>
    </dependency>
</dependencies>
<build>
    <plugins>
        <plugin>
            <groupId>org.apache.tomcat.maven</groupId>
            <artifactId>tomcat7-maven-plugin</artifactId>
            <version>2.2</version>
        </plugin>
    </plugins>
</build>
```

(2)编写Servlet类，名称为AServlet

```java
@WebServlet("/aServlet")
public class AServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
```

(3)在Servlet中创建Cookie对象，存入数据，发送给前端

```java
@WebServlet("/aServlet")
public class AServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //发送Cookie
        //1. 创建Cookie对象
        Cookie cookie = new Cookie("username","zs");
        //2. 发送Cookie，response
        response.addCookie(cookie);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
```

（4）启动测试，在浏览器查看Cookie对象中的值

访问`http://localhost:8080/cookie-demo/aServlet`

chrome浏览器查看Cookie的值，有两种方式,分布式:

3.2 获取Cookie

- 获取客户端携带的所有Cookie，使用==request==对象

```
Cookie[] cookies = request.getCookies();
```

- 遍历数组，获取每一个Cookie对象：for
- 使用Cookie对象方法获取数据

```
cookie.getName();
cookie.getValue();
```

介绍完获取Cookie对应的步骤后，接下面再通过一个案例来完成Cookie的获取，具体实现步骤为:

> 需求:在Servlet中获取前一个案例存入在Cookie对象中的数据
>
> 1.编写一个新Servlet类，名称为BServlet
>
> 2.在BServlet中使用request对象获取Cookie数组，遍历数组，从数据中获取指定名称对应的值
>
> 3.启动测试，在控制台打印出获取的值

(1)编写一个新Servlet类，名称为BServlet

```java
@WebServlet("/bServlet")
public class BServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
```

（2）在BServlet中使用request对象获取Cookie数组，遍历数组，从数据中获取指定名称对应的值

```java
@WebServlet("/bServlet")
public class BServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取Cookie
        //1. 获取Cookie数组
        Cookie[] cookies = request.getCookies();
        //2. 遍历数组
        for (Cookie cookie : cookies) {
            //3. 获取数据
            String name = cookie.getName();
            if("username".equals(name)){
                String value = cookie.getValue();
                System.out.println(name+":"+value);
                break;
            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
```

（3）启动测试，在控制台打印出获取的值

访问`http://localhost:8080/cookie-demo/bServlet`

![1629391020081](E:/JavaWeb-%25E8%25B5%2584%25E6%2596%2599/day11-%25E4%25BC%259A%25E8%25AF%259D%25E6%258A%2580%25E6%259C%25AF/ppt/assets/1629391020081.png)

在IDEA控制台就能看到输出的结果:

![1629391061140](E:/JavaWeb-%25E8%25B5%2584%25E6%2596%2599/day11-%25E4%25BC%259A%25E8%25AF%259D%25E6%258A%2580%25E6%259C%25AF/ppt/assets/1629391061140.png)

==思考:==测试的时候

* 在访问AServlet和BServlet的中间把关闭浏览器,重启浏览器后访问BServlet能否获取到Cookie中的数据?

这个问题，我们会在Cookie的使用细节中讲，大家可以动手先试下。

**小结**

在这节中，我们主要讲解了Cookie的基本使用,包含两部分内容

- 发送Cookie:

  - 创建Cookie对象，并设置值:Cookie cookie = new Cookie("key","value");
  - 发送Cookie到客户端使用的是Reponse对象:response.addCookie(cookie);

- 获取Cookie:

  - 使用Request对象获取Cookie数组:Cookie[] cookies = request.getCookies();
  - 遍历数组
  - 获取数组中每个Cookie对象的值:cookie.getName()和cookie.getValue()

  ## Session的基本使用

介绍完Cookie的基本使用之后，那么Cookie的底层到底是如何实现一次会话两次请求之间的数据共享呢?

==Session==：服务端会话跟踪技术：将数据保存到服务端。

* Session是存储在服务端而Cookie是存储在客户端
* 存储在客户端的数据容易被窃取和截获，存在很多不安全的因素
* 存储在服务端的数据相比于客户端来说就更安全
