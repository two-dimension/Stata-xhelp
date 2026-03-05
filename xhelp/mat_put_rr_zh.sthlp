{smcl}
{* *! version 1.1.4  19oct2017}{...}
{vieweralsosee "[P] matrix get" "mansection P matrixget"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] matrix" "help matrix_zh"}{...}
{vieweralsosee "[R] test" "help test_zh"}{...}
{viewerjumpto "Syntax" "mat_put_rr_zh##syntax"}{...}
{viewerjumpto "Description" "mat_put_rr_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mat_put_rr_zh##linkspdf"}{...}
{viewerjumpto "Example" "mat_put_rr_zh##example"}
{help mat_put_rr:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[P] matrix get} {hline 2}}后测试约束矩阵{p_end}
{p2col:}({mansection P matrixget:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    {cmd:mat_put_rr} {it:matname}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mat_put_rr} 是一个程序员命令，将 {it:matname} 发布为内部 {it:Rr} 矩阵。 {it:matname} 必须比 {cmd:e(b)} 和 {cmd:e(V)} 矩阵的列数多一列。额外的列包含 r 向量，之前的列包含 Wald 测试的 {it:R} 矩阵。

{center:{it:Rb} = r}

{pstd}
请参见 {mansection R testMethodsandformulas:{it:方法与公式}} 在 {bf:[R] test} 中。

{pstd}
{cmd:matrix} ... {cmd:get(Rr)} 命令提供了一种获取当前 {it:Rr} 系统矩阵的方法；请参见 {manhelp get() P:matrix get}。


{marker linkspdf}{...}
{title:与 PDF 文档的链接}

        {mansection P matrixgetRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker example}{...}
{title:示例}

{phang2}{cmd:. regress y x1 x2 x3 x4}{p_end}
{phang2}{cmd:. mat z = (1,0,0,-1,0,2.8 \ 1,0,-1,0,0,0)}{p_end}
{phang2}{cmd:. mat_put_rr z}{p_end}
{phang2}{cmd:. test}

{pstd}
给出的结果与以下命令相同：

{phang2}{cmd:. regress y x1 x2 x3 x4}{p_end}
{phang2}{cmd:. test x1-x2=2.8, notest}{p_end}
{phang2}{cmd:. test x1-x3=0, accum}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mat_put_rr.sthlp>}