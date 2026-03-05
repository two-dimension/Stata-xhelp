{smcl}
{* *! version 1.1.7  15may2018}{...}
{vieweralsosee "[G-2] graph save" "mansection G-2 graphsave"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] saving_option" "help saving_option_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph export" "help graph_export_zh"}{...}
{vieweralsosee "[G-2] graph manipulation" "help graph_manipulation_zh"}{...}
{vieweralsosee "[G-4] Concept: gph files" "help gph_files_zh"}{...}
{viewerjumpto "Syntax" "graph save##syntax"}{...}
{viewerjumpto "Description" "graph save##description"}{...}
{viewerjumpto "Links to PDF documentation" "graph_save_zh##linkspdf"}{...}
{viewerjumpto "Options" "graph save##options"}{...}
{viewerjumpto "Remarks" "graph save##remarks"}
{help graph_save:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[G-2] graph save} {hline 2}}将图形保存到磁盘{p_end}
{p2col:}({mansection G-2 graphsave:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmdab:gr:aph}
{cmd:save}
[{it:graphname}]
{it:{help filename_zh}}
[{cmd:,}
{cmd:asis}
{cmd:replace}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} {cmd:save} 将指定的图形保存到磁盘。如果没有指定 {it:graphname}，则当前显示的图形将以 Stata 的 {cmd:.gph} 格式保存到磁盘。

{pstd}
如果指定了 {it:{help filename_zh}} 而没有扩展名，则假定为 {cmd:.gph}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-2 graphsaveQuickstart:快速入门}

        {mansection G-2 graphsaveRemarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:asis} 指定图形保持当前状态并按原样保存。
    替代选项 -- 如果不指定 {cmd:asis} 则为默认选项 -- 是实时格式。在实时格式中，图形可以在未来的会话中进行编辑，图形的整体外观仍由所选方案控制（参见 {manhelp schemes G-4:方案介绍}）。

{pmore} 假设你输入

	    {cmd:. scatter yvar xvar,} ...
	    {cmd:. graph save mygraph}

{pmore}
    这将创建文件 {cmd:mygraph.gph}。假设你将该文件发送给同事。图形在你同事电脑上的显示方式可能与在你那不同。也许你在顶部显示标题，而你的同事设置他的方案在底部显示标题。或者，也许你的同事更喜欢 {it:y} 轴在右侧而不是左侧。它仍然是同一幅图，但可能看起来不同。

{pmore}
    或者，也许你只是将 {cmd:mygraph.gph} 文件存档以备后用。如果该文件以默认的实时格式存储，你可以回来并通过指定不同的方案来更改它的外观，还可以对其进行编辑。

{pmore}
    另一方面，如果你指定了 {cmd:asis}，则图形将永远保持与保存时的样子一样。你不能编辑它，也不能更改方案。如果你将该图形按原样发送给同事，他们将看到你所看到的内容完全相同。

{pmore}
    无论图形是按原样保存还是以实时格式保存，对于打印没有任何区别。按原样保存的图形通常占用更少的存储空间，并且通常显示更快，但这就是全部。

{pstd}
{cmd:replace} 指定如果文件已经存在，可以进行替换。


{marker remarks}{...}
{title:备注}

{pstd}
你也可以通过指定 {cmd:saving(}{it:filename}[{cmd:,}
{cmd:asis}
{cmd:replace}]{cmd:)} 选项，在绘制图形时立即保存它；参见 {manhelpi saving_option G-3}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_save.sthlp>}