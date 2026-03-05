{smcl}
{* *! version 1.0.0  25mar2019}{...}
{vieweralsosee "[P] matrix rowjoinbyname" "mansection P matrixrowjoinbyname"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] macro" "help macro_zh"}{...}
{vieweralsosee "[P] matrix" "help matrix_zh"}{...}
{vieweralsosee "[P] matrix define" "help matrix define"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "matmacfunc" "help matmacfunc_zh"}{...}
{viewerjumpto "Syntax" "matrix_rowjoinbyname_zh##syntax"}{...}
{viewerjumpto "Description" "matrix_rowjoinbyname_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "matrix_rowjoinbyname_zh##linkspdf"}{...}
{viewerjumpto "Options" "matrix_rowjoinbyname_zh##options"}{...}
{viewerjumpto "Examples" "matrix_rowjoinbyname_zh##examples"}
{help matrix_rowjoinbyname:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[P] matrix rowjoinbyname} {hline 2}}根据列名合并行{p_end}
{p2col:}({mansection P matrixrowjoinbyname:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    根据矩阵列名合并矩阵行

{p 8 15 2}
{cmdab:mat:rix} {cmdab:rowjoin:byname}
{it:A} {cmd:=} {it:matrix_list} [{cmd:,} {it:options}]
{p_end}


    根据矩阵行名合并矩阵列

{p 8 15 2}
{cmdab:mat:rix} {cmdab:coljoin:byname}
{it:A} {cmd:=} {it:matrix_list} [{cmd:,} {it:options}]
{p_end}


{phang}
{it:matrix_list} 是 Stata 矩阵的列表，包括来自 {cmd:e()} 和 {cmd:r()} 的矩阵。

{synoptset 20}{...}
{synopthdr}
{synoptline}
{synopt :{opt mis:sing(#)}}未匹配元素的缺失值代码；默认值为 {cmd:missing(.)}{p_end}
{synopt :{opt noc:onsolidate}}不合并方程和项{p_end}
{synoptline}


{marker description}{...}
{title:描述}

{pstd}
{cmd:matrix rowjoinbyname} 和 {cmd:matrix coljoinbyname} 在一维上合并矩阵，同时匹配另一维上的名称。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P matrixrowjoinbyname:备注和示例}

{pstd}
上述部分没有包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt missing(#)} 指定在 {it:matrix_list} 中未匹配的元素设置为 {it:#}。默认值为 {cmd:missing(.)}。

{phang}
{opt noconsolidate} 防止沿匹配维度合并方程和项。
默认情况下，沿匹配维度的元素将重新排序，以便方程、因子变量项和时间序列操作的变量一起出现。


{marker examples}{...}
{title:示例}

    {hi:示例 1}

                 b1  b2                  c1
              a1  1   2             a3   13
        z1 =  a2  3   4      z2 =   a1   11
              a3  5   6             a2   12

        {cmd:. matrix coljoinbyname z12 = z1 z2}

                 b1  b2  c1
              a1  1   2  11
        z12 = a2  3   4  12
              a3  5   6  13


    {hi:示例 2}

                   z11 z12                z11 z13
             A:a1    1   5          A:a1   11  12
        z1 = A:a2    2   6     z2 = A:a3   21  22
             B:b1    3   7          B:b1   31  32
               e1    4   8          C:c1   41  42

        {cmd:. matrix coljoinbyname z12 = z1 z2, miss(.u)}

                       z11  z12  z11  z13
                 A:a1    1    5   11   12
                 A:a2    2    6   .u   .u
        z12 =    A:a3   .u   .u   21   22
                 B:b1    3    7   31   32
                   e1    4    8   .u   .u
                 C:c1   .u   .u   41   42

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <matrix_rowjoinbyname.sthlp>}