{smcl}
{* *! version 1.1.11  11may2018}{...}
{vieweralsosee "[M-1] 介绍" "mansection M-1 Intro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-0] 介绍" "help mata_zh"}{...}
{vieweralsosee "[D] putmata" "help putmata_zh"}{...}
{viewerjumpto "目录" "m1_intro_zh##contents"}{...}
{viewerjumpto "描述" "m1_intro_zh##description"}{...}
{viewerjumpto "PDF文档链接" "m1_intro_zh##linkspdf"}{...}
{viewerjumpto "备注" "m1_intro_zh##remarks"}{...}
{viewerjumpto "参考文献" "m1_intro_zh##references"}
{help m1_intro:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-1] 介绍} {hline 2}}介绍和建议
{p_end}
{p2col:}({mansection M-1 Intro:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker contents}{...}
{title:目录}

{col 8}[M-1] 条目{col 28}描述
{col 8}{hline 64}

{col 8}   {c TLC}{hline 23}{c TRC}
{col 8}{hline 3}{c RT}{it: 介绍材料 }{c LT}{hline}
{col 8}   {c BLC}{hline 23}{c BRC}

{col 8}{bf:{help m1_first_zh:第一}}{...}
{col 28}{bf:介绍和首次会话}

{col 8}{bf:{help m1_interactive_zh:互动}}{...}
{col 28}{bf:交互使用Mata}

{col 8}{bf:{help m1_ado_zh:Ado}}{...}
{col 28}{bf:与ado文件一起使用Mata}

{col 8}{bf:{help m1_help_zh:帮助}}{...}
{col 28}{bf:在Stata中获取帮助}

{col 8}   {c TLC}{hline 35}{c TRC}
{col 8}{hline 3}{c RT}{it: Mata的工作原理和查找示例 }{c LT}{hline}
{col 8}   {c BLC}{hline 35}{c BRC}

{col 8}{bf:{help m1_how_zh:如何}}{...}
{col 28}{bf:Mata的工作原理}

{col 8}{bf:{help m1_source_zh:源代码}}{...}
{col 28}{bf:查看源代码}

{col 8}   {c TLC}{hline 16}{c TRC}
{col 8}{hline 3}{c RT}{it: 特殊主题 }{c LT}{hline}
{col 8}   {c BLC}{hline 16}{c BRC}

{col 8}{bf:{help m1_returnedargs_zh:返回的参数}}{...}
{col 28}{bf:用于返回结果的函数参数}

{col 8}{bf:{help m1_naming_zh:命名}}{...}
{col 28}{bf:关于命名函数和变量的建议}

{col 8}{bf:{help m1_limits_zh:限制}}{...}
{col 28}{bf:限制和内存利用率}

{col 8}{bf:{help m1_tolerance_zh:容差}}{...}
{col 28}{bf:容差的使用和规格}

{col 8}{bf:{help m1_permutation_zh:排列}}{...}
{col 28}{bf:关于排列矩阵和向量的附录}

{col 8}{bf:{help m1_lapack_zh:LAPACK}}{...}
{col 28}{bf:LAPACK线性代数例程}
{col 8}{hline 64}


{marker description}{...}
{title:描述}

{p 4 4 2}
本节介绍Mata以及所有章节共有的参考材料。

{pstd}
此外，我们还应提及两本有用的书籍。

{pstd}
{browse "http://www.stata-press.com/books/introduction-stata-programming/":{it:Stata程序设计导论}}
（412页）由Christopher Baum编写，比本手册更温和地介绍Mata。
它假设您熟悉Stata但对编程是新手。

{pstd}
{browse "http://www.stata-press.com/books/mata-book/":{it:Mata书籍}}
（428页）由William Gould编写，假设您对某种语言的编程有一定了解，但并不要求大量的经验。它更深入地探讨了Mata，并覆盖了编程、数值准确性、工作流程、验证和认证等内容。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-1 IntroRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
本节中最重要的条目是
{bf:{help m1_first_zh:[M-1] 第一}}。
另见 
{bf:{help m6_glossary_zh:[M-6] 术语表}}。

{p 4 4 2}
Stata命令 
{cmd:putmata} 和 {cmd:getmata} 对于将数据从Stata移动到Mata和返回非常有用； 
详见 
{bf:{help putmata_zh:[D] putmata}}。

{pstd}
希望获得类似教科书的Mata介绍的人，可能想考虑 {help m1_intro##B2016:Baum (2016)}，尤其是第13章和第14章。


{marker references}{...}
{title:参考文献}

{marker B2016}{...}
{phang}
Baum, C. F. 2016.
{browse "http://www.stata-press.com/books/introduction-stata-programming/":{it:Stata程序设计导论}}.
第2版.  施蒂尔公司，德克萨斯州：Stata Press。

{phang}
Gould, W. W. 2018.
{browse "http://www.stata-press.com/books/mata-book/":{it:Mata书籍：面向严肃程序员和希望成为程序员的人的书}}.
施蒂尔公司，德克萨斯州：Stata Press。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m1_intro.sthlp>}