{smcl}
{* *! version 1.0.3  11feb2011}{...}
{vieweralsosee "scheme area plots" "help scheme area plots"}{...}
{vieweralsosee "scheme bar plots" "help scheme bar plots"}{...}
{vieweralsosee "scheme connected plots" "help scheme connected plots"}{...}
{vieweralsosee "scheme histogram plots" "help scheme histogram plots"}{...}
{vieweralsosee "scheme line plots" "help scheme line plots"}{...}
{vieweralsosee "scheme scatter plots" "help scheme scatter plots"}{...}
{vieweralsosee "scheme sunflower plots" "help scheme sunflower plots"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "scheme graph shared" "help scheme graph shared"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_graph_twoway:English Version}
{hline}{...}
{title:控制 twoway 绘制图形的方案条目}

{p 3 3 2}
这些设置控制了使用 {helpb twoway} 绘制的图形的整体外观。

{p 3 3 2}
有关控制 {cmd:twoway} 绘制的散点图、线图和其他图形外观的条目，请参见以下内容：

{p 16 20 4}{help scheme scatter plots:散点图}{p_end}
{p 16 20 4}{help scheme connected plots:连接标记图}{p_end}
{p 16 20 4}{help scheme line plots:线图}{p_end}
{p 16 20 4}{help scheme area plots:区域图}{p_end}
{p 16 20 4}{help scheme bar plots:柱形图}{p_end}
{p 16 20 4}{help scheme sunflower plots:向日葵图}{p_end}
{p 16 20 4}{help scheme histogram plots:直方图}{p_end}

{p 3 3 2}
此外，twoway 图形的一些外观特征与所有其他图形共享；请参见 {help scheme graph shared} 以更改这些设置。

{space 3}{title:twoway 的绘图区域}
{p2colset 4 49 52 0}
{p 3 3 2}
这些条目指定了 {helpb twoway} 的绘图区域外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:areastyle       {space 0}twoway_plotregion}  {space 1}{it:{help areastyle_zh}}}
	整体绘图区域样式；通常默认 {it:areastyle} 为 
	{helpb scheme plotregion def:plotregion} (*){p_end}
{p2col:{cmd:areastyle       {space 0}twoway_iplotregion} {space 0}{it:{help areastyle_zh}}}
	内部绘图区域样式；通常默认为 {cmd:none} (*){p_end}
{p2col:{cmd:margin          {space 10}plotregion}       {space 1}{it:{help marginstyle_zh}}}
	绘图区域边距{p_end}
{p2col:{cmd:plotregionstyle {space 1}twoway}      {space 5}{it:{help plotregionstyle_zh}}}
	绘图区域整体样式；通常默认为 {cmd:plotregion} (*){p_end}
{p2col:{cmd:plotregionstyle {space 1}transparent} {space 0}{it:{help plotregionstyle_zh}}}
	重叠绘图区域的绘图区域样式；很少更改 (*){p_end}
{p2line}
{p 3 7 0}(*) 复合条目。{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_graph_twoway.sthlp>}