{smcl}
{* *! version 1.2.6  20oct2017}{...}
{viewerdialog predict "dialog poisso_p"}{...}
{viewerdialog estat "dialog poisson_estat"}{...}
{vieweralsosee "[R] poisson postestimation" "mansection R poissonpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] poisson" "help poisson_zh"}{...}
{viewerjumpto "后估计命令" "poisson postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "poisson_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "poisson postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "poisson postestimation##syntax_margins"}{...}
{viewerjumpto "estat" "poisson postestimation##syntax_estat_gof"}{...}
{viewerjumpto "示例" "poisson postestimation##examples"}{...}
{viewerjumpto "存储结果" "poisson postestimation##results"}
{help poisson_postestimation:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[R] poisson postestimation} {hline 2}}泊松的后估计工具{p_end}
{p2col:}({mansection R poissonpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
以下后估计命令在使用 {cmd:poisson} 后特别重要：

{synoptset 19}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb poisson postestimation##estatgof:estat gof}}拟合优度检验{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{cmd:estat gof} 在使用 {cmd:svy} 前缀后不适用。{p_end}

{pstd}
以下标准后估计命令也可以使用：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_contrast
包含 help post_estatic
包含 help post_estatsum
包含 help post_estatvce
包含 help post_svy_estat
包含 help post_estimates
包含 help post_forecast_star
包含 help post_hausman_star
包含 help post_lincom
包含 help post_linktest
包含 help post_lrtest_star
{synopt:{helpb poisson_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含 help post_marginsplot
包含 help post_nlcom
{synopt :{helpb poisson postestimation##predict:predict}}预测、残差、影响统计和其它诊断测量{p_end}
包含 help post_predictnl
包含 help post_pwcompare
包含 help post_suest
包含 help post_test
包含 help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 在 {cmd:svy} 估计结果中不适用。{cmd:forecast} 在 {cmd:mi} 估计结果中也不适用。{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R poissonpostestimationRemarksandexamples:备注和示例}

        {mansection R poissonpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin}
[{cmd:,} {it:statistic} {opt nooff:set}]

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主要}
{synopt :{opt n}}事件数量；默认值{p_end}
{synopt :{opt ir}}发生率{p_end}
{synopt :{opt pr(n)}}概率 Pr(y = n){p_end}
{synopt :{opt pr(a,b)}}概率 Pr(a {ul:<} y {ul:<} b){p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synopt :{opt sc:ore}}对数似然关于 xb 的一阶导数{p_end}
{synoptline}
{p2colreset}{...}
包含 help esample


包含 help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，用于包含预测值，如事件数量、发生率、概率、线性预测、标准误和方程级得分。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt n}，默认值，计算预测事件的数量，如果在拟合模型时未指定 {opt offset()} 或 {opt exposure()}；{break}
如果指定了 {opt offset()}，则为 exp(xb + offset)；或者{break}
如果指定了 {opt exposure()}，则为 exp(xb)*exposure。

{phang}
{opt ir} 计算发生率 exp(xb)，即暴露为 1 时的预测事件数量。指定 {opt ir} 等价于在未指定 {opt offset()} 或 {opt exposure()} 时指定 {opt n}。

{phang}
{opt pr(n)} 计算概率 Pr(y = n)，其中 n 是可以指定为数字或变量的非负整数。

包含 help pr_uncond_opt

{phang}
{opt xb} 计算线性预测，如果未指定 {cmd:offset()} 或 {cmd:exposure()}，则为 xb；
如果指定了 {cmd:offset()}，则为 xb + offset；或者
如果指定了 {cmd:exposure()}，则为 xb + ln(exposure)；
详见 {helpb poisson_postestimation##nooffset:nooffset}。

{phang}
{opt stdp} 计算线性预测的标准误。

{phang}
{opt score} 计算方程级得分，即对数似然对线性预测的导数。

{marker nooffset}{...}
{phang}
{opt nooffset} 仅在拟合模型时指定了 {opt offset()} 或 {opt exposure()} 时相关。它修改 {cmd:predict} 所做的计算，使其忽略偏移量或暴露变量；线性预测被视为 xb，而不是 {bind:xb + offset} 或 xb + ln(exposure)。指定 {cmd:predict} ...{cmd:,}{cmd:nooffset} 相当于指定 {cmd:predict} ...{cmd:,}{opt ir}。


包含 help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt n}}事件数量；默认值{p_end}
{synopt :{opt ir}}发生率{p_end}
{synopt :{opt pr(n)}}概率 Pr(y = n){p_end}
{synopt :{opt pr(a,b)}}概率 Pr(a {ul:<} y {ul:<} b){p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt sc:ore}}不允许与 {cmd:margins} 一起使用{p_end}
{synoptline}
{p2colreset}{...}

包含 help notes_margins


包含 help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际，计算事件数量、发生率、概率和线性预测。


{marker syntax_estat_gof}{...}
{marker estatgof}{...}
{title:estat 的语法}

{p 8 14 2}
{cmd:estat gof}


包含 help menu_estat


{marker des_estat}{...}
{title:estat 的描述}

{pstd}
{cmd:estat gof} 对模型进行拟合优度检验。报告偏差统计量和皮尔逊统计量。如果检验显著，则泊松回归模型不适用。然后可以尝试负二项模型；详见 {help nbreg_zh:[R] nbreg}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse dollhill3}{p_end}
{phang2}{cmd:. poisson deaths i.smokes i.agecat, exp(pyears)}{p_end}

{pstd}预测发生率{p_end}
{phang2}{cmd:. predict deathrate, ir}

{pstd}估计发生率和标准误{p_end}
{phang2}{cmd:. margins agecat#smokes, predict(ir)}

{pstd}绘制估计和置信区间{p_end}
{phang2}{cmd:. marginsplot}

{pstd}拟合优度检验{p_end}
{phang2}{cmd:. estat gof}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
在 {cmd:poisson} 之后，{cmd:estat gof} 将以下信息存储在 {cmd:r()} 中：
 
{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(df)}}自由度（皮尔逊和偏差）{p_end}
{synopt:{cmd:r(chi2_p)}}卡方（皮尔逊）{p_end}
{synopt:{cmd:r(chi2_d)}}卡方（偏差）{p_end}
{synopt:{cmd:r(p_p)}}卡方检验的 p 值（皮尔逊）{p_end}
{synopt:{cmd:r(p_d)}}卡方检验的 p 值（偏差）{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <poisson_postestimation.sthlp>}