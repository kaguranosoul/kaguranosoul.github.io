---
uuid: 378559b8-051d-11ed-a2ee-ff4233c822df
title: Html基础
tags:
  - 前端
  - 学习
categories:
  - 技术笔记
image: >-
  https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112111537490.png
slug: 48593
date: 2021-11-23 23:49:10
---

前端三剑客的弟弟

<!--more-->



[TOC]



# 1.HTML入门

​         html是创建网页的标准标记语言。网页有很多的格式,html,jsp,asp等 ，html并不是编程语言，因为编程语言具有逻辑能力，html超越了传统的txt文本，具有超文本性，是一种标记语言。





```c
<!DOCTYPE html>//这是文档的声明，声明文档为html
<html lang="zh-CN">//en  zh-CN
<head>
    <meta charset="UTF-8">
    <title>这是网页标题</title>
</head>
<body>
    <p>这是一段文本</p>

    <a href="http://c.biancheng.net/">这个一个超链接</a>

    <ul>
        <li>HTML教程</li>
        <li>CSS教程</li>
        <li>JavaScript教程</li>
    </ul>
     <input type="text" placeholder="请输入内容" />
    <h1>这是一个标题</h1>//h1-h6
    <p>这是一个段落</p>
    <p>这是另一个段落</p>
</body>
</html>
```




以上这个就是最基本的网页格式，每个html标签(Tag)都有不同的含义

- <.html>当作所有的html代码，可以把它当作外壳

-  <.head> 标签表示网页的头部，用来设置一些网页的参数
       

-  <.meta charset="UTF-8"> 指明当前网页编码格式 UTF-8；

-   <.title> 网页的标题，它会显示在浏览器的标题栏。
    <./head>

- <.body>表示正文

  <.p>表示段落，能容纳一段文字

  <.a>用来表示一个超链接
  <.ul>表示一个列表，里面的<li>是子标签





HTML语言中最推荐vscode写



<!DOCTYPE><!--html标记-->
<html>      <!--html总标记-->
    <head><!--头信息标签-->
        <meta charset="utf-8"><!--utf-8编码-->
        <title>html小白入门</title><!--页面标题-->
    <head>
    <body><!--网页显示标签，body标签内的信息都会在页面中显示-->
        <h1>这是文本标题，下面是一张图片</h1><!--文本标题标签-->
        <imgsrc="tupian.jpg"><br><!--图片标签，br是换行标签-->
        <input type="text" value="这是输入框，请输入内容！"><br><!--输入框标签-->
        <button type="submit" >按钮</button><!--按钮标签-->
    </body>d
</html>
​        


```
<!DOCTYPE><!--html标记-->
<html>      <!--html总标记-->
    <head><!--头信息标签-->
        <meta charset="utf-8"><!--utf-8编码-->
        <title>html小白入门</title><!--页面标题-->
    <head>
    <body><!--网页显示标签，body标签内的信息都会在页面中显示-->
        <h1>这是文本标题，下面是一张图片</h1><!--文本标题标签-->
        <h2 href="baidu.com">点我百度搜索</a><!--超链接-->
        <imgsrc="tupian.jpg"><br><!--图片标签，br是换行标签-->
        <input type="text" value="这是输入框，请输入内容！"><br><!--输入框标签-->
        <button type="submit" >按钮</button><!--按钮标签-->
    </body>
</html>
```

这个就是最基本的使用方法

# 2.HMTL的语法

## 	1.html标签的语法格式(请忽略.)

<.div class="foo">我是内容</div.>  
foo**为属性**  前后div为**开始结束标签**  开始标签可以写除了class的比如id title等

html标签是成对出现的，称之为双标签  
有些特殊的比如说<br/.>

div为内容划分元素 是出现最高的

## 	2.标签关系HTML标签

### 包含关系

```html
   <h1>神楽の魂<font size="4" color="#666">自我介绍</font></h1>
  <p>
        这是北京普通的双非<b>大学生</b>的个人博客，目前 <font color="red">18岁<sup>①</sup></font>，<a href="https://kaguranotamashii.github.io/" target="_blank">猛击这里</a>查看我的博客<i>C语言</i>、<i>python</i>、<i>html</i> <i>css</i>
        <hr />
        <small>03年出生</small>
    </p>
<!包含关系>
<html>
        <head>
        </head>
</html>
```

对代码的说明

- <.font>  size改变大小 clor改变颜色
- <.b>加粗
- <.sup>上方的小标
- <.i>斜
- <.hr>分割线，它是自闭和标签
- <.a>为打开超链接 其中<.target>为打开方式 ——blank表示在新标签打开

### 并列关系(兄弟关系)

<.head></.head>

### 基本标签

| <html.>  | html标签 | 根标签                                           |
| -------- | :------: | ------------------------------------------------ |
| <head.>  |   头部   | 在head中我们必须要设计的标签是title              |
| <title.> |   标题   | 属于自己的网页标题                               |
| <body.>  |   主体   | 元素包含的所有内容，页面内容基本都是放在body中的 |

![mark](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/1201214410649.png)

# 3.HTML属性

## 	1.属性

```
attr="value"
```

attr为属性名字 value表示属性值 

### 1.**专用属性**

有些属性适合大部分 叫通用属性  
有些只适合小部分 叫专用属性  
比如说img中src和alt就是专用属性  a中href和target也是专用属性

```
<img src="xxxx.png" alt="xxxxx" width="100" height="50">
```

### **2.通用属性**

如id,title,class,style

##### 1.id

id属性是用来赋值给某个标签名字，当使用css或者js时候，可以通过id来找到这个标签。

id可以快速找到定位，id可以方便区分，id具有唯一性

```
<input type="text" id="name" />
<div id="content">我的博客</div>
<p id="url">kaguranotamashii.github.io/</p>
```

##### 2.class

class与id不同在于，class可以定义多个相同值

class="  "

```
<div class="className1 className2 className3"></div>
<p class="content">神楽の魂的博客</p>
<div class="content">kaguranotamashii.github.io</div>
```

##### 3.title

title属性是用来标签内容的描述说明



```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>演示文档</title>
</head>
<body>
    <a href="http://c.biancheng.net/html/" title="HTML教程">HTML教程</a>
</body>
</html>
```

![mark](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112051303396.png)

##### 4.style

style属性我们可以在html标签内部定义css样态，比如颜色，字体等等

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>演示文档</title>
</head>
<body>
    <p style="color:red;">kaguranotamashii,github.io</p>
    <img src="./logo.png" style="height:50px;" alt="C语言中文网LOGO">
    <div style="padding:10px;border:2px solid #999;text-align:center;">C语言中文网</div>
<!这里做个批注padding表示内边距，内容区与边框之间的区域
    border表示设置元素的边框-->
    
    </body>
</html>
```

# 4.HTML标题

## 1.<.h1>到<.h6>（head)

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>HTML标题标签演示</title>
</head>
<body>
    <h1>h1 标题</h1>
    <h2>h2 标题</h2>
    <h3>h3 标题</h3>
    <h4>h4 标题</h4>
    <h5>h5 标题</h5>
    <h6>h6 标题</h6>
</body>
</html>
```

<img src="https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112051304374.png" alt="mark" style="zoom:33%;" />

标题标签的使用只能用于定义标签，不能加粗

# 5.HTML段落标签<.p>

paragraph

```html
<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="UTF-8"
 <title>测试</title>
</head>
<body>
  <p>这是神楽の魂的博客网站为<a href="kaguranotamashii.github.io">点我</a></p>
  <p>我的博客会写一些技术向的内容</p>
  </body>
  </html>
```

## 1.<.p>的用法

段落标签由开始标签`<p>`和结束标签`</p>`组成，开始和结束标签之间的内容会被视为一个段落。段落标签是一个非常基本的标签，我们在网页上发布文章时就会用到

## 2.段落中的空白符

```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>HTML段落中的空白符</title>
</head>
<body>
    <p>神    
    
    楽の魂
    
    
    的   博        客</p>
</body>
</html>
```

![mark](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112051304921.png)

如果想要在段落中换行，需要使用专门的换行标签`<br />`，`<br />`标签属于自闭和标签，因此不需要对应的结束标签`< /br>



- 文本在一个段落中会根据浏览器窗口大小自动换行
- 段落与段落有空隙

<br/.>



# 6.HTML文本格式化

突出重要性 比普通文字更重要

| 标签                          |                             描述                             |
| ----------------------------- | :----------------------------------------------------------: |
| < b>...</b>                   |                       加粗标签中的字体                       |
| **< em>...</em>**             |            强调标签中的内容，并使标签中的字体倾斜            |
| < i>...</i>                   |                    定义标签中的字体为斜体                    |
| < small>...</small>           |                  定义标签中的字体为小号字体                  |
| **< strong>...</strong>**     |            强调标签中的内容，并将字体加粗（推荐）            |
| < sub>...</sub>               |                         定义下标文本                         |
| < sup>...</sup>               |                         定义上标文本                         |
| **< ins>...</ins>**           |                            下划线                            |
| **< del>...</del>**           |                    在文本内容上添加删除线                    |
| < code>...</code>             |                         定义一段代码                         |
| < kbd>...</kbd>               |           用来表示文本是通过键盘输入的(不建议使用)           |
| < samp>...</samp>             |                        定义程序的样本                        |
| < var>...</var>               |                           定义变量                           |
| < pre>...</pre>               | 定义预格式化的文本，被该标签包裹的文本会保留所有的空格和换行符，字体也会呈现为等宽字体 |
| < abbr>...</abbr>             |                用来表示标签中的内容为缩写形式                |
| < address>...</address>       | 用来定义文档作者的联系信息，被该标签包裹的文本通常会以斜体呈现，并在文本前面换行 |
| < bdo>...</bdo>               |                     定义标签中的文字方向                     |
| < blockquote>...</blockquote> | 定义一段引用的文本，例如名人名言，文本会换行输出，并在左右两边进行缩进 |
| < q>...</q>                   |   定义一段短的引用，浏览器会将引用的内容使用双引号包裹起来   |
| < cite>...</cite>             | 表示对某个文献的引用，例如书籍或杂志的名称，文本会以斜体显示 |
| < dfn>...</dfn>               |          用来定义一个术语，标签中的文本会以斜体呈现          |

## 几个相似的格式化文本

### 1.strong和b

前者表示加重语气,后者只是单纯的加粗,在无障碍模式中strong会比b的声音更特殊.

## 2.em和i

em也是加重处理,i仅仅是单纯的斜体





# 7div和span标签

两者没有语义，他们就是一个盒子，用来放内容

div division表示分割 分区  
span表示跨度 跨距

div用来布局 但是一行只能有一个div 大盒子  
span相反 一行可以放多个span 小盒子

# 8.特殊的字符



![mark](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112051305236.png)

```html
&nbsp;空格
&lt;小于
&gt;大于
```



# 7.HTML超链接<.a>

## 1.用法

```html
<a href="url"  target="opentype">链接文本</a>
```

## 2href的属性

anchor 瞄



href 属性指定链接的目标，也就是要跳转到什么位置。href 可以有多种形式，例如：

- href 可以指向一个网页（.html、.php、.jsp、.asp 等格式），这也是最常见的形式，例如 href="http://c.biancheng.net/view/1719.html"；
- href 可以指向图片（.jpg、.gif、.png 等格式）、音频（.mp3、.wav等格式）、视频（.mp4、.mkv格式）等媒体文件，例如 href="/uploads/allimg/181221/134I32557-0.jpg"；
- href 可以指向压缩文件（.zip、.rar 等格式）、可执行程序（.exe）等，一些下载网站的链接就可以写成这种形式，例如 href="./../uploads/data_package/ComputerFoundation.zip"；
- href 甚至还可以指向本机的文件，只是很少这样使用，例如 href="D:/Program Files/360/360safe/360Safe.exe"。


你看，href 本质上就是指向一个文件，这个文件几乎可以是任意格式的。如果浏览器支持这种格式，那么它就可以在浏览器上显示，比如常见的图片、音频、视频等，如果浏览器不支持这种格式，那么就提示用户下载。

## 3.target的属性

| 属性值  | 说明                                               |
| ------- | -------------------------------------------------- |
| _self   | **默认**，在现有窗口中打开新页面，原窗口将被覆盖。 |
| _blank  | 在新窗口中打开新页面，原窗口将被保留。             |
| _parent | 在当前框架的上一层打开新页面。                     |
| _top    | 在顶层框架中打开新页面。                           |

如果不设置默认为_self

## 4.href的本地网页跳转

```html
<a href="#sakura">点我跳转</a>
<p>忽略我</p>
<p>忽略我</p>
<p>忽略我</p>
<p>忽略我</p>
<p>忽略我</p>
<p id="sakura">我是sakura</p>
```

<a href="#sakura">点我跳转</a>

<p>忽略我</p>
<p>忽略我</p>
<p>忽略我</p>
<p>忽略我</p>
<p>忽略我</p>
<p id="sakura">我是sakura</p>

# 8HTML插入图片<.img>

## 1.用法

```html
<img src="url alt="text">
```

- src(source)为必选**属性**,用来指明图片的地址和目录,支持多种图片类型
- alt为可选属性,如果遇到图片加载不了,会显示alt的信息

```html
<body>
    <!-- 使用绝对路径插入网络图片 -->
    <img src="http://c.biancheng.net/cpp/templets/new/images/logo.jpg?v=3.994" alt="C语言中文网Logo"> <br>
    <!-- 在当前 HTML 文档的上层目录中有一个 images 文件夹，该文件夹下有一张图片 html5.png -->
    <img src="../images/html5.png" alt="HTML5 Logo">
</body>
```

![HTML插入图片示例](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112051305957.png)

## 2.设置图片的宽高度

​             比如这张图片渚薰被吃

![mark](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112051305711.png)

```html
<img src="http://r34tujk76.hb-bkt.clouddn.com/blog/20211126/195024889.jpg" alt="渚薰被吃了"title="渚薰被吃" style="width: 200px; height: 100px;">
<img src="http://r34tujk76.hb-bkt.clouddn.com/blog/20211126/195024889.jpg" alt="渚薰被吃了" style="width: 200px; height: 150px;">
<img src="http://r34tujk76.hb-bkt.clouddn.com/blog/20211126/195024889.jpg" alt="渚薰被吃了" style="width: 100px; height: 200px;">
<img src="http://r34tujk76.hb-bkt.clouddn.com/blog/20211126/195024889.jpg" alt="渚薰被吃了" style="width: 150px; height: 200px;">
```

### ![mark](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112051305958.png)

## 3图片映射

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <title>HTML图片映射</title>
</head>
<body>
    <img src="logo.png" usemap="#objects" alt="C语言中文网Logo">
    <map name="objects">
        <area shape="rect" coords="0,0,82,126" href="http://c.biancheng.net/html/" alt="HTML教程">
        <area shape="circle" coords="90,58,3" href="http://www.biancheng.net/css3/" alt="CSS教程">
        <area shape="circle" coords="124,58,8" href="http://www.biancheng.net/js/" alt="JavaScript教程">
    </map>
</body>
</html>
```

<.map>标签的name属性对应的是<.img>标签的usemap属性,<.area>用于定义点击图片的坐标shape 和 coords 属性

在 <.area> 标签中可以通过 shape 属性来定义可点击区域的形状，并通过 coords 属性来定义形状所对应的坐标。其中 shape 属性的可选值有三个，分别是 rect（矩形）、circle（圆形）和 poly（多边形），coords 属性中坐标的值则取决于可点击区域的形状。

假如定义一个矩形的可点击区域，示例代码如下：

```
<area shape="rect" coords="x1, y1, x2, y2" href="http://c.biancheng.net/" alt="">
```

其中 x1、y1 代表矩形的左上角坐标，x2、y2 代表矩形的右下角坐标。

假如定义一个圆形的可点击区域，示例代码如下：

```
<area shape="circle" coords="x, y, radius" href="" alt="">
```

其中 x、y 代表圆心的坐标，而 radius 则是圆的半径。

假如定义一个多边形的可点击区域，示例代码如下：

```
<area shape="poly" coords="x1, y1, x2, y2, x3, y3, ..., xn, yn" href="http://c.biancheng.net/" alt="">
```

其中每对 x 和 y 的值都代表一个多边形的顶点坐标。

注意：所有坐标都是相对于图片的左上角来计算的。



| 属性   | 属性值   | 说明                       |
| ------ | -------- | -------------------------- |
| src    | 图片路径 | 必须属性                   |
| alt    | 文字     | 图片显示不出               |
| title  | 文字     | 鼠标放在图片上后显示的文字 |
| width  | 像素     | 宽度                       |
| height | 像素     | 高度                       |
| border | 像素     | 边框粗细                   |



```html
<a href="http://baidu.com">
    <img src="http://r34tujk76.hb-bkt.clouddn.com/blog/20211126/195024889.jpg">
</a>
                             
```



# 9HTML<.table>表格

## 1.表格使用代码

```html
<table border="1">
   <tr>
     <th>名称</th>
     <th>官网</th>
     <th>性质</th>
   </tr>
   <tr>
     <td>b站</td>
     <td>bilibili.com</td>
     <td>综合</td>
   </tr>
    <tr>
     <td>百度</td>
     <td>http://www.baidu.com/</td>
     <td>搜索</td>
     </tr>
   <tr>
      <td>当当</td>
     <td>http://www.dangdang.com/</td>
      <td>图书</td>
    </tr>
</table>
```

- 在里面中出现了新的单词table tr td th
- tr表示table row 表示行数
- td表示table datacell 表示表格的单元格
- th表示table heading表示表头



![mark](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112051306677.png)

## 2.表格的边框合并

如果不进行修改会显示双层边框这时候利用css的border-collapse的属性为collapse

```
<table border="1" style"border-collapse:collapse"
```

## 3.表格的标题<.caption>

```html
<table border="1" style="border-collapse:collapse;">
<caption>这是标题</caption>
```

第一行并且居中显示

## 4.合并

![mark](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112051306585.png)`rowspan`跨行合并单元格
`colspan`跨列合并单元格

```html
<table border="1" style="border-collapse: collapse;">
    <tr>
       <th>名称</th>
     <th>官网</th>
     <th>性质</th>
    </tr>
    <tr>
      <td>C语言中文网</td>
     <td>http://c.biancheng.net/</td>
     <td>教育</td>
    </tr>
    <tr>
      <td rowspan="2">百度</td>
      <td>www.baidu.com</td>
      <td>搜索</td>
    </tr>
    <tr>
      <td colspan="2">http://www.dangdang.com/</td>
    </tr>
</table>
```

## 5.表格的属性

![mark](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112051306327.png)



# 10.HTML列表标签

<.ul><.ol><.dl>

html为我们提功了三个列表表达方式

## 1.有序列表

```html
<body>
    <p>煮米饭的步骤：</p>
    <ol>
        <li>将水煮沸</li>
        <li>加入一勺米</li>
        <li>搅拌均匀</li>
        <li>继续煮10分钟</li>
    </ol>
</body>
```

ol为order list的意思为有序列表  
li为 list item的意思为每一项

## 2.无序列表

```html
<body>
    <p>早餐的种类：</p>
    <ul>
        <li>鸡蛋</li>
        <li>牛奶</li>
        <li>面包</li>
        <li>生菜</li>
    </ul>
</body>
```

- <.ul> 是 unordered list 的简称，表示无序列表。
- <..ul> 和 <.ol> 中的 <.li> 一样，都表示列表中的每一项。默认情况下，无序列表的每一项都使用`●`符号表示。

## 3.自定义列表

定义如下

```
<dl>
    <dt>标题1<dt>
    <dd>描述文本2<dd>
    <dt>标题2<dt>
    <dd>描述文本2<dd>
    <dt>标题3<dt>
    <dd>描述文本3<dd>
</dl>
```

dl为定义列表 dt为定义术语 dd为定义描述

```html
<body>
    <dl>
        <dt>HTML</dt>
        <dd>HTML 是一种专门用来开发网页的标记语言，您可以转到《<a href="http://c.biancheng.net/html/" target="_blank">HTML教程</a>》了解更多。</dd>
        <dt>CSS</dt>
        <dd>CSS 层叠样式表可以控制 HTML 文档的显示样式，用来美化网页，您可以转到《<a href="http://c.biancheng.net/css3/" target="_blank">CSS教程</a>》了解更多。</dd>
        <dt>JavaScript</dt>
        <dd>JavaScript 简称 JS，是一种用来开发网站（包括前端和后台）的脚本编程语言，您可以转到《<a href="http://c.biancheng.net/js/" target="_blank">JS教程</a>》了解更多。</dd>
    </dl>
</body>
```

## 4.列表的默认样态

```html
 <ol style="margin:0px auto; padding-left:20px; list-style:upper-latin;">
        <li>将水煮沸</li>
        <li>加入一勺米</li>
        <li>搅拌均匀</li>
        <li>继续煮10分钟</li>
    </ol>
对 CSS 样式的说明：
margin:0px auto;将上下外边距设置为 0 像素，将左右外边距设置为自动。
margin-bottom:0px;将下方外边距设置为 0 像素。
margin:auto auto 10px 0px;将上方和右侧外边距设置为自动，将下方外边距设置为 10 像素，将左侧外边距设置为 0 像素。
padding-left:20px;将左侧内边距设置为 20 像素。
list-style:upper-latin;将列表项标记设置为大写拉丁字母。
list-style:square;将列表项标记设置为实心方块。
    
```

# 11.⛤⛤⛤<.form>标签

如果想通过网页交互可以通过form实现

```html
<form action="URL" method="GET|POST">
    表单中的其它标签
</form>
```

- action属性表示表单交到哪里
- method属性表示使用什么方式提交数据
- 表单属于 HTML 文档的一部分，其中包含了如输入框、复选框、单选按钮、提交按钮等不同的表单控件，用户通过修改表单中的元素（例如输入文本，选择某个选项等）来完成表单，通过表单中的提交按钮将表单数据提交给后端程序。







![mark](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112051306949.png)

除了type以外input还有其它的属性

![mark](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112051307769.png)

注意这个name，如果说没有name属性，在这里如果没有name属性比如上例，点击male和female都可以  
单选和复选name应该是相同的值



checked这个是默认勾选的，比如说用户同意这种的

## 1文字域

<form>
账号<input type="text" name="firstname" value="请输入"><br>
密码<input type="text" name="lastname">
</form>


```
<form>
账号<input type="text" name="firstname"><br>
密码<input type="text" name="lastname">
</form>
```

## 2密码字段

如果想输入密码的话 input type="password"修改password

这样就输入字符串，会变成星号

```
<form>
Password: <input type="password" name="pwd">
</form>
```

<form>
Password: <input type="password" name="pwd">
</form>

## 3.按钮

```html
<form>
<input type="radio" name="sex" value="male">Male<br>
<input type="radio" name="sex" value="female" checked="checked">Female
</form>
```

<form>
<input type="radio" name="sex" value="男">Male<br>
<input type="radio" name="sex" value="女">Female
</form>


## 4.复选框checkboxes

```html
<form>
<input type="checkbox" value"男">男<br>
    <input type="checkbox" value"女">女
</form>
```

<form>
<input type="checkbox" value"男">男<br>
    <input type="checkbox" value"女" checked="checked">女
</form>



## 5提交按钮

```html
<form name="input" action="html_form_action.php" method="get">
Username: <input type="text" name="user">
<input type="submit" value="Submit">
</form>
```

<form name="input" action="html_form_action.php" method="get">
Username: <input type="text" name="user">
<input type="submit" value="Submit">
</form>

<form name="input" action="html_form_action.php" method="get">
Username: <input type="text" name="user">
<input type="submit" value="点我发送">
</form>


假如您在上面的文本框内键入几个字母，然后点击确认按钮，那么输入数据会传送到 "html_form_action.php" 的页面。该页面将显示出输入的结果。

## 6.简单的下拉列表

```html
<p>你喜欢吃什么</p>
<form>
<select name="cars">
<option value="volvo">洋芋</option>
<option value="saab"　selected="selected">土豆</option>
</select>
</form>
```

<p>你喜欢吃什么</p>
<form>
<select name="cars">
<option value="volvo">洋芋</option>
<option value="saab">土豆</option>
</select>
</form>
![mark](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112051307064.png)



## 7重置reset

<form>
   <input type="reset" value="点我重新填写">
</form>



```html
<form>
   <input type="reset" value="点我重新填写">
</form>
```

## 8定义点击按钮

```html
<input type="button" value="点我">
```

## 9上传文件

```html
<input type="file" value="点我">
```

## 10.label标签

```html
<input type="radio"name="sex" id="nan"><label for="nan">男</label>
<input type="radio"name="sex" id="nv"><label for="nv">女</label>
```



## 11.表单元素

textarea表单元素

当用户输入过多的元素的时候不用单纯的text了

```html
<form>今日反馈
    <textarea cols="5" rows="1">
    </textarea>
</form>
```



<form>今日反馈
    <textarea cols="10" rows="1">
    </textarea>
</form>

# 13.html综合学习

## 1注册界面


.html综合学习

## 1注册界面

 
