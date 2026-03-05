{smcl}
{* *! version 1.0.0  14jun2019}{...}
{viewerdialog "frames" "dialog frames"}{...}
{vieweralsosee "[D] frame copy" "mansection D framecopy"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] frames intro" "help frames intro"}{...}
{vieweralsosee "[D] frame put" "help frame_put_zh"}{...}
{vieweralsosee "[D] frame rename" "help frame_rename_zh"}{...}
{viewerjumpto "Syntax" "frame_copy_zh##syntax"}{...}
{viewerjumpto "Menu" "frame_copy_zh##menu"}{...}
{viewerjumpto "Description" "frame_copy_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "frame_copy_zh##linkspdf"}{...}
{viewerjumpto "Option" "frame_copy_zh##option"}{...}
{viewerjumpto "Examples" "frame_copy_zh##examples"}
{help frame_copy:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[D] frame copy} {hline 2}}复制一个框架{p_end}
{p2col:}({mansection D framecopy:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 13 2}
{cmd:frame} {cmd:copy} {it:frame_from} {it:frame_to}
[{cmd:,} {cmd:replace}]


INCLUDE help menu_frames


{marker description}{...}
{title:描述}

{pstd}
{cmd:frame} {cmd:copy} 将现有框架复制到一个新名称的框架或替换其内容的现有框架。 {it:frame_from} 中的所有数据和元数据都会被复制。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D framecopyQuickstart:快速开始}

        {mansection D framecopyRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt replace} 指定如果 {it:frame_to} 已存在，则将其替换。


{marker examples}{...}
{title:示例}

{pstd}将 {cmd:default} 框架复制到名为 {cmd:counties} 的新框架{p_end}
{phang2}{cmd:. frame copy default counties}{p_end}

{pstd}将框架复制到名为 {cmd:cars} 的现有框架，并替换它{p_end}
{phang2}{cmd:. frame copy automobiles cars, replace}{p_end}

{pstd}在程序中将框架复制到临时名称{p_end}
{phang2}{cmd:. tempname newframe}{p_end}
{phang2}{cmd:. frame copy counties `newframe'}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <frame_copy.sthlp>}