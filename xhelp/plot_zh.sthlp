
{smcl}
{* *! version 1.0.9  13apr2010}{...}
{cmd:help plot}{right:dialog:  {dialog plot}{space 17}}
{right:{help prdocumented_zh:之前文档记录}}
{help plot:English Version}
{hline}
{hline}
{pstd}
{cmd:plot} 继续有效，但从 Stata 8 开始，已不再是 Stata 的官方组成部分。 这是原始帮助文件，我们将不再对其进行更新，因此某些链接可能不再有效。


{title:标题}

{p 4 18 2}
{hi:[R] plot} {hline 2} 使用打字机字符绘制散点图


{title:语法}

{p 8 13 2}{cmdab:pl:ot} {it:yvar1} [{it:yvar2} [{it:yvar3}]] {it:xvar}
[{cmd:if} {it:exp}] [{cmd:in} {it:range}] [{cmd:,}
{cmdab:c:olumns:(}{it:#}{cmd:)} {cmdab:e:ncode}
{cmdab:h:lines:(}{it:#}{cmd:)} {cmdab:l:ines:(}{it:#}{cmd:)}
{cmdab:v:lines:(}{it:#}{cmd:)} ]

{pstd}
{cmd:by} 是允许的；请参见 {manhelp by D}。


{title:描述}

{pstd}
{cmd:plot} 生成 {it:yvar} 对 {it:xvar} 的双向散点图，使用打字机字符。 如果指定了多个 {it:yvar}，则会生成一个单一的图，叠加每个图的绘制。

{pstd}
{cmd:graph} 提供比 {cmd:plot} 更复杂的功能；请参见 {manhelp graph G-2}。


{title:选项}

{phang}{cmd:columns(}{it:#}{cmd:)}, 30<= {it:#} <=133, 指定绘图的列宽；默认值为 75。 绘图本身占用比指定的列数少十列。 额外的十列用于标记图示。

{phang}{cmd:encode} 以表示出现次数的符号绘制出现超过一次的点。 出现一次的点用 "{hi:*}" 绘制，出现两次的点用 "{hi:2}"，出现三次的点用 "{hi:3}"，依此类推。 出现十次的点用 "{hi:A}" 绘制，出现十一的用 "{hi:B}"，依此类推。 不能与多个 {it:yvar} 指定 {cmd:encode}。

{phang}{cmd:hlines(}{it:#}{cmd:)} 每 {it:#} 行绘制一行虚线 ({cmd:-})。

{phang}{cmd:lines(}{it:#}{cmd:)}, 10<= {it:#} <=83, 指定绘图的行高；默认值为 23。 绘图本身占用比指定的行数少三行。 额外的三行用于标记图示。

{phang}{cmd:vlines(}{it:#}{cmd:)} 每 {it:#} 列绘制一条垂直的竖线 ({hi:|})。


{title:示例}

    {cmd:. plot mpg weight}

    {cmd:. plot brate drate medage}


{title:另见}

{psee}
手册:  {help prdocumented_zh:之前文档记录}

{psee}
{space 2}帮助:  {manhelp graph G-2}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <plot.sthlp>}