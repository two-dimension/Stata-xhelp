{smcl}
{* *! version 1.0.4  11feb2011}{...}
{vieweralsosee "scheme shared plots" "help scheme shared plots"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_bar_plots:English Version}
{hline}{...}
{title:条形图方案条目}

{p 3 3 2}
这些图形方案条目控制 {helpb twoway bar} 和 
{helpb graph bar} 图的外观。有关图的条目的一般讨论，请参见 {it:{help scheme_files##remarks3:图形条目}} 在 {help scheme files} 中。

{p 3 3 2}
条目按以下标题呈现：

{p 8 12 0}{help scheme_bar_plots##remarks1:主条形图方案条目}{p_end}
{p 8 12 0}{help scheme_bar_plots##remarks2:复合条目用于条形图}{p_end}


{marker remarks1}{...}
{title:主条形图方案条目}

{p2colset 4 45 48 0}{...}
{p 3 3 2}
这些条目最常用于改变条形图的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:color       {space 6}p}{it:#}{cmd:bar}     {space 5}{it:{help colorstyle_zh}}}
	第 # 个条形图的填充颜色{p_end}
{p2col:{cmd:intensity   {space 2}p}{it:#}{cmd:bar}     {space 5}{it:{help intensitystyle_zh}}}
	{helpb twoway bar} 的第 # 个条形图的填充强度{p_end}
{p2col:{cmd:intensity   {space 2}}{cmd:bar}            {space 7}{it:{help intensitystyle_zh}}}
	{helpb graph bar} 的所有条形的填充强度{p_end}

{p2col:{cmd:linewidth   {space 2}p}{it:#}{cmd:bar}     {space 5}{it:{help linewidthstyle_zh:linewidth}}}
	第 # 个条形图的轮廓厚度{p_end}
{p2col:{cmd:linepattern {space 0}p}{it:#}{cmd:bar}     {space 5}{it:{help linepatternstyle_zh}}}
	第 # 个条形图的轮廓模式{p_end}
{p2col:{cmd:color       {space 6}p}{it:#}{cmd:barline} {space 1}{it:{help colorstyle_zh}}}
	第 # 个条形图的轮廓颜色{p_end}
{p2col:{cmd:intensity   {space 2}}{cmd:bar_line}       {space 2}{it:{help intensitystyle_zh}}}
	{helpb graph bar} 所有条形的轮廓强度{p_end}
{p2line}

{p 3 3 2}
如果方案中不包含一些这些特定于条形图的条目，条形图的这些元素的外观将由在所有图形类型之间共享的默认条目决定；请参见 {help scheme shared plots}。


{marker remarks2}{...}
{title:复合条目用于条形图}

{p2colset 4 40 43 0}{...}
{p 3 3 2}
对于大多数随 Stata 发布的方案，这些复合条目的样式为 {cmd:p}{it:#}{cmd:bar}，（其中 {it:#} 是图的编号）；在这种情况下，上表中显示的各个属性条目控制条形图的特性。 然而，如果复合条目的样式被更改，则影响条形图的各个属性条目也可能会改变。请参见 {it:{help scheme_files##remarks4:复合条目}} 中的讨论 {help scheme files}。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:textboxstyle {space 0}{cmd:barlabel}   {space 0}{it:{help textboxstyle_zh}}}}
	所有条形标签的 {it:textstyle}，对于大多数方案， {it:textstyle} 是 {helpb scheme labels:small_label}。{p_end}
{p2col:{cmd:linestyle   {space 3}p}{it:#}{cmd:bar}  {space 3}{it:{help linestyle_zh}}}
	第 # 个条形图的 {it:linestyle} {p_end}
{p2col:{cmd:shadestyle  {space 2}p}{it:#}{cmd:bar}  {space 3}{it:{help shadestyle_zh}}}
	第 # 个条形图的 {it:shadestyle} {p_end}
{p2col:{cmd:areastyle   {space 3}p}{it:#}{cmd:bar}  {space 3}{it:{help areastyle_zh}}}
	第 # 个条形图的 {it:areastyle} {p_end}
{p2col:{cmd:seriesstyle {space 1}p}{it:#}{cmd:bar}  {space 3}{it:{help pstyle_zh}}}
	第 # 个条形图的 {it:pstyle} {p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_bar_plots.sthlp>}