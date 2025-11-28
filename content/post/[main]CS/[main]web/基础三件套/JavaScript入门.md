---
uuid: 378580c0-051d-11ed-a2ee-ff4233c822df
title: JavaScript基础
tags:
  - javascript
categories:
  - 技术笔记
image: >-
  https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112051136006.png
slug: 53227
date: 2021-12-01 19:19:12
---



前端三剑客的大哥捏

<!-- more -->

# 1.关于JavaScript

## 1.JavaScript是什么？

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112051137720.png)

1. **HTML** 定义了网页的内容
2. **CSS** 描述了网页的布局
3. **JavaScript** 控制了网页的行为

浏览器不会执行js，通过js解释器

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220331195129.png)



js的引入有三种 行内式的内嵌式

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220331210023.png)

# 输入输出语句

```javascript
JavaScript 显示数据
JavaScript 可以通过不同的方式来输出数据：

使用 window.alert() 弹出警告框。
使用 document.write() 方法将内容写到 HTML 文档中。
使用 innerHTML 写入到 HTML 元素。
使用 console.log() 写入到浏览器的控制台。

```

# 字面量和变量

js是一种弱类型或者动态的语言，不用提前声明类型，类型被自动确定



**数字（Number）字面量** 可以是整数或者是小数，或者是科学计数(e)。

```
isNaN来判断是否为非数字，并返回一个值 如果是数字返回false，反之true
```

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220402000950.png)



**字符串（String）字面量** 可以使用单引号或双引号:**表达式字面量** 用于计算：

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220402000903.png)

**数组（Array）字面量** 定义一个数组：

[40, 100, 1, 5, 25, 10]

**对象（Object）字面量** 定义一个对象：

{firstName:"John", lastName:"Doe", age:50, eyeColor:"blue"}

**函数（Function）字面量** 定义一个函数：

function myFunction(a, b) { return a * b;}

在编程语言中，变量用于存储数据值。

JavaScript 使用关键字 **var** 来定义变量， 使用等号来为变量赋值：



## JavaScript 数据类型

JavaScript 有多种数据类型：数字，字符串，数组，对象等等：

```
var length = 16;                  // Number 通过数字字面量赋值
var points = x * 10;               // Number 通过表达式字面量赋值
var lastName = "Johnson";             // String 通过字符串字面量赋值
var cars = ["Saab", "Volvo", "BMW"];       // Array 通过数组字面量赋值
var person = {firstName:"John", lastName:"Doe"}; // Object 通过对象字面量赋值
```

var cars = new Array();
cars[0] = "Saab";
cars[1] = "Volvo";
cars[2] = "BMW";

对象由花括号分隔。在括号内部，对象的属性以名称和值对的形式 (name : value) 来定义。属性由逗号分隔：

var person={firstname:"John", lastname:"Doe", id:5566};

上面例子中的对象 (person) 有三个属性：firstname、lastname 以及 id。

var person={
firstname : "John",
lastname : "Doe",
id    : 5566
};

```
var person=
{
	firstname : "John",
	lastname  : "Doe",
	id        :  5566
};
document.write(person.lastname + "<br>");
document.write(person["lastname"] + "<br>");
```



| 语句         | 描述                                                         |
| :----------- | :----------------------------------------------------------- |
| break        | 用于跳出循环。                                               |
| catch        | 语句块，在 try 语句块执行出错时执行 catch 语句块。           |
| continue     | 跳过循环中的一个迭代。                                       |
| do ... while | 执行一个语句块，在条件语句为 true 时继续执行该语句块。       |
| for          | 在条件语句为 true 时，可以将代码块执行指定的次数。           |
| for ... in   | 用于遍历数组或者对象的属性（对数组或者对象的属性进行循环操作）。 |
| function     | 定义一个函数                                                 |
| if ... else  | 用于基于不同的条件来执行不同的动作。                         |
| return       | 退出函数                                                     |
| switch       | 用于基于不同的条件来执行不同的动作。                         |
| throw        | 抛出（生成）错误 。                                          |
| try          | 实现错误处理，与 catch 一同使用。                            |
| var          | 声明一个变量。                                               |
| while        | 当条件语句为 true 时，执行语句块。                           |

**值类型(基本类型)**：字符串（String）、数字(Number)、布尔(Boolean)、对空（Null）、未定义（Undefined）、Symbol。

**引用数据类型（对象类型）**：对象(Object)、数组(Array)、函数(Function)，还有两个特殊的对象：正则（RegExp）和日期（Date）。



# 函数

## 匿名函数

```
var fun =funtion(){
console.log("hello world");
}
```

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220402215127.png)

## 声明函数

一次声明多次使用 形参和实参 返回值

## 匿名函数

```javascript
setInterval(function(){
    console.log("hello")
},100)
setInterval重复使用
//将匿名函数作为参数传递给定一个函数，或者方法
```

## 函数表达式

```javascript
const fun=funtion(n,m){
return n+m;
}
let result=fun(11,33);
console.log(result);
```

## 方法

```javascript
const cat={
    name:"xiaosong",
    sayName:funtion(){
    console.log(this.name);	
	}
    //或者
    sayName(){
        console.log(this.name);
    }
    
}
```

## 箭头函数

```javascript
        const fun = (x) => {
            return x * x;
        }
        const fun = (x) =>  x * x;
        
```







# 面向对象

## prototype ES5

继承关系

## ES6继承

```javascript
    <script>
        class Animal {
            constructor(name, age) {
                this.name = name;
                this.age = age;
            }
            sayName() {
                console.log(`我是${this.name}`)
            }
        }
        class Dog extends Animal {

        }
        let dog = new Dog("旺财");
        dog.sayName();
    </script>
```



## 创建方法

### 1利用对象字面量创建对象

```javascript
var obj-{
uname: "songyuran",
age: 18,
sayhi: funtion(){
console.log("log");
}
}


```





![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220402231346.png)



### 利用new object创建对象

```
var obj=new Object();
obj,uname='songyiran';


```

### 构造函数

因为一上只能创建一个对象，有了构造函数可以让相同的属性和方法抽象出来封装出来到函数里面

```
funtion Star(uname,age,sex){
this.name=uname;
this.age=age;
this,sex=sex;
}
var ldh=new Star("songyuran",18,'nan');
```

### 遍历对象

```
for(var k in obj){
console.log(k);
console.log(obj[k]);
}
```

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220403222738.png)



# 数组

## 遍历

while for forin forof map

### map

### push方法

## pop

```javascript
        var a = ["a", "b", "c", "d"];
        a.pop();
        a.push("E");
        a.sort()
        console.log(a);
        var b = [1, 24, 5, 6, 78]
        var newList = list.filter(function (item) {
            if (item > 3) {
                return item;
            }
        });
        console.log(newList);

```



# 内置对象

## Math



```java
random()*(max-min+1)+min//0《=x《1
```









## date

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220403233219.png)



# 正则表达式

```javascript
var str="123";
var reg=/123/;
var result=reg.test(str);
```



# ES6

## 变量

```
let变量

块级作用域

不存在变量提升

不允许重复声明
```

## 常量

```
1.const定义常量
2.定义后不能修改
3.不变的
模板字符串
            let year = '2020';
            let mouth = '10';
            let date = '11';
            let result = `${year}年${mouth}月${date}日`;
            console.log(result);
```



# DOM

元素节点 属性节点 文本节点



## DOM树

## 获取元素

### 获取ID

```
getElementByld()
get element by id

console.dir打印返回的元素对象，更好查看里面的属性和方法
```

### 根据标签名

```
getElementByTagName
element.getElementByTagName
```

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220404220517.png)

### 根据类名

```
getElementByClassName
```

### 返回指定选择器第一个元素对象

```
querySelector 
```

### 返回指定所有的选择器所以元素对象

```
query.SelectorAll
```

### 获取特殊元素body

```
document.body
```

#### html

```
document.documentElemnt
```



## 事件基础

事件源 事件类型 事件处理程序 三要素

```
var btn =document.getElemnent.byId('btn')
btn.onclick =funtion(){
alert("hello world")
}

```



 ![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220404231801.png)

### 修改元素

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220404232751.png)







DOM



```html
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .swiper {
            width: 640px;
            height: 320px;
            overflow: hidden;
            position: relative;
        }

        .images-container {
            width: 1920px;
            height: 320px;
            display: flex;
            transition: transform 0.9s;
        }

        .images-container img {
            width: 640px;
            height: 320px;
        }

        /* .images-container:hover {
            transform: translate(-640px);
        } */

        .number-list {
            position: absolute;
            bottom: 0;
        }
    </style>
</head>

<body>
    <div class="swiper">
        <div class="images-container">
            <img src="20220710232803.png" alt="">
            <img src="20220710232826.png" alt="">
            <img src="20220710232832.png" alt="">
        </div>
        <div class="number-list">
            <button>1</button>
            <button>2</button>
            <button>3</button>
        </div>
    </div>
    <script>
        let btnList = document.querySelectorAll(".number-list button");
        let container = document.querySelector(".image-container");
        for (let i in btnList) {
            btnList[i].onclick = function () {
                container.style.transform = `translate(-555px)`;
            }
        }

    </script>
</body>

</html>
```



## DOM操作

```
在ui里添加li
ul.innerHtml=`
<li></li>
<li></li>
`
```

### 节点操作

i>
`
```

### 节点操作


```