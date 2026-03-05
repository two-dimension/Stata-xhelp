{smcl}
{* *! version 1.0.3  19oct2017}{...}
{viewerdialog "graph close" "dialog graph_close"}{...}
{vieweralsosee "[G-2] graph close" "mansection G-2 graphclose"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph drop" "help graph_drop_zh"}{...}
{vieweralsosee "[G-2] graph manipulation" "help graph_manipulation_zh"}{...}
{vieweralsosee "[G-2] graph replay" "help graph_replay_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] discard" "help discard_zh"}{...}
{vieweralsosee "[D] erase" "help erase_zh"}{...}
{vieweralsosee "[P] window manage" "help window manage"}{...}
{viewerjumpto "Syntax" "graph_close_zh##syntax"}{...}
{viewerjumpto "Menu" "graph_close_zh##menu"}{...}
{viewerjumpto "Description" "graph_close_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "graph_close_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "graph_close_zh##remarks"}
{help graph_close:English Version}
{hline}{...}
{p2colset 1 22 23 2}{...}
{p2col:{bf:[G-2] graph close} {hline 2}}关闭图形窗口{p_end}
{p2col:}({mansection G-2 graphclose:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
关闭指定名称的图形窗口

{p 8 23 2}
{cmdab:gr:aph}
{cmd:close}
{it:name}
[{it:name} ...]


{pstd}
关闭所有图形窗口

{p 8 23 2}
{cmdab:gr:aph}
{cmd:close }
[{cmd:_all}]


{phang}
{it:name} 是图形窗口的名称或使用 {cmd:?} 和 {cmd:*} 通配符字符的图形窗口部分名称。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 管理图形 > 关闭图形}


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} {cmd:close} 关闭指定的或所有图形窗口。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection G-2 graphcloseQuickstart:快速开始}

        {mansection G-2 graphcloseRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
请参阅 {manhelp graph_manipulation G-2:图形操作} 以获取图形操作命令的介绍。请参阅 {manhelp window_manage P:窗口管理} 以了解如何访问 Stata 的窗口界面。

{pstd}
{cmd:graph} {cmd:close} 关闭图形窗口，允许用户轻松管理 Stata 的窗口界面。 {cmd:graph} {cmd:close} 也可以用于在一系列图形之间移动。在检查完每个图形后，可以在不手动关闭图形窗口的情况下关闭它。 {cmd:Graph} 是图形的默认名称。

	{cmd:. graph twoway scatter faminc educ, ms(p)}
	...
	{cmd:. graph close Graph}

	{cmd:. graph twoway scatter faminc hsngval, ms(p)}
	...
	{cmd:. graph close Graph}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_close.sthlp>}