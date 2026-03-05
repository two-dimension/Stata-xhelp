{smcl}
{* *! version 1.1.2  19oct2017}{...}
{vieweralsosee "[G-2] graph print" "mansection G-2 graphprint"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] pr_options" "help pr_options_zh"}{...}
{vieweralsosee "[G-2] set printcolor" "help set_printcolor_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph display" "help graph_display_zh"}{...}
{vieweralsosee "[G-2] graph use" "help graph_use_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph export" "help graph_export_zh"}{...}
{vieweralsosee "[G-2] graph set" "help graph_set_zh"}{...}
{viewerjumpto "Syntax" "graph_print_zh##syntax"}{...}
{viewerjumpto "Description" "graph_print_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "graph_print_zh##linkspdf"}{...}
{viewerjumpto "Options" "graph_print_zh##options"}{...}
{viewerjumpto "Remarks" "graph_print_zh##remarks"}{...}
{viewerjumpto "Technical notes" "graph_print_zh##technote"}
{help graph_print:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[G-2] graph print} {hline 2}}打印图表{p_end}
{p2col:}({mansection G-2 graphprint:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmdab:gr:aph}
{cmd:print}
[{cmd:, name(}{it:windowname}{cmd:)}
{it:{help pr_options_zh}}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} {cmd:print} 打印在图表窗口中显示的图表。

{pstd}
Unix用户在第一次使用 {cmd:graph} {cmd:print} 前必须进行一些设置；请参见下方的
{it:{help graph print##remarks4:附录：为Unix设置Stata打印图表}}。


{marker linkspdf}{...}
{title:PDF文档链接}

{mansection G-2 graphprintQuickstart:快速开始}

{mansection G-2 graphprintRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:name(}{it:windowname}{cmd:)} 指定打印图表时要打印的窗口。 默认情况下，Stata会打印最上面的图表
(Unix（GUI）用户：请参见
{it:{help graph print##GUI:Unix（GUI）用户的技术说明}})。

{p 8 8 2}
窗口名称位于窗口标题中的括号内。
例如，如果图表窗口的标题是 {hi:Graph (MyGraph)}，那么窗口的名称是 {hi:MyGraph}。
如果图表是 {cmd:asis} 或 {cmd:graph7} 图表，窗口标题中没有名称，则需为 {it:windowname} 指定 {cmd:""}。

{phang}
{it:pr_options}
    修改图表的打印方式。请参见 {manhelpi pr_options G-3}。

{phang}
可以使用 {manhelp graph_set G-2:graph set} 设置选项的默认值。


{marker remarks}{...}
{title:备注}

{pstd}
通过在屏幕上显示图表，然后输入

	{cmd:. graph print}

图表将被打印。

{pstd}
备注分为以下几个部分：

	{help graph print##remarks1:打印图表窗口中显示的图表}
	{help graph print##remarks2:打印存储在磁盘上的图表}
	{help graph print##remarks3:打印存储在内存中的图表}
	{help graph print##remarks4:附录：为Unix设置Stata打印图表}

{pstd}
另见 {manhelp set_printcolor G-2:set printcolor}。
默认情况下，如果正在打印的图表具有黑色背景，则以单色打印。

{pstd}
除了打印图表，Stata还可以将图表导出为
PostScript,
封装PostScript（EPS），
便携式网络图形（PNG），
TIFF,
Windows元文件（WMF），以及
Windows增强型元文件（EMF）；
请参见 {manhelp graph_export G-2:graph export}。


{marker remarks1}{...}
{title:打印图表窗口中显示的图表}

{pstd}
有三种方法可以打印图表窗口中显示的图表：

{phang2}
    1.  在图表窗口中右键单击，然后选择 {bf:打印...}。

{phang2}
    2.  选择 {bf:文件 > 打印图表...}。

{phang2}
    3.  在命令窗口中输入 "{cmd:graph} {cmd:print}"。
        Unix（GUI）用户应该使用 {cmd:name()} 选项，如果显示了多个图表，以确保打印正确的图表（见
        {it:{help graph print##GUI:Unix（GUI）用户的技术说明}}）。

{pstd}
这三种方法都是等效的。使用 {cmd:graph} {cmd:print} 的好处是可以
将其包含在.do文件中：

	{cmd:. graph} ...{col 40}(绘制一个图表)

	{cmd:. graph print}{col 40}(并打印它)


{marker remarks2}{...}
{title:打印存储在磁盘上的图表}

{pstd}
要打印存储在磁盘上的图表，输入

	{cmd:. graph use} {it:filename}

	{cmd:. graph print}

{pstd}
不要指定 {cmd:graph} {cmd:use} 的 {cmd:nodraw} 选项；请参见 
{manhelp graph_use G-2:graph use}。

{pstd}
Stata for Unix(console)用户：请遵循刚才给出的说明，
即使您没有图表窗口并且无法看到刚才“显示”的内容。使用图表，然后打印它。


{marker remarks3}{...}
{title:打印存储在内存中的图表}

{pstd}
要打印存储在内存中但当前未显示的图表，输入

	{cmd:. graph display} {it:name}

	{cmd:. graph print}

{pstd}
不要指定 {cmd:graph} {cmd:display} 的 {cmd:nodraw} 选项；请参见
{manhelp graph_display G-2:graph display}。

{pstd}
Stata for Unix(console)用户：请遵循刚才给出的说明，
即使您没有图表窗口并且无法看到刚才“显示”的内容。显示图表，然后打印它。


{marker remarks4}{...}
{title:附录：为Unix设置Stata打印图表}

{pstd}
在您可以打印图表之前，必须告诉Stata您通常用来打印PostScript文件的命令。
默认情况下，Stata假设该命令是

	{cmd:$ lpr < }{it:filename}

{pstd}
该命令可能对您来说是正确的。如果另一方面，您通常输入类似于

	{cmd:$ lpr -Plexmark} {it:filename}

{pstd}
您需要通过输入来告知Stata：

	{cmd:. printer define prn ps "lpr -Plexmark @"}

{pstd}
在您通常会输入文件名的地方输入一个 {cmd:@}。如果您希望命令为 "{cmd:lpr -Plexmark < @}"，请输入：

	{cmd:. printer define prn ps "lpr -Plexmark < @"}

{pstd}
Stata假设您指定的打印机理解PostScript格式。


{marker technote}{...}
{title:Unix用户的技术说明}

{pstd}
Stata for Unix使用PostScript打印图表。如果您希望打印的图表包含Unicode字符，这些字符在PostScript文件中可能无法正确出现，因为PostScript字体不支持Unicode。
Stata会尽可能地将字符映射到Unicode支持的字符，但对于任何不支持的字符将打印问号（?）。我们建议您将图表导出为PDF文件，它具有更好的Unicode字符支持。
请参见 {manhelp graph_export G-2:graph export}。


{marker GUI}{...}
{title:Unix（GUI）用户的技术说明}

{pstd}
X-Windows没有窗口z序的概念，这使得Stata无法确定哪个窗口是最上面的窗口。
相反，Stata根据哪个窗口具有焦点来确定哪个窗口是最上面的窗口。
然而，某些窗口管理器会将焦点设置到一个窗口，而不将该窗口置于最前面。Stata认为的最上面窗口在视觉上可能并不最上面。由于这个原因，您应该始终使用 {cmd:name()} 选项，以确保打印正确的图表窗口。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_print.sthlp>}