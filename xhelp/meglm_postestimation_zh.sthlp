{smcl}
{* *! version 1.4.7  15oct2018}{...}
{viewerdialog predict "dialog meglm_p"}{...}
{viewerdialog estat "dialog meglm_estat"}{...}
{vieweralsosee "[ME] meglm postestimation" "mansection ME meglmpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] meglm" "help meglm_zh"}{...}
{viewerjumpto "事后检验命令" "meglm postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "meglm_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "meglm postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "meglm postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "meglm postestimation##examples"}{...}
{viewerjumpto "参考" "meglm postestimation##reference"}
{help meglm_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[ME] meglm postestimation} {hline 2}}meglm的事后检验工具{p_end}
{p2col:}({mansection ME meglmpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:事后检验命令}

{pstd}
以下事后检验命令在{cmd:meglm}之后尤其重要：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb estat group}}总结嵌套组的构成{p_end}
{synopt :{helpb estat icc}}估计组内相关系数{p_end}
{synopt :{helpb me estat sd:estat sd}}显示方差成分的标准差和相关性{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准事后检验命令也可用：

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
{synopt:{helpb meglm_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb meglm postestimation##predict:predict}}预测、残差、影响统计量和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:hausman}和 {cmd:lrtest} 与 {cmd:svy}
估计结果不适用。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ME meglmpostestimationRemarksandexamples:备注和示例}

        {mansection ME meglmpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


INCLUDE help syntax_me_predict

{marker statistic}{...}
{synoptset 27 tabbed}{...}
{synopthdr :统计量}
{synoptline}
{syntab :主要}
{synopt :{opt mu}}均值响应；默认值{p_end}
{synopt :{opt pr}}顺序和二元响应模型的{opt mu}同义词{p_end}
{synopt :{opt eta}}拟合的线性预测{p_end}
{synopt :{opt xb}}仅针对模型的固定部分的线性预测{p_end}
{synopt :{opt stdp}}固定部分线性预测的标准误差{p_end}
{synopt :{opt den:sity}}预测密度函数{p_end}
{synopt :{opt dist:ribution}}预测分布函数{p_end}
{synopt :{opt res:iduals}}原始残差；仅适用于高斯家族{p_end}
{synopt :{opt pea:rson}}Pearson残差{p_end}
{synopt :{opt dev:iance}}偏差残差{p_end}
{synopt :{opt ans:combe}}Anscombe残差{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample

{marker options_table}{...}
{synoptset 27 tabbed}{...}
{synopthdr :选项}
{synoptline}
{syntab :主要}
{synopt :{opt cond:itional}{cmd:(}{it:{help meglm_postestimation##ctype:ctype}}{cmd:)}}根据估计的随机效应计算{it:statistic}；默认值为{cmd:conditional(ebmeans)}{p_end}
{synopt :{opt marginal}}关于随机效应的边际计算{p_end}
{synopt :{opt nooff:set}}在计算时忽略偏移或暴露{p_end}
{synopt :{opt out:come(outcome)}}预测概率的结果类别，用于顺序模型{p_end}

{syntab :积分}
{synopt :{it:{help meglm_postestimation##int_options:int_options}}}积分选项{p_end}
{synoptline}
{p 4 6 2}
{cmd:pearson},
{cmd:deviance},
{cmd:anscombe}
不能与 {cmd:marginal} 结合使用。
{p_end}
{p 4 6 2}
对于顺序结果，您可以在 {it:{help newvarlist_zh}} 中使用{cmd:mu}和{cmd:pr}指定一个或{it:k}个新变量，其中{it:k} 是结果的数量。
如果您不指定 {cmd:outcome()}，则这些选项假定为
{cmd:outcome(#1)}。
{p_end}

INCLUDE help syntax_me_predict_ctype

INCLUDE help syntax_me_predict_reopts

INCLUDE help syntax_me_predict_intopts


INCLUDE help menu_predict


{marker des_predict}{...}
{title:predict 的描述}

{pstd}
{cmd:predict} 创建一个新变量，其中包含预测值，例如
均值响应；线性预测；密度和分布函数；
标准误差；以及原始、Pearson、偏差和Anscombe残差。


{marker options_predict}{...}
{title:predict 的选项}

{dlgtab:主要}

{phang}
{cmd:mu}，默认情况下，计算结果的期望值。

{phang}
{cmd:pr}计算预测概率，并且是 {cmd:mu} 的同义词。
该选项仅适用于顺序和二元响应模型。

{phang}
{cmd:eta}计算拟合的线性预测。

{phang}
{cmd:xb}使用模型中的估计固定效应（系数）计算线性预测 xb。这等于将模型中的所有随机效应固定在其理论（前置）均值0。

{phang}
{cmd:stdp}计算固定效应线性预测 xb 的标准误差。

{phang} 
{cmd:density}计算密度函数。
此预测是使用观察变量的当前值计算的，包括因变量。

{phang} 
{cmd:distribution}计算分布函数。
此预测是使用观察变量的当前值计算的，包括因变量。

{phang}
{cmd:residuals}计算原始残差，即响应减去拟合值。此选项仅适用于高斯家族。

{phang}
{cmd:pearson}计算Pearson残差。
绝对值较大的Pearson残差可能表明拟合不足。

{phang}
{cmd:deviance}计算偏差残差。偏差残差被{help meglm_postestimation##MN1989:McCullagh and Nelder (1989)}推荐，因为它们具有最佳的性能，用于检查广义线性模型的拟合优度。如果模型正确指定，它们近似正态分布。可以将其绘制与拟合值或协变量进行比较，以检查模型拟合。

{phang}
{cmd:anscombe}计算Anscombe残差，旨在紧密遵循正态分布。

{phang}
{opt conditional(ctype)}和 {cmd:marginal} 指定如何处理随机效应，以计算 {it:statistic}。

{phang2}
{cmd:conditional()} 指定 {it:statistic} 将在指定或估计的随机效应的条件下计算。

{phang3}
{cmd:conditional(ebmeans)}，默认值，指定使用经验贝叶斯均值作为随机效应的估计。这些估计也称为随机效应的后验均值估计。

{phang3}
{cmd:conditional(ebmodes)} 指定使用经验贝叶斯模式作为随机效应的估计。这些估计也称为随机效应的后验模式估计。

{phang3}
{cmd:conditional(fixedonly)} 指定所有随机效应设置为零，相当于只使用模型的固定部分。

{phang2}
{cmd:marginal} 指定预测的 {it:statistic}相对于随机效应的边际计算，这意味着通过对所有随机效应的预测函数在其整个支持范围内进行积分来计算 {it:statistic}。

{pmore2}
虽然这不是默认值，但边际预测在应用分析中通常非常有用。
它们产生通常称为人口均值估计的结果。
它们还被{help margins_zh}所要求。

{phang}
{cmd:nooffset} 仅在您指定了
{opth offset:(varname:varname_o)}或{opt exposure(varname_e)}与
{cmd:meglm}时相关。它修改 {cmd:predict} 的计算，使其忽略偏移或暴露变量；线性预测被视为
xb而不是xb + offset或xb + exposure，这取决于哪个相关。

{phang}
{opt outcome(outcome)} 指定要计算预测概率的结果。 {cmd:outcome()} 应包含因变量的一个值或
{bf:#1}、{bf:#2}等，其中 {bf:#1} 表示因变量的第一类，{bf:#2} 表示第二类，依此类推。

{phang}
{cmd:reffects} 使用经验贝叶斯预测计算随机效应的估计。
默认情况下，或者如果指定了 {opt ebmeans} 选项，则计算经验贝叶斯均值。
使用 {opt ebmodes} 选项时，计算经验贝叶斯模式。
您必须指定 {it:q} 个新变量，其中 {it:q} 是模型中的随机效应项的数量。然而，您可以更轻松地只需指定 {it:stub}{cmd:*}，让Stata为您命名变量
{it:stub}{cmd:1}、{it:stub}{cmd:2}、...,{it:stub}{it:q}。

{phang}
{cmd:ebmeans} 指定使用经验贝叶斯均值作为随机效应的估计。

{phang}
{cmd:ebmodes} 指定使用经验贝叶斯模式作为随机效应的估计。

{phang}
{cmd:reses(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help varlist_zh:newvarlist}}{cmd:)} 计算经验贝叶斯估计的标准误差，并将结果存储在 {it:newvarlist} 中。此选项要求必须使用 {cmd:reffects} 选项。
您必须指定 {it:q} 个新变量，其中 {it:q} 是模型中随机效应项的数量。然而，您可以更轻松地只需指定
{it:stub}{cmd:*}，让Stata为您命名变量
{it:stub}{cmd:1}、{it:stub}{cmd:2}、...,{it:stub}{it:q}。新变量将与相应的随机效应变量具有相同的存储类型。

{pmore}
{cmd:reffects} 和 {cmd:reses()} 选项常常一次生成多个新变量。当这种情况发生时，生成变量中的随机效应（和标准误差）与在 {cmd:meglm} 的输出中列出的方差成分的顺序相对应。生成的变量也被标记以标识其相关的随机效应。

{phang}
{opt scores} 计算 {cmd:e(b)} 中每个系数的得分。
此选项要求新变量列表的长度等于 
{cmd:e(b)} 中的列数。否则，使用 {it:stub}{cmd:*} 语法让 {cmd:predict} 生成带有前缀 {it:stub} 的编号变量。

{dlgtab:积分}

{phang}
{opt intpoints(#)} 指定用于计算边际预测和经验贝叶斯均值的四点数的数量；
默认值来自估计。

{phang}
{opt iterate(#)} 指定在计算涉及经验贝叶斯估计的统计数据时的最大迭代次数；默认值来自估计。

{phang}
{opt tolerance(#)} 指定在计算涉及经验贝叶斯估计的统计数据时的收敛容忍度；默认值来自估计。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{cmd:mu}}均值响应；默认值{p_end}
{synopt :{cmd:pr}}顺序和二元响应模型的{cmd:mu}同义词{p_end}
{synopt :{opt eta}}拟合的线性预测{p_end}
{synopt :{cmd:xb}}仅针对模型的固定部分的线性预测{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt den:sity}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt dist:ribution}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt res:iduals}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt pea:rson}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt dev:iance}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt ans:combe}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt reffects}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt scores}}与 {cmd:margins} 不允许使用{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
选项 {cmd:conditional(ebmeans)} 和 {cmd:conditional(ebmodes)} 与 {cmd:margins} 不允许使用。
{p_end}
{p 4 6 2}
如果未指定 {cmd:conditional(fixedonly)}，则假定适用选项 {opt marginal}。
{p_end}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 估计响应的边际
均值响应和线性预测。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse towerlondon}{p_end}
{phang2}{cmd:. meglm dtlm difficulty i.group || family: || subject:, family(bernoulli)}{p_end}

{pstd}基于固定效应和随机效应的贡献获得预测概率{p_end}
{phang2}{cmd:. predict pr}{p_end}

{pstd}仅基于固定效应的贡献获得预测概率{p_end}
{phang2}{cmd:. predict prfixed, conditional(fixedonly)}{p_end}

{pstd}获得后验均值及其标准误差的预测{p_end}
{phang2}{cmd:. predict re_means*, reses(se_means*) reffects}{p_end}

{pstd}获得后验模式及其标准误差的预测{p_end}
{phang2}{cmd:. predict re_modes*, reses(se_modes*) reffects ebmodes}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. use https://www.stata-press.com/data/mlmus3/schiz, clear}{p_end}
{phang2}{cmd:. generate impso = imps}{p_end}
{phang2}{cmd:. recode impso -9=. 1/2.4=1 2.5/4.4=2 4.5/5.4=3 5.5/7=4}{p_end}
{phang2}{cmd:. meglm impso week treatment || id:, family(ordinal)}{p_end}

{pstd}基于固定效应和随机效应的贡献获得每个结果的预测概率{p_end}
{phang2}{cmd:. predict pr*}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. use https://www.stata-press.com/data/mlmus3/drvisits, clear}
{p_end}
{phang2}{cmd:. meglm numvisit reform age married loginc || id: reform, family(poisson)}{p_end}

{pstd}基于固定效应和随机效应的贡献获得预测计数{p_end}
{phang2}{cmd:. predict n}{p_end}

    {hline}
    

{marker reference}{...}
{title:参考}

{marker MN1989}{...}
{phang}
McCullagh, P., 和 J. A. Nelder. 1989.
{browse "https://www.stata.com/bookstore/glm.html":{it:广义线性模型}. 第2版.}
伦敦：查普曼与霍尔/CRC出版社。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meglm_postestimation.sthlp>}