{smcl}
{* *! version 1.1.8  15may2018}{...}
{vieweralsosee "[G-3] saving_option" "mansection G-3 saving_option"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph export" "help graph_export_zh"}{...}
{vieweralsosee "[G-2] graph save" "help graph_save_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph manipulation" "help graph_manipulation_zh"}{...}
{vieweralsosee "[G-4] Concept: gph files" "help gph_files_zh"}{...}
{viewerjumpto "Syntax" "saving_option_zh##syntax"}{...}
{viewerjumpto "Description" "saving_option_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "saving_option_zh##linkspdf"}{...}
{viewerjumpto "Option" "saving_option_zh##option"}{...}
{viewerjumpto "Suboptions" "saving_option_zh##suboptions"}{...}
{viewerjumpto "Remarks" "saving_option_zh##remarks"}
{help saving_option:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[G-3]} {it:saving_option} {hline 2}}将图形保存到磁盘的选项{p_end}
{p2col:}({mansection G-3 saving_option:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 30}{...}
{p2col:{it:saving_option}}描述{p_end}
{p2line}
{p2col:{cmd:saving(}{it:{help filename_zh}} [{cmd:,} {it:suboptions}]{cmd:)}}将图形保存到磁盘{p_end}
{p2line}
{p 4 6 2}{cmd:saving()} 是 {it:unique}；见 {help repeated options}。


{p2col:{it:suboptions}}描述{p_end}
{p2line}
{p2col:{cmd:asis}}冻结图形并按原样保存{p_end}
{p2col:{cmd:replace}}可以替换现有的 {it:filename}{p_end}
{p2line}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
选项 {cmd:saving()} 将图形保存到磁盘。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 saving_optionQuickstart:快速入门}

        {mansection G-3 saving_optionRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在本帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:saving(}{it:{help filename_zh}} [{cmd:,} {it:suboptions}]{cmd:)}
    指定要创建或替换的磁盘文件的名称。
    如果 {it:filename} 指定没有扩展名，默认将假定为 {cmd:.gph}。


{marker suboptions}{...}
{title:子选项}

{phang}
{cmd:asis} 指定图形应被冻结并按原样保存。
    替代选项——如果没有指定 {cmd:asis} 则为默认选项——称为实时格式。在实时格式下，图形可以在以后的会话中继续编辑，图形的整体外观仍受选定方案的控制（见 {manhelp schemes G-4:方案介绍}）。

{pmore}假设您输入

	    {cmd:. scatter yvar xvar,} ... {cmd:saving(mygraph)}

{pmore}
    这将创建文件 {cmd:mygraph.gph}。现在假设您将该文件发送给一位同事。图形在您同事的计算机上显示的方式可能与您计算机上显示的不一样。也许您在顶部显示标题，而您的同事设置他的方案在底部显示标题。或者也许您的同事更喜欢将 {it:y} 轴放在右侧而不是左侧。图形仍然是同一个，但外观可能不同。

{pmore}
    或者也许您只是将 {cmd:mygraph.gph} 存档以备后用。如果您将其存储在默认的实时格式中，您可以稍后返回并通过指定不同的方案或编辑图形来更改其外观。

{pmore}
    如果另一方面，您指定了 {cmd:asis}，图形将永远保持您保存时的样子。您不能对其进行编辑；您不能更改方案。如果您将按原样的图形发送给同事，他们将看到与您看到的完全相同的形式。

{pmore}
    无论图形是按原样保存还是实时保存，对打印没有区别。按原样的图形通常需要更少的字节存储，并且通常更快显示，除此之外没有其他区别。

{pstd}
{cmd:replace} 指定如果文件已存在则可以替换该文件。


{marker remarks}{...}
{title:备注}

{pstd}
要永久保存图形，您可以将 {cmd:saving()} 添加到 {cmd:graph} 命令的末尾（或在选项中间的任何地方）：

	{cmd:. graph} ... {cmd:,} ... {cmd:saving(myfile)} ...
	(文件 myfile.gph 已保存)

{pstd}
您也可以通过两个步骤实现相同的结果：

	{cmd:. graph} ... {cmd:,} ...

	{cmd:. graph save myfile}
	(文件 myfile.gph 已保存)

{pstd}
两部分构造的优势在于您可以在首次绘制图形和保存图形之间编辑图形。
一部分构造的优势在于您不会忘记保存它。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <saving_option.sthlp>}