
{smcl}
{* *! version 1.1.6  13jan2011}{...}
{cmd:help clist}{right:另外参见:  {help prdocumented_zh:之前文档化的内容}}
{hline}
{help clist:English Version}
{hline}
{pstd}
{cmd:clist} 继续有效，但从 Stata 12 开始，不再是 Stata 的官方组成部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。

{pstd}
请参阅 {help list_zh} 以获取对 {cmd:clist} 的推荐替代方案。


{title:标题}

{p2colset 5 18 20 2}{...}
{p2col :{bf:[D] clist} {hline 2}}列出变量值{p_end}
{p2colreset}{...}


{title:语法}

{p 8 17 2} 
{opt cl:ist} [{varlist}] {ifin} [{cmd:,} {it:options}]{p_end}

{synoptset 20}{...}
{synopthdr :选项}
{synoptline}
{synopt :[{cmdab:no:}]{opt d:isplay}}强制使用显示或 
表格（不显示）格式{p_end}
{synopt :{opt noh:eader}}省略变量或观测编号的标题信息{p_end}
{synopt :{opt nol:abel}}显示数字代码；默认显示标签值{p_end}
{synopt :{opt noo:bs}}抑制打印观测编号{p_end}
{synopt :{opt do:ublespace}}在不显示模式下在每个观测之间插入空白行；在显示模式下无效{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}{it:varlist} 可以包含时间序列运算符；请参阅 {help tsvarlist_zh}。
{p_end}
{p 4 6 2}{opt by} 在 {cmd:clist} 中是允许的；请参阅 {manhelp by D}。{p_end}


{title:描述}

{pstd}
{cmd:clist} 类似于 {cmd:list, clean}；{cmd:clist} 是 Stata 8 之前出现的 {cmd:list} 命令，包括所有选项。{cmd:list} 仍然是推荐使用的命令。{cmd:clist} 是为那些希望使用旧样式输出的情况提供的。


{title:选项}

{phang}
[{opt no}]{opt display} 强制输出为显示或 
表格（不显示）格式。如果您没有指定这两种选项之一，Stata 将选择其认为最易读的格式。

{phang}
{opt noheader} 省略变量或观测编号的标题信息。在不显示模式下，列表顶部的空白行和变量名称将被省略。在显示模式下，观测编号标题和每个观测的一个空白行将被省略。

{phang}
{opt nolabel} 指定显示数字代码而不是标签值。

{phang}
{opt noobs} 抑制打印观测编号。

{phang}
{opt doublespace} 在列表中的每个观测之间生成一个空白行（仅在不显示模式下）；在显示模式下无效。


{title:示例}

{phang}{cmd:. sysuse auto}{p_end}
{phang}{cmd:. clist}{p_end}
{phang}{cmd:. clist in 1/10}{p_end}
{phang}{cmd:. clist mpg weight}{p_end}
{phang}{cmd:. clist mpg weight in 1/20}{p_end}
{phang}{cmd:. clist if mpg>20}{p_end}
{phang}{cmd:. clist mpg weight if mpg>20}{p_end}
{phang}{cmd:. clist mpg weight if mpg>20 in 1/10}

{phang}{cmd:. by rep78, sort: clist, constant}


{title:另见}

{psee}
手册:  {help prdocumented_zh:之前文档化的内容}

{psee}
{space 2}帮助:  {manhelp display P}, {manhelp edit D}, {manhelp tabdisp P},
{manhelp table R}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <clist.sthlp>}