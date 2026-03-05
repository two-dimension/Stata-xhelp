{smcl}
{* *! version 1.4.3  19oct2017}{...}
{vieweralsosee "[G-2] graph set" "mansection G-2 graphset"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph export" "help graph_export_zh"}{...}
{vieweralsosee "[G-2] graph print" "help graph_print_zh"}{...}
{vieweralsosee "[G-3] eps_options" "help eps_options_zh"}{...}
{vieweralsosee "[G-3] pr_options" "help pr_options_zh"}{...}
{vieweralsosee "[G-3] ps_options" "help ps_options_zh"}{...}
{vieweralsosee "[G-3] svg_options" "help svg_options_zh"}{...}
{vieweralsosee "[G-4] text" "help graph_text_zh"}{...}
{viewerjumpto "Syntax" "graph set##syntax"}{...}
{viewerjumpto "Description" "graph set##description"}{...}
{viewerjumpto "Links to PDF documentation" "graph_set_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "graph set##remarks"}
{help graph_set:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[G-2] graph set} {hline 2}}设置图形选项{p_end}
{p2col:}({mansection G-2 graphset:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}管理图形打印设置

{p 8 16 2}
{cmdab:gr:aph} {cmd:set} {cmd:print} [{it:setopt} {it:setval}]


{phang}管理图形导出设置

{p 8 16 2}
{cmdab:gr:aph} {cmd:set} [{it:exporttype}] [{it:setopt} {it:setval}]

    其中 {it:exporttype} 是导出文件类型，可以是以下之一

{p 8 16 2}
{cmd:ps} | {cmd:eps} | {cmd:svg}

    而 {it:setopt} 是与设置 {it:setval} 相关的选项。


{phang}管理图形窗口字体设置

        {cmdab:gr:aph} {cmd:set} {cmd:window} {cmd:fontface}       {c -(} {it:fontname} | {cmd:default} {c )-}
        {cmdab:gr:aph} {cmd:set} {cmd:window} {cmd:fontfacemono}   {c -(} {it:fontname} | {cmd:default} {c )-}
        {cmdab:gr:aph} {cmd:set} {cmd:window} {cmd:fontfacesans}   {c -(} {it:fontname} | {cmd:default} {c )-}
        {cmdab:gr:aph} {cmd:set} {cmd:window} {cmd:fontfaceserif}  {c -(} {it:fontname} | {cmd:default} {c )-}
        {cmdab:gr:aph} {cmd:set} {cmd:window} {cmd:fontfacesymbol} {c -(} {it:fontname} | {cmd:default} {c )-}


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} {cmd:set} 不带选项的情况下列出当前所有 {it:exporttype} 的图形字体、打印和导出设置。{cmd:graph set} 带有 {cmd:window}、{cmd:print} 或 {it:exporttype} 时分别列出图形窗口、打印或指定 {it:exporttype} 的当前设置。

{pstd}
{cmd:graph} {cmd:set} {cmd:print} 允许您更改图形的打印设置。

{pstd}
{cmd:graph} {cmd:set} {it:exporttype} 允许您更改指定导出文件类型 {it:exporttype} 的图形导出设置。

{pstd}
{cmd:graph} {cmd:set} {cmd:window} {cmd:fontface}{it:*} 允许您更改图形窗口的字体设置。（要更改导出到 PostScript、Encapsulated PostScript 或 Scalable Vector Graphic 文件的图形字体设置，使用 {cmd:graph} {cmd:set} {c -(}{cmd:ps}|{cmd:eps}|{cmd:svg}{c )-} {cmd:fontface}{it:*}；请参见 {manhelpi ps_options G-3}、{manhelpi eps_options G-3} 或 {manhelpi svg_options G-3}。）如果 {it:fontname} 包含空格，请用双引号括起来。如果您为任何 {cmd:fontface}{it:*} 设置指定了 {cmd:default}，将恢复为默认设置。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-2 graphsetQuickstart:快速入门}

        {mansection G-2 graphsetRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注呈现在以下标题下：

            {help graph_set##remarks1:概述}
            {help graph_set##remarks2:设置默认值}


{marker remarks1}{...}
{title:概述}

{pstd}
{cmd:graph set} 允许您永久设置图形窗口中使用的主要字体，以及用于四个 Stata "字体" 的字体，这些字体由图形 SMCL 标签 {cmd:{c -(}stMono{c )-}}、{cmd:{c -(}stSans{c )-}}、{cmd:{c -(}stSerif{c )-}} 和 {cmd:{c -(}stSymbol{c )-}} 支持。有关这些 SMCL 标签的更多详细信息，请参见 {manhelpi graph_text G-4:text}。

{pstd}
{cmd:graph set} 还允许您永久设置 {cmd:graph print}（请参见 {manhelp graph_print G-2:图形打印}）支持的任何选项或 {cmd:graph export} 提供的特定导出文件类型（请参见 {manhelp graph_export G-2:图形导出}）。

{pstd}
要了解更多关于 {cmd:graph} {cmd:set} {cmd:print} {it:setopt} 选项及其相关值 ({it:setval})，请参见 {manhelpi pr_options G-3}。

{pstd}
一些由 {helpb graph export} 支持的图形文件类型有可以设置的选项。允许设置选项的文件类型及其相关 {it:exporttype} 为

	{it:exporttype}{col 21}描述{col 50}可用设置
	{hline 60}
	{cmd:ps}{...}
{col 21}PostScript{col 50}{manhelpi ps_options G-3}
	{cmd:eps}{...}
{col 21}Encapsulated PostScript{col 50}{manhelpi eps_options G-3}
	{cmd:svg}{...}
{col 21}矢量图形{col 50}{manhelpi svg_options G-3}
	{hline 60}


{marker remarks2}{...}
{title:设置默认值}

{pstd}
如果您希望图形窗口始终使用 Times New Roman 作为默认字体，您可以输入

{phang2}
{cmd:. graph set window fontface "Times New Roman"}

{pstd}
稍后，您可以输入

{phang2}
{cmd:. graph set window fontface default}

{pstd}
以恢复到出厂设置。

{pstd}
要更改图形窗口中 {cmd:{stMono}} 使用的字体，您可以输入

{phang2}
{cmd:. graph set window fontfacemono "Lucida Console"}

{pstd}
并要重置它，您可以输入

{phang2}
{cmd:. graph set window fontfacemono default}

{pstd}
您可以通过输入

{phang2}
{cmd:. graph set}{p_end} 列出当前图形设置。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_set.sthlp>}