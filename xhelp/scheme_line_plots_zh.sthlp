{smcl}
{* *! version 1.0.4  11feb2011}{...}
{vieweralsosee "scheme shared plots" "help scheme shared plots"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_line_plots:English Version}
{hline}{...}
{title:线图方案条目}

{p 3 3 2}
这些图形方案条目控制 {help line_zh} 图的外观。请参见 {it:{help scheme files##remarks3:Plot entries}} 在 {help scheme files} 中，了解图形条目的一般讨论。

{p 3 3 2}
条目按照以下标题展示：

{p 8 12 0}{help scheme_line_plots##remarks1:主线图条目}{p_end}
{p 8 12 0}{help scheme_line_plots##remarks2:线图的复合条目}{p_end}


{marker remarks1}{...}
{title:主线图方案条目}

{p2colset 4 45 48 0}{...}
{p 3 3 2}
最常用来改变线图外观的条目。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:color       {space 6}p}{it:#}{cmd:lineplot} {space 0}{it:{help colorstyle_zh}}}
	第 # 条线图的颜色{p_end}
{p2col:{cmd:linewidth   {space 2}p}{it:#}{cmd:lineplot} {space 0}{it:{help linewidthstyle_zh:linewidth}}}
	第 # 条线图的线宽{p_end}
{p2col:{cmd:linepattern {space 0}p}{it:#}{cmd:lineplot} {space 0}{it:{help linepatternstyle_zh}}}
	第 # 条线图的线型{p_end}

{p2col:{cmd:yesno       {space 6}pcmissings}            {space 0}{{cmd:yes}|{cmd:no}}}
        默认设置是否连接缺失值的观测值的线（{cmd:yes}），或在该线中留下间隙（{cmd:no}） (#){p_end}
{p2col:{cmd:yesno       {space 6}p}{it:#}{cmd:cmissings} {space 0}{{cmd:yes}|{cmd:no}}}
        对于第 {it:#} 条线图，是否连接缺失值的观测值的线（{cmd:yes}），或在该线中留下间隙（{cmd:no}） (#){p_end}

{p2col:{cmd:connectstyle {space 0}p}                     {space 8}{it:{help connectstyle_zh}}}
	所有图的默认 {it:connectstyle}{p_end}
{p2col:{cmd:connectstyle {space 0}p}{it:#}               {space 7}{it:{help connectstyle_zh}}}
	第 # 条图的 {it:connectstyle}{p_end}
{p2line}
{p 3 3 2}(#) 与 {help scheme connected plots:连接图} 共享的设置

{p 3 3 2}
如果一个方案不包含上述某些特定于线图的条目，则线图元素的外观将由所有图形类型共享的默认条目决定；请参见 {help scheme shared plots}。


{marker remarks2}{...}
{title:线图的复合条目}

{p2colset 4 42 45 0}{...}
{p 3 3 2}
对于大多数随 Stata 附带的方案，这些复合条目的样式为 {cmd:p}{it:#}{cmd:lineplot}（其中 {it:#} 是图的编号），在这种情况下，上表中的单个属性条目控制线图的特征。然而，如果复合条目的样式被更改，则可能还会更改影响线图的单个属性覆盖条目。请参阅 {help scheme_files##remarks4:Composite entries} 中的讨论。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:linestyle   {space 2}p}{it:#}{cmd:lineplot} {space 1}{it:{help linestyle_zh}}}
	第 # 条线图的 {it:linestyle}{p_end}
{p2col:{cmd:seriesstyle {space 0}p}{it:#}{cmd:lineplot} {space 1}{it:{help pstyle_zh}}}
	第 # 条线图的 {it:pstyle}{p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_line_plots.sthlp>}