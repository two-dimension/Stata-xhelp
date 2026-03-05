{smcl}
{* *! version 1.1.10  15may2018}{...}
{viewerdialog "matrix eigenvalues" "dialog matrix_eigenvalues"}{...}
{vieweralsosee "[P] 矩阵特征值" "mansection P matrixeigenvalues"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] 矩阵" "help matrix_zh"}{...}
{vieweralsosee "[P] 矩阵对称特征值" "help matrix_symeigen_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] 矩阵" "help m4_matrix_zh"}{...}
{viewerjumpto "语法" "matrix_eigenvalues_zh##syntax"}{...}
{viewerjumpto "菜单" "matrix_eigenvalues_zh##menu"}{...}
{viewerjumpto "描述" "matrix_eigenvalues_zh##description"}{...}
{viewerjumpto "PDF文档链接" "matrix_eigenvalues_zh##linkspdf"}{...}
{viewerjumpto "示例" "matrix_eigenvalues_zh##examples"}
{help matrix_eigenvalues:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[P] 矩阵特征值} {hline 2}}非对称矩阵的特征值{p_end}
{p2col:}({mansection P matrixeigenvalues:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmdab:mat:rix} {cmdab:eigenval:ues} {it:r} {it:c} {cmd:=} {it:A}

{phang}
其中 {it:A} 为 n x n 的非对称实矩阵。


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 矩阵，ado语言 > 平方矩阵的特征值}


{marker description}{...}
{title:描述}

{pstd}
{cmd:matrix eigenvalues} 返回特征值的实部到 1 x n 行向量 {it:r}，并将特征值的虚部返回到 1 x n 行向量 {it:c}。因此，第 {it:j} 个特征值为
{it:r}{cmd:[1,}{it:j}{cmd:]} + i*{it:c}{cmd:[1,}{it:j}{cmd:]}.
                                                                                
{pstd}
特征值按其模排序；
{it:r}{cmd:[1,1]} + i*{it:c}{cmd:[1,1]} 具有最大模，而
{it:r}{cmd:[1,}{it:n}{cmd:]} + i*{it:c}{cmd:[1,}{it:n}{cmd:]} 具有最小模。

{pstd}
如果您想要对称矩阵的特征值，请参见 
{manhelp matrix_symeigen P:矩阵对称特征值}。

{pstd}
另请参阅 {bf:{help mf_eigensystem_zh:[M-5] eigensystem()}}，以获取获取特征向量和特征值的替代例程。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P matrixeigenvaluesRemarksandexamples:备注和示例}

        {mansection P matrixeigenvaluesMethodsandformulas:方法和公式}

{pstd}
上述章节未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{phang}{cmd:. matrix A = (0.66151492, .2551595, .35603325, -0.15403902,}
           {cmd: -.12734386)}{p_end}
{phang}{cmd:. matrix A = A \ (I(4), J(4,1,0))}{p_end}
{phang}{cmd:. mat list A}{p_end}
{phang}{cmd:. matrix eigenvalues re im = A}{p_end}
{phang}{cmd:. mat list re}{p_end}
{phang}{cmd:. mat list im}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <matrix_eigenvalues.sthlp>}