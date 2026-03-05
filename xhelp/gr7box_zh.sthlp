
{smcl}
{* *! version 1.0.4  13apr2010}{...}
{cmd:help gr7box}{right:(过时命令)}
{hline}
{help gr7box:English Version}
{hline}

{title:警告}

{pstd}
本帮助文件记录了 Stata {cmd:graph} 命令的 {hi:旧} 版本。
有关现代版本请参见 {help graph_zh}。

{pstd}
当在版本控制下调用 {cmd:graph} 时（参见 {help version_zh}），或使用 {cmd:graph7} 或 {cmd:gr7} 命令时，Stata 将运行旧版本的 {cmd:graph}。


{title:图形箱线图 ({cmd:graph, box} 命令)}

{p 8 23 2}
{c -(}{cmd:graph7} | {cmd:gr7}{c )-}
[{it:varlist}] [{it:weight}] [{cmd:if} {it:exp}]
[{cmd:in} {it:range}]{cmd:,} {cmdab:b:ox} [{it:common_options}
[{cmd:no}]{cmdab:al:t} {cmdab:v:width} {cmdab:r:oot}]


{center:{it:common_options}                                查看帮助}
{center:{hline 54}}
{center:标题和坐标轴选项                        {help gr7axes_zh} }
{center:符号和线条选项                          {help gr7sym_zh}  }
{center:颜色和阴影选项                          {help gr7color_zh}}
{center:保存、打印及多个图像选项              {help gr7other_zh}}
{center:{hline 54}}


{p 4 4 2}
{cmd:by} 是允许的；参见 {help by_zh}。


{title:描述}

{p 4 4 2}
{cmd:graph7} {it:...} {cmd:, box} {it:...} 指定箱线图。
最多可以指定 6 个变量。有关 {cmd:graph7} 的介绍，请参见 {help graph7_zh}。


{title:独特于 {cmd:box} 的选项}

{p 4 8 2}[{cmd:no}]{cmd:alt} 强制将组的标签放在单行或多行上。 {cmd:graph7} 决定每个箱体的文本标签是应该在同一行还是在两行之间交替。如果您不喜欢 {cmd:graph7} 的选择， [{cmd:no}]{cmd:alt} 允许您强制自己的偏好。 {cmd:alt} 强制使用错位效果，而 {cmd:noalt} 强制使用单行方式。

{p 4 8 2}{cmd:vwidth} 使每个箱体的宽度与观测数量成比例。

{p 4 8 2}{cmd:root} 仅与 {cmd:vwidth} 一起使用；它指定箱体的宽度按观测数量的平方根成比例。


{title:示例}

{p 4 8 2}{cmd:. graph7 y x, box} {space 8} (为 y 和 x 绘制箱线图)

{p 4 8 2}{cmd:. graph7 y, box by(id)} {space 3} (按 id 组为 y 绘制箱线图)

{p 4 8 2}{cmd:. graph7 y x, box by(id)} {space 1} (为 y 和 x 按 id 绘制)

{p 4 8 2}{cmd}. gr7 tempjan, box by(region) total ylabel s(o) vwidth yline(32)
	ylabel(0 16 to 80) t2("宽度与城市数量成比例")
	ti(按人口普查区绘制的箱线图) l1(一月温度，单位摄氏度){txt}


{title:另见}

{pstd}
八种 {cmd:graph7} 类型指定为选项。其他七种类型是

{center:选项                           图形类型                          查看帮助 }
{center:{hline 52}}
{center:{cmdab:hi:stogram}         直方图                             {help gr7hist_zh}  }
{center:{cmdab:t:woway}            双向散点图                       {help gr7twoway_zh}}
{center:{cmdab:m:atrix}            双向散点图矩阵                 {help gr7matrix_zh}}
{center:{cmdab:o:neway}            单向散点图                       {help gr7oneway_zh}}
{center:{cmdab:st:ar}              星形图                            {help gr7star_zh}  }
{center:{cmdab:ba:r}               条形图                            {help gr7bar_zh}   }
{center:{cmdab:p:ie}               饼图                               {help gr7pie_zh}   }
{center:{hline 52}}

{psee}
{space 2}帮助: {manhelp graph7 G-2}, {help gr7axes_zh}, {help gr7color_zh},
{help gr7other_zh}, {help gr7sym_zh}; {manhelp lv R}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gr7box.sthlp>}