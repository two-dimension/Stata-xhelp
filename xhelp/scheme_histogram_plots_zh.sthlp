{smcl}
{* *! version 1.0.4  11feb2011}{...}
{vieweralsosee "scheme shared plots" "help scheme shared plots"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_histogram_plots:English Version}
{hline}{...}
{title:直方图绘图方案条目}

{p 3 3 2}
这些图形方案条目控制 {help histogram_zh} 绘图的外观。有关绘图条目的一般讨论，请参见 {it:{help scheme_files##remarks3:Plot entries}} 中的 {help scheme files}。

{p 3 3 2}
条目以以下标题呈现：

{p 8 12 0}{help scheme_histogram_plots##remarks1:主要直方图绘图条目}{p_end}
{p 8 12 0}{help scheme_histogram_plots##remarks2:直方图绘图的组合条目}{p_end}

{marker remarks1}{...}
{title:主要直方图绘图条目}

{p2colset 4 49 52 0}{...}
{p 3 3 2}
这些条目通常用于改变直方图绘图的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:color       {space 6}histogram}      {space 5}{it:{help colorstyle_zh}}}
	柱填充颜色{p_end}
{p2col:{cmd:intensity   {space 2}histogram}      {space 5}{it:{help intensitystyle_zh}}}
	柱填充强度{p_end}

{p2col:{cmd:color       {space 6}histogram_line} {space 0}{it:{help colorstyle_zh}}}
	柱轮廓颜色{p_end}
{p2col:{cmd:linewidth   {space 2}histogram}      {space 5}{it:{help linewidthstyle_zh:linewidth}}}
	柱轮廓粗细{p_end}
{p2col:{cmd:linepattern {space 0}histogram}      {space 5}{it:{help linepatternstyle_zh}}}
	柱轮廓图案{p_end}

{p2col:{cmd:symbol      {space 5}histogram}      {space 5}{it:{help symbolstyle_zh}}}
	标记符号；很少使用{p_end}
{p2col:{cmd:symbolsize  {space 1}histogram}      {space 5}{it:{help markersizestyle_zh}}}
	标记的大小，很少使用{p_end}
{p2line}

{p 3 3 2}
如果一个方案不包含上述某些与直方图绘图特定相关的条目，则这些直方图绘图元素的外观将由所有绘图类型共享的默认条目决定；请参见 {help scheme shared plots}。

{marker remarks2}{...}
{title:直方图绘图的组合条目}

{p2colset 4 42 45 0}{...}
{p 3 3 2}
对于 Stata 附带的大多数方案，这些组合条目的样式为 {cmd:histogram}；在这种情况下，上表中显示的各个属性条目控制直方图绘图的特征。然而，如果组合条目的样式被修改，则影响直方图绘图的各个属性条目也可能会变化。请参见 {help scheme files} 中的 {it:{help scheme files##remarks4:Composite entries}} 的讨论。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:shadestyle  {space 1}histogram}     {space 2}{it:{help shadestyle_zh}}}
	{it:shadestyle} 柱{p_end}
{p2col:{cmd:areastyle   {space 2}histogram}     {space 2}{it:{help areastyle_zh}}}
	{it:areastyle} 用于柱{p_end}

{p2col:{cmd:linestyle   {space 2}histogram}     {space 2}{it:{help linestyle_zh}}}
	{it:linestyle} 用于柱轮廓{p_end}

{p2col:{cmd:markerstyle {space 0}histogram}     {space 2}{it:{help markerstyle_zh}}}
	直方图标记， 很少使用{p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_histogram_plots.sthlp>}