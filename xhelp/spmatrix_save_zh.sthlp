{smcl}
{* *! version 1.1.4  15oct2018}{...}
{viewerdialog Sp "dialog sp"}{...}
{vieweralsosee "[SP] spmatrix save" "mansection SP spmatrixsave"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro" "mansection SP Intro"}{...}
{vieweralsosee "[SP] spmatrix" "help spmatrix_zh"}{...}
{vieweralsosee "[SP] spmatrix export" "help spmatrix export"}{...}
{vieweralsosee "[SP] spmatrix use" "help spmatrix use"}{...}
{viewerjumpto "Syntax" "spmatrix_save_zh##syntax"}{...}
{viewerjumpto "Menu" "spmatrix_save_zh##menu"}{...}
{viewerjumpto "Description" "spmatrix_save_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "spmatrix_save_zh##linkspdf"}{...}
{viewerjumpto "Option" "spmatrix_save_zh##option"}{...}
{viewerjumpto "Example" "spmatrix_save_zh##example"}
{help spmatrix_save:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[SP] spmatrix save} {hline 2}}将空间权重矩阵保存到文件{p_end}
{p2col:}({mansection SP spmatrixsave:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:spmatrix} {cmd:save}
{it:spmatname}  {cmd:using} {help filename_zh:{it:filename}}
[{cmd:,} {cmd:replace}]

{phang}
{it:spmatname} 是现有权重矩阵的名称。

{phang}
{it:filename} 是一个文件的名称，可以带或不带 {cmd:.stswm} 后缀。


INCLUDE help menu_spatial


{marker description}{...}
{title:描述}

{pstd}
{cmd:spmatrix} {cmd:save} 将指定的空间权重矩阵保存到磁盘。你可以稍后使用 {helpb spmatrix use} 加载该矩阵。

{pstd}
{it:spmatname} 被保存到磁盘，但不会从内存中删除。 
如果你希望从内存中删除该矩阵，请参见 
{manhelp spmatrix_drop SP:spmatrix drop}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SP spmatrixsaveQuickstart:快速入门}

        {mansection SP spmatrixsaveRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:replace} 指定如果 {it:filename} 已存在，则覆盖该文件。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/texas_merge.dta .}
{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/texas_merge_shp.dta .}
{p_end}
{phang2}{cmd:. use texas_merge}

{pstd}创建行标准化的邻接权重矩阵，第二阶邻居设置为0.5{p_end}
{phang2}{cmd:. spmatrix create contiguity M, normalize(row) second(0.5)}

{pstd}在权重矩阵上添加注释{p_end}
{phang2}{cmd:. spmatrix note M: row-standardized second-order contiguity matrix}

{pstd}保存权重矩阵 {cmd:M}{p_end}
{phang2}{cmd:. spmatrix save M using mwm}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spmatrix_save.sthlp>}