{smcl}
{* *! version 1.1.5  19oct2017}{...}
{vieweralsosee "[G-4] addedlinestyle" "mansection G-4 addedlinestyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] added_line_options" "help added_line_options_zh"}{...}
{viewerjumpto "Syntax" "addedlinestyle_zh##syntax"}{...}
{viewerjumpto "Description" "addedlinestyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "addedlinestyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "addedlinestyle_zh##remarks"}
{help addedlinestyle:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[G-4]} {it:addedlinestyle} {hline 2}}添加线条的整体外观选项{p_end}
{p2col:}({mansection G-4 addedlinestyle:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col : {it:addedlinestyle}}描述{p_end}
{p2line}
{p2col : {cmd:default}}由方案决定{p_end}
{p2col : {cmd:extended}}延伸至绘图区域边缘{p_end}
{p2col : {cmd:unextended}}不延伸至边缘{p_end}
{p2line}
{p2colreset}{...}

{p 4 6 2}
其他 {it:addedlinestyles} 可能是可用的；请键入

	    {cmd:.} {bf:{stata graph query addedlinestyle}}

{p 4 6 2}
以获取您计算机上已安装的完整列表。


{marker description}{...}
{title:描述}

{pstd}
添加的线条是由 {it:added_line_options} 添加的线条。
{it:addedlinestyle} 指定这些线条的整体外观。
请参见 {manhelpi added_line_options G-3}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-4 addedlinestyleRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下几个部分：

	{help addedlinestyle##remarks1:什么是添加的线条？}
	{help addedlinestyle##remarks2:什么是添加线条样式？}
	{help addedlinestyle##remarks3:您不需要指定添加线条样式}


{marker remarks1}{...}
{title:什么是添加的线条？}

{pstd}
添加的线条是由 {it:added_line_options} 添加的线条，它们贯穿整个绘图区域，并可能延伸到绘图区域的边缘。


{marker remarks2}{...}
{title:什么是添加线条样式？}

{pstd}
添加的线条由以下几个方面定义：

{phang2}
    1.  线条是否延伸到绘图区域的边缘；

{phang2}
    2.  线条的样式，包括线条的厚度、颜色，以及实线、虚线等；
    请参见 {manhelpi linestyle G-4}。

{pstd}
{it:addedlinestyle} 指定这两个属性。


{marker remarks3}{...}
{title:您不需要指定添加线条样式}

{pstd}
{it:addedlinestyle} 在以下选项中指定

	{cmd:yline(}...{cmd:, style(}{it:addedlinestyle}{cmd:)} ...{cmd:)}
	{cmd:xline(}...{cmd:, style(}{it:addedlinestyle}{cmd:)} ...{cmd:)}

{pstd}
相应地，其他 {cmd:yline()} 和 {cmd:xline()} 子选项允许您指定单个属性；请参见
{manhelpi added_line_options G-3}。

{pstd}
当某个样式完全符合您的要求，或者选择另一种样式可以让您指定更少的更改以获得所需效果时，您可以指定 {it:addedlinestyle}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <addedlinestyle.sthlp>}