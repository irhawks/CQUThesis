# 嗨，这里是HainuThesis！

<!--
[![CTAN release](https://img.shields.io/ctan/v/cquthesis.svg?label=CTAN)](https://www.ctan.org/pkg/cquthesis)
[![GitHub release](https://img.shields.io/github/release/nanmu42/cquthesis.svg?label=Github)](https://github.com/nanmu42/CQUThesis/releases/latest)
[![GitHub commits](https://img.shields.io/github/commits-since/nanmu42/CQUThesis/v1.16.svg)](https://github.com/nanmu42/CQUThesis/commits/master)
[![DOI](https://zenodo.org/badge/58866503.svg)](https://zenodo.org/badge/latestdoi/58866503)
-->

HainuThesis表示的是**Hain**an **U**niversity **Thesis**。名称来自于海南大学官方网站<http://www.hainu.edu.cn>

本宏包是海南大学毕业论文的`\LaTeX{}`模板，支持硕士论文的排版。合理使用本宏包可以大大减轻海南大学毕业生在毕业论文撰写过程中的排版工作量。
	
HainuThesis根据[海南大学研究生学位论文格式规范(2014)](http://www.hainu.edu.cn/stm/law/2015127/10405391.shtml#1)编写，力求合规，简洁，易于实现，对用户友好。

# 模板特色

* 支持重庆大学研究生毕业论文格式；
* 内置封面、目录、索引、授权书等论文部件，可按需自动生成；
* 自动侦测文档页数，生成相应的单面打印/双面打印PDF文件；
* 预置一批优化过的宏包和小功能，包含中英双语题注及配套图录、表录，国际标准单位、化学式支持、三线表等，可按需开启；
* 支持基于cwl文件的代码着色和补全，makefile功能能够在Linux, Mac, Windows三平台通用。


# 获取HainuThesis

## 下载

版本	|	下载地址	|	描述
---	|	---		|	---
开发版	|[点我下载](https://github.com/irhawks/hainuthesis/zipball/hainu-dev)	|	推荐，最新的功能，最快的BugFix
预发行版 | [Github下载页面](https://github.com/irhawks/HainuThesis/releases) | 累计有较大更改时更新
发行版	|[CTAN下载页面](https://www.ctan.org/pkg/hainuthesis)|	定期从预发行版更新，和TeX Live等发行版一同发行

排版示例和用户文档随版本发布，如果需要单独下载，请参阅后文。

## 部署

下载HainuThesis的.zip压缩包后请将整个文件夹解压出来，进入文件夹后：

* Windows用户可以直接双击运行`makewin.bat`
* Linux 和 Mac 用户请在Bash窗口中进行如下操作：

```bash
cd path/to/cquthesis
make thesis
```

即可完成 HainuThesis 的安装和示例文档的编译。以上也是HainuThesis推荐的论文编译方式。

## 编译方式

HainuThesis提供了支持全平台的Makefile来完成论文编译，大部分编译工作基于`latexmk`命令，能够有效利用中间文件提高编译效率，实现一键编译。

* Windows用户请在文件夹空白处按住Shift键再点击书鼠标右键，选择“在此处打开命令窗口”，运行下列命令：

```
makewin help
```

可查询makewin.bat的详细用法（推荐熟悉，事半功倍）。

* Linux用户和Mac用户可打开 Makefile 文件查看相关用法。


## 更新

HainuThesis的升级很方便，下载最新的开发版，将zip文件中的`hainuthesis.dtx`和`hainuthesis.ins`覆盖掉工作文件夹中的相应文件后：

* Windows用户请在文件夹空白处按住Shift键再点击书鼠标右键，选择“在此处打开命令窗口”，运行下列命令：

```
makewin extract
```

* Linux 和 Mac 用户请在 Bash 窗口中进行如下操作：

```
cd hainuthesis
make cls
```
即可完成 CQUThesis 的升级。


#  文档 

文档涵盖了CQUThesis的使用方法、注意事项、实现方式，推荐阅读以快速上手：

文档 | 描述
--- | ---
排版示例 |	请编译`main.tex`获得
用户文档 |	随模板发布，也可[点我下载](https://github.com/irhawks/HainuThesis/raw/master/hainuthesis.pdf)
 
 此外，如果您需要向导师或学院征求使用TeX进行论文排版的理解和肯定，[重庆大学TeX用户组](http://jq.qq.com/?_wv=1027&k=2HvYu95)为您提供[《关于推荐重庆大学开设TeX相关课程并推广其运用的提议》](https://github.com/CQUtug/TeXProposal)，希望这份文档能帮到您。目前，重庆大学内部正在学校范围内推动这一提案。

# 提问和支持

* [Github Issues](https://github.com/irhawks/HainuThesis/issues)

# 用户协议

1. 本模板按照[LaTeX Project Public License](https://latex-project.org/lppl/lppl-1-3.txt)发布，协议版本号为1.3或以后的任何版本。
2. 截止本文档编译时，海南大学教务处和研究生院只提供了毕业论文写作规范，没有提供官方`\LaTeX{}`模板，也没有授权或认证任何第三方模板为官方`\LaTeX{}`模板。本模板是按照研究生毕业论文规范的参考实现，模板作者自当尽力，但不保证审查老师不提意见。在开始使用前，您同意，任何由于本模板而引起的论文格式审查问题与本模板作者无关。

# About HainuThesis

HainuThesis stands for Hainan University Thesis Template for LaTeX, bearing the ability to support master dissertations with grace and speed.

HainuThesis is modified based on [CQUThesis](https://github.com/nanmu42/CQUThesis). CQUThesis stands for Chongqing University Thesis Template for LaTeX, bearing the ability to support bachelor, master, doctor dissertations with grace and speed.

# 致谢 / Acknowledgements

这个模板是站在巨人肩膀上的成果，感谢LaTeX 2e计划，感谢重庆大学[nanmu42](https://github.com/nanmu42)同学开放[CQUThesis模板](https://github.com/nanmu42/CQUThesis)，它是HainuThesis的基础。感谢[CTeX社区](https://github.com/CTeX-org/ctex-kit)提供的中文解决方案，感谢薛瑞尼副教授的[先驱之作](https://github.com/xueruini/thuthesis)，感谢[zepinglee](https://github.com/zepinglee)编写的适用于BibTeX的[GB/T 7714-2015 BibTeX Style](https://github.com/ustctug/gbt-7714-2015)，感谢[胡振雷](hzzmail@163.com)编写的[符合 GB7714-2015 标准的 biblatex 参考文献样式文件](http://www.ctan.org/pkg/biblatex-gb7714-2015)。

向你们致以真诚的问候和感激！

世界因你们更美好。

The author would like to acknowledge these contributors for their efforts and, essentially, beautiful mind:

* [The CTeX Community](https://github.com/CTeX-org/ctex-kit)
* [XUE, Ruini](https://github.com/xueruini/thuthesis)
* [USTC TeX User Group](https://github.com/ustctug/gbt-7714-2015)
* [Hu Zhen­zhen](https://github.com/hushidong/)

# 论文写作规范

* [海南大学研究生学位论文格式规范(2014版)](http://www.hainu.edu.cn/stm/law/2015127/10405391.shtml#1)

本模板自CQUThesis修改而来，CQUThesis的执行标准是：

- [重庆大学本科毕业设计（论文）撰写规范化要求（2007修订）.pdf](https://github.com/nanmu42/CQUThesis/files/644308/2007.pdf)
- [重庆大学博士、硕士学位论文撰写格式标准（2007修订）.pdf](https://github.com/nanmu42/CQUThesis/files/644309/2007.pdf)

# 其它
