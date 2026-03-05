{smcl}
{* *! version 1.0.4  11feb2011}{...}
{vieweralsosee "scheme shared plots" "help scheme shared plots"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_dot_plots:English Version}
{hline}{...}
{title:点图方案条目}

{p 3 3 2}
这些图形方案条目控制 {helpb graph dot} 点图的外观。有关图表条目的一般讨论，请参见 {it:{help scheme_files##remarks3:Plot entries}} 中的 {help scheme files}。

{p 3 3 2}
条目在以下标题下呈现：

{p 8 12 0}{help scheme_dot_plots##remarks1:主要点图条目}{p_end}
{p 8 12 0}{help scheme_dot_plots##remarks2:复合点图条目}{p_end}

{marker remarks1}{...}
{title:主要点图条目}

{p2colset 4 46 49 0}{...}
{p 3 3 2}
这些条目主要用于更改点图的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:symbol      {space 5}p}{it:#}{cmd:dot}         {space 8}{it:{help symbolstyle_zh}}}
	第 # 个点图的标记符号{p_end}
{p2col:{cmd:symbolsize  {space 1}p}{it:#}{cmd:dot}         {space 8}{it:{help markersizestyle_zh}}}
	第 # 个点图的标记符号大小{p_end}
{p2col:{cmd:linewidth   {space 2}p}{it:#}{cmd:dotmark}     {space 4}{it:{help linewidthstyle_zh:linewidth}}}
	第 # 个点图的符号轮廓厚度{p_end}
{p2col:{cmd:color       {space 6}p}{it:#}{cmd:dotmarkfill} {space 0}{it:{help colorstyle_zh}}}
	第 # 个点图的标记填充颜色{p_end}
{p2col:{cmd:color       {space 6}p}{it:#}{cmd:dotmarkline} {space 0}{it:{help colorstyle_zh}}}
	第 # 个点图的标记轮廓颜色{p_end}
{p2line}

{p 3 3 2}
如果一个方案不包含上述某些特定于点图的条目，则这些点图元素的外观由所有图表类型共享的默认条目决定；请参见 {help scheme shared plots}。

{marker remarks2}{...}
{title:复合点图条目}

{p2colset 4 40 43 0}{...}
{p 3 3 2}
对于随 Stata 提供的大多数方案，这些复合条目的样式为 {cmd:p}{it:#}{cmd:dot}（其中 {it:#} 是图表的编号）；在这种情况下，上表中显示的个别属性条目控制点图的特性。然而，如果复合条目的样式发生更改，可能会影响点图的个别属性条目。有关详细讨论，请参见 {it:{help scheme_files##remarks4:Composite entries}} 中的 {help scheme files}。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:linestyle    {space 3}p}{it:#}{cmd:dotmark}  {space 1}{it:{help linestyle_zh}}}
	第 # 个点图的标记 {it:linestyle}；默认 {it:linestyle} 为 {cmd:p}{it:#}{cmd:dotmark}{p_end}
{p2col:{cmd:markerstyle  {space 1}p}{it:#}{cmd:dot}      {space 5}{it:{help markerstyle_zh}}}
	第 # 个点图的标记样式{p_end}
{p2col:{cmd:seriesstyle  {space 1}p}{it:#}{cmd:dot}      {space 5}{it:{help pstyle_zh}}}
	第 # 个点图的整体 {it:pstyle}{p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_dot_plots.sthlp>}