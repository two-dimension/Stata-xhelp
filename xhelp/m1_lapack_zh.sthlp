{smcl}
{* *! version 1.1.14  18sep2018}{...}
{vieweralsosee "[M-1] LAPACK" "mansection M-1 LAPACK"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] Copyright LAPACK" "help copyright_lapack_zh"}{...}
{vieweralsosee "[M-5] lapack()" "help mf_lapack_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] Intro" "help m1_intro_zh"}{...}
{viewerjumpto "Description" "m1_lapack_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m1_lapack_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m1_lapack_zh##remarks"}{...}
{viewerjumpto "Acknowledgments" "m1_lapack_zh##acknowledgments"}{...}
{viewerjumpto "Reference" "m1_lapack_zh##reference"}
{help m1_lapack:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-1] LAPACK} {hline 2}}LAPACK线性代数例程
{p_end}
{p2col:}({mansection M-1 LAPACK:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{p 4 4 2}
    LAPACK代表线性代数软件包，是一组可以自由获取的FORTRAN 90例程，用于求解线性方程组、特征值问题和奇异值问题。许多LAPACK例程是基于较早的EISPACK和LINPACK例程，而更现代的LAPACK则通过使用BLAS（基础线性代数子程序）来进行大部分计算。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-1 LAPACKRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
    LAPACK和BLAS例程是Mata许多线性代数功能的基础。使用LAPACK例程的Mata个别函数总是会注意到这一点。

{p 4 4 2}
    有关LAPACK的最新信息，请参见
    {browse "http://www.netlib.org/lapack/"}。

{p 4 4 2}
    高级程序员可以直接访问LAPACK函数；请参见
    {help mf_lapack_zh:[M-5] lapack()}。


{marker acknowledgments}{...}
{title:致谢}

{p 4 4 2}
    我们感谢LAPACK的作者们所做的卓越工作：

{p 8 12 2}
    E. Anderson, Z. Bai, C. Bischof, S. Blackford, J. Demmel, J. Dongarra, 
    J. Du Croz, A. Greenbaum, S. Hammarling, A. McKenney,和D. Sorensen。


{marker reference}{...}
{title:参考文献}

{phang}
Anderson, E., Z. Bai, C. Bischof, S. Blackford, J. Demmel, J. Dongarra, 
    J. Du Croz, A. Greenbaum, S. Hammarling, A. McKenney, and D. Sorensen.
    1999.  {it:LAPACK用户指南}. 第3版. 费城: 工业与应用数学学会。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m1_lapack.sthlp>}