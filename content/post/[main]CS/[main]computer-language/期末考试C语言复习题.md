---
uuid: 378559b2-051d-11ed-a2ee-ff4233c822df
title: 通信学院期末C复习题
tags:
  - 考试
  - C语言
top: true
categories:
  - 技术笔记
slug: 37971
date: 2021-12-16 16:12:14
---







**BISTU	通信学院2021C语言期末考试题**

每道题一定有多个写法，碍于时间我不能全部写出来，也没有这个能力，所以这些答案仅仅用于参考

因为写的时间紧所以可能有些小的错误  
请多见谅

<!-- more -->

# A易



A阶段中大多数都是简单的题

```
主要的知识点为
if，math.h里面的函数
ASCII
%d %f
int char float等类型
```



## 1.温度转换

![](https://kaguranotamashii-1308648145.cos.ap-beijing.myqcloud.com/202112161614847.png)

```c
#include<stdio.h>
int main()
{
    float f,c;
    printf("请输入华氏温度:");
    scanf("%f",&f);
    c=(5.0/9)*(f-32);
    printf("转换成摄氏度是:%f\n",c);
    return 0;
}
```

## 2.BMl计算

输入身高（米）和体重（千克）计算 BMI 值，其中 BMI 值计算公式为，BMI = 体 重/身高^2。（实验一题目）

```c
#include<stdio.h>
int main()
{
    float bmi, h, w;
    scanf_s("%f %f", &h, &w);
    bmi = w / (h * h);
    printf("%f", bmi);
}
```

## 3.大写转小写

给定一个大写字母，要求用小写字母输出。提示：大写字母比小写字母的 ASCII 码 小 32。（第 3 章例题

```c
#include<stdio.h>
int main()
{
    char a;
    scanf("%c",&a);
    a=a+32;//ASCii中大写在前面
    printf("%c",a);
    
}
```



## 4.由小到大排列

输入两个实数，按由小到大的顺序输出这两个数。（第 4 章例题

```c
#include<stdio.h>
int main()
{
    int a,b;
    scanf("%d %d",&a,&b);
    if(a<b)
        printf("%d<%d",a,b);
    else
        printf("%d<%d",b,a);
}
```



## 5.一元二次方程

求 ax2+bx+c=0 方程的根。a,b,c 由键盘输入。需要在程序中进行判别，如果 b2- 4ac≥0，就计算并输出方程的两个实根，如果 b2-4ac<0，就输出“此方程无实根” 的信息。（第 4 章例题

```c
#include<stdio.h>
#include<math.h>//提供sqrt函数
int main()
{
    float a, b, c;
    scanf_s("%f %f %f", &a, &b, &c);
    float data;
    data = (b * b - 4 * a * c);
    if (data < 0)
    {
        printf("没有实数根");
    }
    else if (data == 0)
    {
        printf("x=%f", ((-b) / 2 * a));
    }
        
    else
    {
        printf("x1=%f x2=%f", (sqrt(data)) - b / 2 * a, (-sqrt(data)) - b / 2 * a);
    }
       
}
```



## 6.计算三角形面积

给出三角形的三边长，求三角形面积。  
这题可以通过海伦公式快速解题

```c
#include<stdio.h>
#include<math.h>
int main()
{
    float a, b, c;
    float p;
    scanf_s("%f %f %f", &a, &b, &c);
    p = (a + b + c) / 2;
    if (a + b > c && a + c > b && b + c > a)
    { 
        printf("%f", sqrt(p * (p - a) * (p - b) * (p - c)));
    }
      
    else
        printf("三角形不存在\n");
}
```

## 7.判断是否为大写

输入一个字符，判别它是否为大写字母，如果是，将它转换成小写字母；如果不是， 不转换。然后输出最后得到的字符。（第 4 章例题

```c
// 输入一个字符，判断它是否为大写字母，如果是，将它转换成小写字母，如果不是不转换
 
#include <stdio.h>
 
int main()
{
	char ch;
	scanf("%c",&ch);
	if(ch >= 'A' && ch <= 'Z')
		ch = ch + 32;
	printf("%c\n",ch);
}

```

## 8.成绩等级

输入一个学生的成绩，使用 if else 语句输出该同学的成绩属于以下哪个等级。（实 验二） 60 分以下：不及格 60-70 分：及格 70-90 分：良好 90-100 分：优秀

```c
#include <stdio.h>
int main()
{
    int  score;
    scanf_s("%d", &score);
    if (score >= 90) printf("优\n");
    if (score >= 80 && score <= 89) printf("良\n");
    if (score >= 70 && score <= 79) printf("中\n");
    if (score >= 60 && score < 69) printf("及格\n");
    if (score<60) printf("不及格\n");

}
```

## 9国民生产

假如我国国民生产总值的年增长率为 7%，计算 10 年后我国国民生产总值与现在 相比增长多少百分比。计算公式为p=(1+r)^n

n为年 r为增长率

```c
#include <stdio.h>
#include <math.h>
int main()
{
    float p,r,n;
    r=0.07;    
    n=10;
    p=pow(1+r,n);   
    //pow(a,b)a的b次幂
    printf("p=%f\n",p);
}
```

## 10.破解密码

请编程序将“China”译成密码，密码规律是：用原来的字母后面的第 4 个字 母代替原来的字母。例如，字母“A”后面第 4 个字母是“E”，用“E”代替“A”。 字母表最后四个字母“WXYZ”，替代为“ABCD”。因此，“China”应译为“Glmre”。 （第 3 章课后习题

```c

#include<stdio.h>
int main()
{	
	char  c1='C',c2='h',c3='i',c4='n',c5='a';
	c1 = c1 + 4;
	c2 = c2 + 4;
	c3 = c3 + 4;
	c4 = c4 + 4;
	c5 = c4 + 4;
	printf("%c%c%c%c%c\n", c1, c2, c3, c4, c5);
}
```







# B中

```
到这里就开始出现
if while for switch等函数
```



## 11.闰年

典中典的题了

判断分两种情况，一个是能被400整除，一个是能被4整数但不能被100整除  
**四年一闰,百年不闰    四百年再闰**

```c
if(a%400==0||a%4==0&&a%100!=0)
```

## 12.阶乘

用 C 语言求 12!，并画出流程图。（第 5 章课后习题）

```c
#include<stdio.h>
int main()
{
    int n, sum = 1;
    for (int i = 1; i <= 12; i++)
        sum = sum * i;
    printf("%d", sum);
}

```

## 13.**判断位数**

使用循环结构设计一个程序，用户从终端输入一个整数，输出其是几位整数。 （实验二）

```c
#include<stdio.h>
int main()
{
    int n = 0, a;
    scanf_s("%d", &a);
    while (a > 0)
    {
        a = a / 10;
        n++;
    }

    printf("%d", n);
}
```

## 14.逆转数字

从键盘输入一个四位的整数 num，将其个、十、百、千位倒序生成一个数字输 出。例如：输入 1234，输出 4321。（第 4 章课后习题）

```c
#include<stdio.h>
int main()
{
	int a,b=0;
	scanf_s("%d", &a);
	while (a>0)
	{
		b = b * 10 + a % 10;
		a = a / 10;
	}
	printf("%d", b);
}
```

## 15.分段函数

y=x  (x<1)  2x-1(1<=x<10)  3x-11(x=>10)

```c
#include<stdio.h>
int main()
{
    int x,y;
    scanf_s("%d",&x);
    if (x < 1)
        printf("%d",x);
    else if (1 <= x && x < 10)
        printf("%d",2*x - 1);
    else if (x >= 10)
        printf("%d",3*x - 11);
}
```

## 16.流程控制

用 switch 语句处理菜单命令。在许多应用程序中，用菜单对流程进行控制，例 如从键盘输入一个字符个'A'或'a'字符，就会执行 A 操作，输入一个'B'或'b'字符， 就会执行 B 操作。A 操作和 B 操作可以用**自定义函数**的形式实现，例如 A 操作是 执行加法计算，B 操作是执行减法计算。（第 4 章例题

```c
#include<stdio.h>
int add(int x,int y)
{
    return x+y;
}
int min(int x,int y)
{
    return x-y;
}
int main()
{
    char ch;
    scanf("%c",&ch);
    int a,b;
    scanf("%d %d",&a,&b);
   switch(ch)
	{
	case 'a':
	case 'A':printf("%d",add(a,b));break;
	case 'b':
	case 'B':printf("%d",min(a,b));break;
	default:putchar('\a');
	}
}
```

## 17.高斯算法

 1+2+3+…+100。并画出流程图。（第 5 章例题

```c
#include<stdio.h>
int main()
{
	int sum=0;
    for(int i=1;i<=100;i++)
    {
        sum=sum+i;
    }
    printf("%d",sum);
}
```

## 18.pi

用公式 π/4≈1−1/3+1/5−1/7+⋯求 π 的近似值，直到发现某一项的绝对值小 于 10-6为止(该项不累加)。（第 5 章例题

```c
#include<stdio.h> 
#include<math.h> 
int main()
{
	double a=0.0,b=1.0,t=1.0;
	for(int i=3;fabs(b)>1e-6;i+=2)//fabs函数为double型的绝对值，1e-6表示1*10的-6次方
	{
		a=a+b;
		t=-t;
		b=t/i;
	}
	printf("PI=%f\n",4*a);
	return 0;} 

```

## 19.e

数学常量 e 的值可以用一个无穷级数表示：e = 1 + 1/1! + 1/2! + 1/3!  +……。编写程序，用下面的公式计算 e 的近似值：1 + 1/1! +1/2! + 1/3!  +……+ 1/n!，其中 n 是用户输入的整数。请给出 n=50 时，e 的近似值。（循环 嵌套，pi 值程序的提升



```c
#include<stdio.h>
int main()
{
	int n; scanf_s("%d", &n);
	double e=1,sum=1;
	for (int i = 1; i <=n; i++)
	{
		for (int j = 1; j <= i; j++)
		{
			sum = sum * j;
		}
		e = (1/sum) + e;
		sum = 1;
	}
	printf("%lf", e);
}
```

## 20.百钱百鸡

百钱百鸡：中国古代数学家张丘建在他的《算经》中提出了一个著名的“百钱 百鸡问题”：一只公鸡值五钱，一只母鸡值三钱，三只小鸡值一钱，现在要用百钱 买百鸡，请问公鸡、母鸡、小鸡各多少只？（第 5 章例题）

```c
//穷举法
#include<stdio.h>
int main()
{
	for (int i = 0; i <=100; i++)
	{
		for (int j = 0; j < 100; j++)
		{
			for (int k = 0; k < 100; k++)
			{
				if (5 * i + 3 * j + k / 3 == 100 && k % 3 == 0 && i + k + j == 100)
				{
					printf("公鸡%d 母鸡%d 小鸡%d\n", i, j, k);
				}
			}
		}
	}
}
```

## 21.捐钱

在全系 1000 名学生中举行慈善募捐，当总数达到 10 万元时就结束，统计此 时捐款的人数以及平均每人捐款的数目。（第 5 章例题）

```c
#include<stdio.h>
main()
{
	int sum = 0, a, counter = 0;
	printf("请输入每人捐款的钱数：\n");
	while (1)
	{
		scanf_s("%d", &a);
		sum += a;
		counter++;
		if (sum >= 100000)
			break;
	}
	printf("%d\n", counter);
}
```

## 22.整除

要求输出 100～200 之间的不能被 3 整除的数。（第 5 章例题

```c
#include<stdio.h>
int main()
{
    for(int i=100;i<=200;i++)
    {
        if(i%3==0)
        {
            printf("%d",i);
        }
    }
}
```

## 23.质数（素数）

判断是不是质数分两种情况

一个是1它不是质数  
如果大于1不能被2到n-1整除它是素数

```c
#include<stdio.h>
int main()
{
    int i, n;
    scanf_s("%d", &n);
    if (n <= 1)
        printf("不是\n");
    else
    {
        for (i = 2; i < n; i++)
        {
            if (n % i == 0)
                break;
        }
        if (i == n)
            printf("是\n");
        else
            printf("不是\n");
    }
    return 0;
}
```

## 24.阶乘

编程求 1！+2！+3！+4！+……+12！。（！为阶乘符号）（第 5 章课后习题

类似12题

## 25.水仙花数

输出所有的水仙水仙花数花数，所谓水仙花数就是一个 3 位数，其各位数字立方和等于 该数本身。例如 153 是水仙花数

```c
#include<stdio.h>
int main()
{
    int a, b, c,i;//百位十位个位
    for (i = 100; i < 1000; i++)
    {
        a = i / 100; 
        b = i / 10 % 10;
        c = i % 10;
        if (i == a * a * a + b * b * b + c * c * c)
        {
            printf("%d\n", i);
        }

    }
}
```

## 26.一道数学题

一个球从 100 米高度落下，每次落地后跳回原高度的一半，再落下，编程求第 10 次落地时，球共经过的距离为多少米？第 10 次落地后的反C弹高度是多少米？ （第 5 章课后习题

```c
#include<stdio.h>
int main()
{
    double gao=100.0;
    double sum;
    for(int i=0;i<9;i++)
    {
        gao=gao/2;
        sum=sum+gao*2;
    }
    printf("%f %f",gao,sum);
}
```

## 27.依次找到最大数

编写程序，找出用户输入的一串数中的最大数。程序需要提示用户一个一个地 输入数。当用户输入 0 或者负数时，程序必须显示出已输入的最大非负数。（循环、 输入函数

```
例
Enter a number:60 Enter a number:78.5 Enter a number:1203 Enter a number:100

The largest number entered was 1203
```

```c
#include<stdio.h>
int main()
{
	int max = 0, n = 1;
	do
	{
		scanf_s("%d", &n);
		if (max < n)
		{
			max = n;
		}
	} while (n > 0);
	printf("%d", max);
}
```

## 28.杨辉三角形

```c
1
1 1
1 2 1
1 3 3 1
1 4 6 4 1
1 5 10 10 5 1
```

```c
//从第二行开始，每一个数=该数上面的数+该数上面数的前一个数，即：a[ i ][ j ]=a[ i-1 ][ j ]+a[ i-1 ][ j-1 ]
#include <stdio.h>
int main()
{
	int i, j, n;
	int a[100][100] = { 0 };
	printf("请输入行数：");
	scanf_s("%d", &n);
	for (i = 0; i <= n; i++)
		a[i][0] = 1;                                     //每一行第一个数为1
	for (i = 1; i <= n; i++)                            
	{
		for (j = 1; j <= i; j++)
			a[i][j] = a[i - 1][j - 1] + a[i - 1][j];    //从每一行第二个数开始循环
	}
	for (i = 0; i <= n; i++)
	{
		for (j = 0; j <= i; j++)
			printf("%d   ", a[i][j]);
		printf("\n");                                   //输出（每一行输出完换行）
	}
	return 0;
}
```

## 29.四个数字空格

写一个函数，输入一个 4 位数字，要求输出这 4 个数字字符，但是每两个数字 间空一个空格。如输入 1990，应输出“1 9 9 0”。（第 7 章课后习题）

```c
#include<stdio.h>
void prnnum(int s)
{
    if(s==0) return;
    int n;
    n=s % 10;
    s/=10;
    prnnum(s);//递归
    printf("%d %d %d %d",n);

}
int main()
{
    prnnum(5432);
    return 0;
}
```



## 30.冒泡法

写一个函数，用“起泡法”对输入的 10 个字符按由小到大的顺序排序。（

```c
void qipaofa(int a[])
{
    for(int i=0;i<9;i++)
    {
        for(j=0;j<10-i;j++)
        {
            if(a[j]>a[j+1])
            {
                int swap;
                swap=a[j];
                a[j]=a[j+1];
                a[j+1]=swap;
            }
        }
    }
}
```

## 31.十六进制

写一个函数，输入一个十六进制数，输出相应的十进制数。（第 7 章课后习题

```c
#include <stdio.h>
void xtod(int x);       
int main()
{
    int i;
    scanf("%x", &i);           
    xtod(i);                  
    return 0;
}
void xtod(int x)
{
    printf("%d\n", x);
}
```

# C难



```
**到这里后大多就接触到数组以及指针和函数结构体等重量级**

**难度比较大**
```



## 32.打印字符串

编写一个函数，接受 3 个参数：一个字符和两个整数。字符参数是待打印的字 符，第 1 个整数指定一行中打印字符的次数，第 2 个整数指定打印字符的行数。编 写一个调用此函数的程序。（函数、循环、字符变量）

```c
示例：
Enter a character (# to quit): s
Enter number of columns and number of rows: 5 2
sssss
sssss

```

```c
#include<stdio.h>
void hanshu(char c, int n, int m)
{
	for (int i = 0; i < m; i++)
	{
		for (int j = 0; j < n; j++)
		{
			printf("%c", c);
		}
		printf("\n");
	}
}
int main()
{
	char c;
	scanf_s("%c", &c);
	int n, m;
	scanf_s("%d %d", &n, &m);
	hanshu(c, n, m);

}
```

## 33.最大小之差

编写一个函数，返回存储在 double 类型数组中的最大值和最小值的差值，并 在一个简单的程序中调用测试该函数。（函数、一维数组、数组作为函数参数

```c
#include<stdio.h>
double max_min(double a[3])
{
    double min=9999999,max=-1;
    for (int i = 0; i < 3; i++)
    {
        if (a[i] < min)
        {
            min = a[i];
        }
        if (a[i]>max)
        {
            max = a[i];
        }
    }
    return max - min;
}
int main()
{
    double a[3]={234.0,324.0,5.4};

    printf("%f", max_min(a));
}
```

## 35.数组相加

编写一个函数，把两个数组中相对应的元素相加，然后把结果储存到第 3 个数 组中。也就是说，如果数组 1 中包含的值是 2、4、5、8,数组 2 中包含的值是 1、 0、4、6，那么该函数把 3、4、9、14 赋给第 3 个数组。函数接受 3 个数组名和一 个数组大小。在一个简单的程序中调用测试该函数。（函数、一维数组、数组作为函 数参数

```c
#include<stdio.h>
void add(int a[], int b[], int c[])//两个数组相加
{
	for (int i = 0; i < 5; i++)
	{
		c[i] = a[i] + b[i];
	}
}
int main()
{
	int a[5] = { 1,2,3,4,5 };
	int b[5] = { 1,2,3,4,5 };
	int c[5];
	add(a, b, c);
	for (int i = 0; i < 5; i++)
	{
		printf("%d\n", c[i]);
	}

}
```

## 36.数组扩大

编写一个程序，声明一个 int 类型的 3×5 二维数组，并用合适的值初始化它。 该程序打印数组中的值，然后各值翻倍(即是原值的 2 倍)，并显示出各元素的新值。 编写一个函数显示数组的内容，再编写一个函数把各元素的值翻倍。这两个函数都 以数组名和行数作为参数。（函数、二维数组、数组作为函数参数，实验三

```c
#include<stdio.h>
void add(int a[][5], int n)
{
	for (int i = 0; i < n; i++)
	{
		for (int j = 0; j < 5; j++)
		{
			a[i][j] = a[i][j] * 2;
		}
	}
}
void print(int a[][5], int n)
{
	for (int i = 0; i < 3; i++)
	{
		for (int j = 0; j < 5; j++)
		{
			printf("%d ", a[i][j]);
		}
		printf("\n");
	}
}
int main()
{
	int a[3][5] = {
		{21,321,31,23,34,},
		{34,324,2343,24,423},
		{23,432,432,4,43}
	};
	printf("原来的\n");
	print(a, 3);
	add(a, 3);
	printf("\n");
	print(a, 3);

}
```

## 37.返回最大下标

编写一个函数，返回储存在 int 类型数组中的最大值；编写一个函数，返回储 存在 double 类型数组中最大值的下标；编写一个函数，把 double 类型数组中的 数据倒序排列。在一个简单的程序中调用并测试这三个函数。

```c
#include<stdio.h>
void funtion_1(int funtion1[]);
void funtion_1(int funtion1[])
{
	printf("第一个函数\n");
	int max = -1;
	for (int i = 0; i < 5; i++)
	{
		if (funtion1[i]>max)
		{
			max = funtion1[i];
		}
	}
	printf("%d\n", max);
}
void funtion_2(double funtion2[]);
void funtion_2(double funtion2[])
{
	printf("第二个函数\n");
	int k = 0;
	double aa = funtion2[0];
	for (int i = 0; i < 5; i++) {
		if (funtion2[i] > aa) {
			aa = funtion2[i];
			k = i;
		}
	}
	
	printf("%d\n", k+1);
}
void funtion_3(double funtion3[]);
void funtion_3(double funtion3[])
{
	printf("第三个函数\n");
	for (int i = 4; i >= 0; i--)
	{
		printf("%f \n",funtion3[i]);
	}
}
int main()
{
	int funtion1[5] = { 5,9,2,1,9 };
	double funtion2[5] = { 1.0,6.0,3.0,7.0,9.9 };
	double funtion3[5] = { 1.0,2.0,3.0,4.0,8.0};
	funtion_1(funtion1);
	printf("\n");
	funtion_2(funtion2);
	printf("\n");
	funtion_3(funtion3);
}
```



## 38.多功能数组

编写一个程序，提示用户输入 3 组数，每组数包含 5 个 double 类型的数（假 设用户都正确地响应，不会输入非数值数据）。该程序应完成下列任务。

 a.把用户输入的数据储存在 3×5 的数组中 

b.计算每组(5 个)数据的平均值

 c.计算所有数据的平均值

 d.找出这 15 个数据中的最大值

```c
#include<stdio.h>
void sc_anf(double a[][5],int n)//输入函数
{
	double val;
	for (int i = 0; i < 3; i++)
	{
		for (int j = 0; j < 5; j++)
		{
			scanf_s("%lf", &val);
			a[i][j] = val;
		}

	}
}
void average_zu(double a[][5], int n)//每组的平均数
{
	double av_zu=0;
	for (int i = 0; i < 3; i++)
	{
		for (int j = 0; j < 5; j++)
		{
			av_zu = av_zu + a[i][j];
		}

		av_zu = av_zu / 5;
		printf("%f\n", av_zu);
		av_zu = 0;
	}
}
double average_quanbu(double a[][5], int n)//所有的平均数
{
	double av_zu=0;
	for (int i = 0; i < 3; i++)
	{
		for (int j = 0; j < 5; j++)
		{
			av_zu = av_zu + a[i][j];
		}
	}
	printf("\n");
	return av_zu / 15;
}
void max(double a[][5], int n)//最大
{
	double max = -1;
	for (int i = 0; i < 3; i++)
	{
		for (int j = 0; j < 5; j++)
		{
			if (a[i][j] > max)
			{
				max = a[i][j];
			}
		}
	}
	printf("%f\n", max);
}
int main()
{
    double a[3][5];
    sc_anf(a, 3);
	average_zu(a, 3);
	average_quanbu(a, 3);
	/*for (int i = 0; i < 3; i++)
	{
		for (int j = 0; j < 5; j++)
		{
			printf("%f\n", a[i][j]);
		}
	}
	*/
	max(a, 3);
}
```

## 39.平均数等计算

编写程序读入一个整数数组，用于保存 5 个学生的课程成绩，然后用函数调用 的形式实现课程的平均分、最高分和最低分的计算。（数组、循环

```c
#include<stdio.h>
void hanshu(int a[])
{
	int max = -1, min = 999;
	double sum = 0;
	for (int i = 0; i < 5; i++)
	{
		sum = sum + a[i];
		if (a[i]<min)
		{
			min=a[i];
		}
		if (a[i]>max)
		{
			max=a[i];
		}
	}
	printf("课程平均分是：%.2f 最高分是：%d 最低分是 %d", sum / 5, max, min);

}
int main()
{
	int chengji[5];
	for (int i = 0; i < 5; i++)
	{
		printf("请输入%d位同学的成绩;", i + 1);
		scanf_s("%d", &chengji[i]);
	}
	hanshu(chengji);
}
```

## 40.指针数组

编写一个程序，输入月份号，输出该月的英文月名。例如，输入 3，输出“March”， 要求按照指针数组处理。（第 8 章课后习题

```c
#include <stdio.h>
int main()
{
	int n;
	char *p[12] = {"January","February","March","April","May","June","July","August","September","October","November","December"};
	printf("请输入月份：\n");
	scanf("%d",&n);
	printf("英文是：%s\n",*(p + n - 1));//因为*(p)z
}


```

## 41.相反顺序

编写一个程序，将数组 a 中 n 个整数按相反顺序存放，需使用指针变量作为实 参。（第 8 章课程例题

```c
#include <stdio.h>
void xiangfan(int a[])
{
    int* p, * q, tmp;
    for (p = a, q = a + 9; p < q; ++p, --q) 
    {
        tmp = *p;
        *p = *q;
        *q = tmp;
    }
    for (p = a; p < a + 10; ++p)
        printf("%d ", *p);
    printf("\n");
}
int main()
{
    int a[10] = {1,2,3,4,5,6,7,8,9,0};
    xiangfan(a);
    return 0;
}

```

## 42.复制字符串

[编写一个程序，将字符串 a 复制为字符串 b，然后输出字符串 b。要求使用指 针变量处理。（第 8 章课程例题

```c
#include<stdio.h>
void strcpy(char* a, char* b)
{
    while ((*b++ = *a++) != '\0');
}
int main()
{
    char a[10] = "love you";
    char b[10];
    strcpy(a, b);
    printf("%s", b);
}

```

## 43.输出结构体

```c
把一个学生的信息(包括学号、姓名、性别、住址)放在一个结构体变量中，然后
输出这个学生的信息。（第 9 章课程例题
```

```c
#include<stdio.h>
int main()
{
	struct MyStruct
	{
		int xuehao;
		char name[100];
		char sex[100];
		char zhizhu[100];
	}MyStruct = { 20210000,"syr","nan","beijing"};
	printf("%d ", MyStruct.xuehao);
	printf("%s ", MyStruct.name);
	printf("%s ", MyStruct.sex);
	printf("%s ", MyStruct.zhizhu);

}

```

## 44.民主选票

结构体数组：有 3 个候选人，每个选民只能投票选一人，要求编一个统计选票 的程序，先后输入被选人的名字，最后输出各人得票结果（第 9 章课程例题）

```c
#include <string.h>
#include <stdio.h>
#define PEOPLE 10
struct person                            
{
    char name[20];                         
    int count;                               
}people[3] = { "SYR",0,"LCJ",0,"WJL",0 };   
int main()
{
    int i, j;
    char people_name[20];                
    for (i = 1; i <= PEOPLE; i++)
    {
        scanf_s("%s", &people_name,20);            
        for (j = 0; j < 3; j++)
            if (strcmp(people_name, people[j].name) == 0) //strcmp(a,b)如果a和b字符相同返回0
                people[j].count++;
    }
    for (i = 0; i < 3; i++)
        printf("%s:%d\n", people[i].name, people[i].count);
}
```

## 46.结构体指针



有 3 个学生的信息，放在结构体数组中，要求输出全部学生的信息。要求使用 **结构体指针**有关知识。（第 9 章课程例题

```c
#include<stdio.h>
struct stduents
{
	char name[20];
	char sex[20];
	int age;
};
struct stduents st[3] = {{"syr","nan",19,},{"lcj","nv",19},{"wjl","nv",19}};
int main()
{
	struct stduents* p;
	//*p = st[0];
	for (p=st;p<st+3; p++)
	{
		printf("%s  %s   %d\n", p->name,p->sex, p->age);
	}
	
}
```

# D难

**到这里后就开始对指针和结构体进一步深入学习**

```
到这里应该会灵活运用指针来修改结构体数
```



## 47.用指针排序

编写一个程序，用指针方法对 10 个整数按由大到小顺序排序，要求使用选择 排序法。（指针、数组、排序算法）

```c
#include <stdio.h>
void paixu(int* p, int n);
int main()
{
    int a[10], * p, i;
    for (i = 0; i < 10; i++)
    {
        scanf_s("%d", &a[i]);
    }
    paixu(a, 10);
    for (i = 0; i < 10; i++)
    {
        printf("%d ", a[i]);
    }
    return 0;
}
void paixu(int* a, int n)
{
    int i, j, temp;
    for (i = 0; i < n - 1; i++)
    {
        for (j = 0; j < n - 1 - i; j++)
        {
            if (a[j] > a[j + 1])
            {
                temp = a[j];
                a[j] = a[j + 1];
                a[j + 1] = temp;
            }
        }
    }
}
```

## 48.平方排序

给定一个按非递减顺序排序的整数数组 A，返回每个数字的平方组成的新数组， 要求也按非递减顺序排序。要求用函数实现。（函数、一维数组、数组作为函数参数， 排序算法

```c
示例：
输入：-4,-1,0,3,10
输出：0,1,9,16,100
```



```c
#include<stdio.h>
int main()
{
	int a[5] = {-5,4,3,-9,1};
	int b[5];
	for (int i = 0; i<5; i++)
	{
		b[i] = a[i] * a[i];
	}
	for (int i = 0; i < 4; i++)
	{
		for (int j = 0; j < 4-i; j++)
		{
			if (b[j] > b[j + 1])
			{
				int swap;
				swap = b[j];
				b[j] = b[j + 1];
				b[j + 1] = swap;
			}
		}
	}
	for (int i = 0; i < 5; i++)
	{
		printf("%d\n", b[i]);
	}
}
```

## 49.结构体的IO

编写一个函数 print，打印一个学生的成绩数组，该数组有 5 个学生的数据记 录，每个记录包括 num，nam，score[3]，用 input 函数输入这些记录，用 print 函数输出这些记录。（第 9 章例题）

```c
#include <stdio.h>
struct student
{
    int num;
    char name[20];
    int score[3];
}stu[5];
void print(struct student* stu1);
void input(struct student* stu1);
int main()
{
    input(stu);
    print(stu);
    return 0;
}
void input(struct student *stu1)
{
    int i, n = 5;
    printf("请依次输入学生信息：\n");
    for (i = 0; i < n; i++)
    {
        printf("No.");
        scanf_s("%d", &stu[i].num);
        scanf_s("%s", stu[i].name, 20);
        scanf_s(" %d %d %d",&stu[i].score[0], & stu[i].score[1], &stu[i].score[2]);
    }
}
void print(struct student *stu1)
{
    int i;
    printf("\n\n");
    for (i = 0; i < 5; i++)
       printf("No.%d   %s    %d  %d  %d\n", stu1[i].num, stu1[i].name, stu1[i].score[0], stu1[i].score[1], stu1[i].score[2]);
}

```

## 50.难

用指针实现以下程序，输入一个字符串，包括数字和非数字字符，例如： abddf90333?<>2308nfdiufoien8dsuf。其中连续的数字作为一个整数，依次放入一 个数组 a 中，例如 90333 放在 a[0]中，2308 放在 a[1]中……统计一共出现了多少个整 数，并输出这些整数。（第 8 章课后习题）

```c
//这题我写错了，有时间我再改改
#include<stdio.h>
void st(char* str)
{
	int num=0;
	while (*str != '\0') 
	{
		if (*str>='0'&& *str <= '9')
		{
			num++;
			printf("%c", *str);
		}
		/*if (*str != '0' && *str != '9')
		{
			printf("\n");
		}
		*/
		str++;
	
	}
	printf("%d", num);
}
int main()
{
	char str[100];
	scanf_s("%s", str, 100);
	st(str);
}
```

## 51.计算日期是第几天



定义一个结构体变量（包括年、月、日），编写一个函数能够计算一个日期在本 年中是第几天（注意闰年的问题），在主函数中将年、月、日传递给功能函数，计算 结果返回主函数输出显示。（第 9 章课后习题）

```c
#include<stdio.h>
void DATA(struct days today);
struct days
{
	int nian;
	int yue;
	int ri;
};
int main()
{
	struct days today;
	scanf_s("%d %d %d", &today.nian, &today.yue, &today.ri);
	DATA(today);

}
void DATA(struct days today)
{
	int data = 0;
	int yue[12] = { 31,28,31,30,31,30,31,31,30,31,30,31 };
	for (int i = 0; i < today.yue-1; i++)
	{
		data = data + yue[i];
	}
	data = data + today.ri;
	if (today.yue!=2)
	{
		if ((today.nian % 400 == 0) || (today.nian % 4 == 0 && today.nian != 00))
		{
			data = data + 1;
		}
	}

	printf("%d", data);

}

```

## 52.日期结构体

定义一个表示日期的结构体变量（包括年、月、日），并实现以下要求：



```c
1) 编写一个函数，用于让用户输入年、月、日，函数参数为结构体指针；
2) 编写一个函数，实现用“日/月/年”格式输出日期（例如 21/12/2020），函数
参数为结构体变量；
3) 编写一个函数，计算一个日期在本年中是第几天（注意闰年的问题），函数参数
为要计算的日期（年、月、日），计算结果为函数返回值；
4) 编写一个 main 函数，可以测试以上函数的功能，并给出 2020 年 5 月 15 日
是这一年中的第几天。
```

```c
#include<stdio.h>
void DATA(struct day *p);
void input(struct day* p);
struct day {
	int nian;
	int yue;
	int ri;
};
int main()
{
	struct day today;

	input(&today);
	DATA(&today);
	return 0;
}
void input(struct day* p)
{
	printf("请输入年月日\n");
	scanf_s("%d %d %d",&p->nian,&p->yue,&p->ri);
}
void DATA(struct day *today)
{
	int data = 0;
	int yue[12] = { 31,28,31,30,31,30,31,31,30,31,30,31 };
	for (int i = 0; i < (today->yue) - 1; i++)
	{
		data = data + yue[i];
	}
	data = data + today->ri;
	if (today->yue != 2)
	{
		if ((today->nian % 400 == 0) || (today->nian % 4 == 0 && today->nian != 00))
		{
			data = data + 1;
		}
	}

	printf("%d", data);
}
```

## 53.结构体和函数和指针

```
编写一个程序，录入每位同学的信息，包括学号，姓名，c 语言成绩，数学成
绩以及英语成绩。要求：
1) 从键盘上输入 N 名同学的成绩；
2) 求出每名同学的总成绩和平均分；
3) 输出每名同学的信息，包括学号，姓名，总分，平均分；
4) 按照 c 语言成绩排序输出
```

```c
#include<stdio.h>
void input(struct student* p,int n);//输入函数
void print(struct student* p, int n);//输出函数
void pingjunfen(struct student* p, int n);//平均分和总成绩
void paixu(struct students* p, int n);//根据c语言成绩
struct student
{
	int id;
	char name[55];
	int score[3];//c 英语 高数
}stu[50];
int main()
{
	int sum; scanf_s("%d", &sum);
	//struct student students,*p=&students;
	input(stu, sum);
	print(stu, sum);
	pingjunfen(stu, sum);
	paixu(stu, sum);

}
void input(struct student* p,int n)
{
	for (int i = 0; i < n; i++)
	{
		printf("No.");
		scanf_s("%d", &stu[i].id);
		scanf_s("%s", stu[i].name, 20);
		scanf_s(" %d %d %d", &stu[i].score[0], &stu[i].score[1], &stu[i].score[2]);
	}
}
void print(struct student* p, int n)
{
	printf("\n");
	for (int i = 0; i < n; i++)
	{ 
		printf("No.%d   %s    %d  %d  %d\n", stu[i].id, stu[i].name, stu[i].score[0], stu[i].score[1], stu[i].score[2]);
	}
		
}
void pingjunfen(struct student* p, int n)
{
	printf("\n");
	int sum=0;
	double pingjun;
	for (int i = 0; i < n; i++)
	{
		sum = sum + stu[i].score[0] + stu[i].score[1] + stu[i].score[2];
		pingjun = sum / 3;
		printf("%s   总成绩;%d    平均分;%.2f\n",stu[i].name, sum, pingjun);
		pingjun = 0; sum = 0;
	}


}
void paixu(struct students* p, int n)
{
	struct student swap;
	for (int i = 0; i < n - 1; i++)
	{
		for (int j = 0; j < n - 1 - i; j++)
		{
			if (stu[j].score[0] < stu[j + 1].score[0])
			{
				swap = stu[j];
				stu[j] = stu[j + 1];
				stu[j + 1] = swap;
			}
		}
	}

	printf("\n");
	for (int i = 0; i < n; i++)
	{
		printf("No.%d   %s    %d  %d  %d\n", stu[i].id, stu[i].name, stu[i].score[0], stu[i].score[1], stu[i].score[2]);
	}
}
```





# E期末大挑战



```
未写完 待续
```

```c
/*
（2）学生具备下面功能：
a）当用户尚未登录，可以注册账号。通过输入学号，姓名，班级，密码后注册。注意已注册的学号不能重复注册。
b）当用户尚未登录，可以通过输入学号和密码登录，学号和密码与注册一致则成功登录，否则登录失败。
（3）老师具备下面功能：
a）当用户尚未登录，可以注册账号。通过输入工号，姓名，密码后注册。注意已注册的工号不能重复注册。
b）当用户尚未登录，可以通过输入工号和密码登录，工号和密码与注册一致则成功登录，否则登录失败。
c）登录成功后可以查看所有自己开授课程的信息（包含课程编号，课程名称）。
d）登录成功后可以设定自己要开设的课程信息。
e）登录成功后可以通过输入课程编号查看选修改课程的同学姓名、学号、和成绩。
f）登录成功后可以通过输入课程编号开始录入该课程的成绩信息，系统逐条输出学生姓名和学号，老师随后录入成绩。
g）登录成功后可以通过输入课程编号，选择查看成绩分阶段统计结果（90以上，80-89,70-79,60-69,60以下等）。
h）登录成功后可以通过输入课程编号，选择正序和逆序查看成绩和学生名单。
*/
```

��生名单。
*/
```

