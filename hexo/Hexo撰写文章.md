---
title: Hexo撰写文章
date: 2018-12-04 20:09:45
tags: [撰写文章,md]
categories: hexo
---
# 一、创建文章

在站点文件夹中打开git bash，输入如下命令创建文章，其中title为文章的标题

``` bash
$ hexo new "title"
```

此时就会在source/_post文件夹中创建了一个文件，命名为：title.md，而这个文件就是将要发布到网站上的原始文件，记录文章内容，以下我们将要在这个文件中写下我们的第一篇博客

# 二、编写文章（基于Markdown）

## 1. Markdown简介

但是在我们正式写下我们文章的第一个文字前，我们需要了解一下什么是Markdown：

``` bash
Markdown是一种可以使用普通文本编辑器编写的标记语言，通过简单的标记语法，它可以使普通文本内容具有一定的格式
```

基于markdown的简洁性，它已经成为了目前世界上最流行的用于书写博客的语言

## 2. Markdown语法

在了解markdown语法之前，博主十分强烈的推荐大家一款简洁易用的markdown编辑器——Typora，按照官方的说法就是**简单而强大**，它不仅支持原生的markdown语法，也支持对应的快捷键，更重要的是它还可以实时预览 ，简直不要太优秀了。这里附上Typora的下载地址：https://www.typora.io/，有兴趣的小伙伴可以下载来试试哦

好，下面开始进入正题，介绍一些常用的markdown语法

###（1）标题

Markdown语法：

``` bash
# 一级标题
## 二级标题
### 三级标题
#### 四级标题
##### 五级标题
###### 六级标题
```

Typora快捷键：
Ctrl+1：一级标题 
Ctrl+2：二级标题 
Ctrl+3：三级标题 
Ctrl+4：四级标题 
Ctrl+5：五级标题 
Ctrl+6 ：六级标题 
Ctrl+0：段落

###（2）粗体、斜体、删除线和下划线

Markdown语法：

``` bash
*斜体*
**粗体**
***加粗斜体***
~~删除线~~
```

Typora快捷键： 
Ctrl+I：斜体 
Ctrl+B：粗体 
Ctrl+U：下划线 
Alt+Shift+5：删除线

###（3）超链接

Markdown语法：

``` bash
[链接文字](链接地址 "链接描述")
例如：[我的博客](https://forwhfang.github.io/ "我的博客")

<链接地址>
例如：<https://forwhfang.github.io>
```

Typora快捷键：Ctrl+K

###（4）引用

Markdown语法：

``` bash
> 文字引用
```

Typora快捷键：Ctrl+Shift+Q

###（5）代码

Markdown语法：（为了方便起见，这里将使用字符a代替反引号`）

``` bash
a单行代码a

aaa
多行代码
多行代码
aaa
```

Typora快捷键：Ctrl+Shift+`

###（6）分割线

Markdown语法：

``` bash
---

***
```

以上两种方法均可以表示为分割线

###（7）列表

Markdown语法：

``` bash
* 列表项

- 列表项

+ 列表项
```

以上三种方法均可以表示为列表

###（8）表格

Markdown语法：

```bash
表头1|表头2
-|-|-
内容11|内容12
内容21|内容22
```

Typora快捷键：Ctrl+T （这里就充分体现了Typora快捷键的方便性了）

###（9）图片

Markdown语法：

``` bash
![图片文字] (图片地址 "图片描述")
例如：![示例图片] (https://www.example.com/example.PNG "示例图片")
```

Typora快捷键：Ctrl+Shift+I

**说明**：在Hexo中插入图片时，请按照以下步骤进行设置

（1）将站点配置文件中的 post_asset_folder 选项设置成 true

（2）在站点文件夹中打开 git bash，输入命令 npm install hexo-asset-image --save 安装插件

（3）此时使用 hexo new title 创建文章时，将同时在source/_post文件夹中生成一个与title同名的文件夹，我们只需将待添加的图片放进此文件夹中，然后在文章中通过Markdown语法进行引用即可，例如，在资源文件夹（就是那个与title同名的文件夹）中添加了图片example.PNG，则可以在对应的文章中使用语句 ![示例图片](title/example.PNG "示例图片") 添加图片

## 3. 其他操作

###（1）模板设置

当我们使用命令 hexo new "title" 去创建我们的文章时，Hexo会根据/scaffolds/post.md文件对新建文件进行初始化，换言之，/scaffolds/post.md文件就是创建新文章的模板，所以我们可以修改它来适应自己的写作习惯，一个简单的示例如下：

``` bash
title: {{ title }}
date: {{ date }}
tags: 
categories: 
```

###（2）头部设置

在博客文章的开头会有对文章的说明文字，叫做文章头部，文章的头部除了可以设置文章标题、书写日期等基础信息外，还可以对文章添加标签、分类等，一个简单的示例如下

``` bash
title: Title
date: YYYY-MM-DD HH:MM:SS
tags: [tag1, tag2, ...]
categories: category
```

注意，属性和属性值之间必须有一个空格，否则会解析错误

###（3）首页显示

在Hexo框架博客的首页会显示文章的内容（默认显示文章的全部内容），如果当文章太长的时候就会显得十分冗余，所以我们有必要对其进行精简，只需在文章中使用 <!--more--> 标志，表示只会显示标志前面的内容

# 三、部署发布

在站点文件夹中打开 git bash，输入如下命令部署和发布文章

``` bash
$ hexo g -d
```

**建议**：在使用命令 hexo g 部署之后，可以先使用 hexo s 运行本地站点，在浏览器输入地址http://lacolhost:4000/查看运行结果，检查没有错误后再使用命令 hexo d 发布

--------------------- 

作者：wsmrzx 
来源：CSDN 
原文：https://blog.csdn.net/wsmrzx/article/details/81478945 
版权声明：本文为博主原创文章，转载请附上博文链接！
