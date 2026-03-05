{smcl}
{* *! version 1.1.8  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway pcscatter" "mansection G-2 graphtwowaypcscatter"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway" "help twoway"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway scatter" "help scatter_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway rscatter" "help twoway_rscatter_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway pcarrow" "help twoway_pcarrow_zh"}{...}
{vieweralsosee "[G-2] graph twoway pccapsym" "help twoway_pccapsym_zh"}{...}
{vieweralsosee "[G-2] graph twoway pci" "help twoway_pci_zh"}{...}
{vieweralsosee "[G-2] graph twoway pcspike" "help twoway_pcspike_zh"}{...}
{viewerjumpto "Syntax" "twoway_pcscatter_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_pcscatter_zh##menu"}{...}
{viewerjumpto "Description" "twoway_pcscatter_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_pcscatter_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_pcscatter_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_pcscatter_zh##remarks"}
{help twoway_pcscatter:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[G-2] graph twoway pcscatter} {hline 2}}成对坐标图 
	带标记{p_end}
{p2col:}({mansection G-2 graphtwowaypcscatter:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 60 2}
{cmdab:tw:oway}
{cmd:pcscatter}
{it:y1var} {it:x1var} {it:y2var} {it:x2var}
{ifin}
[{cmd:,}
{it:选项}]


{synoptset 22}{...}
{p2col:{it:选项}}描述{p_end}
{p2line}
包含 help gr_markopt
包含 help gr_headlabopt

包含 help gr_hvpcopt
包含 help gr_axlnk

包含 help gr_twopt
{p2line}
{p 4 6 2}
所有显式选项都是 {it:唯一}; 请参见 {help repeated options}.


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 二维图形（散点、线等）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway pcscatter} 为每个由 
({it:y1var}, {it:x1var}) 指定的点及每个由 
({it:y2var}, {it:x2var}) 指定的点绘制标记。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowaypcscatterQuickstart:快速开始}

        {mansection G-2 graphtwowaypcscatterRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{it:marker_options}
    指定标记的外观，包括
    形状、大小、颜色和轮廓；
    请参见 {manhelpi marker_options G-3}。同一标记用于两组
    点。

{phang}
{it:marker_label_options}
    指定标记是否及如何加标签； 
    请参见 {manhelpi marker_label_options G-3}。

包含 help gr_headlaboptf

包含 help gr_hvpcoptf

包含 help gr_axlnkf

包含 help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
在视觉上，两者之间没有区别

	{cmd:. twoway pcscatter} {it:y1var} {it:x1var} {it:y2var} {it:x2var}

{pstd}
和

	{cmd:. twoway scatter} {it:y1var} {it:x1var} {cmd:||} {...}
{cmd:scatter} {it:y2var} {it:x2var}{cmd:, pstyle(p1)}

{pstd}
尽管在某些情况下，前者更方便并且更好地代表数据的
概念结构。

{pstd}
这两个散点以相同的整体风格展示，
这意味着标记（符号形状和颜色）
是相同的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_pcscatter.sthlp>}