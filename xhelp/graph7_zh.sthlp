
{smcl}
{* *! version 1.0.6  11feb2011}{...}
{cmd:help graph7}, {cmd:help gr7}{right:{help prdocumented_zh:之前已记录}}
{hline}
{help graph7:English Version}
{hline}

{title:标题}

{p2colset 5 21 23 2}{...}
{p2col :{hi:[G-2] graph7} {hline 2}}旧图形命令{p_end}
{p2colreset}{...}


{title:语法}

{p 8 23 2}
{c -(}{cmd:graph7} | {cmd:gr7}{c )-}
[{it:变量列表}]
[{it:权重}]
[{cmd:if} {it:表达式}]
[{cmd:in} {it:范围}]
[{cmd:,} ...]

{p 8 23 2}
{c -(}{cmd:graph7} | {cmd:gr7}{c )-}
{cmd:using}
{it:文件名}
[{it:文件名} ...]
[{cmd:,} ...]


{title:描述}

{pstd}
Stata 的 {cmd:graph} 命令在 Stata 8 中发生了显著变化。 {cmd:graph7} 或 {cmd:gr7} 提供对旧 {cmd:graph} 命令的访问。

{pstd}
在版本控制下运行的 {cmd:graph} 也是旧的 {cmd:graph} 命令，因此旧的 ado 文件和命令仍然可以工作，尽管它们不会使用 Stata 8 中可用的新功能。

{pstd}
有关 {cmd:graph} 的现代版本，请参见 {help graph_zh}。


{title:旧 {cmd:graph} 命令的详细信息}

	{cmdab:vers:ion} {cmd:7:} {cmdab:gr:aph} ...

{p 8 23 2}
{c -(}{cmd:graph7} | {cmd:gr7}{c )-}
[{it:变量列表}] [{it:权重}] [{cmd:if} {it:表达式}]
[{cmd:in} {it:范围}] [{cmd:,} {it:图形类型} {it:特定选项}
{it:通用选项}]

{p 8 23 2}
{c -(}{cmd:graph7} | {cmd:gr7}{c )-}
{cmd:using} {it:文件名}
[{it:文件名} {it:...}] [{cmd:,} {it:图形_使用选项}]

	{cmd:set} {cmdab:te:xtsize} {it:#}


{pstd}
其中 {it:图形类型} 通过以下八个选项之一指定：

{center:选项       图形类型                  见帮助 }
{center:{hline 52}}
{center:{cmdab:hi:stogram}    直方图                     {help gr7hist_zh}  }
{center:{cmdab:t:woway}       双变量散点图           {help gr7twoway_zh}}
{center:{cmdab:m:atrix}       双变量散点图矩阵    {help gr7matrix_zh}}
{center:{cmdab:o:neway}       单变量散点图           {help gr7oneway_zh}}
{center:{cmdab:b:ox}          箱线图                     {help gr7box_zh}   }
{center:{cmdab:st:ar}         星形图                    {help gr7star_zh}  }
{center:{cmdab:ba:r}          条形图                     {help gr7bar_zh}   }
{center:{cmdab:p:ie}          饼图                         {help gr7pie_zh}   }
{center:{hline 52}}

{pstd}
{it:特定选项} 详见各图形类型的帮助文件。  {it:通用选项} 如下所示。

{center:{it:通用选项}                                见帮助}
{center:{hline 54}}
{center:标题和坐标轴选项                     {help gr7axes_zh} }
{center:符号和线条选项                        {help gr7sym_zh}  }
{center:颜色和阴影选项                        {help gr7color_zh}}
{center:保存、打印和多图像选项         {help gr7other_zh}}
{center:{hline 54}}

{pstd}
{it:图形_使用选项} 在 {help gr7other_zh} 中有记录。

{pstd}
{cmd:fweight}s, {cmd:iweight}s 和 {cmd:aweight}s 是允许的；它们的处理方式相同；见 {help weight_zh}。

{pstd}
{cmd:graph7} 的 {it:变量列表} 可以包含时间序列运算符；见 
{varlist}。

{pstd}
旧的 {cmd:set textsize} 命令控制图形上所有文本的大小。 {cmd:textsize} 的初始值为 {cmd:100}，表示正常大小的 100%。 {cmd:set textsize 125} 将文本增大 25%。 {cmd:set textsize 75} 将文本缩小。


{title:另请参见}

{psee}
手册:  {help prdocumented_zh:之前已记录}

{psee}
{space 2}帮助:  {manhelp graph G-2};
{help gr7axes_zh}, {help gr7color_zh}, {help gr7oneway_zh},
{help gr7star_zh}, {help gr7bar_zh}, {help gr7hist_zh}, {help gr7other_zh}, {help gr7sym_zh},
{help gr7box_zh}, {help gr7matrix_zh}, {help gr7pie_zh}, {help gr7twoway_zh}, {help gph_zh},
{help gprefs_zh}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph7.sthlp>}