{smcl}
{* *! version 1.0.6  11feb2011}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] matrix" "help matrix_zh"}{...}
{vieweralsosee "[P] matrix operators" "help matrix_operators_zh"}{...}
{viewerjumpto "Syntax" "mat_capp_zh##syntax"}{...}
{viewerjumpto "Description" "mat_capp_zh##description"}{...}
{viewerjumpto "Options" "mat_capp_zh##options"}{...}
{viewerjumpto "Examples" "mat_capp_zh##examples"}{...}
{viewerjumpto "Acknowledgment" "mat_capp_zh##ack"}
{help mat_capp:English Version}
{hline}{...}
{title:标题}

{p 4 22 2}
{hi:[R] mat_capp} {hline 2} 按名称而非位置对矩阵进行操作


{marker syntax}{...}
{title:语法}

{p 8 24 2}
{cmd:mat_capp}{space 2}{it:mat1} {cmd::} {it:mat2} {it:mat3} [{cmd:,} {cmd:miss(}{it:#}{cmd:)} {cmd:cons} {cmd:ts} ]

{p 8 24 2}
{cmd:mat_rapp}{space 2}{it:mat1} {cmd::} {it:mat2} {it:mat3} [{cmd:,} {cmd:miss(}{it:#}{cmd:)} {cmd:cons} {cmd:ts} ]

{p 8 24 2}
{cmd:mat_order} {it:mat1} {cmd::} {it:mat2} {it:mat3}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mat_capp} 通过在行名上匹配矩阵 {it:mat1} 和 {it:mat2} 以及 {it:mat3} 的列来创建矩阵 {it:mat1}。因此， {it:mat1} 的列数等于 {it:mat2} 和 {it:mat3} 的列数之和。

{pstd}
如果未指定 {cmd:miss}，则 {it:mat2} 和 {it:mat3} 的行名应按方程和名称匹配，但不需要按相同顺序。

{pstd}
{cmd:mat_rapp} 执行类似的逐行操作。

{pstd}
{cmd:mat_order} 返回一个矩阵 {it:mat1}，它包含 {it:mat2} 的值，行和列按 {it:mat3} 中的顺序排列。 {it:mat2} 和 {it:mat3} 的行和列名称应完全匹配。

{pstd}
在所有情况下， {it:mat1} 可以与 {it:mat2} 或 {it:mat3} 是相同的矩阵。


{marker options}{...}
{title:选项}

{phang}
{cmd:miss(}{it:#}{cmd:)}
    指定 {it:mat2} 和 {it:mat3} 的行按方程和名称匹配。对应于未匹配行组合的缺失元素被设置为 {it:#}。与 {it:mat2} 的方程匹配但不匹配名称的 {it:mat3} 行将插入到 {it:mat1} 的方程末尾。与任何方程不匹配的 {it:mat3} 行被插入到 {it:mat1} 的末尾。

{phang}
{cmd:cons}
    指定对应于变量 {cmd:_cons} 的行应移动到方程的末尾。

{phang}
{cmd:ts}
    指定具有时间序列运算符名称的行插入到相应变量的末尾。


{marker examples}{...}
{title:示例}

    {hi:示例 1}

                 b1  b2                  c1
              a1  1   2             a3   13
        z1 =  a2  3   4      z2 =   a1   11
              a3  5   6             a2   12

        {cmd:. mat_capp z12 : z1 z2}

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

        {cmd:. mat_capp z12 : z1 z2, miss(.)}

                      z11 z12 z11 z13
                 A:a1   1   5  11  12
                 A:a2   2   6   .   .
        z12 =    A:a3   .   .  21  22
                 B:b1   3   7  31  32
                   e1   4   8   .   .
                 C:c1   .   .  41  42


    {hi:示例 3}

                 b1  b2  b3              b1  b3  b2
             a1   1   5   9         a1   11  13  12
        z1 = a2   2   6  10    z2 = a4   21  23  22
             a3   3   7  11         a3   31  33  32
             a4   4   8  12         a2   41  43  42

        {cmd:. mat_order z12 : z1 z2}

                 b1  b3  b2
              a1  1   9   5
        z12 = a4  4  12   8
              a3  3  11   7
              a2  2  10   6


{marker ack}{...}
{title:致谢}

{pstd}
这些命令由荷兰乌特勒支大学社会学系的 Jeroen Weesie 编写。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mat_capp.sthlp>}