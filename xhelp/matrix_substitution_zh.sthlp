{smcl}
{* *! version 1.1.3  19oct2017}{...}
{vieweralsosee "[P] matrix define" "mansection P matrixdefine"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] matrix" "help matrix_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] matrix define (extraction)" "help matrix_extraction_zh"}{...}
{vieweralsosee "[P] matrix define (subscripting)" "help matrix_subscripting_zh"}{...}
{viewerjumpto "Syntax" "matrix_substitution_zh##syntax"}{...}
{viewerjumpto "Description" "matrix_substitution_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "matrix_substitution_zh##linkspdf"}{...}
{viewerjumpto "Examples" "matrix_substitution_zh##examples"}
{help matrix_substitution:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[P] matrix define} {hline 2}}子矩阵替换
{p_end}
{p2col:}({mansection P matrixdefine:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmdab:mat:rix} {it:A}{cmd:[}{it:r}{cmd:,}{it:c}{cmd:]} {cmd:=} {it:...}

{pstd}
其中 {it:r} 和 {it:c} 是数值标量表达式。


{marker description}{...}
{title:描述}

{pstd}
如果等号右侧的矩阵表达式的值为标量或 1 x 1 矩阵，则将替换 {it:A} 的指定元素。如果矩阵表达式的值为矩阵，则将结果矩阵放入 {it:A}，其左上角位于 ({it:r},{it:c}) 处。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P matrixdefineRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{phang}{cmd:. matrix A[2,2] = B}{p_end}
{phang}{cmd:. matrix A[rownumb(A,"price"), colnumb(A,"mpg")] = sqrt(2)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <matrix_substitution.sthlp>}