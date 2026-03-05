{smcl}
{* *! version 1.0.3  11feb2011}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_graph_shared:English Version}
{hline}{...}
{title:跨图形系列共享的方案条目}

{p 3 3 2}
一些影响所有图形构建的设置如下表所示。此外，请参见以下许多方案使用的常见和共享组合条目定义。

{p 8 12 4}{help scheme plotregion def:绘图区域的区域样式}{p_end}
{p 8 12 4}{help scheme labels:标签和小标签}{p_end}
{p 8 12 4}{help scheme textbox common:文本框}{p_end}
{p 8 12 4}{help scheme foreground def:前景样式定义}{p_end}
{p 8 12 4}{help scheme background def:背景样式定义}{p_end}

{p2colset 4 41 44 0}
{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:graphsize   {space 2}y}            {space 11}{it:#}}
	可用图形区域的高度（以英寸为单位）{p_end}
{p2col:{cmd:graphsize   {space 2}x}            {space 11}{it:#}}
	可用图形区域的宽度（以英寸为单位）{p_end}

{p2col:{cmd:margin      {space 5}graph}        {space 7}{it:{help marginstyle_zh}}}
	图形周围的边距{p_end}

{p2col:{cmd:areastyle   {space 2}graph}        {space 7}{it:{help areastyle_zh}}}
	除{helpb graph combine:combine}、{help by_option_zh:by}和
	{helpb graph pie:pie}以外的图形的整体图形区域；通常默认值是 
	{helpb scheme background def:background}.{p_end}
{p2col:{cmd:areastyle   {space 2}inner_graph}  {space 1}{it:{help areastyle_zh}}}
	除{helpb graph combine:combine}、{help by_option_zh:by}和
	{helpb graph pie:pie}以外的图形的内部图形区域；通常默认值是 {cmd:none}{p_end}

{p2col:{cmd:numstyle    {space 3}graph_aspect} {space 0}{it:#}}
        图形绘图区域的纵横比，纵横比定义为绘图区域的高度除以绘图区域的宽度（因此，1意味着方形绘图区域）；0是通常的默认值，指定纵横比将调整以最大化绘图区域的高度和宽度{p_end}
{p2col:{cmd:compass2dir {space 0}graph_aspect} {space 0}{it:{help compassdirstyle_zh}}}
        当纵横比在水平或垂直维度留下额外空间时绘图区域的位置；通常默认值是 {cmd:center}{p_end}

{p2col:{cmd:numstyle    {space 3}pcycle}       {space 7}{it:#}}
        绘图的 {help pstyle_zh} 会被回收，并在绘制超过 {it:#} 个图时重新开始于 {cmd:p1}；大多数 {help schemes_zh} 的默认值为 15{p_end}
{p2line}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_graph_shared.sthlp>}