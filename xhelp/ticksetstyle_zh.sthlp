{smcl}
{* *! version 1.1.6  19oct2017}{...}
{vieweralsosee "[G-4] ticksetstyle" "mansection G-4 ticksetstyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] gridstyle" "help gridstyle_zh"}{...}
{vieweralsosee "[G-4] tickstyle" "help tickstyle_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "scheme files" "help scheme files"}{...}
{viewerjumpto "Syntax" "ticksetstyle_zh##syntax"}{...}
{viewerjumpto "Description" "ticksetstyle_zh##description"}
{help ticksetstyle:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[G-4]} {it:ticksetstyle} {hline 2}}轴刻度的整体外观选择{p_end}
{p2col:}({mansection G-4 ticksetstyle:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 25}{...}
{p2col:{it:ticksetstyle}}描述{p_end}
{p2line}
{p2col:{cmd:major_horiz_default}}水平轴的默认主要刻度集，包括刻度和标签，但没有网格{p_end}
{p2col:{cmd:major_horiz_withgrid}}水平轴的主要刻度集，包括网格{p_end}
{p2col:{cmd:major_horiz_nolabel}}水平轴的主要刻度集，包括刻度但没有标签{p_end}
{p2col:{cmd:major_horiz_notick}}水平轴的主要刻度集，包括标签但没有刻度{p_end}

{p2col:{cmd:major_vert_default}}垂直轴的默认主要刻度集，包括刻度和标签，但没有网格{p_end}
{p2col:{cmd:major_vert_withgrid}}垂直轴的主要刻度集，包括网格{p_end}
{p2col:{cmd:major_vert_nolabel}}垂直轴的主要刻度集，包括刻度但没有标签{p_end}
{p2col:{cmd:major_vert_notick}}垂直轴的主要刻度集，包括标签但没有刻度{p_end}

{p2col:{cmd:minor_horiz_default}}水平轴的默认次要刻度集，包括刻度和标签，但没有网格{p_end}
{p2col:{cmd:minor_horiz_nolabel}}水平轴的次要刻度集，包括刻度但没有标签{p_end}
{p2col:{cmd:minor_horiz_notick}}水平轴的次要刻度集，包括标签但没有刻度{p_end}

{p2col:{cmd:minor_vert_default}}垂直轴的默认次要刻度集，包括刻度和标签，但没有网格{p_end}
{p2col:{cmd:minor_vert_nolabel}}垂直轴的次要刻度集，包括刻度但没有标签{p_end}
{p2col:{cmd:minor_vert_notick}}垂直轴的次要刻度集，包括标签但没有刻度{p_end}
{p2line}
{p2colreset}{...}

{pstd}
其他 {it:ticksetstyles} 可能可用；输入

	    {cmd:.} {bf:{stata graph query ticksetstyle}}

{pstd}
以获取在您计算机上安装的 {it:ticksetstyles} 的完整列表。


{marker description}{...}
{title:描述}

{pstd}
刻度样式仅在方案文件中使用（参见 {help scheme files}），并且无法通过 {help graph_zh} 命令访问。

{pstd}
{it:ticksetstyle} 是一种复合样式，包含并设置轴上刻度组的所有属性，包括刻度和刻度标签的外观（参见 {manhelp tickstyle G-4}）、刻度的默认数量、刻度的角度、标签与轴的距离是否交替及其交替距离的大小、与刻度集相关的 {it:gridstyle} （参见 {manhelpi gridstyle G-4}），以及刻度是否有标签。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ticksetstyle.sthlp>}