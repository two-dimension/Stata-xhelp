
{smcl}
{* *! version 1.1.2  29mar2013}{...}
{cmd:help dvech postestimation}{...}
{right:对话框:  {dialog dvech_p:predict}}
{help dvech_postestimation:English Version}
{hline}
{right:另见:  {help dvech_zh}  }
{hline}
{pstd}
{cmd:dvech} 已被 {helpb mgarch dvech} 取代。 {cmd:mgarch dvech} 是 {help mgarch_zh} 的一部分，估计 4 种不同的多元 GARCH 模型——对角 vech 模型、常数条件相关模型、动态条件相关模型和时变条件相关模型；因此 {cmd:mgarch dvech} 可以做 {cmd:dvech} 所能做的事情，并且更多。 {cmd:dvech} 继续有效，但自 Stata 12 起，不再是 Stata 的官方部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。


{title:标题}

{p2colset 5 34 38 2}{...}
{p2col :{bf:[TS] dvech postestimation} {hline 2}}dvech 的后验估计工具{p_end}


{title:描述}

{pstd}
以下标准后验估计命令在 {cmd:dvech} 之后可用：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_lincom
INCLUDE help post_lrtest
INCLUDE help post_margins
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb dvech postestimation##predict:predict}}预测和残差
{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype}
{c -(}{it:stub}{cmd:*}{c |}{it:{help newvarlist_zh}}{c )-}
{ifin}
[{cmd:,} {it:statistic} {it:options}]

{synoptset 23 tabbed}{...}
{synopthdr:统计量}
{synoptline}
{syntab:主}
{synopt :{opt xb}}因变量{p_end}
{synopt :{opt r:esiduals}}残差{p_end}
{synopt :{opt v:ariance}}条件方差和协方差{p_end}
{synoptline}
INCLUDE help esample
{p2colreset}{...}

{synoptset 23 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:选项}
{synopt :{opt e:quation(eqnames)}}进行预测的方程名称{p_end}
{synopt :{opt dyn:amic(time_constant)}}在指定时间开始动态预测{p_end}
{synoptline}
{p2colreset}{...}


INCLUDE help menu_predict


{title:预测的选项}

{dlgtab:主}

{phang}
{opt xb}，默认选项，计算因变量的预测。

{phang}
{opt residuals} 计算残差。

{phang}
{opt variance} 预测条件方差和条件协方差。

{dlgtab:选项}

{phang}
{opt equation(eqnames)} 指定进行预测的方程。使用此选项可预测特定方程的统计量。方程名称，例如 {cmd:equation(income)}，用于标识方程。

{pmore}
在预测因变量、残差或条件方差时，只能指定一个方程名称。例如，指定 {cmd:equation(income)} 会使 {cmd:predict} 预测 {cmd:income}，而指定 {cmd:variance equation(income)} 则会使 predict 预测收入的条件方差。

{pmore}
在预测条件方差或协方差时，可以指定两个方程。例如，指定 {cmd:equation(income, consumption)} {cmd:variance} 会使 {cmd:predict} 预测 {cmd:income} 和 {cmd:consumption} 的条件协方差。

{phang}
{opt dynamic(time_constant)} 指定 {cmd:predict} 开始生成动态预测的时间。指定的 {it:time_constant} 必须与 {cmd:tsset} 中指定的时间变量的尺度相同，并且 {it:time_constant} 必须在可用于因变量的样本内。例如，{cmd:dynamic(tq(2008q4))} 会使动态预测在 2008 年第四季度开始，假设您的时间变量是季度；请参见 {manhelp datetime D}。如果模型包含外生变量，则它们必须在整个预测样本中存在。{cmd:dynamic()} 不能与 {cmd:residuals} 一起指定。


{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse acme}{p_end}
{phang2}{cmd:. constraint 1 [L.ARCH]1_1  = [L.ARCH]2_2}{p_end}
{phang2}{cmd:. constraint 2 [L.GARCH]1_1 = [L.GARCH]2_2}{p_end}
{phang2}{cmd:. dvech (acme = L.acme) (anvil = L.anvil), arch(1) garch(1) constraints(1 2)}{p_end}

{pstd}预测未来 12 周的条件方差，使用从 1998 年第 26 周开始的动态预测，然后绘制预测图{p_end}
{phang2}{cmd:. tsappend, add(12)}{p_end}
{phang2}{cmd:. predict H*, variance dynamic(tw(1998w26))}{p_end}
{phang2}{cmd:. tsline H_acme_acme H_anvil_anvil if t>=tw(1995w25), legend(rows(2))}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse aacmer, clear}{p_end}
{phang2}{cmd:. dvech (acme anvil = , noconstant), arch(1/2) garch(1)}{p_end}

{pstd}预测 {cmd:acme} 方程的条件方差并绘制结果{p_end}
{phang2}{cmd:. predict h_acme, variance eq(acme, acme)}{p_end}
{phang2}{cmd:. tsline h_acme}{p_end}

    {hline}


{title:另见}

{psee}
手册:  {help prdocumented_zh:以前记录的文档}

{psee}
{space 2}帮助:  {manhelp dvech TS}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dvech_postestimation.sthlp>}