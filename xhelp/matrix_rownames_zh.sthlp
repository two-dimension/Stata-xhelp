{smcl}
{* *! version 1.1.7  19oct2017}{...}
{vieweralsosee "[P] matrix rownames" "mansection P matrixrownames"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] macro" "help macro_zh"}{...}
{vieweralsosee "[P] matrix" "help matrix_zh"}{...}
{vieweralsosee "[P] matrix define" "help matrix define"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "matmacfunc" "help matmacfunc_zh"}{...}
{viewerjumpto "Syntax" "matrix_rownames_zh##syntax"}{...}
{viewerjumpto "Description" "matrix_rownames_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "matrix_rownames_zh##linkspdf"}{...}
{viewerjumpto "Examples" "matrix_rownames_zh##examples"}
{help matrix_rownames:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[P] matrix rownames} {hline 2}}命名行和列{p_end}
{p2col:}({mansection P matrixrownames:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    重置矩阵的行名称

{p 8 15 2}{cmdab:mat:rix} {cmdab:rown:ames} {it:A} {cmd:=} {it:names}{p_end}


    重置矩阵的列名称

{p 8 15 2}{cmdab:mat:rix} {cmdab:coln:ames} {it:A} {cmd:=} {it:names}


    重置行名称并将简单名称解释为方程名称

{p 8 15 2}{cmdab:mat:rix} {cmdab:rowe:q} {space 2} {it:A} {cmd:=} {it:names}{p_end}


    重置列名称并将简单名称解释为方程名称

{p 8 15 2}{cmdab:mat:rix} {cmdab:cole:q} {space 2} {it:A} {cmd:=} {it:names}


{pstd}
其中 {it:name} 可以是

{phang2}o  一个简单名称；{p_end}
{phang2}o  一个冒号后跟一个简单名称；{p_end}
{phang2}o  一个方程名称后跟一个冒号；或{p_end}
{phang2}o  一个方程名称、一个冒号和一个简单名称。

{pstd}
并且简单名称可以与时间序列运算符和因子变量规范一起使用。


{marker description}{...}
{title:描述}

{pstd}
{cmd:matrix rownames} 和 {cmd:colnames} 重置已存在矩阵的行和列名称。

{pstd}
{cmd:matrix roweq} 和 {cmd:coleq} 也重置已存在矩阵的行和列名称，但如果指定了简单名称（没有冒号的名称），则将其解释为方程名称。

{pstd}
在这两种情况下，未指定的名称部分保持不变。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P matrixrownamesRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. mat A = (1,2,3\ 4,5,6\ 7,8,9)}

{pstd}列出矩阵 {cmd:A}{p_end}
{phang2}{cmd:. mat list A}

{pstd}将 {cmd:A} 的行名称更改为 {cmd:myrow1}、{cmd:myrow2} 和 {cmd:myrow3}{p_end}
{phang2}{cmd:. matrix rownames A = myrow1 myrow2 myrow3}

{pstd}列出结果{p_end}
{phang2}{cmd:. mat list A}

{pstd}将 {cmd:A} 的列名称更改为 {cmd:mycol1}、{cmd:mycol2} 和 {cmd:mycol3}{p_end}
{phang2}{cmd:. mat colnames A = mycol1 mycol2 mycol3}

{pstd}列出结果{p_end}
{phang2}{cmd:. mat list A}

{pstd}用方程名称 {cmd:eq1}、{cmd:eq2} 和 {cmd:eq3} 前缀 {cmd:A} 的列名称{p_end}
{phang2}{cmd:. mat coleq A = eq1 eq2 eq3}

{pstd}列出结果{p_end}
{phang2}{cmd:. mat list A}

{pstd}
查看如何在行或列名称中包含因子变量。
这里 {cmd:rep78==1} 是基类别{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. regress mpg gear i.rep78}{p_end}
{phang2}{cmd:. matrix list e(b)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <matrix_rownames.sthlp>}