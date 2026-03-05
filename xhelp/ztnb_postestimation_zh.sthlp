
{smcl}
{* *! version 1.1.11  31may2018}{...}
{cmd:help ztnb postestimation}{right:对话框:  {dialog ztnb_p:predict}{space 14}}
{right:另见:  {help ztnb_zh}{space 17}}
{help ztnb_postestimation:English Version}
{hline}
{right:{help prdocumented_zh:之前记录的}}
{hline}
{pstd}
{cmd:ztnb} 已被 {help tnbreg_zh} 替代。{cmd:tnbreg} 允许将任意非负整数指定为左截断点；因此，它不仅可以执行 {cmd:ztnb} 的功能，还能做更多的事情。
尽管 {cmd:ztnb} 仍然可以使用，但自 Stata 12 起，它不再是 Stata 的正式部分。这是原始帮助文件，我们将不再对其进行更新，因此某些链接可能不再有效。


{title:标题}

{p2colset 5 32 34 2}{...}
{p2col :{bf:[R] ztnb postestimation} {hline 2}}ztnb 的后估计工具
{p_end}
{p2colreset}{...}


{title:描述}

{pstd}
在 {cmd:ztnb} 之后可以使用以下后估计命令：

{synoptset 20 notes}{...}
{p2col :命令}描述{p_end}
{synoptline}
包括帮助 post_estatic
包括帮助 post_estatsum
包括帮助 post_estatvce
包括帮助 post_svy_estat
包括帮助 post_estimates
包括帮助 post_lincom
包括帮助 post_lrtest_star
包括帮助 post_margins
包括帮助 post_nlcom
{p2col :{helpb ztnb postestimation##predict:predict}}预测、残差、影响统计和其他诊断测量{p_end}
包括帮助 post_predictnl
包括帮助 post_suest
包括帮助 post_test
包括帮助 post_testnl
{synoptline}
{p2colreset}{...}
包括帮助 post_lrtest_star_msg


{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic} 
{opt nooff:set}]

{p 8 16 2}
{cmd:predict} {dtype} {c -(}{it:stub}{cmd:*}{c |}{it:newvar_reg}
 {it:newvar_disp}{c )-}
 {ifin} {cmd:,} {opt sc:ores}

{synoptset 11 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主}
{synopt:{opt n}}事件数；默认值{p_end}
{synopt:{opt ir}}发生率{p_end}
{synopt:{opt cm}}条件均值，{it:E}(y_j|y_j > 0){p_end}
{synopt:{opt xb}}线性预测{p_end}
{synopt:{opt stdp}}线性预测的标准误{p_end}
{synoptline}
{p2colreset}{...}
包括帮助 esample


包括帮助 menu_predict


{title:预测的选项}

{dlgtab:主}

{phang}
{opt n}，默认情况下，计算预测的事件数，如果在拟合模型时没有指定 {opt offset()} 或 {opt exposure()}，则为 exp(xb)；如果指定了 {opt offset()}，则为 {bind:exp(xb + offset)}；如果指定了 {opt exposure()}，则为 {bind:exp(xb)*exposure}。

{phang}
{opt ir} 计算发生率 exp(xb)，即当暴露为 1 时的预测事件数。这等同于指定 {opt n} 和 {opt nooffset} 选项。

{phang}
{opt cm} 计算给定 n>0 的 n 的条件均值，即 {it:E}(n|n > 0)，如果在拟合零截断负二项模型时没有指定 {opt offset()} 或 {opt exposure()}，则为 exp(xb)/P(n > 0|x)；如果指定了 {opt offset()}，则为 {bind:exp(xb + offset)/P(n > 0|x)}；如果指定了 {opt exposure()}，则为 {bind:exp(xb)/P(n > 0|x)*exposure}。

{phang}
{opt xb} 计算线性预测，如果在拟合模型时未指定 {opt offset()} 或 {opt exposure()}，则为 xb；如果指定了 {opt offset()}，则为 {bind:xb + offset}；如果指定了 {opt exposure()}，则为 {bind:xb + ln(exposure)}；具体见下面的 {opt nooffset}。

{phang}
{opt stdp} 计算线性预测的标准误。

{phang}
{opt nooffset} 仅在您在拟合模型时指定了 {opt offset()} 或 {opt exposure()} 时才相关。它修改 {cmd:predict} 的计算，以使其忽略偏移或暴露变量；线性预测被视为 xb，而不是 {bind:xb + offset} 或 {bind:xb + ln(exposure)}。指定 {cmd:predict} ...{cmd:, nooffset} 等同于指定 {cmd:predict} ...{cmd:, ir}。

{phang}
{opt scores} 计算方程级得分变量。

{pmore}
第一个新变量将包含关于回归方程的对数似然的导数。

{pmore}
第二个新变量将包含关于分散方程的对数似然的导数。


{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse rod93}{p_end}

{pstd}拟合零截断负二项回归模型{p_end}
{phang2}{cmd:. ztnb deaths i.cohort, exposure(exposure)}{p_end}

{pstd}预测死亡的发生率{p_end}
{phang2}{cmd:. predict incidence, ir}{p_end}

{pstd}预测事件数{p_end}
{phang2}{cmd:. predict nevents, n}{p_end}

{pstd}在事件数为正的条件下预测事件数{p_end}
{phang2}{cmd:. predict condmean, cm}{p_end}


{title:另见}

{psee}
手册:  {help prdocumented_zh:之前记录的}

{psee}
{space 2}帮助:  {manhelp ztnb R}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ztnb_postestimation.sthlp>}