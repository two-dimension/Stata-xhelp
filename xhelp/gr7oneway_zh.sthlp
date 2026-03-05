
{smcl}
{* *! version 1.0.4  13apr2010}{...}
{cmd:help gr7oneway}{right:(过时命令)}
{hline}
{help gr7oneway:English Version}
{hline}

{title:警告}

{pstd}
本帮助文件记录了 Stata 的 {hi:旧} 版本 {cmd:graph} 命令。请查看 {help graph_zh} 以获取现代版本的信息。

{pstd}
每当在版本控制下调用 {cmd:graph} 时，Stata 会运行 {cmd:graph} 的旧版本（可查看 {help version_zh}），或者当您使用 {cmd:graph7} 或 {cmd:gr7} 命令时。

{title:单向散点图 ({cmd:graph7, oneway} 命令)}

{p 8 23 2}
{c -(}{cmd:graph7} | {cmd:gr7}{c )-}
[{it:varlist}] [{it:weight}] [{cmd:if} {it:exp}]
[{cmd:in} {it:range}]{cmd:,} {cmdab:o:neway} [{it:common_options}
{cmdab:j:itter:(}{it:#}{cmd:)}]


{center:{it:common_options}                                请查看帮助}
{center:{hline 54}}
{center:标题和坐标轴选项                        {help gr7axes_zh} }
{center:符号和线条选项                           {help gr7sym_zh}  }
{center:颜色和阴影选项                           {help gr7color_zh}}
{center:保存、打印和多图像选项                 {help gr7other_zh}}
{center:{hline 54}}


{p 4 4 2}
允许使用 {cmd:by}；请参阅 {help by_zh}。


{title:描述}

{p 4 4 2}
{cmd:graph7} {it:...} {cmd:, oneway} {it:...} 指定一个单向散点图，并且可以与 {cmd:box} 结合使用（请参阅 {help gr7box_zh}）。有关 {cmd:graph7} 的介绍，请参见 {help graph7_zh}。

{title:仅适用于 {cmd:oneway} 的选项}

{p 4 8 2}{cmd:jitter(}{it:#}{cmd:)} 在数据位置的垂直线上打开 {it:#} 个随机选择的点，而不是显示整条线。

{title:示例}

{p 4 8 2}{cmd:. graph7 x, oneway} {space 8} (绘制 x 的单向散点图)

{p 4 8 2}{cmd:. graph7 x y, oneway} {space 6} (绘制 x 和 y 的单向散点图)

{p 4 8 2}{cmd:. graph7 tempjuly, by(region) oneway} {space 6} (使用 {cmd:by()} 选项)

{p 4 8 2}{cmd:. graph7 tempjuly, by(region) oneway box} {space 2} (与 {cmd:box} 图结合使用)


{title:另请参见}

{pstd}
八种 {cmd:graph7} 类型作为选项指定。其他七种类型如下：

{center:选项       图类型                     请查看帮助 }
{center:{hline 52}}
{center:{cmdab:hi:stogram}    直方图                     {help gr7hist_zh}  }
{center:{cmdab:t:woway}       双向散点图               {help gr7twoway_zh}}
{center:{cmdab:m:atrix}       双向散点图矩阵          {help gr7matrix_zh}}
{center:{cmdab:b:ox}          箱线图                     {help gr7box_zh}   }
{center:{cmdab:st:ar}         星形图                     {help gr7star_zh}  }
{center:{cmdab:ba:r}          条形图                     {help gr7bar_zh}   }
{center:{cmdab:p:ie}          饼图                        {help gr7pie_zh}   }
{center:{hline 52}}

{psee}
{space 2}帮助： {manhelp graph7 G-2}, {help gr7axes_zh}, {help gr7color_zh},
{help gr7other_zh}, {help gr7sym_zh}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gr7oneway.sthlp>}