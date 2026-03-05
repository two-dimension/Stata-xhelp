{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[G-3] rcap_options" "mansection G-3 rcap_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] 概念：线条" "help lines_zh"}{...}
{viewerjumpto "语法" "rcap_options_zh##syntax"}{...}
{viewerjumpto "描述" "rcap_options_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "rcap_options_zh##linkspdf"}{...}
{viewerjumpto "选项" "rcap_options_zh##options"}{...}
{viewerjumpto "备注" "rcap_options_zh##remarks"}
{help rcap_options:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[G-3]} {it:rcap_options} {hline 2}}确定带帽尖峰范围图外观的选项{p_end}
{p2col:}({mansection G-3 rcap_options:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 30}{...}
{p2col:{it:rcap_options}}描述{p_end}
{p2line}
{p2col:{it:{help line_options_zh}}}更改尖峰和帽线的外观{p_end}
{p2col:{cmdab:msiz:e:(}{it:{help markersizestyle_zh}}{cmd:)}}帽的宽度{p_end}

{p2col:{help advanced_options_zh:{bf:recast(}{it:newplottype}{bf:)}}}高级；
      将图形视为 {it:newplottype}{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}
所有选项都是 {it:最右}; 参见 {help repeated options}。


{marker description}{...}
{title:描述}

{pstd}
{it:rcap_options} 确定尖峰（连接两个点的垂直或水平线）及其端帽的外观。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 rcap_optionsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{it:line_options} 
    指定用于绘制尖峰及其帽的线条外观，包括图案、宽度和颜色；见 {manhelpi line_options G-3}.{p_end}

{phang}
{cmd:msize(}{it:markersizestyle}{cmd:)}
    指定帽的宽度。选项 {cmd:msize()} 实际上是
    {cmd:twoway} {cmd:scatter} 的 {it:marker_option}，用于设置标记符号的大小，但在这里借用了 {cmd:msymbol()} 来设置帽的宽度。
    有关大小选择的列表，请参见 {manhelpi markersizestyle G-4}。

{phang}
{cmd:recast(}{it:newplottype}{cmd:)}
        是一个高级选项，允许将图形从一种类型转换为
        另一种，例如，从 {help twoway rcap:带帽范围图} 转换为
        {help twoway area:区域图}; 见 
        {manhelpi advanced_options G-3}。大多数但并非所有图形均允许
        {cmd:recast()}。


{marker remarks}{...}
{title:备注}

{pstd}
带帽范围图在许多上下文中使用。它们有时是置信区间的默认设置。例如，{cmd:lcolor()} 的子选项
{helpb tabodds##ciopts():ciopts()} 在

{phang2}
	{cmd:. tabodds died age, ciplot ciopts(lcolor(green))}

{pstd}
会使图中表示置信区间的水平线的颜色为绿色。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <rcap_options.sthlp>}