{smcl}
{* *! version 1.0.3  27mar2017}{...}
{vieweralsosee "help prdocumented_zh" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] search" "help search_zh"}{...}
{vieweralsosee "[R] help" "help help_zh"}{...}
{vieweralsosee "[P] keyfiles" "help keyfiles_zh"}{...}
{vieweralsosee "[R] net search" "help net_zh"}{...}
{vieweralsosee "[R] sj" "help sj_zh"}{...}
{vieweralsosee "[R] ssc" "help ssc_zh"}{...}
{vieweralsosee "[U] 3.2.4 The Stata Forum" "help statalist_zh"}{...}
{viewerjumpto "Syntax" "findit_zh##syntax"}{...}
{viewerjumpto "Description" "findit_zh##description"}
{help findit:English Version}
{hline}{...}
{pstd}
{help search_zh} 的默认行为现在与 {cmd:findit} 同义。
{cmd:findit} 仍然可以使用，但从 Stata 13 开始，它变得多余。
这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。

{hline}

{title:标题}

{p2colset 5 19 21 2}{...}
{p2col:{bf:[R] findit} {hline 2}}搜索 Stata 文档{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:findit}
{it:word}
[{it:word} {it:...}]


{marker description}{...}
{title:描述}

{pstd}
{opt findit} 相当于
{opt search} {it:word} [{it:word} {it:...}]{opt , all}。
{opt findit} 的结果显示在查看器中。
{opt findit} 是在所有来源中搜索信息的最佳方法，包括系统帮助、Stata 网站上的常见问题解答、
{it:Stata Journal} 以及所有与 Stata 相关的互联网来源，包括用户编写的附加内容。
通过 {opt findit}，您可以点击以访问某个来源或安装附加内容。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <findit.sthlp>}