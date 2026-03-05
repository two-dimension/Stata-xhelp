{smcl}
{* *! version 1.0.4  11may2018}{...}
{viewerdialog Sp "dialog sp"}{...}
{vieweralsosee "[SP] spmatrix import" "mansection SP spmatriximport"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro" "mansection SP Intro"}{...}
{vieweralsosee "[SP] spmatrix" "help spmatrix_zh"}{...}
{vieweralsosee "[SP] spmatrix export" "help spmatrix export"}{...}
{vieweralsosee "[SP] spmatrix normalize" "help spmatrix normalize"}{...}
{viewerjumpto "Syntax" "spmatrix_import_zh##syntax"}{...}
{viewerjumpto "Menu" "spmatrix_import_zh##menu"}{...}
{viewerjumpto "Description" "spmatrix_import_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "spmatrix_import_zh##linkspdf"}{...}
{viewerjumpto "Option" "spmatrix_import_zh##option"}{...}
{viewerjumpto "Example" "spmatrix_import_zh##example"}
{help spmatrix_import:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[SP] spmatrix import} {hline 2}}从文本文件导入加权矩阵{p_end}
{p2col:}({mansection SP spmatriximport:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:spmatrix} {cmd:import}
{it:spmatname} {cmd:using}  {help filename_zh:{it:filename}}
[{cmd:,} {cmd:replace}]

{phang}
{it:spmatname} 将是创建的加权矩阵的名称。

{phang}
{it:filename} 是带有或不带有默认 {cmd:.txt} 后缀的文件名。


INCLUDE help menu_spatial


{marker description}{...}
{title:描述}

{pstd}
{cmd:spmatrix} {cmd:import} 读取由 {helpb spmatrix export} 创建的文件。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SP spmatriximportQuickstart:快速入门}

        {mansection SP spmatriximportRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt replace} 指定如果加权矩阵 {it:spmatname} 已经存在，则在内存中覆盖它。


{marker example}{...}
{title:示例}

{pstd}从文本文件导入空间加权矩阵{p_end}
{phang2}{cmd:. spmatrix import W using contig.txt}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spmatrix_import.sthlp>}