
{smcl}
{* *! version 1.0.4  13apr2010}{...}
{cmd:help gr7hist}{right:(过时的命令)}
{hline}
{help gr7hist:English Version}
{hline}

{title:警告}

{pstd}
本帮助文件记录 Stata 的 {hi:旧} 版本 {cmd:graph} 命令。
请参见 {help graph_zh} 获取现代版本。

{pstd}
当在版本控制下调用 {cmd:graph} 时，Stata 运行旧版本的 {cmd:graph}
（见 {help version_zh}），或者当您使用 {cmd:graph7} 或 {cmd:gr7} 命令时。


{title:图形直方图 ({cmd:graph7, histogram} 命令)}

{p 8 23 2}
{c -(}{cmd:graph7} | {cmd:gr7}{c )-}
[{it:变量}] [{it:权重}] [{cmd:if} {it:条件}]
[{cmd:in} {it:范围}]{cmd:,} {cmdab:hi:stogram} [{it:常用选项}
{cmdab:b:in:(}{it:#}{cmd:)}
{c -(}{cmdab:f:req} | {cmd:percent}{c )-}
{cmdab:norm:al}[{cmd:(}{it:#}{cmd:,}{it:#}{cmd:)}]
{cmdab:d:ensity:(}{it:#}{cmd:)}]


{center:{it:常用选项}                                查看帮助}
{center:{hline 54}}
{center:标题和坐标轴选项                        {help gr7axes_zh} }
{center:符号和线条选项                          {help gr7sym_zh}  }
{center:颜色和阴影选项                          {help gr7color_zh}}
{center:保存、打印与多图像选项                {help gr7other_zh}}
{center:{hline 54}}


{p 4 4 2}
{cmd:by} 是允许的；见 {help by_zh}.


{title:描述}

{p 4 4 2}
{cmd:graph7} {it:...} {cmd:, histogram} {it:...} 指定绘制直方图；
这是 {cmd:graph7} 在仅指定一个变量时的默认值，因此很少输入
{cmd:histogram} 选项。有关 {cmd:graph7} 的介绍，请参见 {help graph7_zh}。


{title:仅适用于 {cmd:histogram} 的选项}

{p 4 8 2}{cmd:bin(}{it:#}{cmd:)} 指定用于累积直方图的区间数。
默认值为 {cmd:bin(5)}。

{p 4 8 2}
{cmd:freq} 和 {cmd:percent} 影响纵轴的标签。
{cmd:freq} 以频率而不是分数单位标记纵轴。
{cmd:percent} 以百分比标记纵轴。

{p 4 8 2}{cmd:normal}[{cmd:(}{it:#}{cmd:,}{it:#}{cmd:)}] 在直方图上绘制正态密度。
单独使用 {cmd:normal} 将计算并使用观察到的均值和标准差。
{cmd:normal(1,2)} 将会叠加均值为 1 和标准差为 2 的正态分布。

{p 4 8 2}{cmd:density(}{it:#}{cmd:)} 仅与 {cmd:normal} 一起使用；
它指定要计算的密度点的数量。默认值为 {cmd:density(100)}。


{title:示例}

{p 4 4 2}
由于 {cmd:histogram} 是 {cmd:graph7} 在处理一个变量时的默认设置

{p 8 35 2}{cmd:. graph7 x} {space 16} (绘制 x 的直方图)

{p 8 35 2}{cmd:. graph7 x, bin(11)} {space 7} (使用 11 个区间的直方图)

{p 8 35 2}{cmd:. graph7 x, normal(10,3)} {space 2} (叠加均值为 10 
标准差为 3 的正态密度)

{p 4 4 2}
一个更复杂的示例：

{p 8 12 2}{cmd:. gr7 tempjuly, bin(9) log normal xlabel noxaxis yline ylabel xline(58,100) t1("(基于956个美国城市)") by(region) total}


{title:另见}

{pstd}
八种 {cmd:graph7} 类型被指定为选项。其他七种类型是

{center:选项       图形类型                    查看帮助 }
{center:{hline 52}}
{center:{cmdab:t:woway}       二维散点图           {help gr7twoway_zh}}
{center:{cmdab:m:atrix}       二维散点图矩阵    {help gr7matrix_zh}}
{center:{cmdab:o:neway}       一维散点图           {help gr7oneway_zh}}
{center:{cmdab:b:ox}          箱线图                 {help gr7box_zh}   }
{center:{cmdab:st:ar}         星形图                  {help gr7star_zh}  }
{center:{cmdab:ba:r}          条形图                 {help gr7bar_zh}   }
{center:{cmdab:p:ie}          饼图                     {help gr7pie_zh}   }
{center:{hline 52}}

{psee}
{space 2}帮助:  {manhelp graph7 G-2}, {help gr7axes_zh}, {help gr7color_zh},
{help gr7other_zh}, {help gr7sym_zh};
{manhelp cumul R}, {manhelp histogram R}, {manhelp stem R}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gr7hist.sthlp>}