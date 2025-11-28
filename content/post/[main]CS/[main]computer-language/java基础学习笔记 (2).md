---
uuid: 378532a9-051d-11ed-a2ee-ff4233c822df
title: Java SE
tags:
  - java
toc: true
categories:
  - 技术笔记
image: >-
  https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220419231042.png
slug: 19402
date: 2022-02-21 13:47:24
---



![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220330163928.png)



# DOS

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220330175504.png)



```
cd test
copy nul a.txt
echo 123>a.txt
del a.txt

```



# 变量

constant

## 常量

```
final type barName=valie;
```

## 变量的分类

局部变量 成员变量 静态变量

局部变量在方法语句块

成员变量 对象 类内部，方法外面 从属对象 会自动默认初始化

静态变量 类内部 static修饰 从属类

## primitive data type

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220412220904.png)

### 整数

byte 一字节 -127-127

short 2字节 -2^15-2^15-1

int 4字节 2^31-2^32-1

long 8字节 -2^63

十进制 八进制以0开头 十六进制以0x 0X 二进制0b oB开头

#### floating point number

float四字节 double八字节

### 字符型



### boolean

true false

一个字节或者四个字节

### 运算符

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220412225528.png)



![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220412230002.png)



![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220412230014.png)



### 强制转换类 cast

（type）var



### Scanner处理键盘输入

```java

import java.util.Scanner;

public class Scanner1 {
    public static void main(String[] args) {
        Scanner s =new Scanner(System.in);
        System.out.println("请输入用户名");
        String uname =s.nextLine();
        System.out.println("输入你的年龄");
        int age=s.nextInt();
        System.out.println("用户名"+uname);
        System.out.println("年龄"+age);
    }
}
```

# 控制语句



# API

## string

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220624161257.png)

```java
String name=new string("name");
String name="name";
char[]value={'a','b,'c};
String s3=new String(value);
byte[]bytes={97,98,99,100};
String s4=new String(bytes);
```



### 统计单词数量

```java
import java.util.Arrays;
import java.util.Scanner;

public class HelloWorld {
    public static void main(String[] args) {
        String str="hello world abc hello hello hello hello hello";
        System.out.println();
        HelloWorld he=new HelloWorld();
        int count=he.wordCount(str,"hello");
        System.out.println(count);
;    }
    public int wordCount(String art,String word){
        //1先把文章打散成数组
        String[] words = art.split(" ");
        int res=0;
        for (int i = 0; i < words.length; i++) {
            if(words[i].equalsIgnoreCase(word)){
                res++;
            }
        }
        return res;
    }
}

```



### scanner

### equals

```java
if(name.equals(name_1)&&password_1.equals(password)){
                System.out.println("成功");
                break;
            }
```

### 遍历charAt

```java
 for (int i = 0; i < line.length(); i++) {
            System.out.println(line.charAt(i));
        }
```

## stringBuilder的添加和反转

StringBuffer 线程安全效率低

StringBuilder相反

append和reverse

```java
     StringBuilder sb=new StringBuilder();
        sb.append("hello");
        sb.append("java");
        System.out.println(sb);
        sb.reverse();
        System.out.println(sb);
//hellojava
//avajolleh

stringbuilder转为string
    string s =sb.tostring（）；
 string转为stringbuilder
    StringBuilder sb=new StringBuilder(s);
```



# IDEA



```
快捷和补全
单行ctrl+/
多行ctrl+shitft+/

CTRL+alt+L格式化

快速生成main（）方法 psvm
输入语句sout

内容辅助CTRL+shifr+space\
自动生成构造器
insert+alt
查看错误alt+enter
看源码ctrl+左键
```

# 数组Array

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220624165133.png)

数组必须初始化使用

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220618150304.png)



## 数组的遍历

```java
[0,length-1]
        int []a={2,2,2,2};
        Arrays.sort(a);
        //二分查找索引
        System.out.println(Arrays.binarySearch(a,2));
        //数组填充
        Arrays.fill(a,0,3,55);
```

### foe-each

```java
//用于数组或者容器读取
public static void main(String[] args){
    String []ss={"12321","123"};
    for(String temp:ss){
        sout(temp);
    }
}
```

### arraycopy

```java

arraycopy(object,int srcpos,object,int destpos,intlenght)

public class string {
    public static void main(String[] args) {
        String[] s={"阿里","尚学堂","东京"};
        String []sBak=new String[4];
        System.arraycopy(s,0,sBak,0,s.length);
        System.out.println(Arrays.toString(sBak));
    }
}
```



- 静态 type name = new type【length】

```
int a[] =new int [5];
int [] arr =new int [5];
int []arr={551,2,377};
```

数组的扩容

```java
        int[] a={1,2,3};
        int[] temp=new int [a.length*2];
        for (int i = 0; i < a.length; i++) {
            temp[i]=a[i];
        }
        a=temp;
        a[a.length-2]=11;
        for (int i = 0; i < a.length; i++) {
            System.out.println(a[i]);
        }
```

### Comparalbe

```java


```







### 双指针思想

```
        int a[]={12,231,3421,33,3131,234};
        int b[]={321,31,345,23,54,7676};
        
        
        
               while (i<a.length||j<b.length){
            if(i==a.length){
                c[i+j]=b[j];
                j++;continue;
            }
            if(j==b.length){
                c[i+j]=a[i];
                i++;continue;
            }
            if(a[i]>b[j]){
                c[i+j]=b[j];
                j++;
            }else{
                c[i+j]=a[i];
                i++;
            }
        }
```



## arrayList 集合（超级数组）

```java
        ArrayList<String> array =new ArrayList<>();
        System.out.println(array);
        array.add("hello world");
        array.add("java");array.add("java good");
        System.out.println(array);
        array.add(1,"syr");
        System.out.println(array);
        
        []
[hello world, java, java good]
[hello world, syr, java, java good]

```

arraylist基本常用方法

| public boolean remove(obiect o)   | 删除指定元素               |
| --------------------------------- | -------------------------- |
| public  E remove(int index)       | 删除索引元素，返回被删元素 |
| public E set(int index,E element) | 修改，返回被修改的元素     |
| public E get（int index）         | 返沪索引元素               |
| public int size（）               | 返回集合的元素             |

### 链表

# 方法method

Java方法是语句的集合，它们在一起执行一个功能。

- 方法是解决一类问题的步骤的有序组合
- 方法包含于类或对象中
- 方法在程序中被创建，在其他地方被引用

```java
定义 
    public static type name(){
    
}
```

## 方法重载overload

- 多个方法在一个类
- 方法具有相同的方法名
- 返回类型或者数量不同

一个类中定义多个名称相同，但是参数泪飙不同的的方法

```java
public class fangfa {
    public static void main(String[] args) {
        System.out.println(sum(123,2131));
        System.out.println(sum(12.1,23.1));
        System.out.println(sum(123,231,32));
    }
    //int add
    public static int sum(int a,int b){
        return a+b;
    }
    public static  double sum(double a,double b){
        return  a+b;
    }
    public static int sum(int a,int b,int c){
        return a+b+c;
    }
}
//
2254
35.2
386
```

### 可变参数

```java
public class Text{
    public int plus(int...nums){
        return
    }
}
```





## 递归

StackOverflowError

大量占用系统堆栈





# 包装类和自动拆装箱

```

```

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220621204705.png)





# 类和对象（Object Oriented Programing）

类是java基本的组成结构

## 类的定义

```java
public class car{
    //每个文件必须有一个public class，名字与文件名相同
}
class tyre{}//可以定义多个class
class engine{}
class seat{}
```

对于一个类来说有三种成员

### field属性  成员变量

属性用于定义这个类或者更类对象包含的数据或者静态特征

修饰符 type name=默认

### method方法

方法从属于类和对象

修饰符 返回类型 name（）{

## 构造方法 构造器 constructor

构造器能用于对象的初始化，而不是创建对象



- 构造器用new关键字调用
- 构造器虽然没有返回值，但不能定义返回值类型 
- 如果没有定义构造器，则编译器会自动定义一个无参的构造方法，如果一定义的则编译器不会自动添加
- 构造器的方法名必须与类名字相同 

课堂练习可以生成具有特定坐标的点对象 提供可以计算点到另外一点距离的方法

```java
package 第五章面向对象.构造器.点;

public class Point {
    double x,y;

    Point (double _x,double _y){
        x=_x;y=_y;
    }
    public double getDistance(Point p){
        return Math.sqrt((x-p.x)*(y-p.y)+(y-p.y)*(y-p.y));
    }
    public static void main(String[] args) {
        Point p1=new Point(3.0,4.0);
        Point origin =new Point(0.0,0.0);
        System.out.println(p1.getDistance(origin));
        
    }
}

```



## 构造方法的重载

## jvm虚拟机

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220417123127.png)

### 栈的特点

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220417123413.png)



### 堆的特点

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220417123605.png)



![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220417130828.png)



### Garbage Collection垃圾回收机制

垃圾回收过程

发现无用的对象 回收无用对象占用内存空间 无用对象为没有任何引用

#### 算法

1引用计数法

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220417132400.png)



![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220417132717.png)



### 通用的分代垃圾回收机制



![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220417132912.png)



### 内存泄漏

创建大量的无用对象

```
string str="";
for(int i=0;i<11000:i++){
str+=i;//相当于产生了11000个string对象
}
```

#### 静态集合类的使用

hassomap vector list等这些最容易出现，这些静态变量的生命周期

各种连接对象 监听器使用不当

可以用system.gc()但是只是通知jvm

object可以用finalize方法，是java给程序员的

### this关键词

就是当前对象的地址



this用法

- 普通方法中 this总是指向调用该方法的对象
- 构造方法中，this总是指向正要初始化的对象



### static

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220417200700.png)

### 静态初始化块

构造方法用于对象的普通属性的初始化

**静态初始快中，用于初始化类，初始化静态属性**

**静态初始化快中不能直接访问非static成员**



**变量分类**

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220417204817.png)



![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220417204921.png)

包机制package import

相当于文件夹对文件的作用，用于管理类，解决类的重名问题

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220417210539.png)



# 面向对象三大特征

## 继承extends

代码复用，方便建模

```java
package 第五章面向对象.extends1;

public class text {
    public static void main(String[] args) {
    Student s1 =new Student("songyuran",11,"CS");
    s1.xuexi();
    }
}
class Persin{
    String name;
    int height;
    public void rest(){
        System.out.println("xiuxi");
    }
}
class Student extends Persin{
    String major;
    public void xuexi(){
        System.out.println("xuexi");
        rest();
        System.out.println(this.name);
    }
    public Student(String name,int height,String major){
        this.name=name;
        this.height=height;
        this.major=major;
    }
}

```



### instanceof判断类型

```
s1 instanceof Person//true
s1 instanceof Student//true
```

- 父类 又叫超类 基类  子类：派生类

- 接口有多继承

  

  

### 方法重写override
子类重写父亲的方法，替换父类行为，重写是实现多态的必要条件

  

  == 方法名字 形参列表

  《=返回值类型和声明异常类型，子类小于等于父类

  》=子类大于父类


### final关键词

  - 修饰变量
  - 修饰方法 不可被子类重写，但是可以重载，final class a{}
  - 修饰类 不可被继承

### 组合

组合比较灵活，继承只能有一个父类，组合可以有多个属性

## 封装

三大特征之一

提高安全 复用 高内聚低耦合

### **封装的实现关键词访问限制修饰符**



![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220522120656.png)

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220522141733.png)

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220522121248.png)



![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220522142618.png)



```java
package text.b;

public class Test {
    public static void main(String[] args) {
        User u=new User(99,"宋宇然",true);
        System.out.println(u.getId());
        System.out.println(u.getName());
        System.out.println(u.isMan());
    }
}

```

```java
package text.b;

public class User {
    private int id;
    private String name;
    private boolean man;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isMan() {
        return man;
    }

    public void setMan(boolean man) {
        this.man = man;
    }

    public void printUserInfo(){
        System.out.println(id);
        System.out.println(man);
        System.out.println(name);
    }

    public User(int id, String name, boolean man) {
        this.id = id;
        this.name = name;
        this.man = man;
    }
}

```

## 多态polymorphism

同一种方法调用 不同对象行为完全不同

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220522144328.png)



```java
public class Animal{
    public void shout(){
        System.out.println("叫了一声");
    }
}
class Dog extends Animal{
    public void shout(){
        System.out.println("wangwang");
    }
    public void seeDoor(){
        System.out.println("see door");
    }
}
class Cat extends Animal{
    public void shout(){
        System.out.println("miaomiao");
    }
}
```

```java
public class TestPolym{
    public static void main(String[] args){
        animaCry(new DOg());
        animalCry(new Cat());
    }
    static void animalCry(Animal a){
        a.shout();
    }
}
```





## 对象的转型casting

父类引用指向子类叫向上转型，属于自动

反之

```java
public class TestPolym{
    public static void main(String[] args){
        Animal animal=new Dog();
        animal.shout();
        //不能运行animal.seeDoor();需要强制转换
        Dog d =(Dog)animal;
        d.seeDoor();
    }
    static void animalCry(Animal a){
        a.shout();
    }
}
```



![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220522153115.png)





# Object类

所有类是Object的子类

## hashCode

```java

```



## **toString**返回地址

```java
public class tosting {
    String name;
    String pwd;
    @Override
    public String toString() {
        return "用户名"+name+"密码"+pwd;
    }

    public static void main(String[] args){
            tosting to=new tosting();
        System.out.println(to.toString());
        }
}

```

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220520221445.png)

## equals和==

==代表对方是否相同，type和地址

equals()比较内容相同

equals()默认比较两个对象的hashcode

可以重写equals

### 重写equals()

```java
public class TestObject extends Object{
    int id;
    String name;
    String pwd;
    public TestObject(int id,String name,String pwd){
        this.name=name;
        this.pwd=pwd;
        this.id=id;
    }
    @Override
    public boolean equals(Object o){
        if(this==o)return true;
        if(o==null||getclass()!=o.getClass())return false;
        return id==that.id;
    }

    public String toString(){return "用户名:" +name+"密码:"+pwd;}
    public static void main(String[] args){
        TestObject t= new TestObject(1001,"zhangshan,"123456);
        TestObject t2=new TestObject(1001,"zhangwu,"123123123);
        System.out.println(t.equals(t2));
    }
}
```

## super

super可以看作直接父类对象的引用

在一个类中，若是构造方法第一行没有第哦啊用super或者this java默认调用

- 在子类的方法中，访问父类的成员变量
- 在子类的成语方法中，访问父亲的成员方法
- 在子类的构造方法中访问父类的构造方法

 

```java
public class test

```









# 抽象类和接口

抽象方法和抽象类

**抽象方法** ****

使用abstract修饰方法 没有方法体 只有声明

定义是一种规范 就是告诉子类必须要给抽象方法具体实现

**抽象类**

包含抽象方法的类叫抽象类

通过抽象类可以严格限制子类的设计，使得子类之间梗通用

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220522160952.png)



## 接口interface

是一组规范，所以类要遵守

```java

```

# 内部类

inner

```java
public class Outer{
	private int age=19;
    public void show{
        System.out.println("ss");
    }
}
```

# l类

包装类 字符串类 时间处理相关类 其他类

## 基本数据类型

wrapper class

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220625131814.png)



```java
Integer i=Integer.valueOf(100);//java9推荐用法
Integer j=new Integer(100);//不推荐
```



# 异常

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220625142630.png)

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220625145743.png)

### error

程序无法处理错误比较严重

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220625153202.png)

### 异常2声明异常 throws子句



# 正则表则语法规则

## 内容限定

```java
       String regex="[a]";
        String regex1="[a-z]";
        String regex2="[a-zA-Z0-9]";
        //取反
        String regex3="^ab";
        String content="a";
        String content1="A";
        String content2="c";
        System.out.println(content.matches(regex1));//true
        System.out.println(content1.matches(regex1));//false
        System.out.println(content1.matches(regex2));//true
        System.out.println(content2.matches(regex3));//true
```

## 长度限定

```java
//正则中通过{}表示长度
//[a-z]{5}表示小写a-z而且长度必须为5
//[a-z]{5，8}表示小写a-z而且长度必须为5到8包括5，8
//[a-z]{2,}表示小写a-z而且长度最小长为2
//[a-z]{5}表示小写a-z而且长度必须为5
```

## 长度限定符号

```
?{0,1}
+{1,}
*{0,}
```

## 预定义字符

```

```

![image-20220626221803976](C:\Users\SYR\AppData\Roaming\Typora\typora-user-images\image-20220626221803976.png)

## 正则表达式中组合定义

```
//电话号码的正则
\\d{3,4}-//必须字母开头 最少4最长8
[a-z]{1}\\w{3,8}
//电话号码的正则
\\d{3,4}-
```

# 集合

## stack

先进后出

�

## stack

先进后出

