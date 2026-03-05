
{smcl}
{* *! version 1.0.4  13apr2010}{...}
{cmd:help gr7bar}{right:(过时的命令)}
{hline}
{help gr7bar:English Version}
{hline}

{title:警告}

{pstd}
本帮助文件记录了 Stata 的 {cmd:graph} 命令的 {hi:旧} 版本。有关现代版本，请参阅 {help graph_zh}。

{pstd}
当在版本控制下调用 {cmd:graph} 时，Stata 将运行 {cmd:graph} 的旧版本（请参阅 {help version_zh}），或者当您使用 {cmd:graph7} 或 {cmd:gr7} 命令时.


{title:柱形图 ({cmd:graph7, bar} 命令)}

{p 8 23 2}
{c -(}{cmd:graph7} | {cmd:gr7}{c )-}
[{it:varlist}] [{it:weight}] [{cmd:if} {it:exp}]
[{cmd:in} {it:range}]{cmd:,} {cmdab:ba:r} [{it:common_options}
[{cmd:no}]{cmdab:al:t} {cmdab:me:ans} {cmdab:st:ack}]


{center:{it:common_options}                                查看帮助}
{center:{hline 54}}
{center:标题和坐标轴选项                        {help gr7axes_zh} }
{center:符号和线条选项                          {help gr7sym_zh}  }
{center:颜色和阴影选项                          {help gr7color_zh}}
{center:保存、打印及多个图像选项                 {help gr7other_zh}}
{center:{hline 54}}


{p 4 4 2}
允许使用 {cmd:by}；请参阅 {help by_zh}。


{title:描述}

{p 4 4 2}
{cmd:graph7} {it:...} {cmd:, bar} {it:...} 指定一个柱形图。变量的总和或均值（请参阅下面的 {cmd:means} 选项）决定了柱子的高度。要了解有关 {cmd:graph7} 的介绍，请参阅 {help graph7_zh}。


{title:{cmd:bar} 特有选项}

{p 4 8 2}[{cmd:no}]{cmd:alt} 强制将组的标签放置在单行或多行上。 {cmd:graph7} 选择每个框的文本标签应放在同一行，还是在两行之间进行交替。如果您不喜欢 {cmd:graph7} 的选择， [{cmd:no}]{cmd:alt} 允许您强制执行自己的偏好。 {cmd:alt} 强制使用交错的外观，而 {cmd:noalt} 强制使用单行布局。

{p 4 8 2}{cmd:means} 根据变量的均值而非总和缩放柱形图。“{cmd:graph7 cost revenue, bar by(region)}” 为每个区域绘制总成本和收入。“{cmd:graph7 cost revenue, bar by(region) means}” 则绘制平均成本和收入。

{p 4 8 2}{cmd:stack} 将每个变量的柱形图堆叠，而不是并排显示。


{title:示例}

{p 4 8 2}{cmd:. graph7 a b c, bar}{p_end}
{p 4 8 2}{cmd:. graph7 a b c, bar means}{p_end}
{p 4 8 2}{cmd:. graph7 a, bar by(category)}{p_end}
{p 4 8 2}{cmd:. graph7 a b, bar by(category) stack}

{p 4 8 2}{cmd:. graph7 labor parts advert oh, bar by(year) shading(3124) ylabel yline ti("按财政年度的成本") l1("(千美元)")}


{title:另见}

{pstd}
八种 {cmd:graph7} 类型被作为选项指定。其他七种类型为

{center:选项       图形类型                     查看帮助 }
{center:{hline 52}}
{center:{cmdab:hi:stogram}    直方图                     {help gr7hist_zh}  }
{center:{cmdab:t:woway}       双变量散点图              {help gr7twoway_zh}}
{center:{cmdab:m:atrix}       双变量散点图矩阵           {help gr7matrix_zh}}
{center:{cmdab:o:neway}       单变量散点图               {help gr7oneway_zh}}
{center:{cmdab:b:ox}          箱形图                      {help gr7box_zh}   }
{center:{cmdab:st:ar}         星图                        {help gr7star_zh}  }
{center:{cmdab:p:ie}          饼图                        {help gr7pie_zh}   }
{center:{hline 52}}

{psee}
{space 2}帮助:  {manhelp graph7 G-2}, {help gr7axes_zh}, {help gr7color_zh},
{help gr7other_zh}, {help gr7sym_zh}; {manhelp histogram R}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gr7bar.sthlp>}