---
title: C++学习笔记
tags:
  - cpp
categories:
  - 技术笔记
slug: 16346
date: 2022-01-12 19:52:47
---

C++的学习笔记，恐怕要22年暑假才能学完吧

<!-- more -->

# 1.C++认识

## 1.1

```c++
#include<iostream>
using namespace std:
int main()
{
    cout<<"hello world"<
    system("pause");
    return 0;
}


cin>>a>>b;
<
```

## 初识输入输出

C++包含了一个全面的**标准库**（standard library）来提供IO机制（以及很多其他设施）。

**iostream**库包含两个基础类型istream和ostream，分别表示输入流和输出流。一个流就是一个字符序列，是从IO设备读出或写入IO设备的。

**标准输入输出对象**

标准库定义了4个IO对象。为了处理输入，使用名为cin的istream类型的对象。这个对象被称为**标准输入**（standard input）。对于输出，使用名为cout的ostream类型的对象。这个对象被称为**标准输出**（standard output）。另外还有其他两个ostream对象，名为cerr和clog，cerr通常用来输出警告和错误消息，因此被称为**标准错误**（standard error）。clog用来输出程序运行时的一般性

```c++
#include<iostream>
int main() {
    std::cout << "ënter two numbers" << std::endl;
    int v1 = 0, v2 = 0;
    std::cin >> v1 >> v2;
    std::cout << "the sum of" << v1 << "and" << v2 << "is" << v1 + v2 << std::endl;
    return 0;


}
```

这条语句执行了一个**表达式**（expression）。在C++中，一个表达式产生一个计算结果，它由一个或多个运算对象和（通常是）一个运算符组成。这条语句中的表达式使用了**输出运算符**（<<）。

`<<`运算符接受两个运算对象：左侧必须是一个ostream对象；右侧是要打印的值。此运算符将给定的值写到给定的ostream对象中。计算结果是左侧的ostream对象。

"Enter two numbers"是一个**字符串字面值常量**（string literal），它是用一对双引号包围的字符序列。

endl是一个被称为**操纵符**（manipulator）的特殊值。写入endl的效果是结束当前行，并将与设备关联的缓冲区（buffer）中的内容刷到设备中。

前缀std::指出名字cout和endl是定义在名为**std**的**命名空间**（namespace）中的。

命名空间可以帮助我们避免不经意的名字定义冲突。标准库定义的所有名字都在命名空间std中。

**从流读取数据**

首先定义两个名为v1和v2的**变量**（variable）来保存输入：

```
int v1 = 0, v2 = 0;
```

这两个变量被定义为int类型，并**初始化**（initialize）为0。初始化一个变量，就是在变量创建的同时为它赋予一个值。

```
std::cin >> v1 >> v2;
```

这条语句读入输入数据。**输入运算符**（>>）接受一个istream作为其左侧运算对象，接受一个对象作为其右侧运算对象。它从给定的istream读入数据，并存入给定对象中。输入运算符返回其左侧运算对象作为计算结果。





# 变量和基本类型

## 基本类型



C++定义了一套包括**算术类型**（arithmetic type）和**空类型**（void）在内的基本数据类型。其中算术类型包含了字符、整型数、布尔值和浮点数。空类型不对应具体的值，仅用于一些特殊的场合，如可作为函数的返回值。



要想定义一个名为units_sold的int变量并初始化为0，以下4条语句都可以做到这一点：

```
int units_sold = 0;
int units_sold = {0};
int units_sold(0);
int units_sold{0};
```

作为C++11新标准的一部分，用花括号来初始化变量得到了全面应用。这种初始化的形式被称为**列表初始化**（list initialization）。

当用于内置类型的变量时，这种初始化形式有一个重要特点，如果我们使用列表初始化且初始值存在丢失信息的风险，则编译器将报错。

**void\*指针**

void*是一种特殊的指针类型，可用于存放任意对象的地址。

利用void*指针能做的事儿比较有限：拿它和别的指针比较、作为函数的输入或输出，或者赋给另外一个void*指针。不能直接操作void*所指的对象。

# 字符串 数组

## 命名空间的using声明

有如下形式：

```
using namespace::name;
```

使用完using声明（using declaration）后，就可以省略掉名字前的前缀了（如std::）。

```
#include <iostream>

using std::cin;

int main()
{
    int i;
    cin >> i;
    cout << i;    // 错误，没有对应的using声明，必须使用完整的名字
    return 0;
}
```

**头文件不应包含using声明**

这是因为头文件会被其它文件引用，从而使其它文件也使用了using声明，有可能造成命名冲突。

## 标准库类型string

string表示可变长的字符序列。使用string类型需要包含string头文件。

**初始化string对象的方式：**

```
string s1;           // 默认初始化，s1是一个空串
string s2(s1);       // s2是s1的副本
string s2 = s1;      // 等价于s2(s1)
string s3("value");  // s3是字面值"value"的副本，不包括最后的空字符
string s3 = "value"; // 等价于s3("value")
string s4(n, 'c');   // 初始化为由n个字符c组成的串
```

**直接初始化和拷贝初始化**

如果使用等号（=）初始化一个变量，实际上执行的是**拷贝初始化（copy initialization）**，编译器把等号右侧的对象初始值拷贝到新创建的对象中去。如果不适用等号，则执行的是**直接初始化**（direct initialization）。

```
string s5 = "hiya";  // 拷贝初始化
string s6("hiya");   // 直接初始化
string s7(10, 'c');  // 直接初始化
```

### string对象上的操作

### string对象上的操作

如：

- `os << s`, 将s写入输出流os当中，返回os
- `is >> s`，从输入流中读取字符串赋值给s，字符串以空白分隔，返回is
- `getline(is, s)`，从输入流中读取一行赋值给s，返回is
- `s.empty()`，如果s为空，返回true
- `s.size()`，返回s中的字符数，与s.length()等价
- `s[n]`，返回s中第n个字符的引用
- `s1 + s2`，返回s1和s2连接后的结果
- `s1 = s2`，用s2的副本代替s1
- `s1 == s2`，`s1 != s2`，如果s1和s2完全一样，则相等
- <, <=, >, >=，顺序比较字符大小，完全一致再比较长度

getline函数会读取换行符，但不会把它存入字符串中。getline返回输入流。

## 标准库类型vector

vector是对象的集合，也叫容器（container）。集合中的每个对象都有一个索引，索引用于访问对象。

vector是一个类模板。模板是为编译器提供的一份生成类或函数的说明。

vector是模板而非类型，由vector生成的类型必须包含元素的类型，如：

```
vector<int> v;
```

vector中存放的是对象，而引用不是对象，故不能存储引用。

### 定义和初始化vector对象

vector模板控制着初始化向量的方法。

定义vector对象的方法有：

- `vector<T> v1`，默认初始化，v1是一个空的vector
- `vector<T> v2(v1)`，v2中包含v1所有元素的副本
- `vector<T> v2 = v1`，等价于v2(v1)
- `vector<T> v3(n, val)`，v3包含了n个重复的元素，每个元素的值都是val
- `vector<T> v4(n)`，v4包含了n个执行了值初始化的对象
- `vector<T> v5{a,b,c...}`，v5里包含了用a,b,c...初始化的元素
- `vector<T> v5 = {a,b,c...}`，等价于`vector<T> v5{a,b,c...}`

**值初始化**

值初始化（value initialize），是指如果是内置类型，则初始值为0；如果是类类型，执行类默认初始化。

`vector<T>(n)`中，所有元素将执行值初始化。

### 向vector中添加元素

push_back函数把一个元素压入vector对象的尾端。

vector的对象能高效地增长，因此更常见的情况是：创建一个空vector，然后在运行时再利用vector的成员函数push_back向其中添加元素。

**一定不能在遍历vector的时候改变vector对象的大小。**







# 第七章 类

类的基本思想是**数据抽象**(data abstraction)和**封装**(encapsulation)。

数据抽象就是**接口(interface)与实现(implementation)分离**的技术。

接口就是暴露给用户的操作，比如公有的成员函数。

实现就是数据成员、接口的实现、私有的成员函数。

通过**抽象数据类型(abstract data type)**，来实现数据抽象和封装。