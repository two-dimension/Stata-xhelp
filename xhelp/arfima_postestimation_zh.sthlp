{smcl}
{* *! version 1.1.6  15may2018}{...}
{viewerdialog predict "dialog arfima_p"}{...}
{viewerdialog "estat acplot" "dialog arfima_estat"}{...}
{viewerdialog psdensity "dialog psdensity"}{...}
{vieweralsosee "[TS] arfima postestimation" "mansection TS arfimapostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arfima" "help arfima_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] estat acplot" "help estat acplot"}{...}
{vieweralsosee "[TS] irf" "help irf_zh"}{...}
{vieweralsosee "[TS] psdensity" "help psdensity_zh"}{...}
{viewerjumpto "Postestimation commands" "arfima postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "arfima_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "arfima postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "arfima postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "arfima postestimation##examples"}
{help arfima_postestimation:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[TS] arfima postestimation} {hline 2}}arfima的后续估计工具{p_end}
{p2col:}({mansection TS arfimapostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后续估计命令}

{pstd}
以下后续估计命令在 {cmd:arfima} 之后特别重要：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb estat acplot}}估计自相关和自协方差{p_end}
{synopt :{help irf_zh}}创建并分析脉冲响应函数{p_end}
{synopt :{help psdensity_zh}}估计谱密度{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后续估计命令也可用：

{synoptset 17 tabbed}{...}
{synopt:命令}描述{p_end}
{synoptline}
包含帮助 post_contrast
{p2coldent:* {bf:{help estat ic}}}赤池信息准则和施瓦茨贝叶斯信息准则（AIC 和 BIC）{p_end}
包含帮助 post_estatsum
包含帮助 post_estatvce
包含帮助 post_estimates
包含帮助 post_forecast
包含帮助 post_lincom
包含帮助 post_lrtest
{p2coldent:* {helpb arfima_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
{p2coldent:* {bf:{help marginsplot_zh}}}绘制 margins 的结果（轮廓图、交互图等）{p_end}
{p2coldent:* {bf:{help nlcom_zh}}}点估计、标准误、检验和非线性组合系数的推断{p_end}
{p2col :{helpb arfima postestimation##syntax_predict:predict}}预测、残差、影响统计量和其他诊断措施{p_end}
{p2coldent:* {bf:{help predictnl_zh}}}点估计、标准误、检验和广义预测的推断{p_end}
包含帮助 post_pwcompare
包含帮助 post_test
包含帮助 post_testnl
{synoptline}
{p 4 6 2}
* {bf:estat ic}、{bf:margins}、{bf:marginsplot}、{bf:nlcom} 和 {bf:predictnl} 在 {bf:arfima, mpl} 之后不适用。
{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS arfimapostestimationRemarksandexamples:备注和示例}

        {mansection TS arfimapostestimationMethodsandformulas:方法和公式}

{pstd}
上述章节未包含在此帮助文件中。


{marker syntax_predict}{...}
{title:预测语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}
[{cmd:,}
{it:{help arima postestimation##statistic:统计量}}
{it:{help arima postestimation##options:选项}}]

{marker statistic}{...}
{synoptset 22 tabbed}{...}
{synopthdr:统计量}
{synoptline}
{syntab:主要}
{synopt:{opt xb}}预测值；默认值{p_end}
{synopt:{opt r:esiduals}}预测的创新{p_end}
{synopt:{opt rsta:ndard}}标准化创新{p_end}
{synopt:{opt fdif:ference}}分数差分系列{p_end}
{synoptline}
包含帮助 esample

{marker options}{...}
{synoptset 22 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:选项}
{synopt :{cmd:rmse(}{dtype} {it:{help newvar_zh:newvar}}{cmd:)}}将预测统计量的估计均方根误差放入新变量中；仅允许与选项 {opt xb} 和 {opt residuals} 一起使用{p_end}
{synopt:{cmdab:dyn:amic(}{it:{help datetime##s9:datetime}}{cmd:)}}从 {it:datetime} 开始预测时间序列；仅允许与选项 {opt xb} 一起使用{p_end}
{synoptline}
{p 4 6 2}
{it:datetime} 是 {it:#} 或时间文字，例如 {cmd:td(1jan1995)} 或 {cmd:tq(1995q1)}；参见 {help datetime_zh:[D] Datetime}。
{p2colreset}{...}


包含帮助 menu_predict


{marker des_predict}{...}
{title:预测描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测，例如
期望值、分数差分系列和创新。所有预测均作为静态一步前预测可用，因变量也可作为动态多步预测可用。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主要}

{phang}
{opt xb}，默认情况下，计算 {depvar} 的水平预测。

{phang}
{opt residuals} 计算预测的创新。

{phang}
{opt rstandard} 计算标准化创新。

{phang}
{opt fdifference} 计算 {depvar} 的分数差分预测。

{dlgtab:选项}

{phang}
{cmd:rmse(}{dtype} {it:{help newvar_zh}}{cmd:)} 将预测统计量的均方根误差放入指定的新变量中。均方根误差测量由扰动引起的方差，但不考虑估计误差。 {cmd:rmse()} 仅与选项 {opt xb} 和 {opt residuals} 一起使用。

{phang}
{cmd:dynamic(}{it:datetime}{cmd:)} 指定 {opt predict} 开始产生动态预测的时间。指定的 {it:datetime} 必须在 {opt tsset} 指定的时间变量的比例内，并且 {it:datetime} 必须在有因变量观察值的样本内。例如，{cmd:dynamic(tq(2008q4))} 将动态预测开始于2008年第四季度，假设您的时间变量是季度；参见 {manhelp Datetime D}。如果模型包含外生变量，则它们必须在整个预测样本中存在。 {opt dynamic()} 只能与 {opt xb} 一起指定。

包含帮助 syntax_margins1

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt:{opt xb}}预测值；默认值{p_end}
{synopt :{opt r:esiduals}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt rsta:ndard}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt fdif:ference}}与 {cmd:margins} 不允许{p_end}
{synoptline}
{p2colreset}{...}

包含帮助 notes_margins

包含帮助 menu_margins

{marker des_margins}{...}
{title:margins 描述}

{pstd}
{cmd:margins} 估计响应的期望值的边际均值。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse tb1yr}{p_end}

{pstd}在1年国债数据上拟合 ARFIMA(2,d,1) 模型{p_end}
{phang2}{cmd:. arfima tb1yr, ar(1/2) ma(1)}{p_end}

{pstd}对 {cmd:tb1yr} 的一步预测{p_end}
{phang2}{cmd:. predict ptb}{p_end}

{pstd}过滤WPI，应用分数差分{p_end}
{phang2}{cmd:. predict fdtb, fdifference}

{pstd}绘制时间序列、预测和过滤估计{p_end}
{phang2}{cmd:. twoway tsline tb1yr ptb fdtb}{p_end}

{pstd}将数据延长1年{p_end}
{phang2}{cmd:. tsappend, add(12)}

{pstd}计算1991年的 {cmd:dwpi} 预测及其均方根误差{p_end}
{phang2}{cmd:. predict ftb, xb dynamic(tm(2001m9)) rmse(rtb)} 

{pstd}计算大约90%的预测区间{p_end}
{phang2}{cmd:. scalar z = invnormal(0.95)}{p_end}
{phang2}{cmd:. generate lb = ftb - z*rtb if month>=tm(2001m9)}{p_end}
{phang2}{cmd:. generate ub = ftb + z*rtb if month>=tm(2001m9)}{p_end}

{pstd}绘制时间序列线图{p_end}
{phang2}{cmd:. twoway tsline tb1yr ftb if month>tm(1998m12)||}{break}
        {cmd:tsrline lb ub if month>=tm(2001m9),}{break}
        {cmd:legend(cols(1) label(3 "80%预测区间"))}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <arfima_postestimation.sthlp>}