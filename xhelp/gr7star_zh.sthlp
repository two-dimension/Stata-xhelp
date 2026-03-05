
{smcl}
{* *! version 1.0.4  13apr2010}{...}
{cmd:help gr7star}{right:(过时的命令)}
{hline}
{help gr7star:English Version}
{hline}

{title:警告}

{pstd}
此帮助文件记录了 Stata 的 {hi:旧} 版本 {cmd:graph} 命令。
有关现代版本，请参见 {help graph_zh}。

{pstd}
当在版本控制下调用 {cmd:graph} 时（参见 {help version_zh}），或当您使用 {cmd:graph7} 或 {cmd:gr7} 命令时，Stata 运行旧版本的 {cmd:graph}。


{title:星形图 ({cmd:graph7, star} 命令)}

{p 8 23 2}
{c -(}{cmd:graph7} | {cmd:gr7}{c )-}
[{it:varlist}] [{it:weight}] [{cmd:if} {it:exp}]
[{cmd:in} {it:range}]{cmd:,} {cmdab:st:ar} [{it:common_options}
{cmdab:la:bel:(}{it:varname}{cmd:)}
{cmdab:s:elect:(}{it:#}{cmd:,}{it:#}{cmd:)}]


{center:{it:common_options}                                查看帮助}
{center:{hline 54}}
{center:标题和轴选项                            {help gr7axes_zh} }
{center:符号和线选项                              {help gr7sym_zh}  }
{center:颜色和阴影选项                            {help gr7color_zh}}
{center:保存、打印和多个图像选项                {help gr7other_zh}}
{center:{hline 54}}


{p 4 4 2}
允许使用 {cmd:by}; 参见 {help by_zh}。


{title:描述}

{p 4 4 2}
{cmd:graph7} {it:...} {cmd:, star} {it:...} 指定星形图。最多可以指定 16 个变量。有关 {cmd:graph7} 的介绍，请参见 {help graph7_zh}。


{title:唯一的 {cmd:star} 选项}

{p 4 8 2}{cmd:label(}{it:varname}{cmd:)} 指定应使用 {it:varname} 的内容为每个星形标注。{it:varname} 可以是字符串或数字。默认情况下，{cmd:graph7} 用其观察编号标注每个星形。

{p 4 8 2}{cmd:select(}{it:#1}{cmd:,}{it:#2}{cmd:)} 选择观测数据 {it:#1} 到 {it:#2} 进行绘图。{cmd:graph7} 仍然会检查所有数据以设置缩放。星形图的缩放是所有要绘制的星形的函数。{cmd:select()} 允许您放大数据中的一个或几个星形，同时保持相同的缩放。


{title:示例}

{p 4 8 2}{cmd:. graph7 x1 x2 x3 x4, star}

{p 4 8 2}{cmd:. graph7 headroom-gear_ratio, star bsize(125) label(make)}

{p 4 8 2}{cmd:. graph7 headroom-gear_ratio, star bsize(125) label(make) select(1,9)}


{title:另见}

{pstd}
八种 {cmd:graph7} 类型作为选项指定。其他七种类型是

{center:选项          图形类型                   查看帮助 }
{center:{hline 52}}
{center:{cmdab:hi:stogram}    直方图                     {help gr7hist_zh}  }
{center:{cmdab:t:woway}       二维散点图               {help gr7twoway_zh}}
{center:{cmdab:m:atrix}       二维散点图矩阵          {help gr7matrix_zh}}
{center:{cmdab:o:neway}       单维散点图               {help gr7oneway_zh}}
{center:{cmdab:b:ox}          箱线图                     {help gr7box_zh}   }
{center:{cmdab:ba:r}          条形图                     {help gr7bar_zh}   }
{center:{cmdab:p:ie}          饼图                       {help gr7pie_zh}   }
{center:{hline 52}}

{psee}
{space 2}帮助:  {manhelp graph7 G-2}, {help gr7axes_zh}, {help gr7color_zh},
{help gr7other_zh}, {help gr7sym_zh}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gr7star.sthlp>}