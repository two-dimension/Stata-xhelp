{smcl}
{* *! version 1.1.7  19oct2017}{...}
{vieweralsosee "[G-4] textstyle" "mansection G-4 textstyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] marker_label_options" "help marker_label_options_zh"}{...}
{vieweralsosee "[G-4] text" "help text"}{...}
{vieweralsosee "[G-4] textboxstyle" "help textboxstyle_zh"}{...}
{viewerjumpto "Syntax" "textstyle_zh##syntax"}{...}
{viewerjumpto "Description" "textstyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "textstyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "textstyle_zh##remarks"}
{help textstyle:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[G-4]} {it:textstyle} {hline 2}}文本整体外观选择{p_end}
{p2col:}({mansection G-4 textstyle:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 25}{...}
{p2col:{it:textstyle}}描述{p_end}
{p2line}
{p2col:{cmd:heading}}适合标题的大字体；默认由 {cmd:title()} 使用{p_end}
{p2col:{cmd:subheading}}适合副标题的中等字体；默认由 {cmd:subtitle()} 使用{p_end}
{p2col:{cmd:body}}中等大小的字体；默认由 {cmd:caption()} 使用{p_end}
{p2col:{cmd:small_body}}小字体；默认由 {cmd:note()} 使用{p_end}

{p2col:{cmd:axis_title}}坐标轴标题的默认样式{p_end}

{p2col:{cmd:label}}适合标签的文本{p_end}
{p2col:{cmd:key_label}}默认用于图例中的键标签{p_end}
{p2col:{cmd:small_label}}默认用于标记点的标签{p_end}
{p2col:{cmd:tick_label}}默认用于标记主要刻度的标签{p_end}
{p2col:{cmd:minor_ticklabel}}默认用于标记次要刻度的标签{p_end}
{* p1-p15 intentionally not documented}{...}
{p2line}
{p2colreset}{...}

{pstd}
其他 {it:textstyles} 可能可用；输入

	    {cmd:.} {bf:{stata graph query textboxstyle}}      {it:(错字)}

{pstd}
可以获取您计算机上安装的 {it:textstyles} 的完整列表。
{it:textstyle} 列表与 {it:textboxstyle} 列表相同。


{marker description}{...}
{title:描述}

{pstd}
{it:textstyle} 指定单行文本的整体外观。
{it:textstyle} 在选项中指定，例如标记标签选项 {cmd:mltextstyle()} (请参见 {manhelpi marker_label_options G-3})：

{p 6 16 2}
{cmd:. twoway scatter}
...{cmd:, mlabel(...) mltextstyle(}{it:textstylelist}{cmd:)} ...

{pstd}
在上面的示例中，允许存在 {it:textstylelist}。 {it:textstylelist} 是由空格分隔的一系列 {it:textstyles}。允许使用简写以便更易于指定列表；请参见 {manhelpi stylelists G-4}。

{pstd}
{it:textstyle} 实际上是一个 {it:textboxstyle}，但是只有文本框的属性子集相关；请参见 
{manhelpi textboxstyle G-4}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-4 textstyleRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{help textstyle##remarks1:什么是文本？}
	{help textstyle##remarks2:什么是文本样式？}
	{help textstyle##remarks3:您不需要指定文本样式}
	{help textstyle##remarks4:文本样式与文本框样式之间的关系}


{marker remarks1}{...}
{title:什么是文本？}

{pstd}
文本是一行文本。


{marker remarks2}{...}
{title:什么是文本样式？}

{pstd}
文本的外观由五个属性定义：

{phang2}
    1.  文本是垂直还是水平；
	详见 {manhelpi orientationstyle G-4}

{phang2}
    2.  文本的大小；
	详见 {manhelpi textsizestyle G-4}

{phang2}
    3.  文本的颜色；
	详见 {manhelpi colorstyle G-4}

{phang2}
    4.  文本是左对齐、居中还是右对齐；
	详见 {manhelpi justificationstyle G-4}

{phang2}
    5.  文本如何与基线对齐；
	详见 {manhelpi alignmentstyle G-4}

{pstd}
{it:textstyle} 指定这五个属性。


{marker remarks3}{...}
{title:您不需要指定文本样式}

{pstd}
{it:textstyle} 在选项中指定，例如

	{cmd:mltextstyle(}{it:textstyle}{cmd:)}

{pstd}
相应地，您会发现其他选项可用来设置上述每个属性；请参见 
{manhelpi marker_label_options G-3}。

{pstd}
当某种样式完全符合您的要求时，或者其他样式允许您指定更少的更改以达到您所需内容时，您可以指定 {it:textstyle}。


{* index text and textboxes, relationship between}{...}
{marker remarks4}{...}
{title:文本样式与文本框样式之间的关系}

{pstd}
{it:textstyles} 实际上是 {it:textboxstyles} 属性的一个子集；详见 {manhelpi textboxstyle G-4}。文本框允许多行文本，周围有一个可选的边框，具有背景颜色等。相比之下，文本只是文本行，而 {it:textstyle} 是该单行的整体样式。

{pstd}
大多数文本图形元素是文本框，但也有一些简单的图形元素仅是文本，例如上面提到的标记标签。 {cmd:mltextstyle(}{it:textstyle}{cmd:)} 选项实际上应该记录为 {cmd:mltextstyle(}{it:textboxstyle}{cmd:)}，因为它实际上是一个 {it:textboxstyle}，{cmd:mltextstyle()} 接受该样式。然而，当 {cmd:mltextstyle()} 处理 {it:textboxstyle} 时，它只关注上面列出的五个属性，忽略 {it:textboxstyle} 定义的其他属性。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <textstyle.sthlp>}