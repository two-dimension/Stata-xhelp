{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[G-4] gridstyle" "mansection G-4 gridstyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] axis_label_options" "help axis_label_options_zh"}{...}
{viewerjumpto "Syntax" "gridstyle_zh##syntax"}{...}
{viewerjumpto "Description" "gridstyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "gridstyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "gridstyle_zh##remarks"}
{help gridstyle:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[G-4]} {it:gridstyle} {hline 2}}网格线整体外观的选择{p_end}
{p2col:}({mansection G-4 gridstyle:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 15}{...}
{p2col:{it:gridstyle}}描述{p_end}
{p2line}
{p2col:{cmd:default}}由方案决定{p_end}
{p2col:{cmd:major}}由方案决定； {cmd:default} 或更粗{p_end}
{p2col:{cmd:minor}}由方案决定； {cmd:default} 或更淡{p_end}
{p2col:{cmd:dot}}点状线{p_end}
{p2line}
{p2colreset}{...}

{p 4 4 2}
其他的 {it:gridstyles} 可能会被提供；输入

	    {cmd:.} {bf:{stata graph query gridstyle}}

{p 4 4 2}
以获取您计算机上安装的 {it:gridstyles} 的完整列表。


{marker description}{...}
{title:描述}

{pstd}
网格是从坐标轴延伸到绘图区域的线条。{it:gridstyle} 指定网格的整体外观。请参见 {manhelpi axis_label_options G-3}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-4 gridstyleRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{help gridstyle##remarks1:什么是网格？}
	{help gridstyle##remarks2:什么是网格样式？}
	{help gridstyle##remarks3:您不需要指定网格样式}
	{help gridstyle##remarks4:开关网格}


{* index grid, definition}{...}
{marker remarks1}{...}
{title:什么是网格？}

{pstd}
网格是从坐标轴延伸到绘图区域的线条。


{marker remarks2}{...}
{title:什么是网格样式？}

{pstd}
网格由以下几方面定义：

{phang2}
    1.  网格线是否延伸到绘图区域的边距；

{phang2}
    2.  靠近坐标轴的网格线是否要绘制；

{phang2}
    3.  网格的线条样式，包括线条的粗细、颜色，以及它们是实线、虚线等；请参见 {manhelpi linestyle G-4}。

{pstd}
{it:gridstyle} 指定了这三个属性。


{marker remarks3}{...}
{title:您不需要指定网格样式}

{pstd}
{it:gridstyle} 在以下选项中指定：

	{c -(}{...}
{cmd:y}|{cmd:x}{...}
{c )-}{...}
{c -(}{...}
{cmd:label}|{cmd:tick}|{cmd:mlabel}|{cmd:mtick}{...}
{c )-}{...}
{cmd:(} ... {cmd:gstyle(}{it:gridstyle}{cmd:)} ... {cmd:)}

{pstd}
相应地，其他
{c -(}{cmd:y}|{cmd:x}{c )-}{c -(}{cmd:label}|{cmd:tick}|{cmd:mlabel}|{cmd:mtick}{c )-}{cmd:()}
子选项允许您指定单个属性；请参见 {manhelpi axis_label_options G-3}。

{pstd}
当存在一个样式完全符合您的需求时，或者另一个样式使您能更少地进行修改以获取您想要的效果时，您可以指定 {it:gridstyle}。


{marker remarks4}{...}
{title:开关网格}

{pstd}
默认情况下，是否包含网格线取决于方案；请参见 {manhelp schemes G-4:方案简介}。
不论默认值如何，是否包含网格线由
{c -(}{cmd:y}|{cmd:x}{c )-}{c -(}{cmd:label}|{cmd:tick}|{cmd:mlabel}|{cmd:mtick}{c )-}{cmd:()}
子选项 {cmd:grid} 和 {cmd:nogrid} 控制。

{pstd}
网格线几乎总是与 {cmd:ylabel()} 和/或 {cmd:xlabel()} 选项相关联。请指定
{c -(}{cmd:y}|{cmd:x}{c )-}{cmd:label(,grid)} 或
{c -(}{cmd:y}|{cmd:x}{c )-}{cmd:label(,nogrid)}。请参见 {manhelpi axis_label_options G-3}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gridstyle.sthlp>}