{smcl}
{* *! version 1.1.8  11may2018}{...}
{vieweralsosee "[M-0] 介绍" "mansection M-0 Intro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] 第一部分" "help m1_first_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-6] 术语表" "help m6_glossary_zh"}{...}
{viewerjumpto "目录" "mata_zh##contents"}{...}
{viewerjumpto "描述" "mata_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mata_zh##linkspdf"}{...}
{viewerjumpto "备注" "mata_zh##remarks"}{...}
{viewerjumpto "参考文献" "mata_zh##references"}
{help mata:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-0] 介绍} {hline 2}}Mata手册介绍
{p_end}
{p2col:}({mansection M-0 Intro:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker contents}{...}
{title:目录}

{col 14}部分{col 31}描述
{col 14}{hline 53}
{col 14}{bf:{help m1_intro_zh:[M-1]}}{...}
{col 31}{bf:介绍和建议}

{col 14}{bf:{help m2_intro_zh:[M-2]}}{...}
{col 31}{bf:语言定义}

{col 14}{bf:{help m3_intro_zh:[M-3]}}{...}
{col 31}{bf:控制Mata的命令}

{col 14}{bf:{help m4_intro_zh:[M-4]}}{...}
{col 31}{bf:Mata函数的分类指南}

{col 14}{bf:{help m5_intro_zh:[M-5]}}{...}
{col 31}{bf:Mata函数的按字母顺序索引}

{col 14}{bf:{help m6_glossary_zh:[M-6]}}{...}
{col 31}{bf:Mata常用术语的术语表}
{col 14}{hline 53}


{marker description}{...}
{title:描述}

{p 4 4 2}
Mata是一个矩阵编程语言，供那些希望交互式进行矩阵计算和希望为Stata添加新功能的人使用。

{pstd}
{it:Mata Reference Manual} 是一份全面的手册。如果它看起来过于全面，且对于事物为何这样运作以及如何使用解释得不够详细，我们有一个建议。请参阅
{browse "http://www.stata-press.com/books/mata-book/":{it:The Mata Book}} 
由William Gould撰写（428页）或 
{browse "http://www.stata-press.com/books/introduction-stata-programming/":{it:An Introduction to Stata Programming}} 
由Christopher Baum撰写（412页）。Baum的书假设您熟悉Stata，但对编程不太了解；Gould的书假设您对编程有一定了解，并从此出发。这两本书相辅相成。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-0 IntroRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
本手册分为六个部分。每个部分按字母顺序组织，但前面有一个介绍，可以帮助您浏览。

{p 4 4 2}
如果您是Mata的新手，以下是一个有用的阅读清单：
可以先阅读 

{col 9}{hline 61}
{col 9}{...}
{bf:{help m1_first_zh:[M-1] 第一部分}}{...}
{col 31}{...}
介绍和首次会话
{col 9}{...}
{bf:{help m1_interactive_zh:[M-1] 交互式}}{...}
{col 31}{...}
交互式使用Mata
{col 9}{...}
{bf:{help m1_how_zh:[M-1] 如何}}{...}
{col 31}{...}
Mata工作原理
{col 9}{hline 61}

{p 4 4 2}
您可能会在第{bf:[M-1]}部分发现其他感兴趣的内容。
有关目录，请参见 

{col 9}{hline 61}
{col 9}{...}
{bf:{help m1_intro_zh:[M-1] 介绍}}{...}
{col 31}{...}
介绍和建议
{col 9}{hline 61}

{p 4 4 2}
每当您看到一个您不熟悉的术语时，请参阅

{col 9}{hline 61}
{col 9}{...}
{bf:{help m6_glossary_zh:[M-6] 术语表}}{...}
{col 31}{...}
Mata常用术语的术语表
{col 9}{hline 61}

{p 4 4 2}
现在您了解基础知识后，如果您感兴趣，可以深入研究Mata的编程功能：

{col 9}{hline 61}
{col 9}{...}
{bf:{help m2_syntax_zh:[M-2] 语法}}{...}
{col 31}{...}
Mata语言的语法和语法规则
{col 9}{hline 61}

{p 4 4 2}
{bf:[M-2] 语法}的内容比较密集，但它总结了几乎所有内容。[M-2]中的其他条目重复了这里的内容，但提供了更多解释；请参见

{col 9}{hline 61}
{col 9}{...}
{bf:{help m2_intro_zh:[M-2] 介绍}}{...}
{col 31}{...}
语言定义
{col 9}{hline 61}

{p 4 4 2}
因为[M-2]中的其他条目会引起您的兴趣。如果您对面向对象编程感兴趣，请务必查看 
{bf:{help m2_class_zh:[M-2] 类}}。

{p 4 4 2}
在这个过程中，您最终将被引导到[M-4]和[M-5]部分。[M-5]记录了Mata的函数；按字母顺序的排列使您可以轻松找到函数名称，但对于学习所有函数的种类可能会感到无助。这正是[M-4]的目的——以逻辑顺序呈现函数。请参见

{col 9}{hline 61}
{col 11}{...}
{bf:{help m4_intro_zh:[M-4] 介绍}}{...}
{col 31}{...}
Mata函数的分类指南

{col 9}{...}
数学
{col 11}{...}
{bf:{help m4_matrix_zh:[M-4] 矩阵}}{...}
{col 31}{...}
矩阵函数{...}

{col 11}{...}
{bf:{help m4_solvers_zh:[M-4] 解算器}}{...}
{col 31}{...}
矩阵求解器和求逆{...}

{col 11}{...}
{bf:{help m4_scalar_zh:[M-4] 标量}}{...}
{col 31}{...}
标量函数{...}

{col 11}{...}
{bf:{help m4_statistical_zh:[M-4] 统计}}{...}
{col 31}{...}
统计函数{...}

{col 11}{...}
{bf:{help m4_mathematical_zh:[M-4] 数学}}{...}
{col 31}{...}
其他重要函数

{col 9}{...}
实用和操作{...}

{col 11}{...}
{bf:{help m4_standard_zh:[M-4] 标准}}{...}
{col 31}{...}
创建标准矩阵的函数{...}

{col 11}{...}
{bf:{help m4_utility_zh:[M-4] 实用}}{...}
{col 31}{...}
矩阵实用函数{...}

{col 11}{...}
{bf:{help m4_manipulation_zh:[M-4] 操作}}{...}
{col 31}{...}
矩阵操作函数

{col 9}{...}
Stata接口{...}

{col 11}{...}
{bf:{help m4_stata_zh:[M-4] Stata}}{...}
{col 31}{...}
Stata接口函数

{col 9}{...}
字符串，输入/输出和编程{...}

{col 11}{...}
{bf:{help m4_string_zh:[M-4] 字符串}}{...}
{col 31}{...}
字符串函数{...}

{col 11}{...}
{bf:{help m4_io_zh:[M-4] 输入输出}}{...}
{col 31}{...}
输入/输出函数{...}

{col 11}{...}
{bf:{help m4_programming_zh:[M-4] 编程}}{...}
{col 31}{...}
编程函数{...}

{col 9}{hline 61}


{marker references}{...}
{title:参考文献}

{phang}
Baum, C. F. 2016.
{browse "http://www.stata-press.com/books/introduction-stata-programming/":{it:An Introduction to Stata Programming}}.
第二版.  得克萨斯州学院站：Stata Press。

{phang}
Gould, W. W. 2018.
{browse "http://www.stata-press.com/books/mata-book/":{it:The Mata Book: A Book for Serious Programmers and Those Who Want to Be}}.
得克萨斯州学院站：Stata Press。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mata.sthlp>}