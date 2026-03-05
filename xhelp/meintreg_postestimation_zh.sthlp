{smcl}
{* *! version 1.0.3  19oct2017}{...}
{viewerdialog predict "dialog meintreg_p"}{...}
{viewerdialog estat "dialog meintreg_estat"}{...}
{vieweralsosee "[ME] meintreg postestimation" "mansection ME meintregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] meintreg" "help meintreg_zh"}{...}
{viewerjumpto "后期估计命令" "meintreg postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "meintreg_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "meintreg postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "meintreg postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "meintreg postestimation##examples"}
{help meintreg_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[ME] meintreg postestimation} {hline 2}}meintreg 的后期估计工具{p_end}
{p2col:}({mansection ME meintregpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后期估计命令}

{pstd}
在 {cmd:meintreg} 之后，以下后期估计命令特别重要：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb estat group}}总结嵌套组的组成{p_end}
{synopt :{helpb estat icc}}估计组内相关性{p_end}
{synopt :{helpb me estat sd:estat sd}}以标准差和相关性显示方差分量{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准的后期估计命令也可用：

{synoptset 18 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_contrast
包含 help post_estatic
包含 help post_estatsum
包含 help post_estatvce
包含 help post_svy_estat
包含 help post_estimates
包含 help post_hausman_star
包含 help post_lincom
包含 help post_lrtest_star
{synopt:{helpb meintreg_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含 help post_marginsplot
包含 help post_nlcom
{synopt :{helpb meintreg postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
包含 help post_predictnl
包含 help post_pwcompare
包含 help post_test
包含 help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ME meintregpostestimationRemarksandexamples:备注和示例}

        {mansection ME meintregpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此次帮助文件中。


包含 help syntax_me_predict


{marker statistic}{...}
{synoptset 25 tabbed}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt eta}}拟合的线性预测器；默认为此{p_end}
{synopt :{opt xb}}仅针对模型的固定部分的线性预测器{p_end}
{synopt :{opt stdp}}固定部分线性预测的标准误{p_end}
{synopt :{opt pr(a,b)}}Pr(a < y < b){p_end}
{synopt :{opt e(a,b)}}E(y | a < y < b){p_end}
{synopt :{opt ys:tar(a,b)}}E(y*), y* = max{a,min(y,b)}{p_end}
{synoptline}
包含 help esample

包含 help whereab

{marker options_table}{...}
{synoptset 25 tabbed}{...}
{synopthdr :选项}
{synoptline}
{syntab :主要}
{synopt :{opt cond:itional}{cmd:(}{it:{help meintreg_postestimation##ctype:ctype}}{cmd:)}}在估计的随机效应条件下计算 {it:statistic}；默认为 {cmd:conditional(ebmeans)}{p_end}
{synopt :{opt marginal}}在随机效应方面计算 {it:statistic} 的边际值{p_end}
{synopt :{opt nooff:set}}在计算时忽略偏移或曝光{p_end}

{syntab :积分}
{synopt :{it:{help meintreg_postestimation##int_options:int_options}}}积分选项{p_end}
{synoptline}

包含 help syntax_me_predict_ctype

包含 help syntax_me_predict_reopts

包含 help syntax_me_predict_intopts


包含 help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含诸如线性预测、标准误、概率和期望值的预测。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt eta}（默认）计算拟合的线性预测。

{phang}
{opt pr(a,b)} 计算 
{bind:Pr({it:a} < y < {it:b})} 的估计，即 y 观察到位于区间 (a,b) 的概率。

{pmore}
{it:a} 和 {it:b} 可以指定为数字或变量名；
{it:lb} 和 {it:ub} 是变量名；{break}
{cmd:pr(20,30)} 计算 {bind:Pr(20 < y < 30)}；{break}
{cmd:pr(}{it:lb}{cmd:,}{it:ub}{cmd:)} 计算
{bind:Pr({it:lb} < y < {it:ub})}；并且{break}
{cmd:pr(20,}{it:ub}{cmd:)} 计算
{bind:Pr(20 < y < {it:ub})}。

{pmore}
{it:a} 省略 {bind:({it:a} {ul:>} {cmd:.})} 意味着负无穷；{break}
{cmd:pr(.,30)} 计算 {bind:Pr(-infinity < y < 30)}；{break}
{cmd:pr(}{it:lb}{cmd:,30)} 计算 {bind:Pr(-infinity < y < 30)}
在那些 {bind:{it:lb} {ul:>} {cmd:.}} 的观察中
（同时计算 {bind:Pr({it:lb} < y < 30)} 在其他地方）。

{pmore}
{it:b} 省略 {bind:({it:b} {ul:>} .)} 意味着正无穷；{break}
{cmd:pr(20,.)} 计算 {bind:Pr(+infinity > y > 20)}；{break}
{cmd:pr(20,}{it:ub}{cmd:)} 计算 {bind:Pr(+infinity > y > 20)} 在那些 {it:ub} {ul:>} {cmd:.} 的观察中（同时计算
{bind:Pr(20 < y < {it:ub})} 在其他地方）。

{phang}
{opt e(a,b)} 计算 {bind:E(y | {it:a} < y < {it:b})} 的估计，即 y 在区间 ({it:a},{it:b}) 条件下的期望值，意味着 y 被截断。 {it:a} 和 {it:b} 的指定方式与 {cmd:pr()} 相同。

{phang}
{opt ystar(a,b)} 计算 E(y*) 的估计，其中 {bind:y* = a} 如果
{bind:y {ul:<} {it:a}}，{bind:y* = {it:b}} 如果
{bind:y {ul:>} {it:b}}，否则 {bind:y* = y}，
意味着 y* 是 y 的截断版本。
{it:a} 和 {it:b} 的指定方式与 {cmd:pr()} 相同。

{phang}
{opt xb}、{opt stdp}、{opt scores}、{opt conditional()}、{opt marginal}、
和 {opt nooffset}；
见 {helpb meglm postestimation##options_predict:[ME] meglm postestimation}。

{phang}
{cmd:reffects}、
{cmd:ebmeans}、
{cmd:ebmodes}，和
{cmd:reses}();
见 {helpb meglm postestimation##options_predict:[ME] meglm postestimation}。

{dlgtab:积分}

{phang}
{cmd:intpoints()}、
{cmd:iterate()}，和
{cmd:tolerance}();
见 {helpb meglm postestimation##options_predict:[ME] meglm postestimation}。


包含 help syntax_margins

{marker statistic}{...}
{synoptset 25 tabbed}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt eta}}拟合的线性预测器；默认为此{p_end}
{synopt :{opt xb}}仅针对模型的固定部分的线性预测器{p_end}
{synopt :{opt pr(a,b)}}Pr(a < y < b){p_end}
{synopt :{opt e(a,b)}}E(y | a < y < b){p_end}
{synopt :{opt ys:tar(a,b)}}E(y*), y* = max{a,min(y,b)}{p_end}
{synopt :{opt stdp}}在 {cmd:margins} 中不允许使用{p_end}
{synoptline}

包含 help notes_margins


包含 help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计线性预测、概率和期望值的边际响应。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse mastitis}{p_end}
{phang2}{cmd:. generate lnleft = ln(left)}{p_end}
{phang2}{cmd:. generate lnright = ln(right)}{p_end}
{phang2}{cmd:. meintreg lnleft lnright i.multiparous || farm: || cow:}
{p_end}

{pstd}总结嵌套组的组成{p_end}
{phang2}{cmd:. estat group}{p_end}

{pstd}预测基于随机效应的概率{p_end}
{phang2}{cmd:. predict pr_cond, pr(.,log(90))}{p_end}

{pstd}计算拟合的线性预测{p_end}
{phang2}{cmd:. predict eta_cond}{p_end}

{pstd}计算组内相关的残差{p_end}
{phang2}{cmd:. estat icc}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meintreg_postestimation.sthlp>}