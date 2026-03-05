{smcl}
{* *! version 1.0.4  11feb2011}{...}
{vieweralsosee "scheme files" "help scheme files"}{...}
{vieweralsosee "scheme shared plots" "help scheme shared plots"}
{help scheme_area_plots:English Version}
{hline}{...}
{title:区域图方案条目}

{p 3 3 2}
这些图形方案条目控制 {helpb twoway area} 图的外观。
有关图表条目的一般讨论，请参见 {it:{help scheme_files##remarks3:图表条目}} 中的 {help scheme files}。

{p 3 3 2}
条目根据以下标题呈现：

{p 8 12 0}{help scheme_area_plots##remarks1:主要区域图条目}{p_end}
{p 8 12 0}{help scheme_area_plots##remarks2:区域图的复合条目}{p_end}


{marker remarks1}{...}
{title:主要区域图条目}

{p2colset 4 45 48 0}{...}
{p 3 3 2}
这些条目最常用于改变区域图的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:color       {space 6}p}{it:#}{cmd:area}     {space 5}{it:{help colorstyle_zh}}}
	第 # 个区域图的填充颜色{p_end}
{p2col:{cmd:intensity   {space 2}p}{it:#}{cmd:area}     {space 5}{it:{help intensitystyle_zh}}}
	第 # 个区域图的填充强度{p_end}

{p2col:{cmd:linewidth   {space 2}p}{it:#}{cmd:area}     {space 5}{it:{help linewidthstyle_zh:linewidth}}}
	第 # 个区域图的轮廓厚度{p_end}
{p2col:{cmd:linepattern {space 0}p}{it:#}{cmd:area}     {space 5}{it:{help linepatternstyle_zh}}}
	第 # 个区域图的轮廓样式{p_end}
{p2col:{cmd:color       {space 6}p}{it:#}{cmd:arealine} {space 1}{it:{help colorstyle_zh}}}
	第 # 个区域图的轮廓颜色{p_end}
{p2line}

{p 3 3 2}
如果方案不包含上述某些特定于区域图的条目，则这些区域图元素的外观将由所有绘图类型共享的默认条目决定；请参见 {help scheme shared plots}。


{marker remarks2}{...}
{title:区域图的复合条目}

{p2colset 4 42 45 0}{...}
{p 3 3 2}
对于随 Stata 一起提供的大多数方案，这些复合条目的样式为 {cmd:p}{it:#}{cmd:area}（其中 {it:#} 是图的编号），在这种情况下，上述表中显示的各个属性条目控制区域图的特性。然而，如果复合条目的样式发生变化，那么影响区域图的各个属性条目也可能会发生变化。有关详细讨论，请参见 {it:{help scheme_files##remarks4:复合条目}} 中的 {help scheme files}。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:linestyle   {space 2}p}{it:#}{cmd:area} {space 1}{it:{help linestyle_zh}}}
	第 # 个区域图的 {it:linestyle}{p_end}
{p2col:{cmd:shadestyle  {space 1}p}{it:#}{cmd:area} {space 1}{it:{help shadestyle_zh}}}
	第 # 个区域图的 {it:shadestyle}{p_end}
{p2col:{cmd:areastyle   {space 2}p}{it:#}{cmd:area}  {space 1}{it:{help areastyle_zh}}}
	第 # 个区域图的 {it:areastyle}{p_end}
{p2col:{cmd:seriesstyle {space 0}p}{it:#}{cmd:area}  {space 1}{it:{help pstyle_zh}}}
	第 # 个区域图的 {it:pstyle}{p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_area_plots.sthlp>}