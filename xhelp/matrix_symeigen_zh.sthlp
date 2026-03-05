{smcl}
{* *! version 1.1.8  15may2018}{...}
{viewerdialog "matrix symeigen" "dialog matrix_symeigen"}{...}
{vieweralsosee "[P] matrix symeigen" "mansection P matrixsymeigen"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] matrix" "help matrix_zh"}{...}
{vieweralsosee "[P] matrix eigenvalues" "help matrix_eigenvalues_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{viewerjumpto "Syntax" "matrix_symeigen_zh##syntax"}{...}
{viewerjumpto "Menu" "matrix_symeigen_zh##menu"}{...}
{viewerjumpto "Description" "matrix_symeigen_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "matrix_symeigen_zh##linkspdf"}{...}
{viewerjumpto "Examples" "matrix_symeigen_zh##examples"}
{help matrix_symeigen:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[P] matrix symeigen} {hline 2}}对称矩阵的特征值和特征向量{p_end}
{p2col:}({mansection P matrixsymeigen:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmdab:mat:rix} {cmdab:syme:igen} {it:X} {it:v} {cmd:=} {it:A}

{phang}
其中 {it:A} 是一个 n x n 的对称矩阵。


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 矩阵，ado 语言 > 对称矩阵的特征值和特征向量}


{marker description}{...}
{title:描述}

{pstd}
{cmd:matrix symeigen} 返回特征向量存储在 {it:X} 的列中：n x n，特征值存储在 {it:v} 中：1 x n。特征值是排序过的：{it:v}[1,1] 包含最大的特征值（而 {it:X}[1...,1] 是其对应的特征向量），{it:v}[1,{it:n}] 包含最小的特征值（而 {it:X}[1...,{it:n}] 是其对应的特征向量）。

{pstd}
如果您想要非对称矩阵的特征值，请参见
{manhelp matrix_eigenvalues P:矩阵特征值}。

{pstd}
另请参见 {bf:{help mf_eigensystem_zh:[M-5] eigensystem()}} 以获取获取特征值和特征向量的其他例程。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P matrixsymeigenRemarksandexamples:备注和示例}

        {mansection P matrixsymeigenMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}

{pstd}形成交叉乘积矩阵{p_end}
{phang2}{cmd:. matrix accum A = weight mpg length, noconstant deviation}

{pstd}列出 {cmd:A} 的内容{p_end}
{phang2}{cmd:. mat list A}

{pstd}创建矩阵 X，它包含 A 的特征向量，向量 {cmd:lambda} 包含 A 的特征值{p_end}
{phang2}{cmd:. matrix symeigen X lambda = A}

{pstd}列出 {cmd:lambda} 的内容{p_end}
{phang2}{cmd:. mat list lambda}

{pstd}列出 {cmd:X} 的内容{p_end}
{phang2}{cmd:. mat list X}

{pstd}创建矩阵 {cmd:AX} 等于 {cmd:A*X}{p_end}
{phang2}{cmd:. matrix AX = A*X}

{pstd}创建矩阵 {cmd:Xlambda} 等于 {cmd:X*diag(lambda)}{p_end}
{phang2}{cmd:. matrix Xlambda = X*diag(lambda)}

{pstd}列出 {cmd:AX} 的内容{p_end}
{phang2}{cmd:. mat list AX}

{pstd}列出 {cmd:Xlambda} 的内容{p_end}
{phang2}{cmd:. mat list Xlambda}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <matrix_symeigen.sthlp>}