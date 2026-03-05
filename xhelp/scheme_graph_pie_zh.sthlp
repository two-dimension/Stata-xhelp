{smcl}
{* *! version 1.0.3  11feb2011}{...}
{vieweralsosee "scheme graph shared" "help scheme graph shared"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_graph_pie:English Version}
{hline}{...}
{title:饼图的方案条目}

{p 3 3 2}
这些设置控制通过 {helpb graph pie} 创建的图形的整体外观。

{p 3 3 2}
条目分为以下几个部分：

{p 8 12 0}{help scheme_graph_pie##remarks1:图形区域}{p_end}
{p 8 12 0}{help scheme_graph_pie##remarks2:绘图区域}{p_end}
{p 8 12 0}{help scheme_graph_pie##remarks3:图形的构造}

{p 3 3 2}
有关控制通过 {cmd:graph pie} 绘制的饼图切片外观的条目，请参见 {help scheme pie plots}。此外，饼图与所有其他图形共享一些外观特征；查看 {help scheme graph shared} 以更改这些设置。


{marker remarks1}{...}
{title:图形区域}

{p2colset 4 44 47 0}{...}
{p 3 3 2}
这些复合条目指定绘制整个饼图的区域的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:areastyle {space 0}piegraph}       {space 6}{it:{help areastyle_zh}}}
	整体图形区域；通常默认值为 {cmd:background}{p_end}
{p2col:{cmd:areastyle {space 0}inner_piegraph} {space 0}{it:{help areastyle_zh}}}
	内部图形区域；通常默认值为 {cmd:none}{p_end}
{p2col:{cmd:margin    {space 3}piegraph}       {space 6}{it:{help marginstyle_zh}}}
	整体与内部图形之间的边距{p_end}
{p2line}


{marker remarks2}{...}
{title:绘图区域}

{p2colset 4 52 55 0}{...}
{p 3 3 2}
这些条目指定饼图的绘图区域的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:areastyle       {space 0}piegraph_region}        {space 8}{it:{help areastyle_zh}}}
	整体绘图区域的区域样式；通常默认值为 {cmd:none} (*){p_end}
{p2col:{cmd:areastyle       {space 0}inner_pieregion}        {space 8}{it:{help areastyle_zh}}}
	内部绘图区域的区域样式；通常默认值为 {cmd:none} (*){p_end}
{p2col:{cmd:margin          {space 11}piegraph_region} {space 0}{it:{help marginstyle_zh}}}
	绘图区域的边距{p_end}
{p2col:{cmd:plotregionstyle {space 2}piegraph}    {space 3}{it:{help plotregionstyle_zh}}}
	内部区域 (*){p_end}
{p2line}
{p 3 7 0}(*) 复合条目。


{marker remarks3}{...}
{title:图形的构造}

{p2colset 4 37 40 0}{...}
{p 3 3 2}
此复合条目控制饼图的整体外观和构造，通常不进行更改。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:piegraphstyle piegraph}    {space 1}{it:{help bystyle_zh}}}
	整体样式{p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_graph_pie.sthlp>}