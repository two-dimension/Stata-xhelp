{smcl}
{* *! version 1.3.3  19oct2017}{...}
{viewerdialog predict "dialog menbreg_p"}{...}
{viewerdialog estat "dialog menbreg_estat"}{...}
{vieweralsosee "[ME] menbreg postestimation" "mansection ME menbregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] menbreg" "help menbreg_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] meglm postestimation" "help meglm postestimation"}{...}
{viewerjumpto "Postestimation commands" "menbreg postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "menbreg_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "menbreg postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "menbreg postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "menbreg postestimation##examples"}
{help menbreg_postestimation:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[ME] menbreg postestimation} {hline 2}}menbreg 的后估计工具{p_end}
{p2col:}({mansection ME menbregpostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {cmd:menbreg} 之后，以下后估计命令尤为重要：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb estat group}}总结嵌套组的组成{p_end}
{synopt :{helpb me estat sd:estat sd}}显示方差成分的标准差和相关性{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也可用：

{synoptset 18 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包括 help post_contrast
包括 help post_estatic
包括 help post_estatsum
包括 help post_estatvce
包括 help post_svy_estat
包括 help post_estimates
包括 help post_hausman_star
包括 help post_lincom
包括 help post_lrtest_star
{synopt:{helpb menbreg_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包括 help post_marginsplot
包括 help post_nlcom
{synopt :{helpb menbreg postestimation##predict:predict}}预测、残差、影响统计及其他诊断指标{p_end}
包括 help post_predictnl
包括 help post_pwcompare
包括 help post_test
包括 help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ME menbregpostestimationRemarksandexamples:备注和示例}

        {mansection ME menbregpostestimationMethodsandformulas:方法和公式}

{pstd}
以上章节不包含在此帮助文件中。


包括 help syntax_me_predict

包括 help syntax_me_predict_stats

{marker options_table}{...}
{synoptset 25 tabbed}{...}
{synopthdr :选项}
{synoptline}
{syntab :主要}
{synopt :{opt cond:itional}{cmd:(}{it:{help menbreg_postestimation##ctype:ctype}}{cmd:)}}在估计的随机效应条件下计算 {it:statistic}；默认是 {cmd:conditional(ebmeans)}{p_end}
{synopt :{opt marginal}}在随机效应的边际下计算 {it:statistic}{p_end}
{synopt :{opt nooff:set}}进行计算时忽略偏移量或暴露{p_end}

{syntab :积分}
{synopt :{it:{help menbreg_postestimation##int_options:int_options}}}积分选项{p_end}
{synoptline}
{p 4 6 2}
{cmd:pearson}、{cmd:deviance}、{cmd:anscombe} 不能与 {cmd:marginal} 结合使用。
{p_end}

包括 help syntax_me_predict_ctype

包括 help syntax_me_predict_reopts

包括 help syntax_me_predict_intopts


包括 help menu_predict


{marker des_predict}{...}
{title:predict 的描述}

{pstd}
{cmd:predict} 创建一个包含预测值的新变量，例如均值响应、线性预测、密度和分布函数、标准误差，以及 Pearson、deviance 和 Anscombe 残差。


{marker options_predict}{...}
{title:predict 的选项}

{dlgtab:主要}

{phang}
{cmd:mu}，默认值，计算预测的均值，即预测事件的数量。

包括 help syntax_me_predict_desc


包括 help syntax_margins

包括 help syntax_me_margins_stats

包括 help notes_margins


包括 help menu_margins


{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 估计响应的边际值，适用于均值响应和线性预测。


{marker examples}{...}
{title:示例}

{pstd}准备工作{p_end}
{phang2}{cmd:. webuse melanoma}{p_end}
{phang2}{cmd:. menbreg deaths c.uv##c.uv, exposure(expected) || nation: || region:}{p_end}

{pstd}总结嵌套组的组成{p_end}
{phang2}{cmd:. estat group}{p_end}

{pstd}预测计数，包含随机效应{p_end}
{phang2}{cmd:. predict n}{p_end}

{pstd}预测计数，将所有随机效应设为零{p_end}
{phang2}{cmd:. predict n_fixed, conditional(fixedonly)}{p_end}

{pstd}随机效应的预测{p_end}
{phang2}{cmd:. predict re*, reffects}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <menbreg_postestimation.sthlp>}