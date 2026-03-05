{smcl}
{* *! version 1.2.4  19oct2017}{...}
{viewerdialog predict "dialog xtgee_p"}{...}
{viewerdialog estat "dialog xtgee_estat"}{...}
{vieweralsosee "[XT] xtgee postestimation" "mansection XT xtgeepostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtgee" "help xtgee_zh"}{...}
{viewerjumpto "Postestimation commands" "xtgee postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtgee_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "xtgee postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "xtgee postestimation##syntax_margins"}{...}
{viewerjumpto "estat" "xtgee postestimation##syntax_estat_wcorr"}{...}
{viewerjumpto "Examples" "xtgee postestimation##examples"}
{help xtgee_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[XT] xtgee postestimation} {hline 2}}xtgee 的事后估计工具{p_end}
{p2col:}({mansection XT xtgeepostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:事后估计命令}

{pstd}
在 {cmd:xtgee} 之后，以下的事后估计命令特别重要：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb xtgee postestimation##estatwcor:estat wcorrelation}}估计组内相关矩阵{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
还可以使用以下标准的事后估计命令：

{synoptset 18 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_contrast
包含 help post_estatsum
包含 help post_estatvce
包含 help post_estimates
包含 help post_forecast_star
包含 help post_hausman
包含 help post_lincom
{synopt:{helpb xtgee_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际效应{p_end}
包含 help post_marginsplot
包含 help post_nlcom
{synopt :{helpb xtgee postestimation##predict:predict}}预测、残差、影响统计和其他诊断测量{p_end}
包含 help post_predictnl
包含 help post_pwcompare
包含 help post_test
包含 help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast} 不适用于 {cmd:mi} 估计结果.{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtgeepostestimationRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测语法}

{p 8 16 2}{cmd:predict} {dtype} {newvar} {ifin}
[{cmd:,} {it:statistic} {opt nooff:set}]

{synoptset 18 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab:主要}
{synopt :{opt mu}}{depvar} 的预测值；考虑 {opt offset()} 或 {opt exposure()}；默认设置{p_end}
{synopt :{opt r:ate}}{depvar} 的预测值{p_end}
{synopt :{opt pr(n)}}概率 Pr(y = n) 用于 {cmd:family(poisson)}
 {cmd:link(log)}{p_end}
{synopt :{opt pr(a,b)}}概率 Pr(a {ul:<} y {ul:<} b) 用于
 {cmd:family(poisson)} {cmd:link(log)}{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synopt :{opt sc:ore}}对 xb 的对数似然的首次导数{p_end}
{synoptline}
{p2colreset}{...}
包含 help esample


包含 help menu_predict


{marker des_predict}{...}
{title:预测描述}

{pstd}
{cmd:predict} 创建一个新变量，包含如预测值、概率、线性预测、标准误和方程级评分等预测结果。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主要}

{phang}
{opt mu} 和 {opt rate} 计算 {depvar} 的预测值。 {opt mu} 考虑 {opt offset()} 或 {opt exposure()} 和分母，如果家族是二项式的；{opt rate} 不考虑这些调整。如果在拟合 {cmd:xtgee} 模型时没有指定 {opt offset()} 或 {opt exposure()}，且没有指定 {cmd:family(binomial} {it:#}{cmd:)} 或
{cmd:family(binomial} {varname}{cmd:)}, 意味着二项式家族且分母不等于一，则 {opt mu} 和 {opt rate} 是等价的。

{pmore}
因此，对于 {cmd:family(gaussian)}
{cmd:link(identity)}，{opt mu} 和 {opt rate} 是相同的。

{pmore}
对于 {cmd:family(binomial pop)}
{cmd:link(logit)}，{opt mu} 和 {opt rate} 不等价。此时，{opt mu} 将预测积极结果的数量，而 {opt rate} 将预测积极结果的概率。

{pmore}
对于 {cmd:family(poisson)}
{cmd:link(log)} {cmd:exposure(time)}，{opt mu} 将预测给定曝光时间的事件数量，而 {opt rate} 将计算发病率——给定曝光时间为 1 的事件数量。

{phang}
{opt pr(n)} 计算概率 Pr(y = n) 用于 {cmd:family(poisson)}
{cmd:link(log)}，其中 n 是可以指定为数字或变量的非负整数。

{phang}
{opt pr(a,b)} 计算概率
Pr(a {ul:<} y {ul:<} b) 用于 {cmd:family(poisson)} {cmd:link(log)}，
其中 a 和 b 是可以指定为数字或变量的非负整数；

{pmore}
b 缺失 {bind:(b {ul:>} .)} 意味着正无穷；{break}
{cmd:pr(20,.)} 计算 {bind:Pr(y {ul:>} 20)}; {break}
{cmd:pr(20,}{it:b}{cmd:)} 在 {bind:b {ul:>} .} 的观测值中计算 {bind:Pr(y {ul:>} 20)}；{break}
在其他地方计算 {bind:Pr(20 {ul:<} y {ul:<} b)}。

{pmore}
{cmd:pr(.,}{it:b}{cmd:)} 会产生语法错误。变量 {it:a} 的观测值中缺失值会导致 {opt pr(a,b)} 中该观测值缺失值。

{phang}
{opt xb} 计算线性预测。

{phang}
{opt stdp} 计算线性预测的标准误。

{phang}
{opt score} 计算方程级分数。

{phang}
{opt nooffset} 仅在拟合模型时指定了 {opth offset(varname)},
{opt exposure(varname)}, {cmd:family(binomial} {it:#}{cmd:)}, 或
{cmd:family(binomial} {it:varname}{cmd:)} 时相关。它修改 predict 的计算，使之忽略偏移或曝光变量及二项式的分母。因此 {cmd:predict} {it:...}{cmd:,}
{cmd:mu nooffset} 产生与
{cmd:predict} {it:...}{cmd:, rate} 相同的结果。


包含 help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt mu}}{depvar} 的预测值；考虑 {opt offset()} 或 {opt exposure()}；默认设置{p_end}
{synopt :{opt r:ate}}{depvar} 的预测值{p_end}
{synopt :{opt pr(n)}}概率 Pr(y = n) 用于 {cmd:family(poisson)}
 {cmd:link(log)}{p_end}
{synopt :{opt pr(a,b)}}概率 Pr(a {ul:<} y {ul:<} b) 用于
 {cmd:family(poisson)} {cmd:link(log)}{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins}{p_end}
{synopt :{opt sc:ore}}不允许与 {cmd:margins}{p_end}
{synoptline}
{p2colreset}{...}

包含 help notes_margins


包含 help menu_margins


{marker des_margins}{...}
{title:边际描述}

{pstd}
{cmd:margins} 估计预测值、概率和线性预测的响应边际。


{marker syntax_estat_wcorr}{...}
{marker estatwcor}{...}
{title:estat 语法}

{p 8 16 2}{cmd:estat} {opt wcor:relation} [{cmd:,} {opt c:ompact}
             {opth f:ormat(%fmt)}]


包含 help menu_estat


{marker des_estat}{...}
{title:estat 描述}

{pstd}
{cmd:estat wcorrelation} 显示组内相关的估计矩阵。


{marker options_estat_wcorr}{...}
{title:estat 选项}

{phang}
{opt compact} 指定仅显示估计的组内相关矩阵的参数（α），而不是整个矩阵。

{phang}
{opt format(%fmt)} 覆盖显示格式；见 {manhelp format D}。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. webuse nlswork2}{p_end}

{pstd}估计随机效应线性回归{p_end}
{phang2}{cmd:. xtgee ln_w grade age c.age#c.age, corr(exchangeable)}{p_end}

{pstd}在 {cmd:xtgee} 之后检查工作相关矩阵{p_end}
{phang2}{cmd:. estat wcorrelation}{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse ships}

{pstd}拟合 Poisson 模型{p_end}
{phang2}{cmd:. xtgee accident op_75_79 co_65_69 co_70_74 co_75_79,}
    {cmd:family(poisson) link(log) corr(exchangeable) exposure(service)}{p_end}

{pstd}预测每个被试的曝光时间所带来的事件数量{p_end}
{phang2}{cmd:. predict nevents, mu}

{pstd}预测发病率，或曝光时间为 1 时的事件数量{p_end}
{phang2}{cmd:. predict incrate, rate}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtgee_postestimation.sthlp>}