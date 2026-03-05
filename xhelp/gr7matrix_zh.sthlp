
{smcl}
{* *! version 1.0.4  13apr2010}{...}
{cmd:help gr7matrix}{right:(过时的命令)}
{hline}
{help gr7matrix:English Version}
{hline}

{title:警告}

{pstd}
本帮助文件记录了 Stata 的 {hi:旧} 版本 {cmd:graph} 命令。请参阅 {help graph_zh} 获取现代版本。

{pstd}
当在版本控制下调用 {cmd:graph} 时（请参见 {help version_zh}），或者当您使用 {cmd:graph7} 或 {cmd:gr7} 命令时，Stata 将运行旧版本的 {cmd:graph}。

{title:图形散点图矩阵 ({cmd:graph, matrix} 命令)}

{p 8 23 2}
{c -(}{cmd:graph7} | {cmd:gr7}{c )-}
[{it:varlist}] [{it:weight}] [{cmd:if} {it:exp}]
[{cmd:in} {it:range}]{cmd:,} {cmdab:m:atrix} [{it:common_options}
{cmdab:h:alf} {cmdab:j:itter:(}{it:#}{cmd:)}]

{center:{it:common_options}                                查看帮助}
{center:{hline 54}}
{center:标题和轴选项                          {help gr7axes_zh} }
{center:符号和线条选项                        {help gr7sym_zh}  }
{center:颜色和阴影选项                        {help gr7color_zh}}
{center:保存、打印及多个图像选项             {help gr7other_zh}}
{center:{hline 54}}

{p 4 4 2}
{cmd:by} 是允许的；请参阅 {help by_zh}。

{title:描述}

{p 4 4 2}
{cmd:graph7} {it:...} {cmd:, matrix} {it:...} 指定一个散点图矩阵。最多可以指定 30 个变量。有关 {cmd:graph7} 的介绍，请参阅 {help graph7_zh}。

{title:{cmd:matrix} 特有选项}

{p 4 8 2}{cmd:half} 仅绘制矩阵的下半部分

{p 4 8 2}{cmd:jitter(}{it:#}{cmd:)} 在绘图前，给每个点添加球形随机噪声，其中 {it:#} 表示噪声的幅度，占图形区域的百分比。默认值为 {cmd:jitter(0)}。{cmd:jitter(5)} 是一个较大的数值。 （这在保持分类数据不重叠时很有用。）

{title:示例}

{p 4 8 2}{cmd:. graph7 w x y z, matrix}

{p 4 8 2}{cmd:. graph7 tempjan tempjuly heatdd cooldd, matrix label sy(.)}

{p 4 8 2}{cmd:. graph7 mpg-gear_ratio, matrix half nolabel sy(.)}

{p 4 8 2}{cmd:. graph7 mpg rep78 weight displ, mat lab s(.) c(s) bands(9)}

{title:另见}

{pstd}
八种 {cmd:graph7} 类型作为选项指定。其他七种类型是

{center:选项         图形类型              查看帮助 }
{center:{hline 46}}
{center:{cmdab:hi:stogram}    直方图                {help gr7hist_zh}  }
{center:{cmdab:t:woway}       二维散点图          {help gr7twoway_zh}}
{center:{cmdab:o:neway}       单向散点图          {help gr7oneway_zh}}
{center:{cmdab:b:ox}          箱线图                {help gr7box_zh}   }
{center:{cmdab:st:ar}         星形图               {help gr7star_zh}  }
{center:{cmdab:ba:r}          条形图               {help gr7bar_zh}   }
{center:{cmdab:p:ie}          饼图                  {help gr7pie_zh}   }
{center:{hline 46}}

{psee}
{space 2}帮助：  {manhelp graph7 G-2}, {help gr7axes_zh}, {help gr7color_zh},
{help gr7other_zh}, {help gr7sym_zh}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gr7matrix.sthlp>}