---
uuid: 378580c1-051d-11ed-a2ee-ff4233c822df
title: CSS基础
tags:
  - CSS
  - 前端
image: >-
  https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20211205012928.png
categories:
  - 技术笔记
slug: 10605
date: 2021-12-03 14:46:59
---

CSS前端三剑客的老二

<!-- more -->



<img src="https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20211205012928.png"/>



# 1.CSS简介

## 1html自身的局限性

## 2CSS选择器

css的规则主要由两个部分组成的 **选择器**和一条或者多条**声明**

```html
<选择器   属性   值  coor red这句话是声明>
h1     {color:red; font-size:25px;}
```

简单来说，选择标签用的

选择器分为 **基础选择器**和**复合选择器**

基础又分为 **标签选择器 类选择器 id选择器 通配符选择器**

### 1.标签选择器

html标签名词作为选择器

语法

```
标签名{
属性1：属性值1；
}
```

```html
<style>
    p {color: burlywood;}
</style>
<body>

    <p>1234455</p>    
    <p>1234455</p>    
    <p>1234455</p>    
</body>
```

优点为快速为同类型的标签同意设置样态

但是如果是出现多个相同的属性，会一同全部修改

### 2.类选择器 （常用）

#### 1.使用

```
.类名{
属性1:属性值；
}
```

```html
<style>
    p {color: burlywood;}
    .red{
        color: red;
    }
</style>
<body>
    <p>1234455</p>    
    <p>1234455</p>    
    <p>1234455</p>    
    <div class="red">我想变成红色</div>
</body>
```

![mark](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20211205013026.png)

盒子

```html
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>

        .red{
            width: 100px;
            height: 100px;
            /*背景颜色*/
            background-color: red;
        }
        .green{
            width: 100px;
            height: 100px;
            background-color: green;
        }
    </style>
</head>
<body>
    <div class="red">hong</div>
    <div class="green">绿色</div>
    <div class="red">hong</div>

</body>
```

![mark](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20211205012811.png)

#### 2.多类名

在标签中class文件属性中写多个类名  
**但是类名中间必须要用空格**

```html
    <style>
    .red{
        color:red;
    }
    .font35{
        font-size: 30px;
    }

    </style>
<body>
    <div class="red font35">神乐同学</div>
</body>
```

### 3.ID选择器

id可以选择特定的属性

```html
    <style>
        #pink{
            color: green;
        }
    </style>
</head>
<body>
    <div id="pink">dsadasda</div>
</body>
```

id选择用#定义 只能调用一次



二者区别在于**使用次数**  
id选择器一般用于页面唯一的元素，所以一般和JavaScript使用

### 4通配符选择器

用*号定义，它可以表示所有的元素



# 2属性

## 1.文字

### 1font-family

字体可用网络字体等

```html
 <style>
        h2{
            font-family: '宋体','微软雅黑';
        }
    </style>
</head>
<body>
    <h2>我是来自北京信息科技大学的神乐</h2>
    <p>我是来自北京信息科技大学的神乐</p>
    <p>我是来自北京信息科技大学的神乐</p>
</body>
```



### 2.font-size

```html
<style>
font-size:20px;
</style>
```

px像素大小是网页中最常用的单位

谷歌浏览器默认字体问=为16px

不同浏览器字号大小不相同

body指定整个页面字体大小

### 3.font-weight

css中使用font-weight修改粗细程度  

```html
<style>
    .bold{font-weight: bold;}
</style>
<p class="bold">神乐</p>
```

bold就是相当于加粗效果 相当于number700  
属性值 为400等于默认 700等于加粗 

### 4font-style

```html
<style>
    .bold{font-style: normal;}
</style>
<p class="bold">神乐</p>
```

属性值中 normal为默认 italic为显示斜体  
如果em标签和属性为italic的会变正

### 5.font的复合用法

比如说div字体斜体 加粗 字号16 微软雅黑

```html
<style>
    div{
        font-size:16px;
        font-family:'Microsoft yahei';
        font-weight:700;
        font-style:italic;
    }
</style>
<div>
    古道西风瘦马
</div>
```

或者

- 位置严格要求不能换 
- 除了size和family不能省略

```html
/*
font: font-style font-weight font-size/font-height font-family;
*/        类         粗              大                   家

div{
font: itailc 700 16px "微软雅黑";
}
```

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112051701977.png)

## 2.文本

文本属性分为 颜色 对齐 装饰文本 缩进 行间距

### 1.color

颜色表示方法分为三种

- 预定义颜色值
- 十六进制
- RGB代码

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112051756815.png)

```html
div{
color: deeppink;
color: #ff0000;
color: rgb(200,0,0);
}

```

### 2.text-align

样态文本  
属性值分为：left默认,center居中,right右对齐

### 3.text-decoration

属性值为none默认,underline下划线,overlines上划线,line-through删除线

### 4text-indent

文本缩进 通常是首行的缩进

```html
text-indent:10px;
text-indent:2em;
/*em的意思为相对单位*/
```

### 5line-height

控制行间距离的高度

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112051916814.png)

文本高度默认为16px

所以line-height:16px；就是没有行间距



![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112051922317.png)

# 3.css引入方式

## 1内部样态表

单独放在style中

方便 没有完全分离 

## 2.行内样态表

直接在标签内部使用

```html
<p style="color:red;">我是内容</p？
```

style就是属性 写法要符合css规范 

## 3外部样态表

```
这是文件名字为：style.css 
div{
color:red;
}
```

```
<head>
    <link rel="stylesheet" href="syy.css">
</head>
<body>
    <div>我是内容</div>
</body>
```

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112051946467.png)

# 4chrome调试工具

[点我查看](https://www.bilibili.com/video/BV14J4114768?p=92)

# 5.Emmet语法 

# ![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112062325330.png)6.CSS复合选择器

后代选择器,子选择器,并集选择器,

## 1.后代选择器 主要

元素1 元素2{}

```html
    <style>
    ol li a {color:pink}
    .name li{color: seagreen;}
    </style>
<ol>
    <li>我是后代</li>
    <li><a href="#">我是孙子</a></li>
</ol>
<ol class="name">
    <li>我是神乐</li>
</ol>
```

## 2.子选择器 重要

## 3,并集选择器

用逗号分隔开了

```html
div,p{

}
<div>
    
</div>
<p>
    
</p>
```

## 4.伪类选择器

用：表示

### 1.链接伪类

有很多种链接伪类

link visited hover active

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112082243432.png)

```html
a:hover{
color:gray;
}
鼠标经过显示gray颜色
```



```html
a{
color:gray;
}
a:hover{
color:red;
}

```

### 2.:focus伪类选择器

```
input:focus{
background-color:yellow;
}
```

# ![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112082232499.png)7.CSS元素显示模式（重点)

html元素分为**块元素**和**行内元素**两类型

## 1.块元素

h p div ul ol li等是最常见的div是最典型的

- 特点独占一行
- 高度宽度外内边距等可以控制
- 宽度默认为容器（父级宽度）100%
- 是一个容器以及盒子 可以放行内以及块级元素

文字类的元素不能使用块级元素

p里面只能放文字

## 2.行内元素

a strong b em i del s ins u span

span是最典型的行内元素

- 高宽无效
- 一行可以显示多个
- 默认宽度就是本身内容宽度

## 3.行内块元素

img input td 两个特点都有比较特殊

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112082344551.png)





总结

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112082351810.png)



## 4.元素显示模式转换

display:block;转换块元素

display:inline;转换行内元素

display:inline-block行内块元素 

```html
<style>
    a{
        display:block;
    }
</style>
```

## 5.实例简洁版本侧边档



```html
<style>
        a{
            display: block;
            height: 20px;
            width: 100px;
            background-color:  darkgray;
            font-size: 14px ;
            color: #fff;
            text-indent: 2em;
            text-decoration: none;
        }
        a:hover{
            background-color: coral;
        }
</style>

<body>
    <a href="#">手机</a>
    <a href="#">电视</a>
    <a href="#">盒子</a>
</bod》
```



![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112092315986.png)

### 6单行文字垂直居中

可以通过文字的行高等于盒子的高度，就可以垂直居中

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220322203440.png)

# 8CSS的背景

小图片或者logo大图片

背景颜色图片 平铺 位置 固定等等

## 1.background-color

background-color一般默认为transparent

## 2.background-image

使用方法为

background-image:url ();



```html
<head>
 <style>
        div{
            width: 5000px;
            height: 1500px;
            background-image: url(![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112101445712.png));
        }
    </style>
</head>
<body>
    <div></div>
</body>
```



![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112101445712.png)

## 3.background-repeat

```html
background-repeat:;/*默认平铺*/

no-repeat
repeat
repeat-x
repeat-y
```

![no-repeat](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112101447940.png)

## 4.background-position

可以修改图片位置

```html
background-position:x y;

/*
参数分为两种
length 百分数
position 方位名词 top center bottom left center right

如果都是方位名词，与前后无关
如left top和top left

在一些情况下 想要精准
也可以通过精确坐标 d
*/
```







## 5.background-attachment

背景固定  背景附着

这个设置设置背景图片是否固定还是滚动

scroll为滚动  
fixed为固定



## 6背景属性混合写法

前五个复合写法可以像font一样节约代码量

一般没有要求但是，一般习惯写为一下

background:背景颜色 背景图片 背景平铺 背景滚动 位置

```html
background: red url() no-repeat fixed top;
```

## 7.背景色半透明

```
background:(0,0,0,alpht)
```





![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112121915735.png)



## 7.综合案例 五彩导航

```html
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>综合案例-五彩导航</title>
    <style>
        .nav a{
            display:inline-block;
            width: 120px;
            height: 58px;
            background-color: pink;
            text-align: center;
            color: #fff;
            text-decoration: none;
            line-height: 48px;
        }
        .nav .bg1{
            background-image: url(images/bg1.png);
        }
        .nav .bg2{
            background-image: url(images/bg2.png);
        }
        .nav .bg1:hover{
            background-image: url(images/bg11.png);
        }
        .nav .bg2:hover{
            background-image: url(images/bg22.png);
        }
    </style>
</head>

<body>
    <div class="nav">
        <a href="#" class="bg1">五彩导航</a>
        <a href="#" class="bg2">五彩导航</a>
        <a href="#">五彩导航</a>
        <a href="#">五彩导航</a>
        <a href="#">五彩导航</a>
    </div>
</body>

</html>

```



![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112122148579.gif)

# 9.CSS三大特征

## 1.层叠性

```html
   <style>
        div{
            color:red;
        }
        div{
            color: royalblue;
            font-size: 50px;
        }
        div{
            color:seagreen
        }
    </style>
</head>
<body>
    <div>
        大江东去
    </div>
</body>
```

这里div有三个选择

但是只执行的只有fintsize和最后一个color

- 就近原则，哪个近就执行哪个
- 样态不冲突 不会重叠

## 2.继承性

现实的继承 我们继承了父亲的姓

```html
 <style>
        div {
            color: pink;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div>
        <p>龙生龙,凤生凤,老鼠生的孩子会打洞</p>
    </div>
</body>
```

p继承了父div的性质

继承性就是简化代码 降低复杂性text font line

## **行高的继承**

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>行高的继承</title>
    <style>
        body {
            color: pink;
            /* font: 12px/24px 'Microsoft YaHei'; */
            font: 12px;
        }
        div {
            /* 子元素继承了父元素 body 的行高 1.5 */
            /* 这个1.5 就是当前元素文字大小 font-size 的1.5倍   所以当前div 的行高就是21像素 */
            font-size: 14px; 
        }
        p {
            /* 1.5 * 16 =  24 当前的行高 */
            font-size: 16px;
        }
        /* li 么有手动指定文字大小  则会继承父亲的 文字大小  body 12px 所以 li 的文字大小为 12px 
        
        当前li 的行高就是  12 * 1.5  =  18
        */
    </style>
</head>
<body>
    <div>粉红色的回忆</div>
    <p>粉红色的回忆</p>
    <ul>
        <li>我没有指定文字大小</li>
    </ul>
</body>
</html>
```

## 3.优先性



- 选择器相同 则执行层叠层
- 不同 根据选择器权重决定

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112122202837.png)

```html
    <style>
       
        .test {
            color: red;
        }
        div {
            color: pink!important;
        }
        #demo {
            color: green;
        }
    </style>
</head>
<body>
    <div class="test" id="demo" style="color: purple">你笑起来真好看</div>
</body>
```

# 10.**盒子模型**（超重点）Box Model

学习页面布局有三大模型

盒子 浮动 定位

```html
盒子中要有
border边框
content内容
padding内边距
margin外边距
```



![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112122211209.png)

## 1.border边框

border中有

宽度 边框样态 颜色

```html
<style>

    div{
        width: 300px;
        height: 200px;
        border-style: solid;/*solib实线 dashed 虚线 dotted点线边框*/
        border-width: 20px;
        border-color: red;
    }
</style>
</head>
<body>
    <div></div>
</body>
</html>
```

```html
边框的复合写法 没有顺序
 <style>
     div {
            width: 300px;
            height: 200px;
            /* border-width: 5px;
            border-style: solid;
            border-color: pink; */
            /* 边框的复合写法 简写:  */
            /* border: 5px solid pink; */
            /* 上边框 */
            border-top: 5px solid pink;
            /* 下边框 */
            border-bottom: 10px dashed purple;
            border:red 5px solid;
        }
    </style>
```

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220326145143.png)

## 2.padding内边距

padding控制内边距![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220326150257.png)

```
   div {
            width: 300px;
            height: 160px;
            background-color: pink;
            padding-top: 20px;
            padding-left: 22px;
            padding-right: 22px;
        }
```

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220326151856.png)

padding影响了盒子的大小 会撑大盒子

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220326180758.png)



```
        .nav {
            height: 41px;
            border-top: 3px solid red;
            border-bottom: 1px solid beige;
            background-color: #fcfcfc;
            line-height: 41px;
        }

        .nav a {
            display: inline-block;
            font-size: 12px;
            color: blue;
            text-decoration: none;
            padding: 0 20px;
            height: 41px;

        }
```

## 3.margin外边距

两个盒子的距离

还是和内边距相似

top right bottom left

外边距作用为水平居中

1. 指定宽度
2. 盒子左右外边距为auto

```
margin-left:auto;margin-right:auto;
margin:auto;
margin:0 auto;
```

行内和行内块用text-alignLcenter



![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220326214217.png)

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220326230226.png)

# 11.浮动float

传统网页布局三种方式

普通流 浮动 定位

标准流（普通 文档）按照标签规定默认排序

块单独一行 从上香下排序又div hr h1-h6 ui ol form table

行内按照左右排序如 span a i em

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220327225550.png)

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220327230720.png)

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220329215409.png)

3浮动元素具有行内吧块元素特征

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220329221132.png)



```
  <style>
        * {
            margin: 0;
            padding: 0;
        }
        li {
            list-style: none;
        }
        .box {
            width: 1226px;
            height: 285px;
            background-color: pink;
            margin: 0 auto;
        }
        .box li {
            width: 296px;
            height: 285px;
            background-color: purple;
            float: left;
            margin-right: 14px;
        }
        .box .last {
            margin-right: 0;
        }
    </style>
</head>
<body>
    <ul class="box">
        <li>1</li>
        <li>2</li>
        <li>3</li>
        <li class="last">4</li>
    </ul>
</body>

</html>
```

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220329224816.png)

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220330082040.png)



## 清除浮动

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220330083325.png)

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220330083417.png)

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220330083739.png)

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220330084151.png)

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220330084342.png)

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220330084416.png)





# 12定位

有些效果无法用标准流和浮动，这时候要用定位

浮动可以让多个块级元素在一行没有空袭

定位用于自由控制盒子

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220330094452.png)

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220330094715.png)





## 1static静态定位

没有边偏移

## 2relative相对定位



![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220330110943.png)





## 3absolute绝对定位



子绝父相





对定位



子绝父相





