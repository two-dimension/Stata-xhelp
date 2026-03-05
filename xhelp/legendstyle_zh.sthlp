{smcl}
{* *! version 1.1.6  19oct2017}{...}
{vieweralsosee "[G-4] legendstyle" "mansection G-4 legendstyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] legend_options" "help legend_options_zh"}{...}
{viewerjumpto "Syntax" "legendstyle_zh##syntax"}{...}
{viewerjumpto "Description" "legendstyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "legendstyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "legendstyle_zh##remarks"}
{help legendstyle:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[G-4]} {it:legendstyle} {hline 2}}图例样式的选择{p_end}
{p2col:}({mansection G-4 legendstyle:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col:{it:legendstyle}}描述{p_end}
{p2line}
{p2col:{cmd:default}}由方案决定{p_end}
{p2line}
{p2colreset}{...}

{pstd}
其他 {it:legendstyles} 可能是可用的；输入

	    {cmd:.} {bf:{stata graph query legendstyle}}

{pstd}
以获取您计算机上安装的 {it:legendstyles} 的完整列表。


{marker description}{...}
{title:描述}

{pstd}
{it:legendstyle} 指定图例的整体样式，并在 {cmd:legend(style())} 选项中指定：

{phang2}
	{cmd:. graph} ...{cmd:, legend(} ... {cmd:style(}{it:legendstyle}{cmd:)} ...{cmd:)}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-4 legendstyleRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注如下列标题呈现：

	{help legendstyle##remarks1:什么是图例？}
	{help legendstyle##remarks2:什么是图例样式？}
	{help legendstyle##remarks3:您不需要指定图例样式}


{marker remarks1}{...}
{title:什么是图例？}

{pstd}
图例是一个表格，显示图表中使用的符号以及描述其含义的文本。每个图例中的符号/文本条目称为关键字。有关更多信息，请参见 {manhelpi legend_options G-3}。


{marker remarks2}{...}
{title:什么是图例样式？}

{pstd}
图例的外观由 14 个属性定义：

{phang2}
    1. 表格的列数或行数

{phang2}
    2. 在多列表中，第一、第二等关键字是横向显示在行中还是纵向显示在列中

{phang2}
    3. 关键字的符号/文本是水平相邻显示还是垂直堆叠显示

{phang2}
    4. 图例行之间的间隙

{phang2}
    5. 图例列之间的间隙

{phang2}
    6. 关键字的符号的对齐和调整方式

{phang2}
    7. 关键字的符号与文本之间的间隙

{phang2}
    8. 分配给关键字符号的高度

{phang2}
    9. 分配给关键字符号的宽度

{p 7 12 2}
   10. 分配给关键字文本的宽度

{p 7 12 2}
   11. 以上指定的高度和宽度是否应根据关键字的内容动态调整

{p 7 12 2}
   12. 图例周围的边距

{p 7 12 2}
   13. 关键字文本的颜色、大小等（17 个特征）

{p 7 12 2}
   14. 放置在表格周围的任何标题、副标题、注释和说明的外观（各 23 个特征）

{pstd}
{it:legendstyle} 指定这 14 个属性的所有内容。


{marker remarks3}{...}
{title:您不需要指定图例样式}

{pstd}
{it:legendstyle} 在选项中指定

	{cmd:legend(style(}{it:legendstyle}{cmd:))}

{pstd}
相应地，选项 {cmd:legend()} 还有其他子选项，允许您单独指定这 14 个属性；请参见 {it:{help legend_options_zh}}。

{pstd}
当存在您所期望的样式时，或当其他样式允许您指定更少的更改以获得所需结果时，请指定 {it:legendstyle}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <legendstyle.sthlp>}