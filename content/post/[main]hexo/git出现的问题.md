---
uuid: 37850b90-051d-11ed-a2ee-ff4233c822df
title: git出现的问题
tags:
  - 踩过的坑
  - git
categories:
  - 归档
slug: 58072
date: 2022-04-11 23:22:08
---





今天学习使用vscode的源代码管理时候同步时出现了fatal: unable to access 'xxxx: Failed to connect to github.com port 443 after 21098 ms: Timed out这个错误。

<!-- more -->

提示含义是通过443端口连接github.com错误。

解决办法为

```
git config --global --unset http.proxy#删除配置
git config --global http.proxy 127.0.0.1:xxxx#根据自己的代理插件设置全局端口
git config --local http.proxy 127.0.0.1:xxxx #为某个 git 项目单独设置代理
```

比如我用某个小猫默认的7080

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/20220411232828.png)
om/20220411232828.png)
