{smcl}
{* *! version 1.1.7  15may2018}{...}
{vieweralsosee "[G-4] axisstyle" "mansection G-4 axisstyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] ticksetstyle" "help ticksetstyle_zh"}{...}
{vieweralsosee "[G-4] tickstyle" "help tickstyle_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] linestyle" "help linestyle_zh"}{...}
{vieweralsosee "help scheme files" "help scheme_files_zh"}{...}
{viewerjumpto "Syntax" "axisstyle_zh##syntax"}{...}
{viewerjumpto "Description" "axisstyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "axisstyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "axisstyle_zh##remarks"}
{help axisstyle:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[G-4]} {it:axisstyle} {hline 2}}轴线外观的选择{p_end}
{p2col:}({mansection G-4 axisstyle:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 25}{...}
{p2col:{it:textstyle}}描述{p_end}
{p2line}
{p2col:{cmd:horizontal_default}}默认标准水平轴{p_end}
{p2col:{cmd:horizontal_notick}}默认水平轴，无刻度{p_end}
{p2col:{cmd:horizontal_nogrid}}默认水平轴，无网格线{p_end}
{p2col:{cmd:horizontal_withgrid}}默认水平轴，有网格线{p_end}
{p2col:{cmd:horizontal_noline}}默认水平轴，无轴线{p_end}
{p2col:{cmd:horizontal_nolinetick}}默认水平轴，既无轴线又无刻度{p_end}

{p2col:{cmd:vertical_default}}默认标准垂直轴{p_end}
{p2col:{cmd:vertical_notick}}默认垂直轴，无刻度{p_end}
{p2col:{cmd:vertical_nogrid}}默认垂直轴，无网格线{p_end}
{p2col:{cmd:vertical_withgrid}}默认垂直轴，有网格线{p_end}
{p2col:{cmd:vertical_noline}}默认垂直轴，无轴线{p_end}
{p2col:{cmd:vertical_nolinetick}}默认垂直轴，既无轴线又无刻度{p_end}
{p2line}
{p2colreset}{...}

{p 4 4 2}
其他可用的 {it:axisstyles} 可能存在；输入

	    {cmd:.} {bf:{stata graph query axisstyle}}

{p 4 4 2}
以获取您计算机上安装的 {it:axisstyles} 完整列表。


{marker description}{...}
{title:描述}

{pstd}
轴线样式仅在方案文件中使用（参见 {help scheme files}），并且无法从 {help graph_zh} 命令访问。您通常不需要更改轴线样式。

{pstd}
{it:axisstyle} 是一个复合样式，包含并设置轴的所有属性，包括刻度和刻度标签的外观（参见 {manhelpi ticksetstyle G-4}），用于该轴的主要和次要标记刻度及主要和次要无标签刻度，轴线样式（参见 {manhelpi linestyle G-4}），规则确定轴是否延伸穿过绘图区域边距（在量程的低端和高端两侧），是否为每个主要和次要标记绘制网格，以及刻度标签与轴标题之间的间隙，以及轴标题之外的任何额外空间。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-4 axisstyleRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
在 {help scheme_files_zh:方案文件} 中更改轴的外观时，您通常不需要更改 {it:axisstyle} 条目。相反，您应该更改构成轴样式的各个组件的条目。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <axisstyle.sthlp>}