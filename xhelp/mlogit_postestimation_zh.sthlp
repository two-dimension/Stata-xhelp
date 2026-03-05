{smcl}
{* *! version 1.2.7  12nov2018}{...}
{viewerdialog predict "dialog mlogit_p"}{...}
{vieweralsosee "[R] mlogit postestimation" "mansection R mlogitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] mlogit" "help mlogit_zh"}{...}
{viewerjumpto "后估计命令" "mlogit postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "mlogit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "mlogit postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "mlogit postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "mlogit postestimation##examples"}
{help mlogit_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[R] mlogit postestimation} {hline 2}}mlogit 的后估计工具{p_end}
{p2col:}({mansection R mlogitpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {opt mlogit} 之后可用的后估计命令如下：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_svy_estat
INCLUDE help post_estimates
INCLUDE help post_forecast_star
INCLUDE help post_hausman_star
INCLUDE help post_lincom
INCLUDE help post_lrtest_star
{synopt:{helpb mlogit_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb mlogit postestimation##predict:predict}}预测、残差、
影响统计和其他诊断测量{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 与 {cmd:svy} 估计结果不适用。 {cmd:forecast} 同样也与 
{cmd:mi} 估计结果不适用。{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R mlogitpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help newvar_zh}} | {it:{help newvarlist_zh}}{c )-}
{ifin}
[{cmd:,} {it:statistic} {opt o:utcome(outcome)}]

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主要}
{synopt :{opt pr}}预测概率；默认值{p_end}
{synopt :{cmd:xb}}线性预测{p_end}
{synopt :{cmd:stdp}}线性预测的标准误差{p_end}
{synopt :{cmd:stddp}}两个线性预测差异的标准误差{p_end}
{synopt :{opt sc:ores}}方程级得分{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help fn_pr_out
{p 4 6 2}
您可以用 {cmd:xb}、{cmd:stdp} 和 {cmd:stddp} 指定一个新变量。
如果您没有指定 {cmd:outcome()}，则默认假定为 {cmd:outcome(#1)}。
您必须使用 {cmd:outcome()} 参数与 {cmd:stddp} 选项。{p_end}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测结果的新变量，例如
概率、线性预测和标准误差。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

INCLUDE help pr_stub

{phang}
{opt xb} 计算线性预测。 您还必须指定
{opt outcome(outcome)} 选项。

{phang}
{opt stdp} 计算线性预测的标准误差。
您还必须指定 {opt outcome(outcome)} 选项。

{phang}
{opt stddp} 计算两个线性预测差异的标准误差。 您必须指定 {opt outcome(outcome)} 选项，
并在此处指定感兴趣的两个特定结果，例如 {cmd:predict sed, stdp outcome(1,3)}。

INCLUDE help outcome_opt
{opt outcome()} 与 {opt scores} 不允许一起使用。

{phang}
{opt scores} 计算方程级得分变量。 创建的得分变量数量将比模型中结果的数量少一个。 如果模型中的结果的数量为 k，则

{pmore}
第一个新变量将包含相对于第一个方程的对数似然的第一导数；

{pmore}
第二个新变量将包含相对于第二个方程的对数似然的第一导数；

{pmore}
...

{pmore}
第 (k-1) 个新变量将包含相对于第 (k-1) 个方程的对数似然的第一导数。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :默认}每个结果的概率{p_end}
{synopt :{opt pr}}指定结果的概率{p_end}
{synopt :{cmd:xb}}指定结果的线性预测{p_end}
{synopt :{cmd:stdp}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt :{cmd:stddp}}与 {cmd:margins} 不允许一起使用{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt pr} 和 {opt xb} 默认设定为第一个结果。
{p_end}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计概率和线性预测的响应边际。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse sysdsn1}{p_end}
{phang2}{cmd:. mlogit insure age male nonwhite i.site}{p_end}

{pstd}测试 {cmd:2.site} 和 {cmd:3.site} 在所有方程中的联合显著性{p_end}
{phang2}{cmd:. test 2.site 3.site}{p_end}

{pstd}测试 {cmd:Prepaid} 方程中系数的联合显著性{p_end}
{phang2}{cmd:. test [Prepaid]}{p_end}

{pstd}测试 {cmd:2.site} 和 {cmd:3.site} 在 {cmd:Uninsure} 方程中的联合显著性{p_end}
{phang2}{cmd:. test [Uninsure]: 2.site 3.site}{p_end}

{pstd}测试 {cmd:Prepaid} 和 {cmd:Uninsure} 方程中系数是否相等{p_end}
{phang2}{cmd:. test [Prepaid=Uninsure]}{p_end}

{pstd}预测估计样本中结果1的概率{p_end}
{phang2}{cmd:. predict p1 if e(sample), outcome(1)}{p_end}

{pstd}显示 {cmd:p1} 的摘要统计{p_end}
{phang2}{cmd:. summarize p1}{p_end}

{pstd}计算 {cmd:Indemnity} 方程的线性预测{p_end}
{phang2}{cmd:. predict idx1, outcome(Indemnity) xb}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. mlogit rep78 mpg displ}{p_end}

{pstd}计算每个结果的回归变量均值时的预测概率{p_end}
{phang2}{cmd:. margins, atmeans}{p_end}

{pstd}计算每个结果1-3的回归变量的平均边际效应{p_end}
{phang2}{cmd:. margins, dydx(*) predict(outcome(1)) predict(outcome(2)) predict(outcome(3))}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mlogit_postestimation.sthlp>}