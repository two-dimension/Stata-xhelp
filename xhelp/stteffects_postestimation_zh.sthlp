{smcl}
{* *! version 1.0.5  04jun2018}{...}
{viewerdialog predict "dialog stteffects_p"}{...}
{vieweralsosee "[TE] stteffects postestimation" "mansection TE stteffectspostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] tebalance" "help tebalance_zh"}{...}
{vieweralsosee "[TE] teffects overlap" "help teffects overlap"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] stteffects ipw" "help stteffects ipw"}{...}
{vieweralsosee "[TE] stteffects ipwra" "help stteffects ipwra"}{...}
{vieweralsosee "[TE] stteffects ra" "help stteffects ra"}{...}
{vieweralsosee "[TE] stteffects wra" "help stteffects wra"}{...}
{viewerjumpto "后处理命令" "stteffects postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "stteffects_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "stteffects postestimation##predict"}{...}
{viewerjumpto "示例" "stteffects postestimation##examples"}
{help stteffects_postestimation:English Version}
{hline}{...}
{p2colset 1 35 37 2}{...}
{p2col:{bf:[TE] stteffects postestimation} {hline 2}}stteffects 的后处理工具{p_end}
{p2col:}({mansection TE stteffectspostestimation:查看完整的 PDF 手册条目}){p_end}

{marker description}{...}
{title:后处理命令}

{pstd}
在 {cmd:stteffects} 之后，以下后处理命令特别重要：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb teffects overlap:teffects overlap}}重叠图{p_end}
{synopt :{help tebalance_zh}}检查协变量的平衡{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后处理命令也可用：

{synoptset 16}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_hausman
INCLUDE help post_lincom
INCLUDE help post_nlcom
{synopt :{helpb stteffects postestimation##predict:预测}}预测、残差、影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TE stteffectspostestimationRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。

{marker predict}{...}
{title:预测的语法}

{pstd}
语法在以下标题下呈现：

        {help stteffects postestimation##syntax_predict_ipw:stteffects ipw 后的预测语法}
        {help stteffects postestimation##syntax_predict_ipwra:stteffects ipwra 后的预测语法}
        {help stteffects postestimation##syntax_predict_ra:stteffects ra 后的预测语法}
        {help stteffects postestimation##syntax_predict_wra:stteffects wra 后的预测语法}

{marker syntax_predict_ipw}{...}
{title:stteffects ipw 后的预测语法}

{p 8 16 2}
{cmd:predict} {dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help newvar_zh}} | {it:{help newvarlist_zh}}{c )-}
{ifin}
[{cmd:,} {it:statistic} {opt tl:evel}{cmd:(}{it:treat_level}{cmd:)}]

{synoptset 14 tabbed}{...}
{synopthdr:统计量}
{synoptline}
{syntab :主要}
{synopt :{opt ps}}倾向得分；默认值{p_end}
{synopt :{opt cens:urv}}删失生存概率{p_end}
{synopt :{opt xb}}倾向得分的线性预测{p_end}
{synopt :{opt cxb}}删失模型的线性预测{p_end}
{synopt :{opt lns:igma}}潜在方差的对数平方根（用于处理模型 {cmd:hetprobit()}){p_end}
{synopt :{opt clnsh:ape}}条件潜在形状的对数（用于删失分布 Weibull、对数正态或伽马分布）{p_end}
{synopt :{opt sc:ores}}参数级或方程级得分{p_end}
{synoptline}
{p 4 6 2}
如果不指定 {cmd:tlevel()} 且仅指定一个新变量，{cmd:ps} 假定 {opt tlevel()} 指定的是第一个处理水平。{p_end}
{p 4 6 2}
如果不指定 {cmd:tlevel()} 且仅指定一个新变量，{cmd:xb} 和 {cmd:lnsigma} 假定 {cmd:tlevel()} 指定的是第一个非控制处理水平。{p_end}
{p 4 6 2}
需使用 {cmd:ps} 指定一个或 t 个新变量，其中 t 为处理水平的数量。{p_end}
{p 4 6 2}
需使用 {cmd:xb} 和 {cmd:lnsigma} 指定一个或 t-1 个新变量。{p_end}
{p 4 6 2}
需使用 {cmd:censurv}、{cmd:cxb} 和 {cmd:clnshape} 指定一个新变量。

{marker syntax_predict_ipwra}{...}
{title:stteffects ipwra 后的预测语法}

{p 8 16 2}
{cmd:predict} {dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help newvar_zh}} | {it:{help newvarlist_zh}}{c )-}
{ifin}
[{cmd:,} {it:statistic} {opt tl:evel}{cmd:(}{it:treat_level}{cmd:)}]

{synoptset 14 tabbed}{...}
{synopthdr:统计量}
{synoptline}
{syntab :主要}
{synopt :{opt te}}处理效应；默认值{p_end}
{synopt :{opt cm:ean}}在处理水平的条件均值{p_end}
{synopt :{opt ps}}倾向得分{p_end}
{synopt :{opt cens:urv}}删失生存概率{p_end}
{synopt :{opt xb}}结果模型的线性预测{p_end}
{synopt :{opt cxb}}删失模型的线性预测{p_end}
{synopt :{opt psxb}}倾向得分的线性预测{p_end}
{synopt :{opt lnsh:ape}}在处理水平的条件潜在形状的对数（用于结果分布 Weibull、对数正态或伽马分布）{p_end}
{synopt :{opt clnsh:ape}}条件潜在形状的对数（用于删失分布 Weibull、对数正态或伽马分布）{p_end}
{synopt :{opt pslns:igma}}潜在方差的对数平方根（用于处理模型 {cmd:hetprobit()}) 的倾向得分{p_end}
{synopt :{opt sc:ores}}参数级或方程级得分{p_end}
{synoptline}
{p 4 6 2}
如果不指定 {cmd:tlevel()} 且仅指定一个新变量，{cmd:te} 和 {cmd:psxb} 假定 {cmd:tlevel()} 指定的是第一个非控制处理水平。{p_end}
{p 4 6 2}
如果不指定 {cmd:tlevel()} 且仅指定一个新变量，{cmd:cmean}、{cmd:ps}、{cmd:xb} 和 {cmd:pslnsigma} 假定 {cmd:tlevel()} 指定的是第一个处理水平。{p_end}
{p 4 6 2}
使用 {cmd:cmean}、{cmd:ps}、{cmd:xb} 和 {cmd:lnshape} 指定一个或 t 个新变量，其中 t 为处理水平的数量。{p_end}
{p 4 6 2}
使用 {cmd:te}、{cmd:psxb} 和 {cmd:pslnsigma} 指定一个或 t-1 个新变量。{p_end}
{p 4 6 2}
使用 {cmd:censurv}、{cmd:cxb} 和 {cmd:clnshape} 指定一个新变量。

{marker syntax_predict_ra}{...}
{title:stteffects ra 后的预测语法}

{p 8 16 2}
{cmd:predict} {dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help newvar_zh}} | {it:{help newvarlist_zh}}{c )-}
{ifin}
[{cmd:,} {it:statistic} {opt tl:evel}{cmd:(}{it:treat_level}{cmd:)}]

{synoptset 14 tabbed}{...}
{synopthdr:统计量}
{synoptline}
{syntab :主要}
{synopt :{opt te}}处理效应；默认值{p_end}
{synopt :{opt cm:ean}}在处理水平的条件均值{p_end}
{synopt :{opt xb}}结果模型的线性预测{p_end}
{synopt :{opt lnsh:ape}}在处理水平的条件潜在形状的对数（用于结果分布 Weibull、对数正态或伽马分布）{p_end}
{synopt :{opt sc:ores}}参数级或方程级得分{p_end}
{synoptline}
{p 4 6 2} 如果不指定 {cmd:tlevel()} 且仅指定一个新变量，
{cmd:te} 假定 {cmd:tlevel()} 指定的是第一个非控制处理水平。{p_end}
{p 4 6 2}
如果不指定 {cmd:tlevel()} 且仅指定一个新变量，
{cmd:cmean}、{cmd:xb} 和 {cmd:lnshape} 假定 {cmd:tlevel()}
指定的是第一个处理水平。{p_end}
{p 4 6 2}
使用 {cmd:cmean}、{cmd:xb} 和 {cmd:lnshape} 指定一个或 t 个新变量，其中 t 为处理水平的数量。{p_end}
{p 4 6 2}
使用 {cmd:te} 指定一个或 t-1 个新变量。{p2colreset}{...}

{marker syntax_predict_wra}{...}
{title:stteffects wra 后的预测语法}

{p 8 16 2}
{cmd:predict} {dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help newvar_zh}} | {it:{help newvarlist_zh}}{c )-}
{ifin}
[{cmd:,} {it:statistic} {opt tl:evel}{cmd:(}{it:treat_level}{cmd:)}]

{synoptset 14 tabbed}{...}
{synopthdr:统计量}
{synoptline}
{syntab :主要}
{synopt :{opt te}}处理效应；默认值{p_end}
{synopt :{opt cm:ean}}在处理水平的条件均值{p_end}
{synopt :{opt cens:urv}}删失生存概率{p_end}
{synopt :{opt xb}}结果模型的线性预测{p_end}
{synopt :{opt cxb}}删失模型的线性预测{p_end}
{synopt :{opt lnsh:ape}}在处理水平的条件潜在形状的对数（用于结果分布 Weibull、对数正态或伽马分布）{p_end}
{synopt :{opt clnsh:ape}}条件潜在形状的对数（用于删失分布 Weibull、对数正态或伽马分布）{p_end}
{synopt :{opt sc:ores}}参数级或方程级得分{p_end}
{synoptline}
{p 4 6 2}
如果不指定 {cmd:tlevel()} 且仅指定一个新变量，
{cmd:te} 假定 {cmd:tlevel()} 指定的是第一个非控制处理水平。{p_end}
{p 4 6 2}
如果不指定 {cmd:tlevel()} 且仅指定一个新变量，
{cmd:cmean}、{cmd:xb} 和 {cmd:lnshape} 假定 {cmd:tlevel()}
指定的是第一个处理水平。{p_end}
{p 4 6 2}
使用 {cmd:cmean}、{cmd:xb} 和 {cmd:lnshape} 指定一个或 t 个新变量，其中 t 为处理水平的数量。{p_end}
{p 4 6 2}
使用 {cmd:te} 指定一个或 t-1 个新变量。{p_end}
{p 4 6 2}
使用 {cmd:censurv}、{cmd:cxb} 和 {cmd:clnshape} 指定一个新变量。

INCLUDE help menu_predict

{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测结果，如
处理效应、条件均值、倾向得分、
线性预测和潜在方差的对数平方根。

{title:预测的选项}

{pstd}
选项在以下标题下呈现：

        {help stteffects postestimation##options_predict_ipw:stteffects ipw 后的预测选项}
        {help stteffects postestimation##options_predict_ipwra:stteffects ipwra 后的预测选项}
        {help stteffects postestimation##options_predict_ra:stteffects ra 后的预测选项}
        {help stteffects postestimation##options_predict_wra:stteffects wra 后的预测选项}

{marker options_predict_ipw}{...}
{title:stteffects ipw 后的预测选项}

{dlgtab:主要}

{phang}
{cmd:ps}，默认情况下，计算每个处理水平或 {cmd:tlevel()} 中指定的处理水平的倾向得分。如果指定了 {cmd:tlevel()} 选项，则只需指定一个新变量；否则，必须为每个处理水平指定一个新变量。

{phang}
{cmd:censurv} 从时限为删失时间的模型中计算存活概率。（换句话说，它计算结果未被删失的概率。）只有在估计时指定了删失模型时，此选项才能使用。只需指定一个新变量。

{phang}
{cmd:xb} 计算在每个非控制处理水平或 {cmd:tlevel()} 中指定的处理水平的倾向得分线性预测。如果指定了 {cmd:tlevel()} 选项，则只需指定一个新变量；否则，必须为每个处理水平（控制水平除外）指定一个新变量。

{phang}
{cmd:cxb} 计算删失模型的线性预测。只有在估计时指定了删失模型时，此选项才能使用。只需指定一个新变量。

{phang}
{cmd:lnsigma} 计算潜在方差的对数平方根。仅在使用处理模型 {cmd:hetprobit()} 时，此选项有效。只需指定一个新变量。

{phang}
{cmd:clnshape} 计算删失分布的条件潜在形状参数的对数。当使用 Weibull、对数正态或伽马分布作为删失分布时，此选项有效。只需指定一个新变量。

{phang}
{opt tlevel(treat_level)} 指定预测的处理水平。

{phang}
{cmd:scores} 计算得分变量。为处理均值和平均处理效应方程计算参数级得分。
为删失和倾向得分方程计算方程级得分。

{pmore}
如果 j{ul:<}t，其中 t 是处理水平的数量，新变量的第 j 个将包含参数表中第 j 个参数的得分。否则，它将包含拟合方程 j-t 的得分，紧跟在参数表中的前 t 个参数之后。

{marker options_predict_ipwra}{...}
{title:stteffects ipwra 后的预测选项}

{dlgtab:主要}

{phang}
{cmd:te}，默认情况下，计算每个非控制处理水平或 {cmd:tlevel()} 中指定的处理水平的处理效应。如果指定了 {cmd:tlevel()} 选项，则只需指定一个新变量；否则，必须为每个处理水平（控制水平除外）指定一个新变量。

{phang}
{cmd:cmean} 计算每个处理水平或 {cmd:tlevel()} 中指定的处理水平的条件均值。如果指定了 {cmd:tlevel()} 选项，则只需指定一个新变量；否则，必须为每个处理水平指定一个新变量。

{phang}
{cmd:ps} 计算每个处理水平或 {cmd:tlevel()} 中指定的处理水平的倾向得分。如果指定了 {cmd:tlevel()} 选项，则只需指定一个新变量；否则，必须为每个处理水平指定一个新变量。

{phang}
{cmd:censurv} 从时限为删失时间的模型中计算存活概率。（换句话说，它计算结果未被删失的概率。）只有在估计时指定了删失模型时，此选项才能使用。只需指定一个新变量。

{phang}
{cmd:xb} 在每个处理水平或 {cmd:tlevel()} 中指定的处理水平的结果模型线性预测。如果指定了 {cmd:tlevel()} 选项，则只需指定一个新变量；否则，必须为每个处理水平指定一个新变量。

{phang}
{cmd:cxb} 计算删失模型的线性预测。只有在估计时指定了删失模型时，此选项才能使用。只需指定一个新变量。

{phang}
{cmd:psxb} 在每个非控制处理水平或 {cmd:tlevel()} 中指定的处理水平的倾向得分线性预测。如果指定了 {cmd:tlevel()} 选项，则只需指定一个新变量；否则，必须为每个处理水平指定一个新变量（控制水平除外）。

{phang}
{cmd:lnshape} 计算在每个处理水平或 {cmd:tlevel()} 中指定的处理水平的条件潜在形状参数的对数。当使用结果分布 Weibull、对数正态或伽马分布时，此选项有效。如果指定了 {cmd:tlevel()} 选项，则只需指定一个新变量；否则，必须为每个处理水平指定一个新变量。

{phang}
{cmd:clnshape} 计算删失分布的条件潜在形状参数的对数。当使用删失分布 Weibull、对数正态或伽马分布时，此选项有效。只需指定一个新变量。

{phang}
{cmd:pslnsigma} 计算倾向得分的潜在方差的对数平方根。仅在使用处理模型 {cmd:hetprobit()} 时，此选项有效。只需指定一个新变量。

{phang}
{opt tlevel(treat_level)} 指定预测的处理水平。

{phang}
{cmd:scores} 计算得分变量。为处理均值和平均处理效应方程计算参数级得分。
为结果、删失和倾向分布方程计算方程级得分。

{pmore}
如果 j{ul:<}t，其中 t 是处理水平的数量，新变量的第 j 个将包含参数表中第 j 个参数的得分。否则，它将包含拟合方程 j-t 的得分，紧跟在参数表中的前 t 个参数之后。

{marker options_predict_ra}{...}
{title:stteffects ra 后的预测选项}

{dlgtab:主要}

{phang}
{cmd:te}，默认情况下，计算每个非控制处理水平或 {cmd:tlevel()} 中指定的处理水平的处理效应。如果指定了 {cmd:tlevel()} 选项，则只需指定一个新变量；否则，必须为每个处理水平（控制水平除外）指定一个新变量。

{phang}
{cmd:cmean} 计算每个处理水平或 {cmd:tlevel()} 中指定的处理水平的条件均值。如果指定了 {cmd:tlevel()} 选项，则只需指定一个新变量；否则，必须为每个处理水平指定一个新变量。

{phang}
{cmd:xb} 在每个处理水平或 {cmd:tlevel()} 中指定的处理水平的结果模型线性预测。如果指定了 {cmd:tlevel()} 选项，则只需指定一个新变量；否则，必须为每个处理水平指定一个新变量。

{phang}
{cmd:lnshape} 计算在每个处理水平或 {cmd:tlevel()} 中指定的处理水平的条件潜在形状参数的对数。当使用结果分布 Weibull、对数正态或伽马分布时，此选项有效。如果指定了 {cmd:tlevel()} 选项，则只需指定一个新变量；否则，必须为每个处理水平指定一个新变量。

{phang}
{opt tlevel(treat_level)} 指定预测的处理水平。

{phang}
{cmd:scores} 计算得分变量。为处理均值和平均处理效应方程计算参数级得分。
为结果方程计算方程级得分。

{pmore}
如果 j{ul:<}t，其中 t 是处理水平的数量，新变量的第 j 个将包含参数表中第 j 个参数的得分。否则，它将包含拟合方程 j-t 的得分，紧跟在参数表中的前 t 个参数之后。

{marker options_predict_wra}{...}
{title:stteffects wra 后的预测选项}

{dlgtab:主要}

{phang}
{cmd:te}，默认情况下，计算每个非控制处理水平或 {cmd:tlevel()} 中指定的处理水平的处理效应。如果指定了 {cmd:tlevel()} 选项，则只需指定一个新变量；否则，必须为每个处理水平（控制水平除外）指定一个新变量。

{phang}
{cmd:cmean} 计算每个处理水平或 {cmd:tlevel()} 中指定的处理水平的条件均值。如果指定了 {cmd:tlevel()} 选项，则只需指定一个新变量；否则，必须为每个处理水平指定一个新变量。

{phang}
{cmd:censurv} 从时限为删失时间的模型中计算存活概率。（换句话说，它计算结果未被删失的概率。）只有在估计时指定了删失模型时，此选项才能使用。只需指定一个新变量。

{phang}
{cmd:xb} 在每个处理水平或 {cmd:tlevel()} 中指定的处理水平的结果模型线性预测。如果指定了 {cmd:tlevel()} 选项，则只需指定一个新变量；否则，必须为每个处理水平指定一个新变量。

{phang}
{cmd:lnshape} 计算在每个处理水平或 {cmd:tlevel()} 中指定的处理水平的条件潜在形状参数的对数。当使用结果分布 Weibull、对数正态或伽马分布时，此选项有效。如果指定了 {cmd:tlevel()} 选项，则只需指定一个新变量；否则，必须为每个处理水平指定一个新变量。

{phang}
{cmd:clnshape} 计算删失分布的条件潜在形状参数的对数。当使用删失分布 Weibull、对数正态或伽马分布时，此选项有效。只需指定一个新变量。

{phang}
{opt tlevel(treat_level)} 指定预测的处理水平。

{phang}
{cmd:scores} 计算得分变量。为处理均值和平均处理效应方程计算参数级得分。
为结果和删失方程计算方程级得分。

{pmore}
如果 j{ul:<}t，其中 t 是处理水平的数量，新变量的第 j 个将包含参数表中第 j 个参数的得分。否则，它将包含拟合方程 j-t 的得分，紧跟在参数表中的前 t 个参数之后。

{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sheart}{p_end}
{phang2}{cmd:. stteffects ipw (smoke age exercise education)}
        {cmd:(age exercise diet education)}{p_end}

{pstd}估计当为 {cmd:Nonsmoker} 和存储在 {cmd:ps0} 中的概率，以及在 {cmd:Smoker} 中存储的概率 {cmd:ps1}{p_end}
{phang2}{cmd:. predict ps0 ps1, ps}

{pstd}总结概率{p_end}
{phang2}{cmd:. summarize ps0 if fail==1 & smoke==0}{p_end}
{phang2}{cmd:. summarize ps1 if fail==1 & smoke==1}{p_end}

{pstd}计算失败的估计概率，然后总结其中的失败{p_end}
{phang2}{cmd:. predict fprob2, censurv}{p_end}
{phang2}{cmd:. summarize fprob if fail==1}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stteffects_postestimation.sthlp>}