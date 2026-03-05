{smcl}
{* *! version 1.2.7  19oct2017}{...}
{viewerdialog "predict (re/fe)" "dialog xtpoisson_refe_p"}{...}
{viewerdialog "predict (pa)" "dialog xtpoisson_pa_p"}{...}
{vieweralsosee "[XT] xtpoisson postestimation" "mansection XT xtpoissonpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtpoisson" "help xtpoisson_zh"}{...}
{viewerjumpto "Postestimation commands" "xtpoisson postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtpoisson_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "xtpoisson postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "xtpoisson postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "xtpoisson postestimation##examples"}
{help xtpoisson_postestimation:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[XT] xtpoisson postestimation} {hline 2}}xtpoisson的后估计工具{p_end}
{p2col:}({mansection XT xtpoissonpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}

{marker description}{...}
{title:后估计命令}

{pstd}
在执行 {cmd:xtpoisson} 后可用的后估计命令如下：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
{p2coldent :* {bf:{help estat ic}}}阿基里（AIC）与施瓦茨（BIC）贝叶斯信息准则{p_end}
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast_star2
INCLUDE help post_hausman
INCLUDE help post_lincom
INCLUDE help post_lrtest_star
{synopt:{helpb xtpoisson_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb xtpoisson postestimation##predict:predict}}预测、残差、影响统计及其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:estat ic} 和 {cmd:lrtest} 不适用于 {cmd:xtpoisson, pa}.{p_end}
{p 4 6 2}
+ {cmd:forecast} 不适用于 {cmd:mi} 估计结果。{p_end}

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection XT xtpoissonpostestimationRemarksandexamples:备注和示例}

        {mansection XT xtpoissonpostestimationMethodsandformulas:方法与公式}

{pstd}
上述部分未包含在此帮助文件中。

{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{phang}
随机效应（RE）模型

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,}
{it:{help xtpoisson_postestimation##random:RE_statistic}}
{opt nooff:set} ]

{phang}
固定效应（FE）模型

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,}
{it:{help xtpoisson_postestimation##fixed:FE_statistic}}
{opt nooff:set} ]

{phang}
人群平均（PA）模型

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,}
{it:{help xtpoisson_postestimation##popaverage:PA_statistic}}
{opt nooff:set} ]

{marker random}{...}
{synoptset 17 tabbed}{...}
{synopthdr :RE_statistic}
{synoptline}
{syntab:主要}
{synopt :{opt xb}}线性预测；默认选项{p_end}
{synopt :{opt stdp}}线性预测的标准误差{p_end}
{synopt :{opt n}}相对于随机效应的边际预测事件数量；仅在 {cmd:xtpoisson,} {cmd:re normal} 之后允许{p_end}
{synopt :{opt nu0}}假设随机效应为零的预测事件数量{p_end}
{synopt :{opt iru0}}假设随机效应为零的预测发生率{p_end}
{synopt :{opt pr0(n)}}假设随机效应为零的概率 Pr(y = n){p_end}
{synopt :{opt pr0(a,b)}}假设随机效应为零的概率 Pr(a {ul:<} y {ul:<} b){p_end}
{synoptline}
{p2colreset}{...}

{marker fixed}{...}
{synoptset 17 tabbed}{...}
{synopthdr :FE_statistic}
{synoptline}
{syntab:主要}
{synopt :{opt xb}}线性预测；默认选项{p_end}
{synopt :{opt stdp}}线性预测的标准误差{p_end}
{synopt :{opt nu0}}假设固定效应为零的预测事件数量{p_end}
{synopt :{opt iru0}}假设固定效应为零的预测发生率{p_end}
{synoptline}
{p2colreset}{...}

{marker popaverage}{...}
{synoptset 17 tabbed}{...}
{synopthdr :PA_statistic}
{synoptline}
{syntab:主要}
{synopt :{opt mu}}预测事件数量；考虑 {opt offset()}；默认选项{p_end}
{synopt :{opt rate}}预测事件数量{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt pr(n)}}概率 Pr(y = n){p_end}
{synopt :{opt pr(a,b)}}概率 Pr(a {ul:<} y {ul:<} b){p_end}
{synopt :{opt stdp}}不适用于 {cmd:margins}{p_end}
{synopt :{opt sc:ore}}似然函数对 xb 的一阶导数{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help esample

INCLUDE help menu_predict

{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测的新的变量，例如线性预测、标准误差、事件数量、发生率、概率和方程级别评分。

{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb} 计算线性预测。 这是随机效应和固定效应模型的默认值。

{phang}
{opt mu} 和 {opt rate} 都计算预测的事件数量。
{opt mu} 考虑 {opt offset()}，而 {opt rate} 不考虑这些调整。如果未指定 {opt offset()}，则 {opt mu} 和 {opt rate} 等价。
{opt mu} 为人群平均模型的默认值。

{phang}
{opt stdp} 计算线性预测的标准误差。

{phang}
{opt n} 计算相对于随机效应的边际预测事件数量，这意味着统计量通过对其整个支持范围内的预测函数积分来计算。此选项仅在 {cmd:xtpoisson,} {cmd:re} {cmd:normal} 之后允许。

{phang}
{opt nu0} 计算假设随机或固定效应为零的预测事件数量。

{phang}
{opt iru0} 计算假设随机或固定效应为零的预测发生率。

{phang}
{opt pr0(n)} 计算假设随机效应为零的概率 Pr(y = n)，其中 n 是可指定为数字或变量的非负整数（仅在 {cmd:xtpoisson, re} 之后允许）。

{phang}
{opt pr0(a,b)} 计算假设随机效应为零的概率
Pr(a {ul:<} y {ul:<} b)，其中 a 和 b 是可以指定为数字或变量的非负整数（仅在 {cmd:xtpoisson, re} 之后允许）；

{pmore}
b 为缺失的 {bind:(b {ul:>} .)} 所以代表正无穷；{break}
{cmd:pr0(20,.)} 计算 {bind:Pr( y {ul:>} 20)}； {break}
{cmd:pr0(20,}b{cmd:)} 计算 {bind:Pr( y {ul:>} 20)} 在其中 {bind:b {ul:>} .}{break}
并在其他地方计算 {bind:Pr(20 {ul:<} y {ul:<} b)}。

{pmore}
{cmd:pr0(.,}{it:b}{cmd:)} 会产生语法错误。变量 {it:a} 的观测值缺失会导致 {opt pr0(a,b)} 在该观测值上的结果缺失。

{phang}
{opt pr(n)} 计算概率 Pr(y = n)，其中 n 是可以指定为数字或变量的非负整数（仅在 {cmd:xtpoisson, pa} 之后允许）。

{phang}
{opt pr(a,b)} 计算概率 Pr(a {ul:<} y {ul:<} b)（仅在 {cmd:xtpoisson, pa} 之后允许）。该选项的语法与 {opt pr0(a,b)} 类似。

{phang}
{opt score} 计算方程级别的评分。

{phang}
{opt nooffset} 仅在您为 {cmd:xtpoisson} 指定了 {opth offset(varname)} 相关。它修改 {cmd:predict} 的计算，使其忽略偏移变量；线性预测被视为 xb 而不是 xb + offset。

INCLUDE help syntax_margins

{phang}
随机效应（RE）模型

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt xb}}线性预测；在 {cmd:xtpoisson, re} 之后的默认选项{p_end}
{synopt :{opt n}}相对于随机效应的边际预测事件数量；在 {cmd:xtpoisson,} {cmd:re normal} 之后的默认值及唯一允许的选项{p_end}
{synopt :{opt nu0}}假设随机效应为零的预测事件数量{p_end}
{synopt :{opt iru0}}假设随机效应为零的预测发生率{p_end}
{synopt :{opt pr0(n)}}假设随机效应为零的概率 Pr(y = n){p_end}
{synopt :{opt pr0(a,b)}}假设随机效应为零的概率 Pr(a {ul:<} y {ul:<} b){p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins} 一起使用{p_end}
{synoptline}
{p2colreset}{...}

{phang}
固定效应（FE）模型

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt xb}}线性预测；默认选项{p_end}
{synopt :{opt nu0}}假设固定效应为零的预测事件数量{p_end}
{synopt :{opt iru0}}假设固定效应为零的预测发生率{p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins} 一起使用{p_end}
{synoptline}
{p2colreset}{...}

{phang}
人群平均（PA）模型

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt mu}}预测事件数量；考虑 {opt offset()}；默认选项{p_end}
{synopt :{opt rate}}预测事件数量{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt pr(n)}}概率 Pr(y = n){p_end}
{synopt :{opt pr(a,b)}}概率 Pr(a {ul:<} y {ul:<} b){p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt sc:ore}}不允许与 {cmd:margins} 一起使用{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins

INCLUDE help menu_margins

{marker des_margins}{...}
{title:margins的描述}

{pstd}
{cmd:margins} 估计线性预测、事件数量、发生率和概率的反应边际。

{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse ships}{p_end}
{phang2}{cmd:. xtset ship}{p_end}

{pstd}拟合随机效应模型{p_end}
{phang2}{cmd:. xtpoisson accident op_75_79 co_65_69 co_70_74 co_75_79,}
             {cmd:exp(service)}{p_end}

{pstd}计算假设随机效应为零的预测事故数量{p_end}
{phang2}{cmd:. predict cnt, nu0}

{pstd}计算假设随机效应为零的无事故概率{p_end}
{phang2}{cmd:. predict p, pr0(0) }

{pstd}计算假设随机效应为零的5次或更多事故的概率{p_end}
{phang2}{cmd:. predict p2, pr0(5,.) }

{pstd}拟合具有稳健标准误差的群体平均模型{p_end}
{phang2}{cmd:. xtpoisson accident op_75_79 co_65_69 co_70_74 co_75_79,}
             {cmd:exp(service) pa vce(robust)}{p_end}

{pstd}计算考虑服务月份的预测事故数量{p_end}
{phang2}{cmd:. predict mean, mu}

{pstd}拟合随机效应模型{p_end}
{phang2}{cmd:. xtpoisson accident op_75_79 co_65_69 co_70_74 co_75_79,}
               {cmd:exp(service)}{p_end}

{pstd}保存随机效应结果{p_end}
{phang2}{cmd:. estimates store re}

{pstd}拟合固定效应模型{p_end}
{phang2}{cmd:. xtpoisson accident op_75_79 co_65_69 co_70_74 co_75_79,}
             {cmd:exp(service) fe}

{pstd}保存固定效应结果{p_end}
{phang2}{cmd:. estimates store fe}

{pstd}执行 Hausman 检验，比较固定效应估计与随机效应估计{p_end}
{phang2}{cmd:. hausman fe re}

{pstd}重放随机效应模型估计结果{p_end}
{phang2}{cmd:. estimates replay re}

{pstd}计算随机效应模型预测事件数量的边际效应{p_end}
{phang2}{cmd:. estimates restore re}{p_end}
{phang2}{cmd:. margins, predict(nu0)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtpoisson_postestimation.sthlp>}