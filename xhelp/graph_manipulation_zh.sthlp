{smcl}
{* *! version 1.2.4  15may2018}{...}
{vieweralsosee "[G-2] graph manipulation" "mansection G-2 graphmanipulation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph save" "help graph_save_zh"}{...}
{vieweralsosee "[G-3] name_option" "help name_option_zh"}{...}
{vieweralsosee "[G-3] saving_option" "help saving_option_zh"}{...}
{vieweralsosee "[G-4] Concept: gph files" "help gph_files_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] clear" "help clear_zh"}{...}
{vieweralsosee "[P] discard" "help discard_zh"}{...}
{vieweralsosee "[D] drop" "help drop_zh"}{...}
{viewerjumpto "Syntax" "graph manipulation##syntax"}{...}
{viewerjumpto "Description" "graph manipulation##description"}{...}
{viewerjumpto "Links to PDF documentation" "graph_manipulation_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "graph manipulation##remarks"}
{help graph_manipulation:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[G-2] graph manipulation} {hline 2}}图形操作命令{p_end}
{p2col:}({mansection G-2 graphmanipulation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col:命令}
	描述{p_end}
{p2line}
{p2col:{helpb graph dir}}
	列出图形名称{p_end}
{p2col:{helpb graph describe}}
	描述图形的内容{p_end}
{p2col:{helpb graph drop}}
	删除存储在内存中的图形{p_end}
{p2col:{helpb graph close}}
	关闭图形窗口{p_end}
{p2col:{helpb graph rename}}
	重命名存储在内存中的图形{p_end}
{p2col:{helpb graph copy}}
	复制存储在内存中的图形{p_end}
{p2col:{helpb graph export}}
	导出当前图形{p_end}

{p2col:{helpb graph use}}
	加载磁盘上的图形到内存并显示{p_end}
{p2col:{helpb graph display}}
	重新显示存储在内存中的图形{p_end}
{p2col:{helpb graph combine}}
	组合多个图形{p_end}
{p2col:{helpb graph replay}}
	重新显示存储在内存和磁盘上的图形{p_end}
{p2line}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
图形操作命令用于操作存储在内存或磁盘上的图形。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-2 graphmanipulationRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注以以下标题呈现：

	{help graph manipulation##remarks1:内存中的图形与磁盘上的图形概述}
	{help graph manipulation##remarks2:图形操作命令摘要}


{marker remarks1}{...}
{title:内存中的图形与磁盘上的图形概述}

{pstd}
图形存储在内存中和磁盘上。当您绘制图形时，例如输入

	{cmd:. graph twoway scatter mpg weight}

{pstd}
生成的图形存储在内存中，特别是存储在名为 {cmd:Graph} 下。如果您接着输入

	{cmd:. graph matrix mpg weight displ}

{pstd}
这个新图形将替换现有名为 {cmd:Graph} 的图形。

{pstd}
{cmd:Graph} 是用于记录内存中图形的默认名称，当您绘制图形时，它们会替换之前记录在 {cmd:Graph} 中的内容。

{pstd}
您可以指定 {cmd:name()} 选项 -- 参见 {manhelpi name_option G-3} -- 以不同名称记录图形：

	{cmd:. graph twoway scatter mpg weight, name(scat)}

{pstd}
现在内存中有两个图形： {cmd:Graph}，包含散点图矩阵，以及 {cmd:scat}，包含 mpg 与 weight 的图形。

{pstd}
内存中的图形在您退出 Stata 时会被遗忘，在输入 {cmd:clear} 或 {cmd:discard} 时也会被忘记；请参见 {manhelp drop D} 和 {manhelp discard P}。

{pstd}
图形可以存储在磁盘上，它们将永久保留，直到您将其删除。它们保存在以 {cmd:.gph} 结尾的文件中；参见 {help gph files}。

{pstd}
您可以通过输入以下命令将当前显示在图形窗口中的图形保存到磁盘：

	{cmd:. graph save mygraph.gph}

{pstd}
结果是创建一个新文件 {cmd:mygraph.gph}；参见 {manhelp graph_save G-2:graph save}。或者 -- 参见 {manhelpi saving_option G-3} -- 您可以在最初绘制图形时将其保存到磁盘：

	{cmd:. graph twoway scatter mpg weight, saving(mygraph.gph)}

{pstd}
无论哪种方式，存储在磁盘上的图形可以重新加载：

	{cmd:. graph use mygraph.gph}

{pstd}
将 {cmd:mygraph.gph} 加载到内存中，其名称 -- 您猜对了 -- 是 {cmd:Graph}。当然，您也可以在不同名称下加载它：

	{cmd:. graph use mygraph.gph, name(memcp)}

{pstd}
将此图形带回内存后，您会发现情况和第一次绘制图形时一样。您可以做任何过去能做的事情 -- 例如将图形与其他图形组合或改变其长宽比 -- 现在都可以进行。当然，在进行任何更改后，您可以将结果保存到磁盘中，替换文件 {cmd:mygraph.gph} 或以新名称保存。

{pstd}
最后，还有一个小细节：磁盘上的图形可以保存为两种格式，分别称为 {cmd:live} 和 {cmd:asis}。 {cmd:live} 是首选格式，也是默认格式，以上内容仅适用于 {cmd:live} 格式的文件。 {cmd:asis} 文件更像是图片 -- 您只能欣赏它们和制作副本。要将文件保存为 {cmd:asis} 格式，您输入

	{cmd:. graph save} ...{cmd:, asis}
    或
	{cmd:. graph} ...{cmd:,} ... {cmd:saving(}...{cmd:, asis)}

{pstd}
{cmd:asis} 格式在 {help gph files} 中进行了讨论。

{pstd}
还有另一种格式叫 {cmd:old}，它像 {cmd:asis}，但指的是由 Stata 8 之前的版本生成的图形。此格式也在 {help gph files} 中进行了讨论。


{marker remarks2}{...}
{title:图形操作命令摘要}

{pstd}
图形操作命令帮助您管理图形，无论是在内存中还是在磁盘上。命令包括

{phang2}
    {cmd:graph dir}{break}
	列出存储图形的名称，包括内存中和磁盘上的；
	参见 {manhelp graph_dir G-2:graph dir}。

{phang2}
    {cmd:graph describe}{break}
	提供有关图形的详细信息，无论是存储在内存中还是在磁盘上；
	参见 {manhelp graph_describe G-2:graph describe}。

{phang2}
    {cmd:graph drop}{break}
	从内存中删除存储的图形；
	参见 {manhelp graph_drop G-2:graph drop}。

{phang2}
    {cmd:graph close}{break}
	关闭图形窗口；
	参见 {manhelp graph_close G-2:graph close}。

{phang2}
    {cmd:graph rename}{break}
	更改存储在内存中的图形的名称；
	参见 {manhelp graph_rename G-2:graph rename}。

{phang2}
    {cmd:graph copy}{break}
	制作存储在内存中的图形的副本；
	参见 {manhelp graph_copy G-2:graph copy}。

{phang2}
    {cmd:graph export}{break}
	将当前显示的图形导出到文件；
	参见 {manhelp graph_export G-2:graph export}。

{phang2}
    {cmd:graph use}{break}
	将磁盘上的图形复制到内存并显示；
	参见 {manhelp graph_use G-2:graph use}。

{phang2}
    {cmd:graph display}{break}
	重新显示存储在内存中的图形；
	参见 {manhelp graph_display G-2:graph display}。

{phang2}
    {cmd:graph combine}{break}
	组合存储在内存或磁盘上的图形；
	参见 {manhelp graph_combine G-2:graph combine}。

{phang2}
    {cmd:graph replay}{break}
	重新显示存储在内存和磁盘上的图形；
	参见 {manhelp graph_replay G-2:graph replay}.{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_manipulation.sthlp>}