{smcl}
{* *! version 1.0.4  11feb2011}{...}
{vieweralsosee "scheme shared plots" "help scheme shared plots"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_pie_plot:English Version}
{hline}{...}
{title:饼图方案条目}

{p 3 3 2}
这些图形方案条目控制 {helpb graph pie} 饼图的外观。有关条目的讨论，请参见 {it:{help scheme_files##remarks3:Plot entries}} 中的 {help scheme files} 。

{p 3 3 2}
条目按以下标题呈现：

{p 8 12 0}{help scheme_pie_plot##remarks1:主要饼图条目}{p_end}
{p 8 12 0}{help scheme_pie_plot##remarks2:饼图切片的复合条目}{p_end}

{marker remarks1}{...}
{title:饼图方案条目}

{p2colset 4 45 48 0}{...}
{p 3 3 2}
这些条目通常用于改变饼片的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:color       {space 6}p}{it:#}{cmd:pie}     {space 5}{it:{help colorstyle_zh}}}
	第 # 个饼片的填充颜色{p_end}
{p2col:{cmd:intensity   {space 2}}{cmd:pie}            {space 7}{it:{help intensitystyle_zh}}}
	所有饼片的填充强度{p_end}

{p2col:{cmd:linewidth   {space 2}pie}                  {space 7}{it:{help linewidthstyle_zh:linewidth}}}
	所有饼片的轮廓厚度{p_end}
{p2col:{cmd:color       {space 6}p}{it:#}{cmd:pieline} {space 1}{it:{help colorstyle_zh}}}
	第 # 个饼片的轮廓颜色{p_end}

{p2col:{cmd:gsize       {space 6}pielabel_gap} {space 0}{it:{help textsizestyle_zh}}}
	饼图标签距饼心的距离{p_end}
{p2col:{cmd:gsize       {space 6}pie_explode}  {space 1}{it:{help textsizestyle_zh}}}
	饼片的爆炸距离{p_end}

{p2col:{cmd:numstyle    {space 3}pie_angle}            {space 1}{it:#}}
	开始绘制第一个饼片的角度{p_end}
{p2col:{cmd:yesno       {space 6}pie_clockwise}        {space 0}{{cmd:yes}|{cmd:no}}}
	 饼片按顺时针（{cmd:yes}）或逆时针（{cmd:no)} 顺序绘制{p_end}
{p2line}

{p 3 3 2}
如果某个方案不包含上述某些饼图特定条目，则饼片的这些元素的外观将由与所有图类型共享的默认条目决定；请参见 {help scheme shared plots} 。

{marker remarks2}{...}
{title:饼图切片的复合条目}

{p2colset 4 40 43 0}{...}
{p 3 3 2}
对于随 Stata 附带的大多数方案，这些复合条目的样式为 {cmd:p}{it:#}{cmd:pie}，其中 {it:#} 是图表的编号；在这种情况下，上表中显示的单独属性条目控制饼片的特性。然而，如果更改了复合条目的样式，则可能还会更改影响条形图的单独属性条目。有关详细讨论，请参见 {it:{help scheme_files##remarks4:Composite entries}} 中的 {help scheme files} 。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:textboxstyle {space 0}{cmd:pielabel}   {space 0}{it:{help textboxstyle_zh}}}}
	所有饼片标签的 {it:textstyle}；对于大多数方案，{it:textstyle} 为 {helpb scheme labels:small_label} 。{p_end}
{p2col:{cmd:linestyle    {space 3}}{cmd:pie_line}      {space 0}{it:{help linestyle_zh}}}
	所有饼片的轮廓样式{p_end}
{p2col:{cmd:shadestyle   {space 2}p}{it:#}{cmd:pie}    {space 3}{it:{help shadestyle_zh}}}
	第 # 个饼片的 {it:shadestyle}{p_end}
{p2col:{cmd:areastyle    {space 3}p}{it:#}{cmd:pie}    {space 3}{it:{help areastyle_zh}}}
	第 # 个饼片的 {it:areastyle}{p_end}
{p2col:{cmd:seriesstyle  {space 1}p}{it:#}{cmd:pie}    {space 3}{it:{help pstyle_zh}}}
	第 # 个饼片的 {it:pstyle}{p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_pie_plot.sthlp>}