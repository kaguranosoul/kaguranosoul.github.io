---
uuid: 378559b1-051d-11ed-a2ee-ff4233c822df
title: jQuery基础
hide: true
tags:
  - jquery
categories:
  - 技术笔记
slug: 26
date: 2022-02-12 00:30:17
image:
---

# Jquery概述

# jquery没什么学的必要故性

jQuery的理念“Write Less, Do More“，让你写更少的代码，完成更多的工作！

目前jQuery有1.x和2.x两个主要版本，区别在于2.x移除了对古老的IE 6、7、8的支持，因此2.x的代码更精简。选择哪个版本主要取决于你是否想支持IE 6~8。（什么老古董）

```javascript
    <script>
         <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
        //获取元素节点$("xuanzeqi")
        $("button").click(function () {
            console.log("aaa")
        })
    </script>
```

- 获取节点$("xuanzeqi")
- 操作节点$().method();
- 设置元素样态$().css()

## Jquery常用的方法

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220712132028.png)

```javascript
       $("button").click(function () {
            $(this).hide()
        })//隐藏当前元素
```

| 鼠标事件                                                     | 键盘事件                                                     | 表单事件                                                  | 文档/窗口事件                                             |
| :----------------------------------------------------------- | :----------------------------------------------------------- | :-------------------------------------------------------- | :-------------------------------------------------------- |
| [click](https://www.runoob.com/jquery/event-click.html)      | [keypress](https://www.runoob.com/jquery/event-keypress.html) | [submit](https://www.runoob.com/jquery/event-submit.html) | [load](https://www.runoob.com/jquery/event-load.html)     |
| [dblclick](https://www.runoob.com/jquery/event-dblclick.html) | [keydown](https://www.runoob.com/jquery/event-keydown.html)  | [change](https://www.runoob.com/jquery/event-change.html) | [resize](https://www.runoob.com/jquery/event-resize.html) |
| [mouseenter](https://www.runoob.com/jquery/event-mouseenter.html) | [keyup](https://www.runoob.com/jquery/event-keyup.html)      | [focus](https://www.runoob.com/jquery/event-focus.html)   | [scroll](https://www.runoob.com/jquery/event-scroll.html) |
| [mouseleave](https://www.runoob.com/jquery/event-mouseleave.html) |                                                              | [blur](https://www.runoob.com/jquery/event-blur.html)     | [unload](https://www.runoob.com/jquery/event-unload.html) |
| [hover](https://www.runoob.com/jquery/event-hover.html)      |                                                              |                                                           |                                                           |

                 |



# jq对象和dom对象(重要)

DOM对象：使用JavaScript中的方法获取页面中的元素返回的对象就是dom对象。
jQuery对象：jquery对象就是使用jquery的方法获取页面中的元素返回的对象就是jQuery对象。
jQuery对象其实就是DOM对象的包装集包装了DOM对象的集合（伪数组）
DOM对象与jQuery对象的方法不能混用。



DOM对象转换成jQuery对象：【联想记忆：花钱】

var $obj = $(domObj);
// $(document).ready(function(){});就是典型的DOM对象转jQuery对象

1
2
3
jQuery对象转换成DOM对象：

*//第一种写法* $(document).ready(function() {  }); *//第二种写法* $(function() {  });

jQuery对象转换成DOM对象：

```javascript
var $li = $("li");
//第一种方法（推荐使用）
$li[0]
//第二种方法
$li.get(0)
12345
```

## jquery选择器

什么是jQuery选择器
jQuery选择器是jQuery为我们提供的一组方法，让我们更加方便的获取到页面中的元素。
注意：jQuery选择器返回的是jQuery对象。
jQuery选择器有很多，基本兼容了CSS1到CSS3所有的选择器，并且jQuery还添加了很多扩展性的选择器。
【查看jQuery文档】
jQuery选择器虽然很多，但是选择器之间可以相互替代，就是说获取一个元素，你会有很多种方法获取到。
所以我们平时真正能用到的只是少数的最常用的选择器。

基本选择器
名称	用法	描述
ID选择器	$(“#id”);	获取指定ID的元素
类选择器	$(“.class”);	获取同一类class的元素
标签选择器	$(“div”);	获取同一类标签的所有元素
并集选择器	$(“div,p,li”);	使用逗号分隔，只要符合条件之一就可。
交集选择器	$(“div.redClass”);	获取class为redClass的div元素
总结：跟css的选择器用法一模一样。

层级选择器
名称	用法	描述
子代选择器	$(“ul>li”);	使用>号，获取儿子层级的元素，注意，并不会获取孙子层级的元素
后代选择器	$(“ul li”);	使用空格，代表后代选择器，获取ul下的所有li元素，包括孙子等
总结：跟css的选择器用法一模一样。

过滤选择器
名称	用法	描述
:eq（index）	$(“li:eq(2)”).css(“color”, ”red”);	获取到的li元素中，选择索引号为2的元素，索引号index从0开始。
:odd	$(“li:odd”).css(“color”, ”red”);	获取到的li元素中，选择索引号为奇数的元素
:even	$(“li:even”).css(“color”, ”red”);	获取到的li元素中，选择索引号为偶数的元素
总结：这类选择器都带冒号

筛选选择器(方法)
名称	用法	描述
children(selector)	$(“ul”).children(“li”)	相当于$(“ul>li”)，子类选择器
find(selector)	$(“ul”).find(“li”);	相当于$(“ul li”),后代选择器
siblings(selector)	$(“#first”).siblings(“li”);	查找兄弟节点，不包括自己本身。
parent()	$(“#first”).parent();	查找父亲
eq(index)	$(“li”).eq(2);	相当于$(“li:eq(2)”),index从0开始
next()	$(“li”).next()	找下一个兄弟
prev()	$(“li”).prev()	找上一次兄弟
总结：筛选选择器的功能与过滤选择器有点类似，但是用法不一样，筛选选择器主要是方法。

【案例：下拉菜单】

# 元素设置

样式设置
 

    /*1.设置一个样式*/
    //两个参数  设置的样式属性,具体样式
    $('li').css('color','red');
    //传入对象（设置的样式属性:具体样式）
    $('li').css({'color':'red'});
    /*2.设置多个样式*/
    $('li').css({
        'color':'green',
        'font-size':'20px'
    });

类名设置

    /*1.添加一个类*/
    $('li').addClass('now');
    /*2.删除一个类*/
    $('li').removeClass('now');
    /*3.切换一个类  有就删除没有就添加*/
    $('li').toggleClass('now');
    /*4.匹配一个类  判断是否包含某个类  如果包含返回true否知返回false*/
    $('li').hasClass('now');

# 动画

```javascript
  /*注意：动画的本质是改变容器的大小和透明度*/
    /*注意：如果不传参数是看不到动画*/
    /*注意：可传入特殊的字符  fast normal slow*/
    /*注意：可传入数字 单位毫秒*/
    /*1.展示动画*/
    $('li').show();
    /*2.隐藏动画*/
    $('li').hide();
    /*3.切换展示和隐藏*/
    $('li').toggle();
```

滑入滑出

```javascript
    /*注意：动画的本质是改变容器的高度*/
    /*1.滑入动画*/
    $('li').slideDown();
    /*2.滑出动画*/
    $('li').slideUp();
    /*3.切换滑入滑出*/
    $('li').slideToggle();

```

淡入而出

```
    /*注意：动画的本质是改变容器的透明度*/
    /*1.淡入动画*/
    $('li').fadeIn();
    /*2.淡出动画*/
    $('li').fadeOut();
    /*3.切换淡入淡出*/
    $('li').fadeToggle();
    $('li').fadeTo('speed','opacity');

```

# 节点操作

## 创建节点

```javascript
    /*创建节点*/
    var $a = $('<a href="http://www.baidu.com" target="_blank">百度1</a>');
```



    /*追加自身的最后面  传对象和html格式代码*/
    $('#box').append('<a href="http://www.baidu.com" target="_blank"><b>百度3</b></a>');
    $('#box').append($('a'));
    /*追加到目标元素最后面  传目标元素的选择器或者对象*/
    $('<a href="http://www.baidu.com" target="_blank"><b>百度3</b></a>').appendTo($('#box'));
    $('a').appendTo('#box');
    
    prepend();
    prependTo();
    after();
    before();

## 删除节点&清空节点

```javascript
    /*1.清空box里面的元素*/
    /* 清理门户 */
    $('#box').empty();
    /*2.删除某个元素*/
    /* 自杀 */
    $('#box').remove();
```





# jQuery特殊属性操作



## val方法

> val方法用于设置和获取表单元素的值，例如input、textarea的值

```javascript
    //设置值
    $("#name").val('张三');
    //获取值
    $("#name").val();
```



## html方法与text方法

html方法相当于innerHTML text方法相当于innerText

    //设置内容
    $('div').html('<span>这是一段内容</span>');
    //获取内容
    $('div').html()
    
    //设置内容
    $('div').text('<span>这是一段内容</span>');
    //获取内容
    $('div').text()

## width方法与height方法

> 设置或者获取高度

```javascript
    //带参数表示设置高度
    $('img').height(200);
    //不带参数获取高度
    $('img').height();
```

## 获取网页的可视区宽高

```javascript
    //获取可视区宽度
    $(window).width();
    //获取可视区高度
    $(window).height();
```

#### scrollTop与scrollLeft

> 设置或者获取垂直滚动条的位置

```javascript
    //获取页面被卷曲的高度
    $(window).scrollTop();
    //获取页面被卷曲的宽度
    $(window).scrollLeft();
```

## offset方法与position方法

offset方法获取元素距离document的位置，position方法获取的是元素距离有定位的父元素的位置。

    //获取元素距离document的位置,返回值为对象：{left:100, top:100}
    $(selector).offset();
    //获取相对于其最近的有定位的父元素的位置。
    $(selector).position();













































### $符号

是著名的jQuery符号。实际上，jQuery把所有功能全部封装在一个全局变量`jQuery`中，而`$`也是一个合法的变量名，它是变量`jQuery`的别名：



```
window.jQuery; // jQuery(selector, context)
window.$; // jQuery(selector, context)
$ === jQuery; // true
typeof($); // 'function'
```





jQuery对象和DOM对象之间可以互相转化：

```
var div = $('#abc'); // jQuery对象
var divDom = div.get(0); // 假设存在div，获取第1个DOM元素
var another = $(divDom); // 重新把DOM包装为jQuery对象
```

通常情况下你不需要获取DOM对象，直接使用jQuery对象更加方便。如果你拿到了一个DOM对象，那可以简单地调用`$(aDomObject)`把它变成jQuery对象，这样就可以方便地使用jQuery的API了。







#### 操作DOM

jQuery的选择器很强大，用起来又简单又灵活，但是搞了这么久，我拿到了jQuery对象，到底要干什么？

答案当然是操作对应的DOM节点啦！

回顾一下修改DOM的CSS、文本、设置HTML有多么麻烦，而且有的浏览器只有innerHTML，有的浏览器支持innerText，有了jQuery对象，不需要考虑浏览器差异了，全部统一操作！

### 修改Text和HTML

jQuery对象的`text()`和`html()`方法分别获取节点的文本和原始HTML文本，例如，如下的HTML结构：

```
<!-- HTML结构 -->
<ul id="test-ul">
    <li class="js">JavaScript</li>
    <li name="book">Java &amp; JavaScript</li>
</ul>
```

分别获取文本和HTML：

```
$('#test-ul li[name=book]').text(); // 'Java & JavaScript'
$('#test-ul li[name=book]').html(); // 'Java &amp; JavaScript'
```

如何设置文本或HTML？jQuery的API设计非常巧妙：无参数调用`text()`是获取文本，传入参数就变成设置文本，HTML也是类似操作，自己动手试试：

jQuery对象的`css()`方法可以这么用：

```
var div = $('#test-div');
div.css('color'); // '#000033', 获取CSS属性
div.css('color', '#336699'); // 设置CSS属性
div.css('color', ''); // 清除CSS属性
```

### 显示和隐藏DOM

要隐藏一个DOM，我们可以设置CSS的`display`属性为`none`，利用`css()`方法就可以实现。不过，要显示这个DOM就需要恢复原有的`display`属性，这就得先记下来原有的`display`属性到底是`block`还是`inline`还是别的值。

考虑到显示和隐藏DOM元素使用非常普遍，jQuery直接提供`show()`和`hide()`方法，我们不用关心它是如何修改`display`属性的，总之它能正常工作：

```
var a = $('a[target=_blank]');
a.hide(); // 隐藏
a.show(); // 显示
```

*注意*，隐藏DOM节点并未改变DOM树的结构，它只影响DOM节点的显示。这和删除DOM节点是不同的。



### 事件



```
/* HTML:
 *
 * <a id="test-link" href="#0">点我试试</a>
 *
 */

// 获取超链接的jQuery对象:
var a = $('#test-link');
a.on('click', function () {
    alert('Hello!');
});
```

`on`方法用来绑定一个事件，我们需要传入事件名称和对应的处理函数。

另一种更简化的写法是直接调用`click()`方法：

```
a.click(function () {
    alert('Hello!');
});
```

两者完全等价。我们通常用后面的写法。

jQuery能够绑定的事件主要包括：

#### 鼠标事件

- click: 鼠标单击时触发；
- dblclick：鼠标双击时触发；
- mouseenter：鼠标进入时触发；
- mouseleave：鼠标移出时触发；
- mousemove：鼠标在DOM内部移动时触发；
- hover：鼠标进入和退出时触发两个函数，相当于mouseenter加上mouseleave。

#### 键盘事件

键盘事件仅作用在当前焦点的DOM上，通常是`<input>`和`<textarea>`。

- keydown：键盘按下时触发；
- keyup：键盘松开时触发；
- keypress：按一次键后触发。

#### 其他事件

- focus：当DOM获得焦点时触发；
- blur：当DOM失去焦点时触发；
- change：当`<input>`、`<select>`或`<textarea>`的内容改变时触发；
- submit：当`<form>`提交时触发；
- ready：当页面被载入并且DOM树完成初始化后触发。

其中，`ready`仅作用于`document`对象。由于`ready`事件在DOM完成初始化后触发，且只触发一次，所以非常适合用来写其他的初始化代码。假设我们想给一个`<form>`表单绑定`submit`事件，下面的代码没有预期的效果：

```
<html>
<head>
    <script>
        // 代码有误:
        $('#testForm').on('submit', function () {
            alert('submit!');
        });
    </script>
</head>
<body>
    <form id="testForm">
        ...
    </form>
</body>
```

因为JavaScript在此执行的时候，`<form>`尚未载入浏览器，所以`$('#testForm)`返回`[]`，并没有绑定事件到任何DOM上。

所以我们自己的初始化代码必须放到`document`对象的`ready`事件中，保证DOM已完成初始化：

```
<html>
<head>
    <script>
        $(document).on('ready', function () {
            $('#testForm).on('submit', function () {
                alert('submit!');
            });
        });
    </script>
</head>
<body>
    <form id="testForm">
        ...
    </form>
</body>
```

这样写就没有问题了。因为相关代码会在DOM树初始化后再执行。

由于`ready`事件使用非常普遍，所以可以这样简化：

```
$(document).ready(function () {
    // on('submit', function)也可以简化:
    $('#testForm).submit(function () {
        alert('submit!');
    });
});
```

甚至还可以再简化为：

```
$(function () {
    // init...
});
```

上面的这种写法最为常见。如果你遇到`$(function () {...})`的形式，牢记这是`document`对象的`ready`事件处理函数。

完全可以反复绑定事件处理函数，它们会依次执行：

```
$(function () {
    console.log('init A...');
});
$(function () {
    console.log('init B...');
});
$(function () {
    console.log('init C...');
});
```

#### 事件参数













