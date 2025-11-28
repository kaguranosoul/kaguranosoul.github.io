---
uuid: 378559b4-051d-11ed-a2ee-ff4233c822df
title: LeetcodeNotes
hide: true
tags:
  - 数据结构与算法
categories:
  - 技术笔记
slug: 44870
date: 2022-07-04 13:41:15
image:
---

d

# 第二天 字符串

## 字符串的遍历

**「 字符串 」** 是一种特殊的 字符数组，字符数组需要有一个长度字段来表示这个数组中的元素个数。而字符串不需要，字符串一定是以`\0`结尾的，在 C语言中，字符串的表示如下：

```c
char c[6] = "Hello";                         // (1)
char d[5] = { 'H', 'e', 'l', 'l', 'o' };     // (2)
```

 其中 ( 1 ) (1)(1) 表示字符串，它虽然只有五个字符，但是需要有一个结尾字符`\0`（它的 ASCII 码值为 0）进行占位，所以字符串长度为 5，但是实际需要 6 个字节的存储空间。
  而 ( 2 ) (2)(2) 代表的是一个数组，它的每个元素是一个字符，理解成一个长度为 5 的数组即可。

## 字符串的长度

```c
char c[6] = "Hello"; 
printf("%d\n", strlen(c));
```

## 字符串的遍历

```c
    int len = strlen(s);
    for(i = 0; i < len; ++i) {
        // TODO ...
    }
    
    for(i = 0; s[i] != '\0'; ++i) {
        // TODO ...
    }

    for(i = 0; s[i]; ++i) {
        // TODO ...
    }

```

## 大小写转换

```c
if(s[i]>='A'&&s[i]<='Z'){
    s[i]=s[i]-'A'+'a';
}
//首先，我们可以利用 ASCII 码值的关系比较来确定它是大写字母，还是小写字母，如果是大写字母转成小写字母，可以通过先减去A再加上a，从而转换成小写字母。实现如下：
```

## 字符串拷贝

```c
char src[10] = "Hello";
char tar[10];
strcpy(tar, src);
```

## 字符串比较

```c
char src[10] = "Hello";
char tar[10] = "hello";
int x = strcmp(tar, src);//！=0
int y = strcmp(tar, "hello");//0
```

## 字符串分割

```c
char str[9] = "I love U";
//变成
char str[][5] = {
	"I", "love", "U"
};
```



