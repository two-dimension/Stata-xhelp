{smcl}
{* *! version 1.1.4  15oct2018}{...}
{viewerdialog Sp "dialog sp"}{...}
{vieweralsosee "[SP] spmatrix normalize" "mansection SP spmatrixnormalize"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro" "mansection SP Intro"}{...}
{vieweralsosee "[SP] spmatrix" "help spmatrix_zh"}{...}
{vieweralsosee "[SP] spmatrix import" "help spmatrix import"}{...}
{viewerjumpto "语法" "spmatrix_normalize_zh##syntax"}{...}
{viewerjumpto "菜单" "spmatrix_normalize_zh##menu"}{...}
{viewerjumpto "描述" "spmatrix_normalize_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "spmatrix_normalize_zh##linkspdf"}{...}
{viewerjumpto "选项" "spmatrix_normalize_zh##option"}{...}
{viewerjumpto "示例" "spmatrix_normalize_zh##examples"}
{help spmatrix_normalize:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[SP] spmatrix normalize} {hline 2}}归一化加权矩阵{p_end}
{p2col:}({mansection SP spmatrixnormalize:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:spmatrix} {cmd:normalize}
{it:spmatname}
[{cmd:,} {opt norm:alize(normalize)}]

{phang}
{it:spmatname} 是存储在内存中的现有空间加权矩阵的名称。

{marker spmatrix_normalize_options}{...}
{synoptset 20}{...}
{synopthdr:normalize}
{synoptline}
{synopt :{opt spec:tral}}谱归一化；默认值{p_end}
{synopt :{opt minmax}}最小--最大{p_end}
{synopt :{opt row}}行{p_end}
{synopt :{opt none}}不进行归一化；保持矩阵不变{p_end}
{synoptline}
{p2colreset}{...}


INCLUDE help menu_spatial


{marker description}{...}
{title:描述}

{pstd}
{cmd:spmatrix} {cmd:normalize} 归一化空间加权矩阵。它通常在使用 {helpb spmatrix import} 后使用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SP spmatrixnormalizeQuickstart:快速入门}

        {mansection SP spmatrixnormalizeRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

INCLUDE help sp_normalize_des


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/texas_merge.dta .}
{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/texas_merge_shp.dta .}
{p_end}
{phang2}{cmd:. use texas_merge}

{pstd}创建谱归一化的邻接加权矩阵{p_end}
{phang2}{cmd:. spmatrix create contiguity W}{p_end}
{phang2}{cmd:. spmatrix create contiguity M}{p_end}
{phang2}{cmd:. spmatrix create contiguity R}

{pstd}使用谱归一化对空间加权矩阵进行归一化{p_end}
{phang2}{cmd:. spmatrix normalize W}

{pstd}使用最小-最大归一化对空间加权矩阵进行归一化{p_end}
{phang2}{cmd:. spmatrix normalize M, normalize(minmax)}

{pstd}使用行归一化对空间加权矩阵进行归一化{p_end}
{phang2}{cmd:. spmatrix normalize R, normalize(row)}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spmatrix_normalize.sthlp>}