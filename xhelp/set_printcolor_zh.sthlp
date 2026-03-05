{smcl}
{* *! version 1.1.8  15may2018}{...}
{vieweralsosee "[G-2] set printcolor" "mansection G-2 setprintcolor"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph export" "help graph_export_zh"}{...}
{vieweralsosee "[G-2] graph print" "help graph_print_zh"}{...}
{viewerjumpto "语法" "set_printcolor_zh##syntax"}{...}
{viewerjumpto "描述" "set_printcolor_zh##description"}{...}
{viewerjumpto "PDF文档链接" "set_printcolor_zh##linkspdf"}{...}
{viewerjumpto "选项" "set_printcolor_zh##option"}{...}
{viewerjumpto "备注" "set_printcolor_zh##remarks"}
{help set_printcolor:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[G-2] set printcolor} {hline 2}}设置图形打印时的颜色处理方式{p_end}
{p2col:}({mansection G-2 setprintcolor:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmdab:q:uery}
{cmdab:graph:ics}

{p 8 16 2}
{cmd:set}
{cmd:printcolor}
{c -(}{cmdab:auto:matic} |
	{cmd:asis} |
	{cmd:gs1} |
	{cmd:gs2} |
	{cmd:gs3}{c )-}
[{cmd:,} {cmdab:perm:anently}]

{p 8 16 2}
{cmd:set}
{cmd:copycolor}{space 2}{c -(}{cmdab:auto:matic} |
	{cmd:asis} |
	{cmd:gs1} |
	{cmd:gs2} |
	{cmd:gs3}{c )-}
[{cmd:,} {cmdab:perm:anently}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:query} {cmd:graphics} 显示图形设置。

{pstd}
{cmd:set} {cmd:printcolor} 确定图形打印时如何处理颜色。

{pstd}
{cmd:set} {cmd:copycolor}（仅限Mac和Windows）确定当图形复制到剪贴板时如何处理颜色。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 setprintcolorQuickstart:快速入门}

        {mansection G-2 setprintcolorRemarksandexamples:备注和示例}

{pstd}
上面的部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently}
指定除了立即进行更改外，还将该设置记住并成为调用Stata时的默认设置。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:printcolor}和{cmd:copycolor}可以通过五种方式进行设置：{cmd:automatic}、{cmd:asis}、{cmd:gs1}、{cmd:gs2}或{cmd:gs3}。四种设置——{cmd:asis}以及{cmd:gs1}、{cmd:gs2}和{cmd:gs3}——指定图形打印或复制时颜色的呈现方式。剩余的设置——{cmd:automatic}——则指定Stata根据上下文决定使用{cmd:asis}还是{cmd:gs1}。

{pstd}
在下面的备注中，{cmd:copycolor}和{cmd:printcolor}可以互换使用，唯一的区别在于图形的最终目标。

{pstd}
备注在以下标题下呈现：

	{help set printcolor##remarks1:set printcolor影响的内容}
	{help set printcolor##remarks2:set printcolor解决的问题}
	{help set printcolor##remarks3:set printcolor automatic}
	{help set printcolor##remarks4:set printcolor asis}
	{help set printcolor##remarks5:set printcolor gs1、gs2和gs3}
	{help set printcolor##remarks6:方案重要，而不是你设置的背景颜色}


{marker remarks1}{...}
{title:set printcolor影响的内容}

{pstd}
{cmd:set} {cmd:printcolor} 影响当你选择{bf:文件} > {bf:打印图形}或使用{cmd:graph} {cmd:print}命令时图形的打印；见{manhelp graph_print G-2:graph print}。

{pstd}
{cmd:set} {cmd:printcolor} 同样影响{cmd:graph} {cmd:export}命令的行为，当你用它将{cmd:.gph}文件转换为其他格式（例如PostScript）时；见{manhelp graph_export G-2:graph export}。

{pstd}
我们将在接下来的内容中将上述所有内容称为“打印图形”或“呈现图形”。 


{marker remarks2}{...}
{title:set printcolor解决的问题}

{pstd}
如果你选择了具有黑色背景的方案——见{manhelp schemes G-4:方案简介}——并且你随后打印了该图形，难道你真的想让黑色墨水泼洒到纸上，以便得到你所看到的完全一模一样的结果吗？可能不想。{cmd:set printcolor}的目的就是避免这种结果。


{marker remarks3}{...}
{title:set printcolor automatic}

{pstd}
{cmd:set} {cmd:printcolor}的默认设置——{cmd:automatic}——查看要打印的图形，并决定它是否应当按屏幕上看到的方式呈现，或者应该反转颜色并以单色灰度打印图形。

{pstd}
{cmd:set printcolor} {cmd:automatic}根据方案所使用的背景颜色作出决策。如果是白色（或浅色），则图形按{cmd:asis}打印。如果是黑色（或深色），则图形按{cmd:grayscale}打印。


{marker remarks4}{...}
{title:set printcolor asis}

{pstd}
如果你指定{cmd:set printcolor asis}，所有图形将以你在屏幕上看到的方式呈现，而不考虑方案的背景颜色。


{marker remarks5}{...}
{title:set printcolor gs1、gs2和gs3}

{pstd}
如果你指定{cmd:set printcolor gs1}、{cmd:gs2}或{cmd:gs3}，所有图形将按照灰度进行呈现。
如果方案设置了黑色或深色背景，灰度将反转（黑色变为白色，白色变为黑色）。

{pstd}
{cmd:gs1}、{cmd:gs2}和{cmd:gs3}在将颜色映射到灰色时有所不同。
{cmd:gs1}基于平均RGB值进行映射，{cmd:gs2}基于“真实灰度”，{cmd:gs3}基于最大RGB值。理论上，真实灰度应该效果最佳，但我们发现平均值通常对Stata图形效果更佳。


{marker remarks6}{...}
{title:方案重要，而不是你设置的背景颜色}

{pstd}
在上述所有内容中，你使用{it:{help region_options_zh}}{cmd:graphregion(fcolor())}和{cmd:plotregion(fcolor())}设置的背景颜色在决策中并不起作用。决策完全基于方案自然是否具有浅色或深色背景。

{pstd}
你可以设置背景颜色，但请记得从适当的方案开始。使用浅色背景方案设置浅色背景颜色，使用深色背景方案设置深色背景颜色。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <set_printcolor.sthlp>}