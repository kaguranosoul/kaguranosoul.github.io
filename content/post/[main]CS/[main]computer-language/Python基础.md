---
uuid: 378559b0-051d-11ed-a2ee-ff4233c822df
title: Python基础
tags:
  - Python
categories:
  - 技术笔记
image: >-
  https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112051136422.png
top: true
slug: 14703
date: 2021-12-04 15:22:31
---







学习笔记

<!-- more -->

# 1.Python的基本语法

## 1Python的交互和脚本式

交互式是不创建脚本文件，通过解释器的交互模式来编写代码  
脚本式，为创建.py格式进行执行

## 2标识符

在 Python 里，标识符由**字母、数字、下划线**组成。

在 Python 中，所有标识符可以包括英文、数字以及下划线(_)，但不能以数字开头。

Python 中的标识符是区分**大小写**的。

以下划线开头的标识符是有特殊意义的。以单下划线开头 **_foo** 的代表不能直接访问的类属性，需通过类提供的接口进行访问，不能用 **from xxx import \*** 而导入。

Python 可以同一行显示多条语句，方法是用分号 **;** 

| 运算符                                                       | 描述                           |
| ------------------------------------------------------------ | ------------------------------ |
| `[]` `[:]`                                                   | 下标，切片                     |
| `**`                                                         | 指数                           |
| `~` `+` `-`                                                  | 按位取反, 正负号               |
| `*` `/` `%` `//`                                             | 乘，除，模，整除               |
| `+` `-`                                                      | 加，减                         |
| `>>` `<<`                                                    | 右移，左移                     |
| `&`                                                          | 按位与                         |
| `^` `\|`                                                     | 按位异或，按位或               |
| `<=` `<` `>` `>=`                                            | 小于等于，小于，大于，大于等于 |
| `==` `!=`                                                    | 等于，不等于                   |
| `is`  `is not`                                               | 身份运算符                     |
| `in` `not in`                                                | 成员运算符                     |
| `not` `or` `and`                                             | 逻辑运算符                     |
| `=` `+=` `-=` `*=` `/=` `%=` `//=` `**=` `&=` `|=` `^=` `>>=` `<<=` | （复合）赋值运算符             |

## 3.保留字

|    and    |    exec    |    not     |
| :-------: | :--------: | :--------: |
|  assert   |  finally   |   **or**   |
| **break** |  **for**   |  **pass**  |
| **class** |    from    | **print**  |
| continue  |   global   |   raise    |
|    def    |   **if**   | **return** |
|    del    | **import** |    try     |
| **elif**  |   **in**   | **while**  |
| **else**  |   **is**   |    with    |
|  except   |   lambda   |   yield    |

# 2数据类型

## 1整数

python可以写**任意大**的整数

如果出现很大的数比如说10000000可以写成10000_000

## 2浮点数

浮点数可以用科学计数法来表示  
比如说1.23*10七次幂可以写1.23e9, 0.0015等于1.5e-3

### 数值运算函数

#### round

```
round(11.111,2)这个函数是四舍五入round(x[,d])d为保留位数默认为0
// 11.11
```

#### abs

```
abs（x）绝对值
```

#### pow

```
pow(x,y[,z])
幂余
pow(2,3,3)
//2
```



#### divmod

```
商余
divmod(10，3）
//（3，1）
```



## 3.字符串

字符串是以单引号或者双引号写出来的  

字符串内部中有"或者‘可以通过\来表示

```python
'I\'m \"OK\"!'
I'm "OK"!
str1 = 'hello, world!'
# 通过内置函数len计算字符串的长度
print(len(str1)) # 13
# 获得字符串首字母大写的拷贝
print(str1.capitalize()) # Hello, world!
# 获得字符串每个单词首字母大写的拷贝
print(str1.title()) # Hello, World!
# 获得字符串变大写后的拷贝
print(str1.upper()) # HELLO, WORLD!
# 从字符串中查找子串所在位置
print(str1.find('or')) # 8
print(str1.find('shit')) # -1
# 与find类似但找不到子串时会引发异常
# print(str1.index('or'))
# print(str1.index('shit'))
# 检查字符串是否以指定的字符串开头
print(str1.startswith('He')) # False
print(str1.startswith('hel')) # True
# 检查字符串是否以指定的字符串结尾
print(str1.endswith('!')) # True
# 将字符串以指定的宽度居中并在两侧填充指定的字符
print(str1.center(50, '*'))
# 将字符串以指定的宽度靠右放置左侧填充指定的字符
print(str1.rjust(50, ' '))
str2 = 'abc123456'
# 检查字符串是否由数字构成
print(str2.isdigit())  # False
# 检查字符串是否以字母构成
print(str2.isalpha())  # False
# 检查字符串是否以数字和字母构成
print(str2.isalnum())  # True
str3 = '  jackfrued@126.com '
print(str3)
# 获得字符串修剪左右两侧空格之后的拷贝
print(str3.strip())
```

字符串函数

### find 

返回从左边第一个指定的字符索引，找不到返回-1

### index

返回从左边第一个字符索引，找不到报错

```python
str = "abcde"
print(str.find('c'))//2

str = "hello world"
a = str.index('w')
print(a)//6
```

### sqlit

字符串的拆分

```python
str = "hello world"
print(str.split(' '))//['hello', 'world']
```

### chr(x) ord(x)

## 

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220323200124.png)

##### 字符串的方法

方法必须用.方式

八种重要字符串的方法

- str.lower str.upper() 返回字符串的副本，全部为大小写
- str.split(sep=None)返回一个列表，由str根据sep被分割的部分组成

```python
"a,b,c".split(",")
# ['a','b','c']
```

- str.count(sub)返回子串sub在str中中出现个数

```python
"aabbaa",count("a")
# 4
```

- str.replace(old,new)返回str的副本，所以old子串被替换为new

  ```python
  “python".replace("n","n123.io")
  # python123.io
  ```

  

### 字符串的格式化

python用于槽方式以及format方式

```
"{}是世界上最好用的语言之一，而{}是效率最高的语言".format("python","c++")
```

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220323205617.png)

#### ![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220323205818.png)







## 4布尔值

只有两个True和False

布尔值可以tong过and or not表达

```python
>>> True and False
False
>>> False and False
False
>>> 5 > 3 and 3 > 1
True
>>> True or True
True
>>> True or False
True
>>> not False
True
```

## 5.空值

用None表示，不能单纯理解为0

## 6变量

**重点**  
python中

```python
a='abc'
```

python解释器干了两个事情

- 在内存中创建了‘abc’的字符串
- 在内存中创建a的变量指向‘abc’



## 7.常量

## 8.list

list是一种有序的集合，可以进行修改或者删除

```python
classmates=['song','wang','zhang']
```

使用len可获取list元素的个数

```python
>>> len(classmates)
3
```

### 索引 切片[start: end:step]

用索引可以访问list的元素

```python
>>> classmates[0]
'song'
>>> classmates[1]
'wang'
>>> classmates[2]
'zhang'
>>> classmates[3]
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
IndexError: list index out of range
    
    
    
    
    list1 = [1, 3, 5, 7, 100]
print(list1) # [1, 3, 5, 7, 100]
# 乘号表示列表元素的重复
list2 = ['hello'] * 3
print(list2) # ['hello', 'hello', 'hello']
# 计算列表长度(元素个数)
print(len(list1)) # 5
# 下标(索引)运算
print(list1[0]) # 1
print(list1[4]) # 100
# print(list1[5])  # IndexError: list index out of range
print(list1[-1]) # 100
print(list1[-3]) # 5
list1[2] = 300
print(list1) # [1, 3, 300, 7, 100]
# 通过循环用下标遍历列表元素
for index in range(len(list1)):
    print(list1[index])
# 通过for循环遍历列表元素
for elem in list1:
    print(elem)
# 通过enumerate函数处理列表之后再遍历可以同时获得元素索引和值
for index, elem in enumerate(list1):
    print(index, elem)
```

当然我们也可以通过负数来索引

```python
>>> classmates[-1]
'zhang'
```

### 增删

因为list为可变的有序表 append

```python
>>> classmates.append('zhao')
>>> classmates
classmates=['song','wang','zhang','zhao']
```

元素想插入到指定的位置中.insert

```python
>>> classmates.insert(1, 'Jack')
>>> classmates
>>> classmates.append('zhao')

classmates=['song','jack','wang','zhang','zhao']
```

删除末尾用 pop()

```python
>>> classmates.pop()
'zhao'
>>> classmates
['song','jack','wang','zhang']
```

想删除指定的位置用pop(i)

```python
>>> classmates.pop(1)
'Jack'
>>> classmates
['Michael', 'Bob', 'Tracy']
```

```python
list1 = [1, 3, 5, 7, 100]
# 添加元素
list1.append(200)
list1.insert(1, 400)
# 合并两个列表
# list1.extend([1000, 2000])
list1 += [1000, 2000]
print(list1) # [1, 400, 3, 5, 7, 100, 200, 1000, 2000]
print(len(list1)) # 9
# 先通过成员运算判断元素是否在列表中，如果存在就删除该元素
if 3 in list1:
	list1.remove(3)
if 1234 in list1:
    list1.remove(1234)
print(list1) # [1, 400, 5, 7, 100, 200, 1000, 2000]
# 从指定的位置删除元素
list1.pop(0)
list1.pop(len(list1) - 1)
print(list1) # [400, 5, 7, 100, 200, 1000]
# 清空列表元素
list1.clear()
print(list1) # []
```

### 生成式和生成器

```python
f = [x for x in range(1, 10)]
print(f)
f = [x + y for x in 'ABCDE' for y in '1234567']
print(f)
```

list中可以有不同类型的甚至list

```python
>>> s = [22141, True, ['asp', 'php'], 'scheme']
>>> len(s)
4
```

## 9.tuple

有序的列表叫tuple，tuple不能被修改

不可变的tuple有什么意义？因为tuple不可变，所以代码更安全。如果可能，能用tuple代替list就尽量用tuple。

```python
>>> t = (1, 2)
>>> t
(1, 2)
```

如果tuple中出现list也是可以修改的

```python
>>> t = ('a', 'b', ['A', 'B'])
>>> t[2][0] = 'X'
>>> t[2][1] = 'Y'
>>> t
('a', 'b', ['X', 'Y'])
```

## 10dict（dictionary）

其他的语言叫map

使用key-value

dict实现，只需要一个“名字”-“成绩”的对照表，直接根据名字查找成绩，无论这个表有多大，查找速度都不会变慢。用Python写一个dict如下：

```python
>>> d = {'Michael': 95, 'Bob': 75, 'Tracy': 85}
>>> d['Michael']
95
```

必须要有key才能读取value  
一个key只能有一个value  
key不存在报错

如果想删除只要删除key就可以了

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112052215177.png)

## 11.set

set和dict类型

是存放key的但是不存放value key不能重复

set具有数学上的set性质

比如无序，没有重复元素

```python
>>> s = set([1, 2, 3])
>>> s
{1, 2, 3}

>>> s.add(4)
>>> s
{1, 2, 3, 4}
>>> s.add(4)
>>> s
{1, 2, 3, 4}

>>> s.remove(4)
>>> s
{1, 2, 3}
```

# 3.基本函数

## 1.判断

和c语言基本相似

**注意不要少写了冒号**

```python
age = 3
if age >= 18:
    print('your age is', age)
    print('adult')
else:
    print('your age is', age)
    print('teenager')
```

```python
age = 3
if age >= 18:
    print('adult')
elif age >= 6: #elif等于else if
    print('teenager')
else:
    print('kid')
    
if <条件判断1>:
    <执行1>
elif <条件判断2>:
    <执行2>
elif <条件判断3>:
    <执行3>
else:
    <执行4>
```

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220329214551.png)

## 2.循环

python中的循环分为for in依次将list或者tuple中元素**迭代**

```python
names = ['Michael', 'Bob', 'Tracy']
for name in names:
    print(name)
    
//
Michael
Bob
Tracy
```

## 3.输出

```python
print("hello world")
# 可以输出字符串
# 含有运算符的表达式
print(88 * 88 - 55)
# 将数据输出文件中 主要盘符要存在 使用file=p a+以读写状态，没有就新建
fp = open('E:/编程/python/text.txt', 'a+')
print('hello world', file=fp)
# 输出到这个文件夹
fp.close()
# 关闭


a, b = 5, 10
print(f'{a} * {b} = {a * b}')
```



# 4.针对数据类型的特征

## 1.Slice                         

在list或者tuple取元素

range函数

```python
>>>list(range(0, 30, 5))
[0, 5, 10, 15, 20, 25]
>>> list(range(0, 10, 2))
[0, 2, 4, 6, 8]
>>> list(range(0, -10, -1))
[0, -1, -2, -3, -4, -5, -6, -7, -8, -9]
>>> list(range(5))
[0, 1, 2, 3, 4]
```



```python
list中可以通过for来切片
>>> r = []
>>> n = 3
>>> for i in range(n):
...     r.append(L[i])
... 
>>> r
['Michael', 'Sarah', 'Tracy']
```

python有更简单的方法实现切片操作

```python
>>> L[0:3]
['Michael', 'Sarah', 'Tracy']
>>> L[:3]
['Michael', 'Sarah', 'Tracy']
>>> L[1:3]
['Sarah', 'Tracy']
如果0-99提取前十
>>> L=list(rang(100))
>>> l
[0,1,2....99]

>>> l[:10]
l [0,1,...9]

前十个，每两个取一个
l[:10:2]

l[::5]

```

## 2.lteration

在python中通过for循环遍历list或者tuple叫迭送

## 3.列表生成式









# 5基本库

## 1time库

### time

```
1648043734.0478468
```



### ctime

```
Wed Mar 23 21:57:29 2022
```



### gmtine

```
time.struct_time(tm_year=2022, tm_mon=3, tm_mday=23, tm_hour=13, tm_min=58, tm_sec=1, tm_wday=2, tm_yday=82, tm_isdst=0)
```

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220323221530.png)

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220323221701.png)







# 2022

## 天天向上的力量

一年365进步与退步千分之一  
365中工作五天进步百分之一，周末退步百分之一  
你和365天都在进步百分之一的卷仙一起工作，你工作日学习，但是休息日两天下降百分之一，那么你至少要在工作日学习百分之多少呢？

```python
# daydayup.py
def dayUp(df):
    dayup = 1
    for i in range(365):
        if i % 7 in[6,0]:
            dayup=dayup*(0.99)
        else:
            dayup =dayup*(1+df)
    return dayup
dayfactor = 0.01
while dayUp(dayfactor) < 37.78:
    dayfactor+=0.001
print("他工作日努力参数为{:.3f}".format(dayfactor))

//0.019
```

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220321212958.png)

## 文本进度条

```python
# TextProBar1.py
import time
scale = 10
print("........执行开始........")
for i in range(scale+1):
    a='*'*i
    b = '.'*(scale-i)
    c = (i/scale)*100
    print("\r{:^3.0f}%[{}->{}]".format(c,a,b))
    time.sleep(0.1)
print("........结束........")
```

....结束........")
```

