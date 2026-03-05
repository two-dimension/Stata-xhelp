{smcl}
{* *! version 1.2.6  19oct2017}{...}
{viewerdialog "predict (re/fe)" "dialog xtnbreg_refe_p"}{...}
{viewerdialog "predict (pa)" "dialog xtnbreg_pa_p"}{...}
{vieweralsosee "[XT] xtnbreg postestimation" "mansection XT xtnbregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtnbreg" "help xtnbreg_zh"}{...}
{viewerjumpto "后估计命令" "xtnbreg postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "xtnbreg_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "xtnbreg postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "xtnbreg postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "xtnbreg postestimation##examples"}
{help xtnbreg_postestimation:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[XT] xtnbreg postestimation} {hline 2}}xtnbreg的后估计工具{p_end}
{p2col:}({mansection XT xtnbregpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在使用 {cmd:xtnbreg} 后，可以使用以下后估计命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
{p2coldent :* {bf:{help estat ic}}}赤池信息量准则和施瓦茨贝叶斯信息量准则 (AIC 和 BIC){p_end}
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast_star2
INCLUDE help post_hausman
INCLUDE help post_lincom
INCLUDE help post_lrtest_star
{synopt:{helpb xtnbreg_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	effects{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb xtnbreg postestimation##predict:predict}}预测、
残差、影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:estat ic} 和 {cmd:lrtest} 在 {cmd: xtnbreg, pa} 后不适用。{p_end}
{p 4 6 2}
+ {cmd:forecast} 与 {cmd:mi} 估计结果不适用。{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection XT xtnbregpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{phang}
随机效应 (RE) 和条件固定效应 (FE) 的过度分散模型

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,}
{it:{help xtnbreg_postestimation##randomandfixed:RE/FE_statistic}}
{opt nooff:set} ]

{phang}
基于总体平均 (PA) 模型

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,}
{it:{help xtnbreg_postestimation##popaverage:PA_statistic}}
{opt nooff:set} ]

{marker randomandfixed}{...}
{synoptset 17 tabbed}{...}
{synopthdr :RE/FE_statistic}
{synoptline}
{syntab:主要}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synopt :{opt nu0}}预测的事件数量；假设固定或
随机效应为零{p_end}
{synopt :{opt iru0}}预测的发生率；假设固定或
随机效应为零{p_end}
{synopt :{opt pr0(n)}}假设随机效应为零时概率 Pr(y = n)；仅在 {cmd:xtnbreg, re} 后允许{p_end}
{synopt :{opt pr0(a,b)}}假设随机效应为零时概率 Pr(a {ul:<} y {ul:<} b)；仅在 {cmd:xtnbreg, re}
   后允许{p_end}
{synoptline}
{p2colreset}{...}

{marker popaverage}{...}
{synoptset 17 tabbed}{...}
{synopthdr :PA_statistic}
{synoptline}
{syntab:主要}
{synopt :{opt mu}}预测的事件数量；考虑
{opt offset()}; 默认值{p_end}
{synopt :{opt rate}}预测的事件数量{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins}一起使用{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测的变量，如
线性预测、标准误、事件数量、发生率、
概率和方程级别得分。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb} 计算线性预测。这是随机效应和固定效应模型的默认值。

{phang}
{opt mu}和 {opt rate} 都计算预测的事件数量。
{opt mu} 考虑 {opt offset()}，而 {opt rate} 忽略这些
调整。如果没有指定 {opt offset()}，则 {opt mu} 和 {opt rate} 是等价的。{opt mu} 是基于总体平均模型的默认值。

{phang}
{opt stdp} 计算线性预测的标准误。

{phang}
{opt nu0} 计算预测的事件数量，假设随机或固定效应为零。

{phang}
{opt iru0} 计算预测的发生率，假设随机或固定效应为零。

{phang}
{opt pr0(n)} 计算假设随机效应为零时的概率 Pr(y = n)，其中 n 是可指定为数字或变量的非负整数（仅在 {cmd:xtnbreg, re} 后允许）。

{phang}
{opt pr0(a,b)} 计算假设随机效应为零时的概率
Pr(a {ul:<} y {ul:<} b)，其中 a 和 b 是可指定为数字或变量的非负整数
（仅在 {cmd:xtnbreg, re} 后允许）；

{pmore}
b 为空 {bind:(b {ul:>} .)} 意味着加无穷大；{break}
{cmd:pr0(20,.)}
计算 {bind:Pr( y {ul:>} 20)}； {break}
{cmd:pr0(20,}b{cmd:)} 计算 {bind:Pr( y {ul:>} 20)} 在
{bind:b {ul:>} .} 的观察值中；{break}
并在其他地方计算 {bind:Pr(20 {ul:<} y {ul:<} b)}。

{pmore}
{cmd:pr0(.,}{it:b}{cmd:)} 产生语法错误。变量 {it:a} 的观察值中的缺失值导致
在 {opt pr0(a,b)} 中的缺失值。

{phang}
{opt score} 计算方程级别得分。

{phang}
{opt nooffset} 仅当您为 {cmd:xtnbreg} 指定了 {opth offset(varname)} 时才相关。它修改
{cmd:predict} 的计算，使其忽略偏移变量；线性预测被视为 xb 而不是 xb + offset。


INCLUDE help syntax_margins

{phang}
随机效应 (RE) 和条件固定效应 (FE) 的过度分散模型

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt nu0}}预测的事件数量；假设固定或
随机效应为零{p_end}
{synopt :{opt iru0}}预测的发生率；假设固定或
随机效应为零{p_end}
{synopt :{opt pr0(n)}}假设随机效应为零时概率 Pr(y = n)；仅在 {cmd:xtnbreg, re} 后允许{p_end}
{synopt :{opt pr0(a,b)}}假设随机效应为零时概率 Pr(a {ul:<} y {ul:<} b)；仅在 {cmd:xtnbreg, re}
   后允许{p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins}一起使用{p_end}
{synoptline}
{p2colreset}{...}

{phang}
基于总体平均 (PA) 模型

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt mu}}预测的事件数量；考虑
{opt offset()}; 默认值{p_end}
{synopt :{opt rate}}预测的事件数量{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins}一起使用{p_end}
{synopt :{opt sc:ore}}不允许与 {cmd:margins}一起使用{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计线性预测、事件数量、发生率和概率的边际响应。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse airacc}{p_end}
{phang2}{cmd:. xtset airline}{p_end}

{pstd}拟合随机效应模型{p_end}
{phang2}{cmd:. xtnbreg i_cnt inprog, exposure(pmiles)}{p_end}

{pstd}计算假设随机效应为零的伤害事件数量{p_end}
{phang2}{cmd:. predict cnt, nu0}{p_end}

{pstd}计算假设随机效应为零的零伤害事故概率{p_end}
{phang2}{cmd:. predict p, pr0(0)}{p_end}

{pstd}计算假设随机效应为零的 5 次或更少事故的概率{p_end}
{phang2}{cmd:. predict p2, pr0(0,5)}{p_end}

{pstd}存储随机效应估计结果{p_end}
{phang2}{cmd:. estimates store re}{p_end}

{pstd}拟合固定效应模型{p_end}
{phang2}{cmd:. xtnbreg i_cnt inprog, exposure(pmiles) fe}{p_end}

{pstd}存储固定效应估计结果{p_end}
{phang2}{cmd:. estimates store fe}{p_end}

{pstd}显示随机效应和固定效应模型的表格，并比较两个模型的AIC统计量{p_end}
{phang2}{cmd:. estimates table re fe, stats(aic)}{p_end}

{pstd}拟合总体平均模型{p_end}
{phang2}{cmd:. xtnbreg i_cnt inprog, exposure(pmiles) pa}{p_end}

{pstd}计算考虑到乘客里程的伤害事件数量{p_end}
{phang2}{cmd:. predict mean}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtnbreg_postestimation.sthlp>}