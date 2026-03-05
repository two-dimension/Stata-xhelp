{smcl}
{* *! version 1.1.8  19oct2017}{...}
{vieweralsosee "[G-3] name_option" "mansection G-3 name_option"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph display" "help graph_display_zh"}{...}
{vieweralsosee "[G-2] graph drop" "help graph_drop_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph save" "help graph_save_zh"}{...}
{vieweralsosee "[G-3] saving_option" "help saving_option_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph manipulation" "help graph_manipulation_zh"}{...}
{viewerjumpto "Syntax" "name_option_zh##syntax"}{...}
{viewerjumpto "Description" "name_option_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "name_option_zh##linkspdf"}{...}
{viewerjumpto "Option" "name_option_zh##option"}{...}
{viewerjumpto "Remarks" "name_option_zh##remarks"}
{help name_option:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[G-3]} {it:name_option} {hline 2}}在内存中命名图形的选项{p_end}
{p2col:}({mansection G-3 name_option:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 25}{...}
{p2col:{it:name_option}}描述{p_end}
{p2line}
{p2col:{cmd:name(}{it:name}[{cmd:, replace}]{cmd:)}}指定名称{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}{cmd:name()} 是 {it:unique}；请参见 {help repeated options}。


{marker description}{...}
{title:描述}

{pstd}
选项 {cmd:name()} 指定正在创建的图形的名称。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 name_optionRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:name(}{it:name}[{cmd:, replace}]{cmd:)}
    指定图形的名称。
    如果未指定 {cmd:name()}，则默认为 {cmd:name(Graph, replace)}。

{pmore}
    实际上，{cmd:name(Graph)} 与 {cmd:name(Graph, replace)} 的效果相同，
    因为当名称为 {cmd:Graph} 时，假定使用 {cmd:replace}。
    对于所有其他 {it:names}，如果该名称下已经存在图形，则必须指定子选项 {cmd:replace}。


{marker remarks}{...}
{title:备注}

{pstd}
当你键入，例如，

	{cmd:. scatter yvar xvar}

{pstd}
你会看到一幅图形。该图形也存储在内存中。例如，尝试以下操作：关闭图形窗口，然后键入

	{cmd:. graph display}

{pstd}
你的图形将重新出现。

{pstd}
每次绘制图形时，之前记住的图形将被丢弃，新图形将替代它。

{pstd}
你可以在内存中存储多个图形。当你没有指定图形的记忆名称时，它将以默认名称 {cmd:Graph} 进行记忆。例如，如果你现在输入

	{cmd:. scatter y2var xvar, name(g2)}

{pstd}
你现在将在内存中存储两个图形：{cmd:Graph} 和 {cmd:g2}。
如果你输入

	{cmd:. graph display}
    或
	{cmd:. graph display Graph}

{pstd}
你会看到你的第一个图形。输入

	{cmd:. graph display g2}

{pstd}
你将看到你的第二个图形。

{pstd}
不要将 Stata 在内存中存储图形与将图形保存到磁盘混淆。如果你现在 {cmd:exit} Stata，你在内存中存储的图形将永远丢失。如果你想保存你的图形，你需要指定 {cmd:saving()} 选项（参见 {manhelpi saving_option G-3}）或使用 {cmd:graph} {cmd:save} 命令（参见 {manhelp graph_save G-2:图形保存}）；两者会产生相同的结果。

{pstd}
你可以使用 {cmd:graph dir} 查找当前内存中的图形，使用 {cmd:graph drop} 删除它们，使用 {cmd:graph rename} 重命名它们，等等，当然，你也可以使用 {cmd:graph} {cmd:display} 重新显示它们。有关所有这些命令的详细信息，请参见 {manhelp graph_manipulation G-2:图形操作}。

{pstd}
你可以使用 {cmd:graph} {cmd:drop} {cmd:_all} 或 {cmd:discard} 删除当前存储在内存中的所有图形；请参见 {manhelp graph_drop G-2:图形删除}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <name_option.sthlp>}