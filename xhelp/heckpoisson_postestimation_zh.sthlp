{smcl}
{* *! version 1.0.6  15oct2018}{...}
{viewerdialog predict "dialog heckpoisson_p"}{...}
{vieweralsosee "[R] heckpoisson postestimation" "mansection R heckpoissonpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] heckpoisson" "help heckpoisson_zh"}{...}
{viewerjumpto "后估计命令" "heckpoisson postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "heckpoisson_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "heckpoisson postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "heckpoisson postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "heckpoisson postestimation##examples"}
{help heckpoisson_postestimation:English Version}
{hline}{...}
{p2colset 1 35 37 2}{...}
{p2col:{bf:[R] heckpoisson postestimation} {hline 2}}heckpoisson 的后估计工具{p_end}
{p2col:}({mansection R heckpoissonpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {cmd:heckpoisson} 之后可以使用以下后估计命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含帮助 post_contrast
包含帮助 post_estatic
包含帮助 post_estatsum
包含帮助 post_estatvce
包含帮助 post_svy_estat
包含帮助 post_estimates
包含帮助 post_forecast_star
包含帮助 post_hausman_star
包含帮助 post_lincom
包含帮助 post_lrtest_star
{synopt:{helpb heckpoisson_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
包含帮助 post_marginsplot
包含帮助 post_nlcom
{synopt :{helpb heckpoisson postestimation##predict:predict}}预测、残差、影响统计以及其他诊断度量{p_end}
包含帮助 post_predictnl
包含帮助 post_pwcompare
包含帮助 post_suest
包含帮助 post_test
包含帮助 post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R heckpoissonpostestimationRemarksandexamples:备注和示例}

        {mansection R heckpoissonpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic} {opt nooff:set}]

{p 8 16 2}
{cmd:predict} {dtype} {c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh:newvarlist}}{c )-}
{ifin}{cmd:,} {opt sc:ores}

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主}
{synopt :{opt n}}事件的数量；默认值{p_end}
{synopt :{opt ir}}发生率{p_end}
{synopt :{opt nc:ond}}在 y_j 被观察到的情况下预测的事件数量{p_end}
{synopt :{opt pr(n)}}Pr(y = n){p_end}
{synopt :{opt pr(a,b)}}Pr(a {ul:<} y {ul:<} b){p_end}
{synopt :{opt ps:el}}Pr(y 观察到){p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt xbs:el}}选择方程的线性预测{p_end}
{synoptline}
{p2colreset}
包含帮助 esample


包含帮助 menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建包含预测值的新变量，例如事件数量、发生率、在条件下预测的事件数量、概率、线性预测和值的变量。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主}
{phang}
{opt n}（默认值）计算预测的事件数量，如果模型拟合时未指定 {opt offset()} 或 {opt exposure()}，则为 exp(xb)；如果指定了 {opt offset()}，则为{break}
exp(xb + offset)；如果指定了 {opt exposure()}，则为{break}
exp(xb)*exposure。

{phang}
{opt ir}计算发生率 exp(xb)，这是当曝光为 1 时的预测事件数量。指定 {opt ir} 等同于在模型拟合时未指定 {opt offset()} 或 {opt exposure()}。

{phang}
{opt ncond}计算在 y_j 被观察到的情况下预测的事件数量。

{phang}
{opt pr(n)}计算概率 Pr(y = n)，其中 n 是指定为数字或变量的非负整数。

包含帮助 pr_uncond_opt

{phang}
{opt psel}计算选择（或被观察到）的概率。

{phang}
{opt xb}计算因变量的线性预测，如果既没有指定 {cmd:offset()}，也没有指定 {cmd:exposure()}，则为 xb；如果指定了 {cmd:offset()}，则为 xb + offset；如果指定了 {cmd:exposure()}，则为 xb + ln(exposure)。

{phang}
{opt xbsel}计算选择方程的线性预测。

{phang}
{opt nooffset} 仅在您在拟合模型时指定了 {opt offset()} 或 {opt exposure()} 时相关。它修改 {cmd:predict} 的计算，使它们忽略偏移或曝光变量；线性预测被视为 xb，而不是 xb + offset 或 xb + ln(exposure)。

{phang}
{opt scores} 计算方程级别的评分变量。{p_end}

{pmore}
第一个新变量将包含与回归方程的对数似然的导数。

{pmore}
第二个新变量将包含与选择方程的对数似然的导数。

{pmore}
第三个新变量将包含与第三个方程 ({hi:athrho}) 的对数似然的导数。

{pmore}
第四个新变量将包含与第四个方程 ({hi:lnsigma}) 的对数似然的导数。


包含帮助 syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt n}}事件的数量；默认值{p_end}
{synopt :{opt ir}}发生率{p_end}
{synopt :{opt nc:ond}}在 y_j 被观察到的情况下预测的事件数量{p_end}
{synopt :{opt pr(n)}}Pr(y = n){p_end}
{synopt :{opt pr(a,b)}}Pr(a {ul:<} y {ul:<} b){p_end}
{synopt :{opt ps:el}}Pr(y 观察到){p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt xbs:elect}}选择方程的线性预测{p_end}
{synoptline}
{p2colreset}{...}

包含帮助 notes_margins


包含帮助 menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计事件数量、发生率、条件预测事件数量、概率和线性预测的响应边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse patent}

{pstd}拟合具有内生样本选择的 Poisson 模型{p_end}
{phang2}{cmd:. heckpoisson npatents expenditure i.tech, select(applied = expenditure size i.tech)}

{pstd}估计在信息技术和非信息技术行业（{cmd:tech}）中 R&D 支出 ({cmd:expenditure}) 增加一百万美元对专利数量 ({cmd:npatents}) 的影响{p_end}
{phang2}{cmd:. margins i.tech, at(expenditure = generate(expenditure))}
        {cmd:at(expenditure = generate(expenditure+1)) post}

{pstd}获得各行业的差异之差的估计及其显著性测试{p_end}
{phang2}{cmd:. lincom (_b[2._at#1.tech] - _b[1._at#1.tech]) -}
        {cmd:(_b[2._at#0.tech] - _b[1._at#0.tech])}

{pstd}计算事件数量{p_end}
{phang2}{cmd:. predict p}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <heckpoisson_postestimation.sthlp>}