
{smcl}
{* *! version 1.1.8  31may2018}{...}
{cmd:help cnreg postestimation}{...}
{right:dialog:  {dialog cnreg_p:predict}{space 14}}
{help cnreg_postestimation:English Version}
{hline}
{right:also see:  {help cnreg_zh} {space 15}}
{right:{help prdocumented_zh:之前记录的文档}}
{hline}
{pstd}
{cmd:cnreg} 仍然可以使用，但自 Stata 11 起不再是 Stata 的官方组成部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。


{title:标题}

{p2colset 5 33 35 2}{...}
{p2col :{hi:[R] cnreg postestimation} {hline 2}}cnreg 的后期估计工具{p_end}
{p2colreset}{...}


{title:描述}

{pstd}
在 {cmd:cnreg} 之后可以使用以下后期估计命令：

{synoptset 20 notes}{...}
{synopthdr :命令}
{synoptline}
包含 help post_adjust1
包含 help post_estatic
包含 help post_estatsum
包含 help post_estatvce
包含 help post_svy_estat
包含 help post_estimates
包含 help post_lincom
包含 help post_linktest
包含 help post_lrtest_star
包含 help post_mfx
包含 help post_nlcom
{synopt :{helpb cnreg postestimation##predict:predict}}预测、残差、影响统计及其他诊断措施{p_end}
包含 help post_predictnl
包含 help post_test
包含 help post_testnl
{synoptline}
{p2colreset}{...}
包含 help post_lrtest_star_msg


{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}
[{cmd:,} {it:statistic} {opt nooff:set}]

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:stub}{cmd:*}{c |}{it:newvar_reg} {it:newvar_sigma}{c )-}
{ifin}
{cmd:,}
{opt sc:ores}

{synoptset 14 tabbed}{...}
{synopthdr :统计量}
{synoptline}
{syntab :主}
{synopt :{opt xb}}线性预测；默认值{p_end}
包含 help regstats
{synoptline}
{p2colreset}{...}
包含 help esample
{p 4 6 2}
{opt stdf} 不允许与 {cmd:svy} 估计结果一起使用。

包含 help whereab


{title:预测的选项}

{dlgtab:主}

{phang}
{opt xb}，默认情况下，计算线性预测。

{phang}
{opt stdp} 计算预测的标准误差，可以认为是观察值的协变量模式的预测期望值或均值的标准误差。预测的标准误差也称为拟合值的标准误差。

{phang}
{opt stdf} 计算预测的标准误差，即一个观察值的点预测的标准误差。它通常被称为未来值或预测值的标准误差。根据构造，{opt stdf} 产生的标准误差总是大于 {opt stdp} 产生的标准误差；详见 {cmd:regress} {it:方法和公式}。

包含 help pr_opt

{phang}
{opt e(a,b)} 计算
{bind:{it:E}(xb + u | {it:a} < xb + u < {it:b})}，
在 y|x 在区间 ({it:a},{it:b}) 内时，y|x 的条件期望，
这意味着 y|x 被截断。
{it:a} 和 {it:b} 的指定方式与 {opt pr()} 相同。

{phang}
{opt ystar(a,b)}
计算 {it:E}(y*)，当 {bind:y* = {it:a}} 时，
如果 {bind:xb + u {ul:<} {it:a}}，{bind:y* = {it:b}}，
如果 {bind:xb + u {ul:>} {it:b}}，
否则 {bind:y* = xb + u}，这意味着
y* 被截断。{it:a} 和 {it:b} 的指定方式与 {opt pr()} 相同。

{phang}
{opt nooffset} 仅在你指定了 {opth offset(varname)} 时相关。
它修改 {cmd:predict} 的计算，使其忽略偏移变量；线性预测被视为 xb，而不是 xb + offset。

{phang}
{opt scores} 计算方程级评分变量。

{pmore}
第一个新变量将包含相对于回归方程的对数似然的导数。

{pmore}
第二个新变量将包含相对于尺度方程 ({hi:sigma}) 的对数似然的导数。


{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse news2}{p_end}
{phang2}{cmd:. cnreg date lncltn famown, censored(cnsrd)}{p_end}

{pstd}获得预测，假设它们被截断到 8036 和 11323 之间（含）{p_end}
{phang2}{cmd:. predict ystar, ystar(8036,11323)}{p_end}


{title:另见}

{psee}
手册：{help prdocumented_zh:之前记录的文档}

{psee}
{space 2}帮助：{manhelp cnreg R}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cnreg_postestimation.sthlp>}