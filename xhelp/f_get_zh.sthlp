{smcl}
{* *! version 1.1.4  19oct2017}{...}
{vieweralsosee "[P] matrix get" "mansection P matrixget"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] matrix" "help matrix_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] mat_put_rr" "help mat_put_rr_zh"}{...}
{viewerjumpto "Syntax" "f_get_zh##syntax"}{...}
{viewerjumpto "Description" "f_get_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "f_get_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "f_get_zh##remarks"}{...}
{viewerjumpto "Examples" "f_get_zh##examples"}
{help f_get:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[P] matrix get} {hline 2}}访问系统矩阵{p_end}
{p2col:}({mansection P matrixget:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}{cmdab:mat:rix} [{cmdab:def:ine}] {it:matname} {cmd:=}
		{cmd:get(}{it:systemname}{cmd:)}

{pstd}
其中 {it:systemname} 为：

{p 8 17 2}{cmd:_b} {space 3} 任何估计命令后的系数{p_end}
{p 8 17 2}{cmd:VCE} {space 2} 任何估计命令后的估计量的协方差矩阵{p_end}
{p 8 17 2}{cmd:Rr} {space 3} {help test_zh}后的约束矩阵{p_end}
{p 8 17 2}{cmd:Cns} {space 2} 任何估计命令后的约束矩阵{p_end}


{marker description}{...}
{title:描述}

{pstd}
{cmd:get()} 矩阵函数用于获取 Stata 内部系统矩阵的副本。某些系统矩阵也可以通过在命令后直接引用返回结果来更轻松地获取。特别地，系数向量可以被称为 {hi:e(b)}，估计量的方差-协方差矩阵为 {hi:e(V)}，约束矩阵为 {hi:e(Cns)}，这些在估计命令后可用。

{pstd}
有关将 {it:matname} 直接发布为内部 {hi:Rr} 矩阵的程序员命令，请参见 {help mat_put_rr_zh}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P matrixgetRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在本帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:get()} 获取包含估计命令（如 {cmd:regress} 和 {cmd:probit}）后系数和估计量协方差矩阵的矩阵副本，并获取其他 Stata 命令留下的矩阵副本。{cmd:get()} 的另一面是 {cmd:ereturn post}，它允许 ado 文件估计命令将结果发布到 Stata 的内部区域；请参见 {manhelp ereturn P}。


{marker examples}{...}
{title:示例}

    {cmd:. sysuse auto}
    {cmd:. regress price weight mpg}
    {cmd:. matrix list e(b)}
    {cmd:. matrix list e(V)}

    {cmd:. matrix b = get(_b)}
    {cmd:. matrix V = get(VCE)}
    {cmd:. matrix list b}
    {cmd:. matrix list V}

    {cmd:. test weight=1, notest}
    {cmd:. test mpg=40, accum}
    {cmd:. matrix rxtr=get(Rr)}
    {cmd:. matrix list rxtr}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <f_get.sthlp>}