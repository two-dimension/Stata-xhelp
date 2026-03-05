{smcl}
{* *! version 1.1.4  15oct2018}{...}
{viewerdialog Sp "dialog sp"}{...}
{vieweralsosee "[SP] spmatrix copy" "mansection SP spmatrixcopy"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro" "mansection SP Intro"}{...}
{vieweralsosee "[SP] spmatrix" "help spmatrix_zh"}{...}
{viewerjumpto "Syntax" "spmatrix_copy_zh##syntax"}{...}
{viewerjumpto "Menu" "spmatrix_copy_zh##menu"}{...}
{viewerjumpto "Description" "spmatrix_copy_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "spmatrix_copy_zh##linkspdf"}{...}
{viewerjumpto "Example" "spmatrix_copy_zh##example"}
{help spmatrix_copy:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[SP] spmatrix copy} {hline 2}}复制存储在内存中的空间加权矩阵{p_end}
{p2col:}({mansection SP spmatrixcopy:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:spmatrix} {cmd:copy}
{it:spmatname1} {it:spmatname2}

{phang}
{it:spmatname1} 是现有加权矩阵的名称。

{phang}
{it:spmatname2} 是一个不存在的加权矩阵名称。


INCLUDE help menu_spatial


{marker description}{...}
{title:描述}

{pstd}
{cmd:spmatrix} {cmd:copy} 将内存中存储的加权矩阵复制到新的名称中，这些名称同样存储在内存中。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SP spmatrixcopyQuickstart:快速开始}

{pstd}
上述部分未包含在此帮助文件中。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/texas_merge.dta .}
{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/texas_merge_shp.dta .}
{p_end}
{phang2}{cmd:. use texas_merge}

{pstd}创建一个具有默认频谱归一化的邻接加权矩阵{p_end}
{phang2}{cmd:. spmatrix create contiguity W}

{pstd}创建加权矩阵的副本{p_end}
{phang2}{cmd:. spmatrix copy W Wcollege}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spmatrix_copy.sthlp>}