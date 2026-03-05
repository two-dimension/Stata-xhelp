{smcl}
{* *! version 1.3.3  19oct2017}{...}
{viewerdialog predict "dialog mecloglog_p"}{...}
{viewerdialog estat "dialog mecloglog_estat"}{...}
{vieweralsosee "[ME] mecloglog postestimation" "mansection ME mecloglogpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] mecloglog" "help mecloglog_zh"}{...}
{vieweralsosee "[ME] meglm postestimation" "help meglm postestimation"}{...}
{viewerjumpto "Postestimation commands" "mecloglog postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "mecloglog_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "mecloglog postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "mecloglog postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "mecloglog postestimation##examples"}
{help mecloglog_postestimation:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[ME] mecloglog postestimation} {hline 2}}mecloglog的后估计工具{p_end}
{p2col:}({mansection ME mecloglogpostestimation:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行 {cmd:mecloglog} 后，以下后估计命令尤为重要：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb estat group}}总结嵌套组的组成{p_end}
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
{synopt:{helpb mecloglog_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	effect{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb mecloglog postestimation##predict:predict}}预测值、残差、影响统计量和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ME mecloglogpostestimationRemarksandexamples:备注和示例}

        {mansection ME mecloglogpostestimationMethodsandformulas:方法与公式}

{pstd}
上述部分不包含在此帮助文件中。


INCLUDE help syntax_me_predict

INCLUDE help syntax_me_predict_stats

{marker options_table}{...}
{synoptset 25 tabbed}{...}
{synopthdr :选项}
{synoptline}
{syntab :主要}
{synopt :{opt cond:itional}{cmd:(}{it:{help mecloglog_postestimation##ctype:ctype}}{cmd:)}}计算基于估计随机效应的{it:statistic}；默认为{cmd:conditional(ebmeans)}{p_end}
{synopt :{opt marginal}}计算与随机效应相对的{it:statistic}的边际{p_end}
{synopt :{opt nooff:set}}忽略偏移或暴露进行计算{p_end}

{syntab :积分}
{synopt :{it:{help mecloglog_postestimation##int_options:int_options}}}积分
	选项{p_end}
{synoptline}
{p 4 6 2}
{cmd:pearson} ,
{cmd:deviance} ,
{cmd:anscombe}
可能无法与{cmd:marginal}一起使用。
{p_end}

INCLUDE help syntax_me_predict_ctype

INCLUDE help syntax_me_predict_reopts

INCLUDE help syntax_me_predict_intopts


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测的变量，如
均值响应；线性预测；密度和分布函数；
标准误；以及皮尔逊、偏差和安斯科姆残差。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{cmd:mu}，默认为计算预测均值，即
正结果的概率。

INCLUDE help syntax_me_predict_desc


INCLUDE help syntax_margins

INCLUDE help syntax_me_margins_stats

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际
均值响应和线性预测。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse towerlondon}{p_end}
{phang2}{cmd:. mecloglog dtlm difficulty i.group || family: || subject:}
{p_end}

{pstd}总结嵌套组的组成{p_end}
{phang2}{cmd:. estat group}{p_end}

{pstd}随机效应的预测{p_end}
{phang2}{cmd:. predict re_urban re_cons, reffects}{p_end}

{pstd}包含随机效应的预测概率{p_end}
{phang2}{cmd:. predict p}{p_end}

{pstd}忽略主体和家庭效应的预测概率{p_end}
{phang2}{cmd:. predict p_fixed, conditional(fixedonly)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mecloglog_postestimation.sthlp>}