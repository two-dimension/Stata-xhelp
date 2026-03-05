{smcl}
{* *! version 1.1.4  15oct2018}{...}
{viewerdialog Sp "dialog sp"}{...}
{vieweralsosee "[SP] spmatrix export" "mansection SP spmatrixexport"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro" "mansection SP Intro"}{...}
{vieweralsosee "[SP] spmatrix" "help spmatrix_zh"}{...}
{vieweralsosee "[SP] spmatrix import" "help spmatrix import"}{...}
{viewerjumpto "Syntax" "spmatrix_export_zh##syntax"}{...}
{viewerjumpto "Menu" "spmatrix_export_zh##menu"}{...}
{viewerjumpto "Description" "spmatrix_export_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "spmatrix_export_zh##linkspdf"}{...}
{viewerjumpto "Option" "spmatrix_export_zh##option"}{...}
{viewerjumpto "Example" "spmatrix_export_zh##example"}
{help spmatrix_export:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[SP] spmatrix export} {hline 2}}导出权重矩阵到文本文件{p_end}
{p2col:}({mansection SP spmatrixexport:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:spmatrix export}
{it:spmatname} {cmd:using} {help filename_zh:{it:filename}}
[{cmd:,} {cmd:replace}]

{phang}
{it:spmatname} 是存储在内存中的权重矩阵的名称。

{phang}
{it:filename} 是带有或不带有默认 {cmd:.txt} 后缀的文件名。


INCLUDE help menu_spatial


{marker description}{...}
{title:描述}

{pstd}
{cmd:spmatrix} {cmd:export} 将一个权重矩阵保存为文本文件，您可以将其发送给其他研究人员。

{pstd}
Stata 用户可以导入由 {cmd:spmatrix} {cmd:export} 创建的文本文件；请参见 {manhelp spmatrix_import SP:spmatrix import}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SP spmatrixexportQuickstart:快速入门}

        {mansection SP spmatrixexportRemarksandexamples:备注与示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:replace} 指定如果 {it:filename} 已经存在，则可以被覆盖。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/texas_merge.dta .}
{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/texas_merge_shp.dta .}
{p_end}
{phang2}{cmd:. use texas_merge}

{pstd}创建谱归一化的邻接权重矩阵{p_end}
{phang2}{cmd:. spmatrix create contiguity W}

{pstd}将空间权重矩阵导出到文本文件{p_end}
{phang2}{cmd:. spmatrix export W using contig.txt}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spmatrix_export.sthlp>}