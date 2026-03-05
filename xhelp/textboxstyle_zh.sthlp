{smcl}
{* *! version 1.1.8  16apr2019}{...}
{vieweralsosee "[G-4] textboxstyle" "mansection G-4 textboxstyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] textbox_options" "help textbox_options_zh"}{...}
{vieweralsosee "[G-4] text" "help text"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] textstyle" "help textstyle_zh"}{...}
{viewerjumpto "Syntax" "textboxstyle_zh##syntax"}{...}
{viewerjumpto "Description" "textboxstyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "textboxstyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "textboxstyle_zh##remarks"}
{help textboxstyle:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[G-4]} {it:textboxstyle} {hline 2}}文本整体外观的选择，包括边框{p_end}
{p2col:}({mansection G-4 textboxstyle:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col:{it:textboxstyle}}描述{p_end}
{p2line}
{p2col:{cmd:heading}}适用于标题的大号文本{p_end}
{p2col:{cmd:subheading}}适用于副标题的中号文本{p_end}
{p2col:{cmd:body}}中号文本{p_end}
{p2col:{cmd:smbody}}小号文本{p_end}
{* p1-p15 intentionally not documented}{...}
{p2line}
{p2colreset}{...}

{pstd}
其他 {it:textboxstyles} 可能可用；键入

	    {cmd:.} {bf:{stata graph query textboxstyle}}

{pstd}
以获取您计算机上安装的 {it:textboxstyles} 的完整列表。


{marker description}{...}
{title:描述}

{pstd}
文本框包含一行或多行文本。 {it:textboxstyle} 指定文本框的整体样式。

{pstd}
{it:textboxstyle} 在另一个选项（例如 {cmd:title()}）中的 {cmd:style()} 选项中指定：

{phang2}
	{cmd:. graph} ...{cmd:, title("我的标题", style(}{it:textboxstyle}{cmd:))} ...

{pstd}
有关文本框的更多信息，请参见 {manhelpi textbox_options G-3}。

{pstd}
有时您会看到允许使用 {it:textboxstylelist}。{it:textboxstylelist} 是以空格分隔的一系列 {it:textboxstyles}。允许使用速记以便于指定列表；请参见 {manhelpi stylelists G-4}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-4 textboxstyleRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{help textboxstyle##remarks1:什么是文本框？}
	{help textboxstyle##remarks2:什么是textboxstyle？}
	{help textboxstyle##remarks3:您不需要指定textboxstyle}


{marker remarks1}{...}
{title:什么是文本框？}

{pstd}
文本框是一行或多行文本，周围可能有边框，也可能没有边框。


{marker remarks2}{...}
{title:什么是textboxstyle？}

{pstd}
文本框由11个属性定义：

{phang2}
    1.  文本框是垂直还是水平；
	请参见 {manhelpi orientationstyle G-4}

{phang2}
    2.  文本的大小；
	请参见 {manhelpi textsizestyle G-4}

{phang2}
    3.  文本的颜色；
	请参见 {manhelpi colorstyle G-4}

{phang2}
    4.  文本是左对齐、居中对齐，还是右对齐；
	请参见 {manhelpi justificationstyle G-4}

{phang2}
    5.  文本与基线的对齐方式；
	请参见 {manhelpi alignmentstyle G-4}

{phang2}
    6.  从文本到边框的边距；
	请参见 {manhelpi marginstyle G-4}

{phang2}
    7.  行之间的间距；
	请参见 {manhelpi size G-4}

{phang2}
    8.  是否在框周围绘制边框，如果是

{phang3}
	a.  背景的颜色；
	    请参见 {manhelpi colorstyle G-4}

{phang3}
	b.  用于绘制边框的线的整体样式，包括其颜色、宽度，以及是实线还是虚线等；见 {manhelpi linestyle G-4}

{phang2}
    9.  从边框向外的边距；
	请参见 {manhelpi marginstyle G-4}

{p 7 12 2}
   10.  该框是否要扩展以填充放置它的框

{p 7 12 2}
   11.  在图形上放置时，该框是否要移动；
	请参见 {manhelpi compassdirstyle G-4}

{pstd}
{it:textboxstyle} 指定所有11个属性。


{marker remarks3}{...}
{title:您不需要指定textboxstyle}

{pstd}
{it:textboxstyle} 在选项中指定

	{cmd:tstyle(}{it:textboxstyle}{cmd:)}

{pstd}
相应地，您会发现还有其他选项可用于设置上述每个属性；请参见 {manhelpi textbox_options G-3}。

{pstd}
当存在一个样式完全符合您的要求或另一种样式可以让您更少地更改以获得所需效果时，您就会指定 {it:textboxstyle}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <textboxstyle.sthlp>}