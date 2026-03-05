{smcl}
{* *! version 1.0.10  19oct2017}{...}
{viewerdialog predict "dialog xtstreg_p"}{...}
{viewerdialog stcurve "dialog stcurve"}{...}
{vieweralsosee "[XT] xtstreg postestimation" "mansection XT xtstregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtstreg" "help xtstreg_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stcurve" "help stcurve_zh"}{...}
{viewerjumpto "Postestimation commands" "xtstreg postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtstreg_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "xtstreg postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "xtstreg postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "xtstreg postestimation##examples"}
{help xtstreg_postestimation:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[XT] xtstreg postestimation} {hline 2}}xtstreg 的后估计工具{p_end}
{p2col:}({mansection XT xtstregpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行 {cmd:xtstreg} 之后，以下后估计命令特别重要：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{help stcurve_zh}}绘制生存、风险和累积风险函数{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准的后估计命令也可用：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_contrast
包含 help post_estatic
包含 help post_estatsum
包含 help post_estatvce
包含 help post_estimates
包含 help post_hausman
包含 help post_lincom
包含 help post_lrtest
{synopt:{helpb xtstreg_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含 help post_marginsplot
包含 help post_nlcom
{p2col :{helpb xtstreg postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
包含 help post_predictnl
包含 help post_pwcompare
包含 help post_test
包含 help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtstregpostestimationRemarksandexamples:备注和示例}

        {mansection XT xtstregpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} 
[{cmd:,} {it:statistic} {opt nooff:set}]

{synoptset 15 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab:主}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt mean}}边际生存时间的均值{p_end}
{synopt :{opt mean0}}假设随机效应为零的均值生存时间{p_end}
{synopt :{opt median0}}假设随机效应为零的中位生存时间{p_end}
{synopt :{opt hazard}}边际风险{p_end}
{synopt :{opt hazard0}}假设随机效应为零的风险{p_end}
{synopt :{opt surv}}边际预测生存函数{p_end}
{synopt :{opt surv0}}假设随机效应为零的预测生存函数{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2} 
{p_end}
{p2colreset}{...}
包含 help esample


包含 help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含线性预测、均值和中位生存时间、风险函数和标准误等预测结果。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{opt xb}（默认值）计算线性预测。

{phang}
{opt mean} 计算相对于随机效应的边际生存时间均值，
这意味着该统计量是通过对随机效应的预测函数在其整个支持下进行积分得到的。

{phang}
{opt mean0} 在假设所有随机效应为零的情况下计算均值生存时间。

{phang}
{opt median0} 在假设所有随机效应为零的情况下计算中位生存时间。

{phang}
{opt hazard} 计算在 {cmd:_t0} 处的风险函数，该函数是相对于随机效应的边际，
这意味着该统计量是通过对随机效应的预测函数在其整个支持下进行积分得到的。

{phang}
{opt hazard0} 在假设所有随机效应为零的情况下计算在 {opt _t0} 处的风险函数。

{phang}
{opt surv} 计算在 {opt _t0} 处的预测生存函数，该函数是相对于随机效应的边际，
这意味着该统计量是通过对随机效应的预测函数在其整个支持下进行积分得到的。

{phang}
{opt surv0} 在假设所有随机效应为零的情况下计算在 {opt _t0} 处的预测生存函数。

{phang}
{opt stdp} 计算线性预测的标准误。

{phang}
{cmd:nooffset} 仅在您使用 {opth offset:(varname)} 与 {cmd:xtstreg} 时相关。此选项修改 {cmd:predict} 的计算，使其忽略偏移变量；线性预测被视为 xb 而不是 xb + offset。


包含 help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt mean}}边际生存时间均值；默认值{p_end}
{synopt :{opt mean0}}在零随机效应下的均值生存时间{p_end}
{synopt :{opt median0}}在零随机效应下的中位生存时间{p_end}
{synopt :{opt hazard}}边际风险{p_end}
{synopt :{opt surv}}边际预测生存函数{p_end}
{synopt :{cmd:xb}}仅针对模型的固定部分的线性预测{p_end}
{synopt :{opt hazard0}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt surv}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不兼容{p_end}
{synoptline}
{p2colreset}{...}

包含 help notes_margins


包含 help menu_margins


{marker des_margins}
{title:margins 的描述}

{pstd}
{cmd:margins} 估计线性预测和均值及中位生存时间的响应边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse catheter}{p_end}
{phang2}{cmd:. xtset patient}{p_end}
{phang2}{cmd:. xtstreg age female, d(weibull)}{p_end}

{pstd}假设随机效应为零，计算预测的边际均值以及均值和中位生存时间{p_end}
{phang2}{cmd:. predict mean, mean}{p_end}
{phang2}{cmd:. predict mean0, mean0}{p_end}
{phang2}{cmd:. predict median0, median0}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtstreg_postestimation.sthlp>}