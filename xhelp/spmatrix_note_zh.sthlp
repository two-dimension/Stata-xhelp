{smcl}
{* *! version 1.1.4  15oct2018}{...}
{viewerdialog Sp "dialog sp"}{...}
{vieweralsosee "[SP] spmatrix note" "mansection SP spmatrixnote"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro" "mansection SP Intro"}{...}
{vieweralsosee "[SP] spmatrix" "help spmatrix_zh"}{...}
{vieweralsosee "[SP] spmatrix save" "help spmatrix save"}{...}
{viewerjumpto "Syntax" "spmatrix_note_zh##syntax"}{...}
{viewerjumpto "Menu" "spmatrix_note_zh##menu"}{...}
{viewerjumpto "Description" "spmatrix_note_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "spmatrix_note_zh##linkspdf"}{...}
{viewerjumpto "Example" "spmatrix_note_zh##example"}
{help spmatrix_note:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[SP] spmatrix note} {hline 2}}在权重矩阵上放置注释或显示注释{p_end}
{p2col:}({mansection SP spmatrixnote:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:spmatrix} {cmd:note} {it:spmatname} {cmd::} {it:text}

{p 8 14 2}
{cmd:spmatrix} {cmd:note} {it:spmatname}

{phang}
{it:spmatname} 是现有权重矩阵的名称。


INCLUDE help menu_spatial


{marker description}{...}
{title:描述}

{pstd}
{cmd:spmatrix} {cmd:note} {it:spmatname}{cmd::} {it:text} 将注释放置或替换存储在内存中的权重矩阵 {it:spmatname} 的注释。

{pstd}
{cmd:spmatrix} {cmd:note} {it:spmatname} 显示注释。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SP spmatrixnoteQuickstart:快速入门}

        {mansection SP spmatrixnoteRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/texas_merge.dta .}
{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/texas_merge_shp.dta .}
{p_end}
{phang2}{cmd:. use texas_merge}

{pstd}创建行标准化的邻接权重矩阵，二阶邻居设为0.5{p_end}
{phang2}{cmd:. spmatrix create contiguity M, normalize(row) second(0.5)}

{pstd}在权重矩阵上添加注释{p_end}
{phang2}{cmd:. spmatrix note M: 行标准化二阶邻接矩阵}

{pstd}显示权重矩阵 {cmd:M} 的注释{p_end}
{phang2}{cmd:. spmatrix note M}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spmatrix_note.sthlp>}