{smcl}
{* *! version 1.0.3  11feb2011}{...}
{vieweralsosee "方案箱型图" "help scheme box plots"}{...}
{vieweralsosee "方案图形共享" "help scheme graph shared"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "方案文件" "help scheme files"}
{help scheme_graph_box:English Version}
{hline}{...}
{title:控制 box 图绘制的方案条目}

{p 3 3 2}
这些设置控制通过 {helpb graph box} 和 {helpb graph hbox} 绘制图形的整体外观。

{p 3 3 2}
条目分为以下几个部分：

{p 8 12 0}{help scheme_graph_box##remarks1:图箱的绘图区域}{p_end}
{p 8 12 0}{help scheme_graph_box##remarks3:图 hbox 的绘图区域}{p_end}
{p 8 12 0}{help scheme_graph_box##remarks3:箱子之间的间距}{p_end}

{p 3 3 2}
有关控制 {cmd:graph box} 和 {cmd:graph hbox} 绘制的箱子外观的条目，请参见 {help scheme box plots}。此外，条形图的某些外观特征与所有其他图形共享；要更改这些设置，请参见 {help scheme graph shared}。


{marker remarks1}{...}
{space 3}{title:图 box 的绘图区域}

{p2colset 4 49 52 0}{...}
{p 3 3 2}
这些条目指定 {helpb graph box} 的绘图区域外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:areastyle       {space 0}box_plotregion}     {space 4}{it:{help areastyle_zh}}}
	整体绘图区域样式；
	通常默认的 {it:areastyle} 是 
	{helpb scheme plotregion def:plotregion} (*){p_end}
{p2col:{cmd:areastyle       {space 0}box_iplotregion}    {space 3}{it:{help areastyle_zh}}}
	内部绘图区域样式；通常默认值为 {cmd:none} (*){p_end}
{p2col:{cmd:margin          {space 9}boxgraph}          {space 4}{it:{help marginstyle_zh}}}
	绘图区域边距{p_end}
{p2col:{cmd:plotregionstyle {space 0}boxgraph}    {space 4}{it:{help plotregionstyle_zh}}}
	绘图区域整体样式；通常默认值为 {cmd:plotregion} (*){p_end}
{p2line}
{p 3 7 0}(*) 复合条目。


{marker remarks2}{...}
{space 3}{title:图 hbox 的绘图区域}

{p2colset 4 49 52 0}{...}
{p 3 3 2}
这些条目指定 {helpb graph hbox} 的绘图区域外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:areastyle       {space 0}hbox_plotregion}    {space 3}{it:{help areastyle_zh}}}
	整体绘图区域样式 (*){p_end}
{p2col:{cmd:areastyle       {space 0}hbox_iplotregion}   {space 2}{it:{help areastyle_zh}}}
	内部绘图区域样式 (*){p_end}
{p2col:{cmd:margin          {space 9}hboxgraph}    {space 3}{it:{help marginstyle_zh}}}
	绘图区域边距{p_end}
{p2col:{cmd:plotregionstyle {space 0}hboxgraph}   {space 3}{it:{help plotregionstyle_zh}}}
	绘图区域整体样式 (*){p_end}
{p2line}
{p 3 7 0}(*) 复合条目。


{marker remarks3}{...}
{title:箱子之间的间距}

{p2colset 4 32 35 0}{...}
{p 3 3 2}
这些条目指定箱子之间间距的大小。所有 {it:#} 的值均为箱子宽度的百分比。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:relsize box_gap}      {space 8}{it:#}}
	不属于 {cmd:over()} 组的箱子之间的距离{p_end}
{p2col:{cmd:relsize box_groupgap} {space 3}{it:#}}
	第一个 {cmd:over()} 组中箱子之间的距离{p_end}
{p2col:{cmd:relsize box_supgroupgap} {space 0}{it:#}}
	第二个 {cmd:over()} 组中箱子之间的距离{p_end}
{p2col:{cmd:relsize box_outergap} {space 3}{it:#}}
	最外层箱子与绘图区域的左侧和右侧边界之间的距离{p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_graph_box.sthlp>}