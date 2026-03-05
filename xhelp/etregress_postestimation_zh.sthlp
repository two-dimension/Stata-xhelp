{smcl}
{* *! version 1.2.6  31may2018}{...}
{viewerdialog predict "dialog treatr_p"}{...}
{vieweralsosee "[TE] etregress postestimation" "mansection TE etregresspostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] etregress" "help etregress_zh"}{...}
{viewerjumpto "后验估计命令" "etregress postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "etregress_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "etregress postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "etregress postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "etregress postestimation##examples"}
{help etregress_postestimation:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[TE] etregress postestimation} {hline 2}}etregress 的后验估计工具{p_end}
{p2col:}({mansection TE etregresspostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后验估计命令}

{pstd}
在 {opt etregress} 执行后，可用以下后验估计命令：

{synoptset 17 tabbed}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
包含帮助 post_contrast
{p2coldent:* {bf:{help estat ic}}}赤池信息量准则 (AIC) 和施瓦茨贝叶斯信息量准则 (BIC){p_end}
包含帮助 post_estatsum
包含帮助 post_estatvce
包含帮助 post_svy_estat
包含帮助 post_estimates
包含帮助 post_hausman_star
包含帮助 post_lincom
包含帮助 post_lrtest_star
{synopt:{helpb etregress_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含帮助 post_marginsplot
包含帮助 post_nlcom
{p2col :{helpb etregress postestimation##predict:预测}}预测、残差、影响统计量及其他诊断措施{p_end}
包含帮助 post_predictnl
包含帮助 post_pwcompare
{p2coldent:* {help suest_zh}}看似无关的估计{p_end}
包含帮助 post_test
包含帮助 post_testnl
{synoptline}
{p 4 6 2}
* {cmd:estat ic}、{cmd:lrtest} 和 {cmd:suest} 在 {cmd:etregress, twostep} 或 {cmd:etregress, cfunction} 后不适用。
{cmd:hausman} 和 {cmd:lrtest} 在 {cmd:svy} 估计结果下不适用。
{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TE etregresspostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{pstd}
在 ML、twostep 或 cfunction 之后

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}
[{cmd:,} {it:statistic}]

{pstd}
在约束模型的 ML 或 cfunction 之后

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvar_zh:newvar_reg}}
    {it:{help newvar_zh:newvar_treat}} {it:{help newvar_zh:newvar_athrho}}
    {it:{help newvar_zh:newvar_lnsigma}}{c )-}
{ifin}
{cmd:,}
{opt sc:ores}

{pstd}
在一般潜在结果模型的 ML 或 cfunction 之后

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvar_zh:newvar_reg}}
    {it:{help newvar_zh:newvar_treat}} {it:{help newvar_zh:newvar_athrho0}}
    {it:{help newvar_zh:newvar_lnsigma0}}
    {it:{help newvar_zh:newvar_athrho1}}
    {it:{help newvar_zh:newvar_lnsigma1}}{c )-}
{ifin}
{cmd:,}
{opt sc:ores}


{marker statistic}{...}
{synoptset 17 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主要}
{synopt:{opt xb}}线性预测；默认为此{p_end}
{synopt:{opt cte}}在处理水平下的条件处理效应{p_end}
{synopt:{opt stdp}}预测的标准误差{p_end}
{synopt:{opt stdf}}预测的标准误差{p_end}
{synopt:{opt yct:rt}}{it:E}(y | treatment = 1){p_end}
{synopt:{opt ycnt:rt}}{it:E}(y | treatment = 0){p_end}
{synopt:{opt pt:rt}}Pr(treatment = 1){p_end}
{synopt:{opt xbt:rt}}处理方程的线性预测{p_end}
{synopt:{opt stdpt:rt}}处理方程线性预测的标准误差{p_end}
{synoptline}
{p2colreset}{...}
包含帮助 esample
{p 4 6 2}
{opt stdf} 在 {cmd:svy} 估计结果下不允许使用。
{p_end}


包含帮助 menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测的新的变量，例如线性预测、条件处理效应、标准误差、期望值和概率。 


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb}，默认情况下，计算线性预测，xb。

{phang}
{opt cte} 计算处理效应，即条件于处理水平的潜在结果均值的差异。

{phang}
{opt stdp} 计算预测的标准误差，可以视为观察样本协变量模式的预测期望值或均值的标准误差。预测的标准误差也称为拟合值的标准误差。

{phang}
{opt stdf} 计算预测的标准误差，即单一观察的点预测标准误差。通常称为未来或预测值的标准误差。根据定义，由 {opt stdf} 产生的标准误差总是大于由 {opt stdp} 产生的；见 {it:{mansection R regressMethodsandformulas:方法和公式}} 在 {hi:[R] regress} 中。

{phang}
{opt yctrt} 计算条件于存在处理时因变量的期望值：{it:E}(y | treatment=1)。

{phang}
{opt ycntrt} 计算条件于不存在处理时因变量的期望值：{it:E}(y | treatment=0)。

{phang}
{opt ptrt} 计算处理存在的概率： Pr(treatment=1) = Pr(w_j*g + u_j > 0)。

{phang}
{opt xbtrt} 计算处理方程的线性预测。

{phang}
{opt stdptrt} 计算处理方程的线性预测的标准误差。

{phang}
{opt scores}，不适用于 {opt twostep}，计算方程层级的得分变量。

{pmore}
第一个新变量将包含对回归方程的对数似然的导数。

{pmore}
第二个新变量将包含对处理方程的对数似然的导数。

{pmore}
在约束模型下，第三个新变量将包含对第三个方程的对数似然的导数（{hi:athrho}）。

{pmore}
在约束模型下，第四个新变量将包含对第四个方程的对数似然的导数（{hi:lnsigma}）。

{pmore}
在一般潜在结果模型下，第三个新变量将包含对第三个方程的对数似然的导数（{hi:athrho0}）。

{pmore}
在一般潜在结果模型下，第四个新变量将包含对第四个方程的对数似然的导数（{hi:lnsigma0}）。

{pmore}
在一般潜在结果模型下，第五个新变量将包含对第三个方程的对数似然的导数（{hi:athrho1}）。

{pmore}
在一般潜在结果模型下，第六个新变量将包含对第四个方程的对数似然的导数（{hi:lnsigma1}）。

包含帮助 syntax_margins

{pstd}
最大似然和控制函数估计结果

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt:{opt xb}}线性预测；默认为此{p_end}
{synopt:{opt cte}}在处理水平下的条件处理效应{p_end}
{synopt:{opt yct:rt}}{it:E}(y | treatment = 1){p_end}
{synopt:{opt ycnt:rt}}{it:E}(y | treatment = 0){p_end}
{synopt:{opt pt:rt}}Pr(treatment = 1){p_end}
{synopt:{opt xbt:rt}}处理方程的线性预测{p_end}
{synopt :{opt stdp}}在 {cmd:margins} 下不允许使用{p_end}
{synopt :{opt stdf}}在 {cmd:margins} 下不允许使用{p_end}
{synopt :{opt stdpt:rt}}在 {cmd:margins} 下不允许使用{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
两步估计结果

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt:{opt xb}}线性预测；默认为此{p_end}
{synopt:{opt pt:rt}}Pr(treatment = 1){p_end}
{synopt:{opt xbt:rt}}处理方程的线性预测{p_end}
{synopt :{opt cte}}在 {cmd:margins} 下不允许使用{p_end}
{synopt :{opt yct:rt}}在 {cmd:margins} 下不允许使用{p_end}
{synopt :{opt ycnt:rt}}在 {cmd:margins} 下不允许使用{p_end}
{synopt :{opt stdp}}在 {cmd:margins} 下不允许使用{p_end}
{synopt :{opt stdf}}在 {cmd:margins} 下不允许使用{p_end}
{synopt :{opt stdpt:rt}}在 {cmd:margins} 下不允许使用{p_end}
{synoptline}
{p2colreset}{...}

包含帮助 notes_margins

包含帮助 menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计线性预测、条件处理效应、期望值和概率的响应边际。 


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse union3}{p_end}
{phang2}{cmd:. etregress wage age grade smsa i.union#c.(black tenure),}
           {cmd:treat(union = south black tenure) vce(robust) vsquish}
	   {cmd:nolstretch}

{pstd}估计平均处理效应{p_end}
{phang2}{cmd:. margins r.union, vce(unconditional) contrast(nowald)}

{pstd}估计对处理组的平均处理效应{p_end}
{phang2}{cmd:. margins r.union, vce(unconditional) contrast(nowald)}
          {cmd:subpop(union)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse drugexp}{p_end}
{p 8 12 2}{cmd:. etregress lndrug chron age lninc, }
{cmd:treat(ins=age married lninc work) poutcomes cfunction}

{pstd}估计对处理组的平均处理效应{p_end}
{phang2}{cmd:. margins, predict(cte) subpop(ins) vce(unconditional)}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <etregress_postestimation.sthlp>}