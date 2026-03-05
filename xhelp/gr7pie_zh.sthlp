
{smcl}
{* *! version 1.0.4  13apr2010}{...}
{cmd:help gr7pie}{right:(过时命令)}
{hline}
{help gr7pie:English Version}
{hline}

{title:警告}

{pstd}
本帮助文件记录了 Stata 的 {hi:旧} 版本 {cmd:graph} 命令。
请参见 {help graph_zh} 以获取现代版本的信息。

{pstd}
当 {cmd:graph} 在版本控制下被调用时（见 {help version_zh}），或者当您使用 {cmd:graph7} 或 {cmd:gr7} 命令时，Stata 会运行旧版本的 {cmd:graph}。


{title:图形饼图 ({cmd:graph7, pie} 命令)}

{p 8 23 2}
{c -(}{cmd:graph7} | {cmd:gr7}{c )-}
[{it:varlist}] [{it:weight}] [{cmd:if} {it:exp}]
[{cmd:in} {it:range}]{cmd:,} {cmdab:p:ie} [{it:common_options}]


{center:{it:common_options}                                查看帮助}
{center:{hline 54}}
{center:标题和轴选项                             {help gr7axes_zh} }
{center:符号和线条选项                            {help gr7sym_zh}  }
{center:颜色和填充选项                            {help gr7color_zh}}
{center:保存、打印与多图像选项                  {help gr7other_zh}}
{center:{hline 54}}


{p 4 4 2}
允许使用 {cmd:by}; 参见 {help by_zh}。


{title:描述}

{p 4 4 2}
{cmd:graph7} {it:...} {cmd:, pie} {it:...} 指定一个饼图。变量的和决定了切片的面积。您可以指定多达 16 个变量，Stata 将在一张图像中放置多达 64 个饼图。有关 {cmd:graph7} 的介绍，请参见 {help graph7_zh}。


{title:示例}

{p 4 8 2}{cmd:. graph7 a b c, pie}

{p 4 8 2}{cmd:. graph7 a b c, pie by(category)}

{p 4 8 2}{cmd:. graph7 dlabor ilabor parts advert oh, pie by(year) sh(31324) title("成本分布，XYZ 公司")}


{title:另见}

{pstd}
八种 {cmd:graph7} 类型作为选项指定。其余七种类型为

{center:选项             图形类型                       查看帮助 }
{center:{hline 52}}
{center:{cmdab:hi:stogram}      直方图                          {help gr7hist_zh}  }
{center:{cmdab:t:woway}         双向散点图                    {help gr7twoway_zh}}
{center:{cmdab:m:atrix}         双向散点图矩阵                {help gr7matrix_zh}}
{center:{cmdab:o:neway}         单向散点图                    {help gr7oneway_zh}}
{center:{cmdab:b:ox}            箱线图                          {help gr7box_zh}   }
{center:{cmdab:st:ar}           星形图                          {help gr7star_zh}  }
{center:{cmdab:ba:r}            条形图                          {help gr7bar_zh}   }
{center:{hline 52}}

{psee}
{space 2}帮助:  {manhelp graph7 G-2}, {help gr7axes_zh}, {help gr7color_zh},
{help gr7other_zh}, {help gr7sym_zh}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gr7pie.sthlp>}