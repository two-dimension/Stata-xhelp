{smcl}
{* *! version 1.2.7  12nov2018}{...}
{viewerdialog predict "dialog mprobit_p"}{...}
{vieweralsosee "[R] mprobit postestimation" "mansection R mprobitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] mprobit" "help mprobit_zh"}{...}
{viewerjumpto "后估计命令" "mprobit postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "mprobit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "mprobit postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "mprobit postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "mprobit postestimation##examples"}
{help mprobit_postestimation:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[R] mprobit postestimation} {hline 2}}mprobit 的后估计工具{p_end}
{p2col:}({mansection R mprobitpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {opt mprobit} 之后可用的后估计命令如下：

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
{synopt:{helpb mprobit_postestimation##margins:边际}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb mprobit postestimation##predict:预测}}预测
概率、线性预测和标准误{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 不适用于
{cmd:svy} 估计结果。 {cmd:forecast} 对于
{cmd:mi} 估计结果也不适用。{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R mprobitpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


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
{synopt :{cmdab:pr}}预测概率；默认值{p_end}
{synopt :{cmd:xb}}线性预测{p_end}
{synopt :{cmd:stdp}}线性预测的标准误{p_end}
{synopt:{opt sc:ores}}方程级别得分{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help fn_pr_out
{p 4 6 2}
您可以使用 {cmd:xb} 和 {cmd:stdp} 指定一个新变量。
如果不指定 {cmd:outcome()}，则默认假定为 {cmd:outcome(#1)}。
{p_end}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测（如
概率、线性预测及标准误）的新变量。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

INCLUDE help pr_stub

{phang}
{opt xb} 计算线性预测 x_{it:i} a_{it:j}，针对
替代 {it:j} 和个体 {it:i}。索引 {it:j} 对应
于 {opt outcome()} 中指定的结果。

{phang}
{opt stdp} 计算线性预测的标准误。

INCLUDE help outcome_opt
{opt outcome()} 与 {opt scores} 不兼容。

{phang}
{opt scores} 计算方程级得分变量。第 {it:j} 个新
变量将包含第 {it:j} 个拟合方程的得分。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :默认}每个结果的概率{p_end}
{synopt :{opt pr}}指定结果的概率{p_end}
{synopt :{cmd:xb}}指定结果的线性预测{p_end}
{synopt :{cmd:stdp}}与 {cmd:margins} 不兼容{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt pr} 和 {opt xb} 默认指向第一个结果。
{p_end}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际，对于概率和线性
预测。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sysdsn1}{p_end}
{phang2}{cmd:. mprobit insure age male nonwhite i.site}{p_end}

{pstd}测试 {cmd:2.site} 和 {cmd:3.site} 的系数在所有
方程中是否为 0{p_end}
{phang2}{cmd:. test 2.site 3.site}{p_end}

{pstd}测试方程 {cmd:Uninsure} 中所有系数是否为 0{p_end}
{phang2}{cmd:. test [Uninsure]}{p_end}

{pstd}测试 {cmd:2.site} 和 {cmd:3.site} 在 {cmd:Prepaid}
方程中是否共同为 0{p_end}
{phang2}{cmd:. test [Prepaid]: 2.site 3.site}{p_end}

{pstd}测试 {cmd:Prepaid} 和 {cmd:Uninsure} 方程中的系数是否相等{p_end}
{phang2}{cmd:. test [Prepaid=Uninsure]}{p_end}

{pstd}预测一个人属于 {cmd:Prepaid} 保险类别的概率{p_end}
{phang2}{cmd:. predict p1 if e(sample), outcome(2)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mprobit_postestimation.sthlp>}