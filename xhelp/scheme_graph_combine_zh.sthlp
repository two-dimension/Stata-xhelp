{smcl}
{* *! version 1.0.3  11feb2011}{...}
{vieweralsosee "scheme graph shared" "help scheme graph shared"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_graph_combine:English Version}
{hline}{...}
{title:图形组合的方案条目}

{p 3 3 2}
这些设置控制由 {helpb graph combine} 创建的图形的整体外观。

{p 3 3 2}
条目根据以下标题呈现：

{p 8 12 0}{help scheme_graph_combine##remarks1:图形区域}{p_end}
{p 8 12 0}{help scheme_graph_combine##remarks2:绘图区域}{p_end}
{p 8 12 0}{help scheme_graph_combine##remarks3:图形构造}

{p 3 3 2}
此外，组合图形的一些外观特征与其他所有图形共享；请参阅 {help scheme graph shared} 以更改这些设置。

{marker remarks1}{...}
{title:图形区域}

{p2colset 4 44 47 0}{...}
{p 3 3 2}
这些复合条目指定绘制整个组合图形的区域的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:areastyle combinegraph}       {space 6}{it:{help areastyle_zh}}}
	整体图形区域；通常默认为 {cmd:background}{p_end}
{p2col:{cmd:areastyle combinegraph_inner} {space 0}{it:{help areastyle_zh}}}
	内部图形区域；通常默认为 {cmd:none}{p_end}
{p2line}

{marker remarks2}{...}
{title:绘图区域}

{p2colset 4 52 55 0}{...}
{p 3 3 2}
这些条目指定组合图形的绘图区域的外观。对于 {helpb graph combine}，绘图区域是绘制单个图形的区域。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:areastyle       {space 0}combinegraph_plotregion}  {space 1}{it:{help areastyle_zh}}}
	整体绘图区域的样式；通常默认的 {it:areastyle} 是 {cmd:none} (*){p_end}
{p2col:{cmd:areastyle       {space 0}combinegraph_iplotregion} {space 0}{it:{help areastyle_zh}}}
	内部绘图区域样式；通常默认为 {cmd:none} (*){p_end}
{p2col:{cmd:margin          {space 11}combinegraph}    {space 1}{it:{help marginstyle_zh}}}
	绘图区域边距{p_end}
{p2col:{cmd:plotregionstyle {space 2}combinegraph}  {space 1}{it:{help plotregionstyle_zh}}}
	整体样式 (*){p_end}
{p2col:{cmd:plotregionstyle {space 2}combineregion} {space 0}{it:{help plotregionstyle_zh}}}
	内部区域 (*){p_end}
{p2line}
{p 3 7 0}(*) 复合条目。

{marker remarks3}{...}
{title:图形构造}

{p2colset 4 37 40 0}{...}
{p 3 3 2}
此复合条目控制组合图形的整体外观和构造，通常很少更改。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:bygraphstyle combine}    {space 3}{it:{help bystyle_zh}}}
	整体样式{p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_graph_combine.sthlp>}