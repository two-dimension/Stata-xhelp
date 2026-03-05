{smcl}
{* *! version 1.1.4  15oct2018}{...}
{viewerdialog Sp "dialog sp"}{...}
{vieweralsosee "[SP] spmatrix use" "mansection SP spmatrixuse"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro" "mansection SP Intro"}{...}
{vieweralsosee "[SP] spmatrix" "help spmatrix_zh"}{...}
{vieweralsosee "[SP] spmatrix import" "help spmatrix import"}{...}
{vieweralsosee "[SP] spmatrix save" "help spmatrix save"}{...}
{viewerjumpto "Syntax" "spmatrix_use_zh##syntax"}{...}
{viewerjumpto "Menu" "spmatrix_use_zh##menu"}{...}
{viewerjumpto "Description" "spmatrix_use_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "spmatrix_use_zh##linkspdf"}{...}
{viewerjumpto "Option" "spmatrix_use_zh##option"}{...}
{viewerjumpto "Example" "spmatrix_use_zh##example"}
{help spmatrix_use:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[SP] spmatrix use} {hline 2}}从文件加载空间加权矩阵{p_end}
{p2col:}({mansection SP spmatrixuse:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:spmatrix} {cmd:use}
{it:spmatname} {cmd:using} {help filename_zh:{it:filename}}
[{cmd:,} {cmd:replace}]

{phang}
{it:spmatname} 是加权矩阵的名称。

{phang}
{it:filename} 是文件名称，带或不带 {cmd:.stswm} 后缀。


INCLUDE help menu_spatial


{marker description}{...}
{title:描述}

{pstd}
{cmd:spmatrix} {cmd:use} 加载先前使用 {helpb spmatrix save} 保存的空间加权矩阵。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SP spmatrixuseQuickstart:快速入门}

        {mansection SP spmatrixuseRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt replace} 指定如果加权矩阵 {it:spmatname} 已存在，则进行覆盖。


{marker example}{...}
{title:示例}

{pstd}准备工作{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/texas_merge.dta .}
{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/texas_merge_shp.dta .}
{p_end}
{phang2}{cmd:. use texas_merge}

{pstd}创建二阶邻接权重矩阵，行标准化，邻居设置为 0.5{p_end}
{phang2}{cmd:. spmatrix create contiguity M, normalize(row) second(0.5)}

{pstd}在加权矩阵上添加注释{p_end}
{phang2}{cmd:. spmatrix note M: 行标准化的二阶邻接矩阵}

{pstd}保存加权矩阵 {cmd:M}{p_end}
{phang2}{cmd:. spmatrix save M using mwm}

{pstd}加载存储在 {cmd:mwm.stswm} 中的加权矩阵 {cmd:M}{p_end}
{phang2}{cmd:. spmatrix use M using mwm.stswm, replace}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spmatrix_use.sthlp>}