{smcl}
{* *! version 1.1.7  15may2018}{...}
{vieweralsosee "[G-4] 概念：线" "mansection G-4 Conceptlines"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] 线对齐样式" "help linealignmentstyle_zh"}{...}
{vieweralsosee "[G-4] 线模式样式" "help linepatternstyle_zh"}{...}
{vieweralsosee "[G-4] 线样式" "help linestyle_zh"}{...}
{vieweralsosee "[G-4] 线宽样式" "help linewidthstyle_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] 颜色样式" "help colorstyle_zh"}{...}
{vieweralsosee "[G-3] 连接选项" "help connect_options_zh"}{...}
{viewerjumpto "语法" "lines_zh##syntax"}{...}
{viewerjumpto "描述" "lines_zh##description"}{...}
{viewerjumpto "PDF文档链接" "lines_zh##linkspdf"}{...}
{viewerjumpto "备注" "lines_zh##remarks"}
{help lines:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col :{bf:[G-4] 概念：线} {hline 2}}使用线{p_end}
{p2col:}({mansection G-4 Conceptlines:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
以下内容影响线的外观：

{synoptset 20}{...}
{p2line}
{p2col:{it:{help linestyle_zh}}}总体样式{p_end}
{p2col:{it:{help linealignmentstyle_zh}}}是否在内侧、外侧或居中{p_end}
{p2col:{it:{help linepatternstyle_zh}}}是否实线、虚线等{p_end}
{p2col:{it:{help linewidthstyle_zh}}}线的厚度{p_end}
{p2col:{it:{help colorstyle_zh}}}线的颜色和不透明度{p_end}
{p2line}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
线在许多上下文中出现——在边框、坐标轴、坐标轴上的刻度、符号周围的轮廓、连接绘图中的点等等。
{it:linestyle}、{it:linealignmentstyle}、{it:linepatternstyle}、{it:linewidthstyle} 和 {it:colorstyle} 定义了线的外观。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-4 ConceptlinesRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注在以下标题下列出：

         {help lines##remarks1:线样式}
         {help lines##remarks5:线对齐样式}
         {help lines##remarks2:线模式样式}
         {help lines##remarks3:线宽样式}
         {help lines##remarks4:颜色样式}

{pstd}
{it:linestyle}、{it:linealignmentstyle}、{it:linepatternstyle}、{it:linewidthstyle} 和 {it:colorstyle} 是在控制线外观的选项中指定的。无论对象如何，这些选项通常具有相同的名称：

	{cmd:lstyle(}{it:linestyle}{cmd:)}
	{cmd:lalign(}{it:linealignmentstyle}{cmd:)}
	{cmd:lpattern(}{it:linepatternstyle}{cmd:)}
	{cmd:lwidth(}{it:linewidthstyle}{cmd:)}
	{cmd:lcolor(}{it:colorstyle}{cmd:)}

{pstd}
不过，对某些对象（例如标记）而言，名称的形式为

	<{it:object}>{cmd:lstyle(}{it:linestyle}{cmd:)}
	<{it:object}>{cmd:lalign(}{it:linealignmentstyle}{cmd:)}
	<{it:object}>{cmd:lpattern(}{it:linepatternstyle}{cmd:)}
	<{it:object}>{cmd:lwidth(}{it:linewidthstyle}{cmd:)}
	<{it:object}>{cmd:lcolor(}{it:colorstyle}{cmd:)}

{pstd}
例如，

{p 8 11 2}
o{space 2}指定绘图中连接点的线外观的选项为 {cmd:lstyle()}、{cmd:lalign()}、{cmd:lpattern()}、{cmd:lwidth()} 和 {cmd:lcolor()}；请参见 {manhelpi connect_options G-3}。

{p 8 11 2}
o{space 2}指定区域图外观的选项为 {cmd:lstyle()}、{cmd:lalign()}、{cmd:lpattern()}、{cmd:lwidth()} 和 {cmd:lcolor()}；请参见 {manhelpi area_options G-3}。

{p 8 11 2}
o{space 2}指定文本框（例如标题）边框外观的子选项命名为 {cmd:lstyle()}、{cmd:lalign()}、{cmd:lpattern()}、{cmd:lwidth()} 和 {cmd:lcolor()}；请参见 {manhelpi textbox_options G-3}。

{p 8 11 2}
o{space 2}指定标记周围轮廓外观的选项为 {cmd:mlstyle()}、{cmd:mlalign()}、{cmd:mlpattern()}、{cmd:mlwidth()} 和 {cmd:mlcolor()}；请参见 {manhelpi marker_options G-3}。

{pstd}
无论这些选项出现在哪里，它们总是作为一组出现，并且具有相同的含义。


{marker remarks1}{...}
{title:线样式}

{pstd}
{it:linestyle} 在 {cmd:lstyle()} 选项或有时在 <{it:object}>{cmd:lstyle()} 选项中指定。

{pstd}
{it:linestyle} 指定线的总体样式：它的对齐方式（内侧、外侧、居中）、模式（实线、虚线等）、厚度和颜色。

{pstd}
您不必仅仅因为想要更改线的外观而指定 {cmd:lstyle()} 选项，实际上大多数情况下您不需要。您在另一种样式完全符合您的要求时指定 {cmd:lstyle()}，或者另一种样式让您能够指定更少的更改以获得所需样式。

{pstd}
有关可以在 {cmd:lstyle()} 选项中指定的内容的列表，请参见 {manhelpi linestyle G-4}。


{marker remarks5}{...}
{title:线对齐样式}

{pstd}
{it:linealignmentstyle} 在 {cmd:lalign()} 或 <{it:object}>{cmd:lalign()} 选项中指定。

{pstd}
{it:linealignmentstyle} 指定线是绘制在内侧、绘制在外侧，还是居中于标记、填充区域、条形和框的轮廓。

{pstd}
有关可以在 {cmd:lalign()} 选项中指定的内容的列表，请参见 {manhelpi linealignmentstyle G-4}。


{marker remarks2}{...}
{title:线模式样式}

{pstd}
{it:linepatternstyle} 在 {cmd:lpattern()} 或 <{it:object}>{cmd:lpattern()} 选项中指定。

{pstd}
{it:linepatternstyle} 指定线是实线、虚线等。

{pstd}
有关可以在 {cmd:lpattern()} 选项中指定的内容的列表，请参见 {manhelpi linepatternstyle G-4}。


{marker remarks3}{...}
{title:线宽样式}

{pstd}
{it:linewidthstyle} 在 {cmd:lwidth()} 或 <{it:object}>{cmd:lwidth()} 选项中指定。

{pstd}
{it:linewidthstyle} 指定线的厚度。

{pstd}
有关可以在 {cmd:lwidth()} 选项中指定的内容的列表，请参见 {manhelpi linewidthstyle G-4}。


{marker remarks4}{...}
{title:颜色样式}

{pstd}
{it:colorstyle} 在 {cmd:lcolor()} 或 <{it:object}>{cmd:lcolor()} 选项中指定。

{pstd}
{it:colorstyle} 指定线的颜色和不透明度。

{pstd}
有关可以在 {cmd:lcolor()} 选项中指定的内容的列表，请参见 {manhelpi colorstyle G-4}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lines.sthlp>}