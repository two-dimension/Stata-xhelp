{smcl}
{* *! version 1.1.5  23jun2019}{...}
{viewerdialog Sp "dialog sp"}{...}
{vieweralsosee "[SP] spmatrix drop" "mansection SP spmatrixdrop"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro" "mansection SP Intro"}{...}
{vieweralsosee "[SP] spmatrix" "help spmatrix_zh"}{...}
{vieweralsosee "[SP] spmatrix summarize" "help spmatrix summarize"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] clear" "help clear_zh"}{...}
{vieweralsosee "[M] mata" "mansection M-0 Mata"}{...}
{viewerjumpto "Syntax" "spmatrix_drop_zh##syntax"}{...}
{viewerjumpto "Menu" "spmatrix_drop_zh##menu"}{...}
{viewerjumpto "Description" "spmatrix_drop_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "spmatrix_drop_zh##linkspdf"}{...}
{viewerjumpto "Example" "spmatrix_drop_zh##example"}{...}
{viewerjumpto "Stored results" "spmatrix_drop_zh##results"}
{help spmatrix_drop:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[SP] spmatrix drop} {hline 2}}列出并删除存储在内存中的加权矩阵{p_end}
{p2col:}({mansection SP spmatrixdrop:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法} 

{phang}
列出存储在内存中的 Sp 加权矩阵

{p 8 14 2}
{cmd:spmatrix dir}


{phang}
从内存中删除一个 Sp 矩阵

{p 8 14 2}
{cmd:spmatrix drop} {it:spmatname}


{phang}
从内存中删除所有加权矩阵

{p 8 14 2}
{cmd:spmatrix clear}


{phang}
{it:spmatname} 是存储在内存中的 Sp 加权矩阵的名称。


INCLUDE help menu_spatial


{marker description}{...}
{title:描述}

{pstd}
{cmd:spmatrix} {cmd:dir} 列出存储在内存中的 Sp 加权矩阵。  

{pstd}
{cmd:spmatrix} {cmd:drop} 从内存中删除一个 Sp 矩阵。

{pstd}
{cmd:spmatrix} {cmd:clear} 从内存中删除所有 Sp 矩阵。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SP spmatrixdropQuickstart:快速入门}

        {mansection SP spmatrixdropRemarksandexamples:备注和示例}

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
{p_end}
{phang2}{cmd:. spmatrix create contiguity W}
{p_end}
{phang2}{cmd:. spmatrix create contiguity M, normalize(row) second(0.5)}
{p_end}
{phang2}{cmd:. spmatrix create idistance W, replace}

{pstd}列出所有存储在内存中的加权矩阵{p_end}
{phang2}{cmd:. spmatrix dir}

{pstd}删除加权矩阵 {cmd:M}{p_end}
{phang2}{cmd:. spmatrix drop M}

{pstd}删除所有加权矩阵{p_end}
{phang2}{cmd:. spmatrix clear}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:spmatrix} {cmd:dir} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt :{cmd:r(names)}}空格分隔的矩阵名称列表{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spmatrix_drop.sthlp>}