
{smcl}
{* *! version 1.0.5  14may2018}{...}
{cmd:help gr7twoway}{right:(过时命令)}
{hline}
{help gr7twoway:English Version}
{hline}

{title:警告}

{pstd}
此帮助文件记录了 Stata {cmd:graph} 命令的 {hi:旧} 版本。请参见 {help graph_zh} 获取现代版本。

{pstd}
当 {cmd:graph} 在版本控制下被调用时（参见 {help version_zh}），或者当使用 {cmd:graph7} 或 {cmd:gr7} 命令时，Stata 执行旧版本的 {cmd:graph}。


{title:图形双向散点图 ({cmd:graph7, twoway} 命令)}

{p 8 23 2}
{c -(}{cmd:graph7} | {cmd:gr7}{c )-}
[{it:varlist}] [{it:weight}] [{cmd:if} {it:exp}]
[{cmd:in} {it:range}]{cmd:,} {cmdab:t:woway} [{it:common_options}
{cmdab:j:itter:(}{it:#}{cmd:)} {cmdab:r:escale} {cmdab:rb:ox}
{c -(}{cmdab:y:}|{cmdab:x:}|{cmdab:r:}{c )-}{cmdab:r:everse}]


{center:{it:common_options}                                查看帮助}
{center:{hline 54}}
{center:标题和轴选项                        {help gr7axes_zh} }
{center:符号和线条选项                       {help gr7sym_zh}  }
{center:颜色和阴影选项                     {help gr7color_zh}}
{center:保存、打印和多个图像选项    {help gr7other_zh}}
{center:{hline 54}}


{p 4 4 2}
允许使用 {cmd:by}; 参见 {help by_zh}。


{title:描述}

{p 4 4 2}
{cmd:graph7} {it:...} {cmd:, twoway} {it:...} 指定一个双向散点图；这是当指定多个变量时 {cmd:graph7} 的默认值。 {cmd:twoway} 可以与 {cmd:oneway}（参见 {help gr7oneway_zh}）或 {cmd:box}（参见 {help gr7box_zh}）结合使用，但在这种情况下，必须明确指定 {cmd:twoway}。

{p 4 4 2}
有关 {cmd:graph7} 的介绍，请参见 {help graph7_zh}。


{title:{cmd:twoway} 独特选项}

{p 4 8 2}{cmd:jitter(}{it:#}{cmd:)} 在绘图前为每个点添加球形随机噪声，其中 {it:#} 表示噪声的大小为图形区域的百分比。 默认值为 {cmd:jitter(0)}。 {cmd:jitter(5)} 是一个较大的值。 （这对于防止分类数据重叠很有用。）

{p 4 8 2}{cmd:rescale} 独立缩放每个 y 变量。如果有两个 y 变量，第一个的缩放在左（x）轴上呈现，第二个的缩放在右（r）轴上。如果有超过两个 y 变量，则没有垂直缩放标签。

{p 4 8 2}{cmd:rbox} 在图形上放置一个范围查找框图。

{p 4 8 2}{c -(}{cmd:y}|{cmd:x}|{cmd:r}{c )-}{cmd:reverse} 将指示的缩放反转为从高到低。


{title:示例}

{p 4 4 2}
由于 {cmd:twoway} 是 {help graph7_zh} 的默认设置（在有多个变量时）：

{p 8 12 2}{cmd:. graph7 y x} {space 7} (绘制 y 对 x)

{p 8 12 2}{cmd:. graph7 y1 y2 x} {space 3} (绘制 y1 和 y2 对 x)

{p 4 4 2}
这里还有更复杂的示例：

{p 8 12 2}{cmd:. gr7 mpgfor mpgdom weight, xlog ylab xlab l1("Mileage (mpg)")}

{p 8 12 2}{cmd:. gr7 clnsl herd time, c(ll) rescale ysca(2000,3500) rsca(700,1100) ylab(2500(250)3500) rlab(700(50)900) xlab(1967(1)1975) t1(U.K. Pig Production)}

{p 4 4 2}
这个示例还额外使用了 {cmd:box} 风格：

{p 8 12 2}{cmd:. gr7 mpg displ, two box rbox ylab xlab border}


{title:另请参见}

{pstd}
八种 {cmd:graph7} 类型作为选项指定。其他七种类型为

{center:选项       图形类型                    查看帮助 }
{center:{hline 52}}
{center:{cmdab:hi:stogram}    直方图                     {help gr7hist_zh}  }
{center:{cmdab:m:atrix}       双向散点图矩阵    {help gr7matrix_zh}}
{center:{cmdab:o:neway}       单向散点图           {help gr7oneway_zh}}
{center:{cmdab:b:ox}          箱线图          {help gr7box_zh}   }
{center:{cmdab:st:ar}         星形图                    {help gr7star_zh}  }
{center:{cmdab:ba:r}          条形图                     {help gr7bar_zh}   }
{center:{cmdab:p:ie}          饼图                     {help gr7pie_zh}   }
{center:{hline 52}}

{psee}
{space 2}帮助：{manhelp graph7 G-2}, {help gr7axes_zh}, {help gr7color_zh},
{help gr7other_zh}, {help gr7sym_zh}; {manhelp diagnostic_plots R:诊断图}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gr7twoway.sthlp>}