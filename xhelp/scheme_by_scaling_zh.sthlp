{smcl}
{* *! version 1.0.3  01mar2017}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_by_scaling:English Version}
{hline}{...}
{title:按图表、图表组合和图表矩阵的比例缩放}

{p 3 3 2}
这些条目控制随着绘制图表数量增加，文本、标记和线宽的缩放（减小）速率，用于 {help by_option_zh:graph, by()}; {helpb graph combine}; 和 {helpb graph matrix}。

{p 3 3 2}
这些是高级且很少使用的方案文件条目。{p_end}

{p2colset 4 29 32 0}{...}
{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:special by_slope1}      {space 5}{it:#}}
	对于 {cmd:by} 图表的节点之前的缩放速率 (1){p_end}
{p2col:{cmd:special by_knot1}      {space 6}{it:#}}
	对于 {cmd:by} 图表，缩放从 slope1 变为 slope2 的点(3){p_end}
{p2col:{cmd:special by_slope2}      {space 5}{it:#}}
	对于 {cmd:by} 图表的节点之后的缩放速率 (1){p_end}
{p2col:{cmd:special combine_slope1}  {space 0}{it:#}}
	对于 {cmd:graph combine} 的节点之前的缩放速率 (1){p_end}
{p2col:{cmd:special combine_knot1}   {space 1}{it:#}}
	对于 {cmd:graph combine}，缩放从 slope1 变为 slope2 的点(1){p_end}
{p2col:{cmd:special combine_slope2}  {space 0}{it:#}}
	对于 {cmd:graph combine} 的节点之后的缩放速率 (1){p_end}
{p2col:{cmd:special matrix_slope1}   {space 1}{it:#}}
	对于 {cmd:graph matrix} 的节点之前的缩放速率 (1){p_end}
{p2col:{cmd:special matrix_knot1}    {space 2}{it:#}}
	对于 {cmd:graph matrix}，缩放从 slope1 变为 slope2 的点(2){p_end}
{p2col:{cmd:special matrix_slope2}   {space 1}{it:#}}
	对于 {cmd:graph matrix} 的节点之后的缩放速率 (1){p_end}
{p2line}
{p 3 7 2}
(1) 通常，对于斜率，0<{it:#}<1，0 表示不缩放，1 表示几乎直接按绘制图表数量的平方根取天花板值缩放。{p_end}
{p 3 7 2}
(2) 当绘制图表的数量的平方根的天花板超过节点值时，缩放速率将从 slope1 变为 slope2。{p_end}
{p2colreset}{...}

{p 3 3 2}
缩放因子的公式基于斜率和节点的样条。设

	s1 = slope1
	s2 = slope2
	k  = knot
	n  = ceiling(sqrt(number_of_graphs))

{p 3 3 2}
缩放因子为

{p 8 12 4}
	s = 1 - s1(n-1)/n + indicator(n>k)(s2-s1)(n-k)/n

{p 3 3 2}
其中 s 是未缩放大小的比例。s 接近 0 表示非常小的尺寸，而 s=1 表示不缩放。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_by_scaling.sthlp>}