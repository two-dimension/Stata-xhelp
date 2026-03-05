{smcl}
{* *! version 1.3.4  05sep2018}{...}
{viewerdialog predict "dialog meoprobit_p"}{...}
{viewerdialog estat "dialog meoprobit_estat"}{...}
{vieweralsosee "[ME] meoprobit postestimation" "mansection ME meoprobitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] meoprobit" "help meoprobit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] meglm postestimation" "help meglm postestimation"}{...}
{viewerjumpto "后置估计命令" "meoprobit postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "meoprobit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "meoprobit postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "meoprobit postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "meoprobit postestimation##examples"}
{help meoprobit_postestimation:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[ME] meoprobit postestimation} {hline 2}}meoprobit 的后置估计工具{p_end}
{p2col:}({mansection ME meoprobitpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后置估计命令}

{pstd}
以下的后置估计命令在执行 {cmd:meoprobit} 后特别重要：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb estat group}}汇总嵌套组的组成{p_end}
{synopt :{helpb me estat sd:estat sd}}以标准差和相关性显示方差成分{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后置估计命令也可用：

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
{synopt:{helpb meoprobit_postestimation##margins:边际}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb meoprobit postestimation##predict:预测}}预测、残差、影响统计和其他诊断指标{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy}
估计结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ME meoprobitpostestimationRemarksandexamples:备注和示例}

        {mansection ME meoprobitpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


INCLUDE help syntax_me_predict

{marker statistic}{...}
{synoptset 25 tabbed}{...}
{synopthdr :统计量}
{synoptline}
{syntab :主要}
{synopt :{opt pr}}预测概率；默认{p_end}
{synopt :{opt eta}}拟合的线性预测{p_end}
{synopt :{opt xb}}仅针对模型固定部分的线性预测{p_end}
{synopt :{opt stdp}}固定部分线性预测的标准误差{p_end}
{synopt :{opt den:sity}}预测的密度函数{p_end}
{synopt :{opt dist:ribution}}预测的分布函数{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample

{marker options_table}{...}
{synoptset 25 tabbed}{...}
{synopthdr :选项}
{synoptline}
{syntab :主要}
{synopt :{opt cond:itional}{cmd:(}{it:{help meoprobit_postestimation##ctype:ctype}}{cmd:)}}计算 {it:statistic} 条件于估计的随机效应；默认值为 {cmd:conditional(ebmeans)}{p_end}
{synopt :{opt marginal}}边际计算 {it:statistic} 带有随机效应{p_end}
{synopt :{opt nooff:set}}在计算中忽略偏置或暴露{p_end}
{synopt :{opt out:come(outcome)}}预测概率的结果类别{p_end}

{syntab :积分}
{synopt :{it:{help meoprobit_postestimation##int_options:int_options}}}积分
	选项{p_end}
{synoptline}
{p 4 6 2}
您在 {it:{help newvarlist_zh}} 中指定一个或 {it:k} 个新变量，其中 {it:k} 是结果的数量。
如果您不指定 {cmd:outcome()}，这些选项假定为 {cmd:outcome(#1)}.{p_end}

INCLUDE help syntax_me_predict_ctype

INCLUDE help syntax_me_predict_reopts

INCLUDE help syntax_me_predict_intopts


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测的变量，例如
概率、线性预测、密度和分布函数，以及标准误差。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主要}

{phang}
{cmd:pr}（默认）计算预测的概率。

{pmore}
您可以指定一个或 {it:k} 个新变量，其中 {it:k} 是因变量的类别数量。如果您指定 {cmd:outcome()} 选项，则仅会预测请求结果的概率，此时只需指定一个新变量。如果仅指定一个新变量且未指定 {cmd:outcome()}，则默认假定为 {cmd:outcome(#1)}。

{phang}
{cmd:eta},
{cmd:xb},
{cmd:stdp},
{cmd:density},
{cmd:distribution},
{cmd:scores},
{cmd:conditional()},
{cmd:marginal} 和
{cmd:nooffset}；
见 {helpb meglm postestimation##options_predict:[ME] meglm postestimation}。

{phang}
{opt outcome(outcome)} 指定要计算预测概率的结果。 {cmd:outcome()} 应包含因变量的一个值或 {bf:#1}、{bf:#2} 等，其中 {bf:#1} 意味着因变量的第一类，{bf:#2} 意味着第二类，以此类推。

{phang}
{cmd:reffects},
{cmd:ebmeans},
{cmd:ebmodes} 和
{cmd:reses()}；
见 {helpb meglm postestimation##options_predict:[ME] meglm postestimation}。

{dlgtab:积分}

{phang}
{cmd:intpoints()},
{cmd:iterate()},
{cmd:tolerance()}；
见 {helpb meglm postestimation##options_predict:[ME] meglm postestimation}。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :默认}每个结果的概率{p_end}
{synopt :{opt pr}}指定结果的概率{p_end}
{synopt :{opt eta}}拟合的线性预测{p_end}
{synopt :{opt xb}}仅针对模型固定部分的线性预测{p_end}
{synopt :{opt stdp}}在 {cmd:margins} 不允许使用{p_end}
{synopt :{opt den:sity}}在 {cmd:margins} 不允许使用{p_end}
{synopt :{opt dist:ribution}}在 {cmd:margins} 不允许使用{p_end}
{synopt :{opt reffects}}在 {cmd:margins} 不允许使用{p_end}
{synopt :{opt scores}}在 {cmd:margins} 不允许使用{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{cmd:pr} 默认情况下为第一个结果。
{p_end}
{p 4 6 2}
选项 {cmd:conditional(ebmeans)} 和 {cmd:conditional(ebmodes)} 不允许与 {cmd:margins} 一起使用。
{p_end}
{p 4 6 2}
如果未指定 {cmd:conditional(fixedonly)}，则假定适用 {opt marginal} 选项。
{p_end}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际
概率和线性预测。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse tvsfpors}{p_end}
{phang2}{cmd:. meoprobit thk prethk cc##tv || school: || class:}{p_end}

{pstd}根据固定效应和随机效应的贡献获取每个结果的预测概率{p_end}
{phang2}{cmd:. predict pr*}{p_end}

{pstd}随机效应的预测{p_end}
{phang2}{cmd:. predict re*, reffects}{p_end}

{pstd}汇总嵌套组的组成{p_end}
{phang2}{cmd:. estat group}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meoprobit_postestimation.sthlp>}