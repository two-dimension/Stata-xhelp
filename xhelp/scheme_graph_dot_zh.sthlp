{smcl}
{* *! version 1.0.4  01mar2017}{...}
{vieweralsosee "方案点图" "help scheme dot plots"}{...}
{vieweralsosee "方案图共享" "help scheme graph shared"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "方案文件" "help scheme files"}
{help scheme_graph_dot:English Version}
{hline}{...}
{title:控制通过 graph dot 绘制的图形的方案条目}

{p 3 3 2}
这些设置控制使用 {helpb graph dot} 绘制的图形的整体外观。

{p 3 3 2}
条目按以下标题呈现：

{p 8 12 0}{help scheme_graph_dot##remarks1:graph dot 的绘图区域}{p_end}
{p 8 12 0}{help scheme_graph_dot##remarks2:点线之间的间隙}{p_end}
{p 8 12 0}{help scheme_graph_dot##remarks3:点线的外观}{p_end}
{p 8 12 0}{help scheme_graph_dot##remarks4:点图组的整体外观}{p_end}

{p 3 3 2}
有关控制 {cmd:graph dot} 绘制的标记外观的条目，请参见 {help scheme dot plots}。此外，点图的外观特点也与所有其他图形共享；有关更改这些设置，请参见 {help scheme graph shared}。

{marker remarks1}{...}
{space 3}{title:graph dot 的绘图区域}

{p2colset 4 49 52 0}{...}
{p 3 3 2}
这些条目指定 {helpb graph dot} 的绘图区域的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:areastyle       {space 0}dot_plotregion}     {space 4}{it:{help areastyle_zh}}}
	整体绘图区域样式；
	通常默认的 {it:areastyle} 为 
	{helpb scheme plotregion def:plotregion} (*){p_end}
{p2col:{cmd:areastyle       {space 0}dot_iplotregion}    {space 3}{it:{help areastyle_zh}}}
	内部绘图区域样式；通常默认为 {cmd:none} (*){p_end}
{p2col:{cmd:margin          {space 9}dotgraph}          {space 4}{it:{help marginstyle_zh}}}
	绘图区域边距{p_end}
{p2col:{cmd:plotregionstyle {space 0}dotgraph}    {space 4}{it:{help plotregionstyle_zh}}}
	绘图区域整体样式；通常默认为 {cmd:plotregion} (*){p_end}
{p2line}
{p 3 7 0}(*) 复合条目。


{marker remarks2}{...}
{title:点线之间的间隙}

{p2colset 4 32 35 0}{...}
{p 3 3 2}
这些条目指定点线之间的间隙大小。点线占据的区域类似于条形图中条的区域。所有 {it:#} 的值都是该点区域宽度的百分比。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:relsize dot_gap}      {space 8}{it:#}}
	不在 {cmd:over()} 组中的点线之间的距离{p_end}
{p2col:{cmd:relsize dot_groupgap} {space 3}{it:#}}
	第一 {cmd:over()} 组中的点线之间的距离{p_end}
{p2col:{cmd:relsize dot_supgroupgap} {space 0}{it:#}}
	第二 {cmd:over()} 组中的点线之间的距离{p_end}
{p2col:{cmd:relsize dot_outergap} {space 3}{it:#}}
	最外层点线与绘图区域左右边界之间的距离{p_end}
{p2line}


{marker remarks3}{...}
{title:点线的外观}

{p2colset 4 47 50 0}{...}
{p 3 3 2}
这些条目指定为每个类别绘制的标尺线或点线的类型和外观。

{p 3 3 2}
绘制的“标尺”或点线的类型由 {cmd:dottypestyle dot} 条目确定，其 {it:dotstyle} 可能为 {cmd:dot}、{cmd:line} 或 {cmd:rectangle}。如果该设置为 {cmd:dot}，则使用指定标记特性的条目的分组；如果为 {cmd:line}，则使用指定线特性的分组；如果为 {cmd:rectangle}，则使用矩形的区域和线条条目。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:dottypestyle {space 0}dot}          {space 9}{it:dotstyle}} 
	点线（或标尺）的外观； {it:dotstyle} 可为 {cmd:dot}、{cmd:line} 或 {cmd:rectangle}；可能有其他样式可用，输入 {break} {stata graph query dottypestyle} 查看可用的 {it:dotstyles}{p_end}

{p2col:{cmd:numstyle    {space 3}dot_num_dots}  {space 1}{it:#}}
	用于填充点线的点的数量{p_end}
{p2col:{cmd:color       {space 6}dots}          {space 9}{it:{help colorstyle_zh}}}
	点线标记的填充颜色{p_end}
{p2col:{cmd:color       {space 6}dotmarkline}   {space 2}{it:{help colorstyle_zh}}}
	点线标记的轮廓颜色{p_end}
{p2col:{cmd:linewidth   {space 2}dotmark}       {space 6}{it:{help linewidthstyle_zh:linewidth}}}
	点线的标记轮廓厚度{p_end}
{p2col:{cmd:symbolsize  {space 1}dots}          {space 9}{it:{help markersizestyle_zh}}}
	点线的标记大小{p_end}
{p2col:{cmd:symbol      {space 5}dots}          {space 9}{it:{help symbolstyle_zh}}}
	点线上的点使用的符号{p_end}
{p2col:{cmd:linestyle   {space 2}dotmark}       {space 6}{it:{help linestyle_zh}}}
	点线的标记轮廓样式 (*){p_end}
{p2col:{cmd:markerstyle {space 0}dots}          {space 9}{it:{help markerstyle_zh}}}
	点线的标记样式 (*){p_end}

{p2col:{cmd:linewidth   {space 2}dot_line}      {space 5}{it:{help linewidthstyle_zh:linewidth}}}
	线型点线的线条厚度{p_end}
{p2col:{cmd:color       {space 6}dot_line}      {space 5}{it:{help colorstyle_zh}}}
	线型点线的颜色{p_end}
{p2col:{cmd:linestyle   {space 2}dotchart}      {space 5}{it:{help linestyle_zh}}}
	有时用于表示点线的 {it:linestyle} (*){p_end}

{p2col:{cmd:gsize       {space 6}dot_rectangle} {space 0}{it:{help textsizestyle_zh}}}
	矩形类型点线的矩形宽度{p_end}
{p2col:{cmd:color       {space 6}dot_arealine}  {space 1}{it:{help colorstyle_zh}}}
	矩形类型点线的轮廓颜色{p_end}
{p2col:{cmd:color       {space 6}dot_area} {space 6}{it:{help colorstyle_zh}}}
	矩形类型点线的填充颜色{p_end}
{p2col:{cmd:intensity   {space 2}dot_area}      {space 5}{it:{help intensitystyle_zh}}}
	矩形类型点线的填充矩形的 {it:intensitystyle}{p_end}
{p2col:{cmd:linewidth   {space 2}dot_area}      {space 5}{it:{help linewidthstyle_zh:linewidth}}}
	矩形类型点线的轮廓厚度{p_end}
{p2col:{cmd:linepattern {space 0}dot_area}      {space 5}{it:{help linepatternstyle_zh}}}
	矩形类型点线的轮廓图案{p_end}
{p2col:{cmd:shadestyle  {space 1}dotchart}      {space 5}{it:{help shadestyle_zh}}}
	矩形类型点线的填充的 {it:shadestyle} (*){p_end}
{p2col:{cmd:linestyle   {space 2}dotchart_area} {space 0}{it:{help linestyle_zh}}}
	矩形类型点线的轮廓样式 (*){p_end}
{p2col:{cmd:areastyle   {space 2}dotchart}      {space 5}{it:{help areastyle_zh}}}
	通过 {cmd:graph dot} 的矩形类型点线的 {it:areastyle} (*){p_end}

{p2col:{cmd:yesno       {space 6}extend_dots}      {space 4}{{cmd:yes}|{cmd:no}}}
	将点线延伸通过绘图区域边距到绘图区域的边界框 ({cmd:yes})，或者仅延伸到绘图区域的下内边距 ({cmd:no}){p_end}
{p2col:{cmd:numstyle    {space 3}dot_extend_high} {space 0}{{cmd:0}|{cmd:1}}}
	是否将点线延伸通过 {help region_options_zh:plotregion} 的右边距{p_end}
{p2col:{cmd:numstyle    {space 3}dot_extend_low}   {space 1}{{cmd:0}|{cmd:1}}}
	是否将点线延伸通过 {help region_options_zh:plotregion} 的左边距{p_end}
{p2line}
{p 3 7 0}(*) 复合条目。


{marker remarks4}{...}
{title:点图组的整体外观}

{p2colset 4 37 40 0}{...}
{p 3 3 2}
该复合条目控制点图组的整体外观。应该很少更改；相反，您应该更改其他条目中的各个元素。{break} 输入 {bf:{stata graph query barstyle}} 查看可用的 {it:barstyle} 选项。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:barstyle dot}       {space 2}{it:barstyle}}
	点线组的整体外观{p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_graph_dot.sthlp>}