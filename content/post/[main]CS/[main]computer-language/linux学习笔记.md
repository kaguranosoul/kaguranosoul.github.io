---
title: linux学习笔记
slug: 9dafd965
date: 2023-03-16 16:12:10
tags:
categories: 技术笔记
image:
---



## Linux的目录结构

![image-20221027214128453](https://image-set.oss-cn-zhangjiakou.aliyuncs.com/img-out/2022/10/27/20221027214128.png)

- `/`，根目录是最顶级的目录了
- Linux只有一个顶级目录：`/`
- 路径描述的层次关系同样适用`/`来表示
- /home/itheima/a.txt，表示根目录下的home文件夹内有itheima文件夹，内有a.txt

## Linux的命令入门

 无论是什么命令，用于什么用途，在Linux中，命令有其通用的格式：

```
command [-options] [parameter]
```

•command： 命令本身

•-options：[可选，非必填]命令的一些选项，可以通过选项控制命令的行为细节

•parameter：[可选，非必填]命令的参数，多数用于命令的指向目标等

语法中的[]，表示可选的意思



下面，让我们学习第一个Linux命令：ls命令

并通过它，去理解命令的基础格式

### ls命令
