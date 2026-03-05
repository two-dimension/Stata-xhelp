{smcl}
{* *! version 1.0.0  14jun2019}{...}
{viewerdialog "frames" "dialog frames"}{...}
{vieweralsosee "[D] frame rename" "mansection D framerename"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] frames intro" "help frames intro"}{...}
{vieweralsosee "[D] frames" "help frames_zh"}{...}
{vieweralsosee "[D] frame copy" "help frame_copy_zh"}{...}
{viewerjumpto "Syntax" "frame_rename_zh##syntax"}{...}
{viewerjumpto "Menu" "frame_rename_zh##menu"}{...}
{viewerjumpto "Description" "frame_rename_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "frame_rename_zh##linkspdf"}{...}
{viewerjumpto "Examples" "frame_rename_zh##examples"}
{help frame_rename:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[D] frame rename} {hline 2}}重命名现有框架{p_end}
{p2col:}({mansection D framerename:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 13 2}
{cmd:frame} {cmd:rename} {it:oldframename} {it:newframename}


INCLUDE help menu_frames


{marker description}{...}
{title:描述}

{pstd}
{cmd:frame} {cmd:rename} 更改现有框架的名称。您甚至可以重命名当前框架。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D framerenameRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}将 {cmd:default} 框架重命名为名为 {cmd:counties} 的新框架{p_end}
{phang2}{cmd:. frame rename default counties}{p_end}

{pstd}将现有框架 {cmd:cars} 重命名为 {cmd:automobiles}{p_end}
{phang2}{cmd:. frame rename cars automobiles}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <frame_rename.sthlp>}