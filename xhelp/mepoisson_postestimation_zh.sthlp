{smcl}
{* *! version 1.3.3  19oct2017}{...}
{viewerdialog predict "dialog mepoisson_p"}{...}
{viewerdialog estat "dialog mepoisson_estat"}{...}
{vieweralsosee "[ME] mepoisson 后验估计" "mansection ME mepoissonpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] mepoisson" "help mepoisson_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] meglm 后验估计" "help meglm postestimation"}{...}
{viewerjumpto "后验估计命令" "mepoisson postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "mepoisson_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "mepoisson postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "mepoisson postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "mepoisson postestimation##examples"}
{help mepoisson_postestimation:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[ME] mepoisson 后验估计} {hline 2}}mepoisson 的后验估计工具{p_end}
{p2col:}({mansection ME mepoissonpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后验估计命令}

{pstd}
以下后验估计命令在 {cmd:mepoisson} 之后特别重要：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb estat group}}总结嵌套组的组成{p_end}
{synopt :{helpb me estat sd:estat sd}}以标准差和相关性显示方差成分{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
还可以使用以下标准后验估计命令：

{synoptset 18 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_svy_estat
INCLUDE help post_estimates
INCLUDE help post_hausman_star
INCLUDE help post_lincom
INCLUDE help post_lrtest_star
{synopt:{helpb mepoisson_postestimation##margins:边际}}边际平均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb mepoisson postestimation##predict:预测}}预测、残差、影响统计和其他诊断测量{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ME mepoissonpostestimationRemarksandexamples:备注和示例}

        {mansection ME mepoissonpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在本帮助文件中。


INCLUDE help syntax_me_predict

INCLUDE help syntax_me_predict_stats

{marker options_table}{...}
{synoptset 25 tabbed}{...}
{synopthdr :选项}
{synoptline}
{syntab :主要}
{synopt :{opt cond:itional}{cmd:(}{it:{help mepoisson_postestimation##ctype:ctype}}{cmd:)}}基于估计的随机效应计算 {it:statistic}；默认值为 {cmd:conditional(ebmeans)}{p_end}
{synopt :{opt marginal}}基于随机效应边际计算 {it:statistic}{p_end}
{synopt :{opt nooff:set}}进行计算时忽略偏置或暴露{p_end}

{syntab :集成}
{synopt :{it:{help mepoisson_postestimation##int_options:int_options}}}集成选项{p_end}
{synoptline}
{p 4 6 2}
{cmd:pearson}、{cmd:deviance}、{cmd:anscombe}不能与 {cmd:marginal} 一起使用。
{p_end}

INCLUDE help syntax_me_predict_ctype

INCLUDE help syntax_me_predict_reopts

INCLUDE help syntax_me_predict_intopts


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测值，例如均值响应；线性预测；密度和分布函数；标准误差；以及皮尔逊、偏差和安斯科姆残差。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主要}

{phang}
{cmd:mu}，默认计算预测均值，即预测的事件数量。

INCLUDE help syntax_me_predict_desc


INCLUDE help syntax_margins

INCLUDE help syntax_me_margins_stats

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际描述}

{pstd}
{cmd:margins} 估计响应的边际，对于均值响应和线性预测。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse melanoma}{p_end}
{phang2}{cmd:. mepoisson deaths c.uv##c.uv, exposure(expected) || nation: || region:}{p_end}

{pstd}总结嵌套组的组成{p_end}
{phang2}{cmd:. estat group}{p_end}

{pstd}预测计数，考虑随机效应{p_end}
{phang2}{cmd:. predict n}{p_end}

{pstd}预测计数，将所有随机效应设置为零{p_end}
{phang2}{cmd:. predict n_fixed, conditional(fixedonly)}{p_end}

{pstd}随机效应的预测{p_end}
{phang2}{cmd:. predict re*, reffects}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mepoisson_postestimation.sthlp>}