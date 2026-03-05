{smcl}
{* *! version 1.1.4  05sep2018}{...}
{viewerdialog predict "dialog mestreg_p"}{...}
{vieweralsosee "[ME] mestreg postestimation" "mansection ME mestregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] mestreg" "help mestreg_zh"}{...}
{vieweralsosee "[ME] meglm postestimation" "help meglm postestimation"}{...}
{vieweralsosee "[ME] mixed postestimation" "help mixed postestimation"}{...}
{vieweralsosee "[ST] stcurve" "help stcurve_zh"}{...}
{viewerjumpto "后估计命令" "mestreg postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "mestreg_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "mestreg postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "mestreg postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "mestreg postestimation##examples"}
{help mestreg_postestimation:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[ME] mestreg postestimation} {hline 2}}对 mestreg 的后估计工具{p_end}
{p2col:}({mansection ME mestregpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
以下后估计命令在 {cmd:mestreg} 之后特别重要：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{help stcurve_zh}}绘制生存、危害和累积危害函数{p_end}
{synopt :{helpb estat group}}总结嵌套组的构成{p_end}
{synopt :{helpb me estat sd:estat sd}}显示方差成分的标准差和相关性{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也可用：

{synoptset 17 tabbed}{...}
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
{synopt:{helpb mestreg_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{p2col :{helpb mestreg postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ME mestregpostestimationRemarksandexamples:备注和示例}

        {mansection ME mestregpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


INCLUDE help syntax_me_predict

{synoptset 15 tabbed}{...}
{synopthdr :统计量}
{synoptline}
{syntab:主要}
{synopt :{opt mean}}平均生存时间；默认值{p_end}
{synopt :{opt med:ian}}中位生存时间{p_end}
{synopt :{opt ha:zard}}风险{p_end}
{synopt :{opt eta}}拟合的线性预测值{p_end}
{synopt :{opt xb}}仅适用于模型固定部分的线性预测值{p_end}
{synopt :{opt stdp}}固定部分线性预测的标准误差{p_end}
{synopt :{opt s:urv}}预测生存函数{p_end}
{synopt :{opt den:sity}}预测密度函数{p_end}
{synopt :{opt dist:ribution}}预测分布函数{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2} 
{p_end}
{p2colreset}{...}
INCLUDE help esample

{marker options_table}{...}
{synoptset 25 tabbed}{...}
{synopthdr :选项}
{synoptline}
{syntab :主要}
{synopt :{opt cond:itional}{cmd:(}{it:{help mestreg_postestimation##ctype:ctype}}{cmd:)}}计算 {it:statistic} 条件于估计的随机效应；默认值为 {cmd:conditional(ebmeans)}{p_end}
{synopt :{opt marginal}}计算关于随机效应的 {it:statistic} 边际值{p_end}
{synopt :{opt nooff:set}}进行计算时忽略偏移或暴露{p_end}

{syntab :积分}
{synopt :{it:{help mestreg_postestimation##int_options:int_options}}}积分选项{p_end}
{synoptline}
{p 4 6 2}
{cmd:median}
可能无法与 {cmd:marginal} 结合使用。

INCLUDE help syntax_me_predict_ctype

INCLUDE help syntax_me_predict_reopts

INCLUDE help syntax_me_predict_intopts


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测值，如中位数和平均生存时间、风险、生存函数、线性预测和标准误差。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt mean}，默认值，计算平均生存时间。

{phang}
{opt median} 计算中位生存时间。

{phang}
{opt hazard} 计算风险。当指定 {opt marginal} 时，边际风险被计算为边际密度与边际生存函数的比率。

{phang}
{opt surv} 计算预测的生存函数。

{phang}
{opt eta}、{opt xb}、{opt stdp}、{opt density}、{opt distribution}、{opt scores}、{opt conditional()}、{opt marginal} 和 {opt nooffset}；见 {helpb meglm postestimation:[ME] meglm 后估计}。
{cmd:marginal} 不能与 {cmd:median} 一起指定。

{phang}
{opt reffects}、
{opt ebmeans}、
{opt ebmodes} 和
{opt reses()}；
见 {helpb meglm postestimation:[ME] meglm 后估计}。

{dlgtab:积分}

{phang}
{opt intpoints()}、{opt iterate()} 和 {opt tolerance()}；
见 {helpb meglm postestimation:[ME] meglm 后估计}。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt mean}}平均生存时间；默认值{p_end}
{synopt :{opt med:ian}}中位生存时间{p_end}
{synopt :{cmd:xb}}仅适用于模型固定部分的线性预测值{p_end}
{synopt :{opt ha:zard}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt :{opt eta}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt :{opt s:urv}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt :{opt den:sity}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt :{opt dist:ribution}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt :{opt reffects}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt :{opt scores}}与 {cmd:margins} 不允许一起使用{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
选项 {cmd:conditional(ebmeans)} 和 {cmd:conditional(ebmodes)} 不允许与 {cmd:margins} 一起使用。
{p_end}
{p 4 6 2}
如果未指定 {cmd:conditional(fixedonly)}，则假定适用的地方使用选项 {opt marginal}。
{p_end}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估算响应的边际，针对平均和中位生存时间以及线性预测。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse catheter}

{pstd}双层随机截距 Weibull 生存模型{p_end}
{phang2}{cmd:. mestreg age female || patient:, distribution(weibull)}

{pstd}预测边际平均生存时间{p_end}
{phang2}{cmd:. predict m_marg, mean marginal}

{pstd}使用经验贝叶斯均值估计预测条件平均生存时间{p_end}
{phang2}{cmd:. predict m_cond1, mean conditional}

{pstd}使用经验贝叶斯模式估计预测条件平均生存时间{p_end}
{phang2}{cmd:. predict m_cond2, mean conditional(ebmodes)}

{pstd}使用 {cmd:margins} 计算不同年龄女性的边际预测均值{p_end}
{phang2}{cmd:. margins, predict(mean marginal) at(female=0 age=(20(5)70))}

{pstd}绘制结果{p_end}
{phang2}{cmd:. marginsplot}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mestreg_postestimation.sthlp>}