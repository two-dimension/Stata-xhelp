{smcl}
{* *! version 1.1.3  19oct2017}{...}
{vieweralsosee "[P] matrix define" "mansection P matrixdefine"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] matrix" "help matrix_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] matrix define (subscripting)" "help matrix_subscripting_zh"}{...}
{vieweralsosee "[P] matrix define (substitution)" "help matrix_substitution_zh"}{...}
{viewerjumpto "Syntax" "matrix_extraction_zh##syntax"}{...}
{viewerjumpto "Examples" "matrix_extraction_zh##examples"}
{help matrix_extraction:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[P] matrix define} {hline 2}}子矩阵提取
{p_end}
{p2col:}({mansection P matrixdefine:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}{cmdab:mat:rix} {it:A} {cmd:=} {it:...} {it:B}{cmd:[}{it:r0}{cmd:..}{it:r1}{cmd:,}
				{it:c0}{cmd:..}{it:c1}{cmd:]} {it:...}

{pstd}
其中 {it:r0}、{it:r1}、{it:c0} 和 {it:c1} 是数值或字符串标量
表达式。


{marker examples}{...}
{title:示例}

{phang}{cmd:. matrix A = B[2..4, 3..6]}{p_end}
{phang}{cmd:. matrix A = B[2..., 2...]}{p_end}
{phang}{cmd:. matrix A = B[1, "price".."mpg"]}{p_end}
{phang}{cmd:. matrix A = B["eq1:", "eq1:"]}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <matrix_extraction.sthlp>}