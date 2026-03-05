{smcl}
{* *! version 1.1.8  15may2018}{...}
{viewerdialog "graph query" "dialog graph_query"}{...}
{vieweralsosee "[G-2] graph query" "mansection G-2 graphquery"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] Schemes intro" "help schemes_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] palette" "help palette_zh"}{...}
{viewerjumpto "Syntax" "graph query##syntax"}{...}
{viewerjumpto "Menu" "graph query##menu"}{...}
{viewerjumpto "Description" "graph query##description"}{...}
{viewerjumpto "Links to PDF documentation" "graph_query_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "graph query##remarks"}
{help graph_query:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[G-2] graph query} {hline 2}}列出可用的方案和样式{p_end}
{p2col:}({mansection G-2 graphquery:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmdab:gr:aph}
{cmdab:q:uery},
{cmdab:sch:emes}

{p 8 16 2}
{cmdab:gr:aph}
{cmdab:q:uery}

{p 8 16 2}
{cmdab:gr:aph}
{cmdab:q:uery}
{it:stylename}


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 管理图形 > 查询样式和方案}


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} {cmd:query,} {cmd:schemes} 列出可用的方案。

{pstd}
{cmd:graph} {cmd:query} 不带选项时列出可用的样式。

{pstd}
{cmd:graph} {cmd:query} {it:stylename} 列出在 {it:stylename} 中可用的样式。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphqueryQuickstart:快速入门}

        {mansection G-2 graphqueryRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
本手册可能并不完整 -- 可能确实不完整。方案和样式可以通过更新（见 {manhelp update R}）由 StataCorp 添加，也可以通过其他用户上传至互联网（见 {manhelp net R} 和 {manhelp ssc R}），亦可以由您添加。

{pstd}
方案定义了图形的外观（见 {manhelp schemes G-4:方案介绍}），而样式定义了您可以使用的特性（见 {manhelpi symbolstyle G-4} 或 {manhelpi linestyle G-4}）。

{pstd}
要找出您计算机上安装了哪些方案，请输入

	{cmd:. graph query, schemes}

{pstd}
有关方案及其使用方法的信息，请参见 {manhelp schemes G-4:方案介绍}。

{pstd}
要找出您计算机上安装了哪些样式，请输入

	{cmd:. graph query}

{pstd}
将列出许多样式。如何使用这些样式在本手册中有描述。例如，列表中将包含的样式之一是 {it:symbolstyle}。有关符号样式的更多信息，请参见 {manhelpi symbolstyle G-4}。要找出可用的符号样式，请输入

	{cmd:. graph query symbolstyle}

{pstd}
所有样式以 "{it:style}" 结尾，您可以省略输入这部分：{p_end}

	{cmd:. graph query symbol}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_query.sthlp>}