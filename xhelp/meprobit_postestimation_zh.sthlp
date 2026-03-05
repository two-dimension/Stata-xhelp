{smcl}
{* *! version 1.3.3  19oct2017}{...}
{viewerdialog predict "dialog meprobit_p"}{...}
{viewerdialog estat "dialog meprobit_estat"}{...}
{vieweralsosee "[ME] meprobit postestimation" "mansection ME meprobitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] meprobit" "help meprobit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] meglm postestimation" "help meglm postestimation"}{...}
{viewerjumpto "Postestimation commands" "meprobit postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "meprobit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "meprobit postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "meprobit postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "meprobit postestimation##examples"}
{help meprobit_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[ME] meprobit postestimation} {hline 2}}meprobit 的后估计工具{p_end}
{p2col:}({mansection ME meprobitpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {cmd:meprobit} 后，以下后估计命令特别重要：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb estat group}}总结嵌套组的组成{p_end}
{synopt :{helpb estat icc}}估计组内相关系数{p_end}
{synopt :{helpb me estat sd:estat sd}}以标准差和相关系数显示方差成分{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也可用：

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
{synopt:{helpb meprobit_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb meprobit postestimation##predict:predict}}预测、残差、影响统计以及其他诊断措施{p_end}
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

        {mansection ME meprobitpostestimationRemarksandexamples:备注和示例}

        {mansection ME meprobitpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


INCLUDE help syntax_me_predict

INCLUDE help syntax_me_predict_stats

{marker options_table}{...}
{synoptset 25 tabbed}{...}
{synopthdr :选项}
{synoptline}
{syntab :主要}
{synopt :{opt cond:itional}{cmd:(}{it:{help meprobit_postestimation##ctype:ctype}}{cmd:)}}计算{it:statistic} 时基于估计的随机效应的条件；默认值为 {cmd:conditional(ebmeans)}{p_end}
{synopt :{opt marginal}}在随机效应下边际计算{it:statistic}{p_end}
{synopt :{opt nooff:set}}在计算时忽略偏移或暴露{p_end}

{syntab :积分}
{synopt :{it:{help meprobit_postestimation##int_options:int_options}}}积分选项{p_end}
{synoptline}
{p 4 6 2}
{cmd:pearson}、{cmd:deviance}、{cmd:anscombe} 不能与 {cmd:marginal} 结合使用。
{p_end}

INCLUDE help syntax_me_predict_ctype

INCLUDE help syntax_me_predict_reopts

INCLUDE help syntax_me_predict_intopts


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含如均值响应、线性预测、密度和分布函数、标准误以及皮尔逊、偏差和 Anscombe 残差的预测。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主要}

{phang}
{cmd:mu}，默认值，计算预测均值，即正结果的概率。

INCLUDE help syntax_me_predict_desc


INCLUDE help syntax_margins

INCLUDE help syntax_me_margins_stats

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计均响应和线性预测的边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse towerlondon}{p_end}
{phang2}{cmd:. meprobit dtlm difficulty i.group || family: || subject:}
{p_end}

{pstd}总结嵌套组的组成{p_end}
{phang2}{cmd:. estat group}{p_end}

{pstd}随机效应的预测{p_end}
{phang2}{cmd:. predict re_urban re_cons, reffects}{p_end}

{pstd}考虑随机效应的预测概率{p_end}
{phang2}{cmd:. predict p}{p_end}

{pstd}忽略主体和家庭效应的预测概率{p_end}
{phang2}{cmd:. predict p_fixed, conditional(fixedonly)}{p_end}

{pstd}计算残差组内相关系数{p_end}
{phang2}{cmd:. estat icc}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meprobit_postestimation.sthlp>}