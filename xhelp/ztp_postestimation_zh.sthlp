
{smcl}
{* *! version 1.1.11  01mar2017}{...}
{cmd:help ztp postestimation}{right:对话框:  {dialog ztp_p:predict}{space 14}}
{right:另见:  {help ztp_zh}{space 18}}
{help ztp_postestimation:English Version}
{hline}
{right:{help prdocumented_zh:之前记录的}}
{hline}
{pstd}
{cmd:ztp} 已被 {help tpoisson_zh} 取代。 {cmd:tpoisson} 允许将任意非负整数指定为左截断点；因此它可以做 {cmd:ztp} 所能做的事情，甚至更多。
{cmd:ztp} 继续有效，但从 Stata 12 开始，不再是 Stata 的官方部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。


{title:标题}

{p2colset 5 31 33 2}{...}
{p2col :{bf:[R] ztp postestimation} {hline 2}}ztp 的后期估计工具
{p_end}
{p2colreset}{...}


{title:描述}

{pstd}
在 {cmd:ztp} 之后可用的后期估计命令如下：

{synoptset 20 notes}{...}
{p2col :命令}描述{p_end}
{synoptline}
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_svy_estat
INCLUDE help post_estimates
INCLUDE help post_lincom
INCLUDE help post_lrtest_star
INCLUDE help post_margins
INCLUDE help post_nlcom
{p2col :{helpb ztp postestimation##predict:predict}}预测、残差、影响统计以及其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
INCLUDE help post_lrtest_star_msg


{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} 
   {it:statistic} {opt nooff:set}]

{synoptset 11 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主要}
{synopt :{opt n}}事件数量；默认值{p_end}
{synopt :{opt ir}}发生率{p_end}
{synopt :{opt cm}}条件均值，{it:E}(y_j|y_j > 0){p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误差{p_end}
{synopt :{opt sc:ore}}对数似然的第一导数相对于 xb{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{title:预测选项}

{dlgtab:主要}

{phang}
{opt n}，默认情况下，计算预测事件数量，如果在拟合模型时未指定 {opt offset()} 或 {opt exposure()}，则为 exp(xb)；如果指定了 {opt offset()}，则为 {bind:exp(xb + offset)}；如果指定了 {opt exposure()}，则为 {bind:exp(xb) x exposure}。

{phang}
{opt ir} 计算发生率 exp(xb)，这是当暴露量为 1 时的预测事件数量。这等同于同时指定 {opt n} 和 {opt nooffset} 选项。

{phang}
{opt cm} 计算 n 的条件均值，给定 n>0，即 {it:E}(n|n>0,x)，这是当未指定 {opt offset()} 或 {opt exposure()} 时为 exp(xb)/P(n > 0|x) 或 {bind:exp(xb + offset)/P(n > 0|x)} 如果指定了 {opt offset()}，或 {bind:exp(xb)/P(n > 0|x)*exposure} 如果指定了 {opt exposure()}。

{phang}
{opt xb} 计算线性预测，即如果未指定 {opt offset()} 或 {opt exposure()}，则为 xb；
{bind:xb + offset} 如果指定了 {opt offset()}；或
{bind:xb + ln(exposure)} 如果指定了 {opt exposure()}；请参见下面的 {opt nooffset}。

{phang}
{opt stdp} 计算线性预测的标准误差。

{phang}
{opt score} 计算方程级别的得分，即对数似然相对于线性预测的导数。

{phang}
{opt nooffset} 仅在您在拟合模型时指定了 {opt offset()} 或 {opt exposure()} 时相关。它修改 {cmd:predict} 的计算，使其忽略偏差或暴露变量；线性预测视为 xb，而不是 {bind:xb + offset} 或 {bind:xb + ln(exposure)}。指定 {cmd:predict} ...{cmd:, nooffset} 等同于指定 {cmd:predict} ...{cmd:, ir}。


{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse runshoes}{p_end}

{pstd}拟合零截断泊松回归{p_end}
{phang2}{cmd:. ztp shoes distance male age}{p_end}

{pstd}预测购买的鞋子数量{p_end}
{phang2}{cmd:. predict shoehat, n}{p_end}

{pstd}预测购买的鞋子数量，条件是每个人都购买了鞋子{p_end}
{phang2}{cmd:. predict shoecondhat, cm}{p_end}


{title:另见}

{psee}
手册:  {help prdocumented_zh:之前记录的}

{psee}
{space 2}帮助:  {manhelp ztp R}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ztp_postestimation.sthlp>}