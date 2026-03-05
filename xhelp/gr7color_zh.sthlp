
{smcl}
{* *! version 1.0.4  13apr2010}{...}
{cmd:help gr7color}{right:(过时的命令)}
{hline}
{help gr7color:English Version}
{hline}

{title:警告}

{pstd}
此帮助文件记录的是 Stata {cmd:graph} 命令的 {hi:旧} 版本。有关现代版本的信息，请参见 {help graph_zh}。

{pstd}
当在版本控制下调用 {cmd:graph} 时，Stata 会运行旧版本的 {cmd:graph}（详细信息见 {help version_zh}），或当您使用 {cmd:graph7} 或 {cmd:gr7} 命令时。

{title:{cmd:graph7} 命令的常见选项 -- 颜色和阴影选项}

{p 8 23 2}
{c -(}{cmd:graph7} | {cmd:gr7}{c )-}
[{it:varlist}] [{it:weight}] [{cmd:if} {it:exp}]
[{cmd:in} {it:range}] [{cmd:,} {it:graph_type} {it:specific_options}
{it:common_options}]

{p 4 4 2}颜色和阴影的 {it:common_options} 有

{p 8 8 2}
{cmdab:pe:n:(}{it:#...#}{cmd:)}
{cmdab:sh:ading:(}{it:#...#}{cmd:)}

{p 4 4 2}
允许使用 {cmd:by}；详见 {help by_zh}。

{p 4 4 2}
关于 {cmd:graph7} 命令和不同 {it:graph_types} 的信息可以在 {help graph7_zh} 中找到。此条目详细说明颜色和阴影的 {it:common_options}。有关其他 {it:common_options} 的帮助也可用。请参见 {help gr7axes_zh} 以了解标题和坐标轴；{help gr7sym_zh} 以了解符号和线条；{help gr7other_zh} 以了解保存、打印和多个图像。

{title:选项}

{p 4 8 2}{cmd:pen(}{it:#...#}{cmd:)} 指定每个图形元素使用的笔。指定的笔号之间不允许有空格。所有图形都是使用一种称为“笔”的理论概念绘制的。在彩色显示器上，不同的笔映射到不同的颜色。在单色显示器上，所有的笔看起来都一样（除了笔 1 有时比其他的更暗）。在单色设备上打印图形时，可以改变笔的粗细。在彩色打印机上，可以分配不同的颜色。

{p 8 8 2}笔的编号从 1 到 9。 {cmd:graph7} 使用笔 1 进行标注。然后，每个图形元素（对应于 {it:varlist} 中的变量）使用逐渐增加的笔号绘制，当达到笔 9 后将回到笔 2。

	示例：
{p 12 16 2}"{cmd:graph7 y1 y2 x}" 用笔 2 绘制 y1 vs. x，使用笔 3 绘制 y2 vs. x.{p_end}
{p 12 16 2}"{cmd:graph7 y1 y2 x, pen(23)}" 执行相同操作。{p_end}
{p 12 16 2}"{cmd:graph7 y1 y2 x, pen(22)}" 使用相同的笔绘制两个系列。

{p 4 8 2}{cmd:shading(}{it:#...#}{cmd:)} 指定阴影的程度，范围为 1 到 4，其中 1 为最浅，4 为最深。指定的阴影编号之间不允许有空格。 {cmd:shading()} 可以与 {cmd:histogram}（见 {help gr7hist_zh}）、{cmd:bar}（见 {help gr7bar_zh}）和 {cmd:pie}（见 {help gr7pie_zh}）配合使用。对于 {cmd:histogram}，仅指定一个数字，默认值为 {cmd:3}。对于 {cmd:bar} 和 {cmd:pie}，为每个变量指定一个阴影值。默认值为 {cmd:31423142}{it:...}

	示例：
{p 12 16 2}{cmd:. graph7 x, hist shading(4)}{p_end}
{p 12 16 2}{cmd:. graph7 a b c, bar shading(413)}{p_end}
{p 12 16 2}{cmd:. graph7 a b c d e, pie shading(41324)}

{title:另见}

{psee}
{space 2}帮助： {manhelp graph7 G-2}, {help gr7axes_zh}, {help gr7bar_zh},
{help gr7box_zh}, {help gr7hist_zh}, {help gr7matrix_zh},
{help gr7oneway_zh}, {help gr7other_zh},
{help gr7pie_zh}, {help gr7star_zh}, {help gr7sym_zh}, {help gr7twoway_zh}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gr7color.sthlp>}