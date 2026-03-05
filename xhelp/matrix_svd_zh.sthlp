{smcl}
{* *! version 1.1.11  15may2018}{...}
{viewerdialog "matrix svd" "dialog matrix_svd"}{...}
{vieweralsosee "[P] matrix svd" "mansection P matrixsvd"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] matrix" "help matrix_zh"}{...}
{vieweralsosee "[P] matrix define" "help matrix define"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{vieweralsosee "[M-5] svd()" "help mf_svd_zh"}{...}
{viewerjumpto "Syntax" "matrix_svd_zh##syntax"}{...}
{viewerjumpto "Menu" "matrix_svd_zh##menu"}{...}
{viewerjumpto "Description" "matrix_svd_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "matrix_svd_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "matrix_svd_zh##remarks"}{...}
{viewerjumpto "Examples" "matrix_svd_zh##examples"}
{help matrix_svd:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[P] matrix svd} {hline 2}}奇异值分解{p_end}
{p2col:}({mansection P matrixsvd:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}{cmdab:mat:rix} {cmd:svd} {it:U} {it:W} {it:V} {cmd:=} {it:A}

{pstd}
其中 {it:U}，{it:W}，和 {it:V} 是矩阵名称（这些矩阵可以存在也可以不存在），而 {it:A} 是一个现有的 m x n 矩阵，m {ul:>} n。


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 矩阵，ado语言 > 奇异值分解}


{marker description}{...}
{title:描述}

{pstd}
{cmd:matrix svd} 生成 {it:A} 的奇异值分解（SVD）。

{pstd}
另请参见 {bf:{help mf_svd_zh:[M-5] svd()}} 以获取获取奇异值分解的替代例程。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P matrixsvdRemarksandexamples:备注和示例}

        {mansection P matrixsvdMethodsandformulas:方法和公式}

{pstd}
以上部分未包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
m x n 矩阵 {it:A} 的奇异值分解定义为

	{it:A} = {it:U} diag({it:W}) {it:V}'

{pstd}
其中 {it:U} 是列正交的，{it:W} 的元素是正数或零，并且 {it:V}'{it:V}=I。


{marker examples}{...}
{title:示例}

    {cmd:. matrix A = (1,2,9\2,7,5\2,4,18)}
    {cmd:. matrix svd U w V = A}
    {cmd:. matrix list U}
    {cmd:. matrix list w}
    {cmd:. matrix list V}
    {cmd:. matrix newA = U*diag(w)*V'}
    {cmd:. matrix list newA}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <matrix_svd.sthlp>}