{smcl}
{* *! version 1.0.6  04jun2018}{...}
{viewerdialog predict "dialog teffects_p"}{...}
{vieweralsosee "[TE] teffects postestimation" "mansection TE teffectspostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] teffects overlap" "help teffects overlap"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] teffects aipw" "help teffects aipw"}{...}
{vieweralsosee "[TE] teffects ipw" "help teffects ipw"}{...}
{vieweralsosee "[TE] teffects ipwra" "help teffects ipwra"}{...}
{vieweralsosee "[TE] teffects nnmatch" "help teffects nnmatch"}{...}
{vieweralsosee "[TE] teffects psmatch" "help teffects psmatch"}{...}
{vieweralsosee "[TE] teffects ra" "help teffects ra"}{...}
{viewerjumpto "Postestimation commands" "teffects postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "teffects_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "teffects postestimation##predict"}{...}
{viewerjumpto "Examples" "teffects postestimation##examples"}
{help teffects_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[TE] teffects postestimation} {hline 2}}teffects 的后估计工具{p_end}
{p2col:}({mansection TE teffectspostestimation:查看完整的 PDF 手册条目}){p_end}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {cmd:teffects} 之后，以下后估计命令尤其重要：

{synoptset 16}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb teffects overlap:teffects overlap}}重叠图{p_end}
{synopt :{help tebalance_zh}}检查协变量的平衡性{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也可用：

{synoptset 16}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含帮助 post_estatsum
包含帮助 post_estatvce
包含帮助 post_estimates
包含帮助 post_hausman
包含帮助 post_lincom
包含帮助 post_nlcom
{synopt :{helpb teffects postestimation##predict:predict}}预测、残差、影响统计量和其他诊断指标{p_end}
包含帮助 post_predictnl
包含帮助 post_test
包含帮助 post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TE teffectspostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker predict}{...}
{title:预测的语法}

{pstd}
语法在以下标题下呈现：

        {help teffects postestimation##syntax_predict_ipwraaipw: aipw 和 ipwra 之后的预测语法}
        {help teffects postestimation##syntax_predict_ipw: ipw 之后的预测语法}
        {help teffects postestimation##syntax_predict_match: nnmatch 和 psmatch 之后的预测语法}
        {help teffects postestimation##syntax_predict_ra: ra 之后的预测语法}


{marker syntax_predict_ipwraaipw}{...}
{title:aipw 和 ipwra 之后的预测语法}

{p 8 16 2}
{cmd:predict} {dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help newvar_zh}} | {it:{help newvarlist_zh}}{c )-}
{ifin}
[{cmd:,} {it:statistic} {opt tl:evel}{cmd:(}{it:treat_level}{cmd:)}]

{synoptset 14 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab :主}{synopt :{opt te}}处理效应；默认值{p_end}
{synopt :{opt cm:ean}}在处理水平的条件均值{p_end}
{synopt :{opt ps}}倾向得分{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt psxb}}倾向得分的线性预测{p_end}
{synopt :{opt lns:igma}}条件潜在方差的对数平方根（用于结果模型 {cmd:hetprobit()}）在处理水平{p_end}
{synopt :{opt pslns:igma}}倾向得分的潜在方差的对数平方根（用于处理模型 {cmd:hetprobit()}）{p_end}
{synopt :{opt sc:ores}}参数级或方程级的得分{p_end}
{synoptline}
{p 4 6 2}
如果您没有指定 {cmd:tlevel()} 并且只指定一个新变量，{cmd:te} 和 {cmd:psxb} 假定 {opt tlevel()} 指定第一个非控制处理水平。{p_end}
{p 4 6 2}
如果您没有指定 {cmd:tlevel()} 并且只指定一个新变量，
{cmd:cmean}、{cmd:ps}、{cmd:xb} 和 {cmd:lnsigma} 假定 {cmd:tlevel()}
指定第一个处理水平。{p_end}
{p 4 6 2}
您指定一个或 t 个新变量与 {cmd:cmean}、{cmd:ps}、{cmd:xb} 和 {cmd:lnsigma}，其中 t 是处理水平的数量。{p_end}
{p 4 6 2}
您使用 {cmd:te}、{cmd:psxb} 和 {cmd:pslnsigma} 指定一个或 t-1 个新变量。{p_end}


{marker syntax_predict_ipw}{...}
{marker predict}{...}
{title:ipw 之后的预测语法}

{p 8 16 2}
{cmd:predict} {dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help newvar_zh}} | {it:{help newvarlist_zh}}{c )-}
{ifin}
[{cmd:,} {it:statistic} {opt tl:evel}{cmd:(}{it:treat_level}{cmd:)}]

{synoptset 14 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab :主}{synopt :{opt ps}}倾向得分；默认值{p_end}
{synopt :{opt xb}}倾向得分的线性预测{p_end}
{synopt :{opt lns:igma}}潜在方差的对数平方根（用于处理模型 {cmd:hetprobit()}）{p_end}
{synopt :{opt sc:ores}}参数级或方程级的得分{p_end}
{synoptline}
{p 4 6 2}
如果您没有指定 {cmd:tlevel()} 并且只指定一个新变量，{cmd:ps} 假定 {opt tlevel()} 指定第一个处理水平。
{p_end}
{p 4 6 2}
如果您没有指定 {cmd:tlevel()} 并且只指定一个新变量，{cmd:xb}
假定 {opt tlevel()} 指定第一个非控制处理水平。{p_end}
{p 4 6 2}
您使用 {cmd:ps} 指定一个或 t 个新变量，其中 t 是处理水平的数量。{p_end}
{p 4 6 2}
您使用 {cmd:xb} 和 {cmd:lnsigma} 指定一个或 t-1 个新变量。{p_end}


{marker syntax_predict_match}{...}
{marker predict}{...}
{title:nnmatch 或 psmatch 之后的预测语法}

{p 8 16 2}
{cmd:predict} {dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{c )-} 
[{cmd:,} {it:statistic} {opt tl:evel}{cmd:(}{it:treat_level}{cmd:)}]

{synoptset 14 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab :主}{synopt :{opt te}}处理效应；默认值{p_end}
{synopt :{opt po}}潜在结果{p_end}
{synopt :{opt dist:ance}}最近邻距离{p_end}
{synopt :{opt ps}}倾向得分 ({cmd:psmatch} 仅限){p_end}
{synopt :{opt lns:igma}}潜在方差的对数平方根（用于处理模型 {cmd:hetprobit()}）{p_end}
{synoptline}
{p 4 6 2} 这些统计量仅适用于估计样本，并且需要估计选项 {cmd:generate(}{it:stub}{cmd:)}。这是由于匹配估计器的非参数特性。{p_end}
{p 4 6 2} 如果您没有指定 {cmd:tlevel()} 并且只指定一个新变量，{cmd:po} 和 {cmd:ps} 假定 {opt tlevel()} 指定第一个处理水平。{p_end}
{p 4 6 2} 您使用 {cmd:te} 和 {cmd:lnsigma} 指定一个新变量。{p_end}
{p 4 6 2} 您使用 {cmd:po} 和 {cmd:ps} 指定一个或两个新变量。{p_end}
{p2colreset}{...}


{marker syntax_predict_ra}{...}
{marker predict}{...}
{title:ra 之后的预测语法}

{p 8 16 2}
{cmd:predict} {dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help newvar_zh}} | {it:{help newvarlist_zh}}{c )-}
{ifin}
[{cmd:,} {it:statistic} {opt tl:evel}{cmd:(}{it:treat_level}{cmd:)}]

{synoptset 14 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab :主}{synopt :{opt te}}处理效应；默认值{p_end}
{synopt :{opt cm:ean}}在处理水平的条件均值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt lns:igma}}条件潜在方差的对数平方根（用于结果模型 {cmd:hetprobit()}）在处理水平{p_end}
{synopt :{opt sc:ores}}参数级或方程级的得分{p_end}
{synoptline}
{p 4 6 2}
如果您没有指定 {cmd:tlevel()} 并且只指定一个新变量，
{cmd:te} 假定 {opt tlevel()} 指定第一个
非控制处理水平。 {p_end}
{p 4 6 2}
如果您没有指定 {cmd:tlevel()} 并且只指定一个新变量， 
{cmd:cmean}、{cmd:xb} 和 {cmd:lnsigma} 假定 {opt tlevel()} 指定第一个处理水平。{p_end}
{p 4 6 2}
您使用 {cmd:cmean}、{cmd:xb} 和 {cmd:lnsigma} 指定一个或 t 个新变量，其中 t 是处理水平的数量。{p_end}
{p 4 6 2}
您为 {cmd:te} 指定一个或 t-1 个新变量。{p_end}


包含帮助 menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含诸如处理效应、潜在结果、条件均值、倾向得分、线性预测、最近邻距离和潜在方差的对数平方根等预测值。


{title:预测的选项}

{pstd}
选项在以下标题下呈现：

        {help teffects postestimation##options_predict_ipwraaipw: aipw 和 ipwra 之后的预测选项}
        {help teffects postestimation##options_predict_ipw: ipw 之后的预测选项}
        {help teffects postestimation##options_predict_match: nnmatch 和 psmatch 之后的预测选项}
        {help teffects postestimation##options_predict_ra: ra 之后的预测选项}


{marker options_predict_ipwraaipw}{...}
{title:aipw 和 ipwra 之后的预测选项}

{dlgtab:主}

{phang}
{opt te}，默认值，计算每个非控制处理水平或在 {opt tlevel()} 中指定的处理水平的处理效应。如果您指定了 {opt tlevel()} 选项，则需要仅指定一个新变量；否则，您必须为每个处理水平（控制水平除外）指定一个新变量。

{phang}
{opt cmean} 计算每个处理水平或在 {opt tlevel()} 中指定的处理水平的条件均值。如果您指定了 {opt tlevel()} 选项，则需要仅指定一个新变量；否则，您必须为每个处理水平指定一个新变量。 

{phang}
{opt ps} 计算每个处理水平或在 {opt tlevel()} 中指定的处理水平的倾向得分。如果您指定了 {opt tlevel()} 选项，则需要仅指定一个新变量；否则，您必须为每个处理水平指定一个新变量。

{phang}
{opt xb} 计算每个处理水平或在 {opt tlevel()} 中指定的处理水平的线性预测。如果您指定了 {opt tlevel()} 选项，则需要仅指定一个新变量；否则，您必须为每个处理水平指定一个新变量。 

{phang}
{opt psxb} 在每个非控制处理水平或在 {opt tlevel()} 中指定的处理水平上计算倾向得分的线性预测。如果您指定了 {opt tlevel()} 选项，则需要仅指定一个新变量；否则，您必须为每个处理水平指定一个新变量（控制水平除外）。

{phang}
{opt lnsigma} 计算每个处理水平或在 {opt tlevel()} 中指定的处理水平的条件潜在方差的对数平方根。此选项在使用结果模型 {cmd:hetprobit()} 时有效。如果您指定了 {opt tlevel()} 选项，则需要仅指定一个新变量；否则，您必须为每个处理水平指定一个新变量。

{phang}
{opt pslnsigma} 计算倾向得分的潜在方差的对数平方根。此选项仅在使用处理模型 {cmd:hetprobit()} 时有效。仅指定一个新变量。

{phang}
{opt tlevel(treat_level)} 指定预测的处理水平。

{phang}
{opt scores} 计算得分变量。为处理均值和平均处理效应方程计算参数级得分。为倾向得分方程计算方程级得分。

{pmore}
如果 j <= t 的话，第 j 个新变量将包含系数表中第 j 参数的得分，其中 t 是处理水平的数量。否则，它将包含系数表中前 t 个参数后的拟合方程 j-t 的得分。


{marker options_predict_ipw}{...}
{title:ipw 之后的预测选项}

{dlgtab:主}

{phang}
{opt ps}，默认值，计算每个处理水平或在 {opt tlevel()} 中指定的处理水平的倾向得分。如果您指定了 {opt tlevel()} 选项，则需要仅指定一个新变量；否则，您必须为每个处理水平指定一个新变量。

{phang}
{opt xb} 计算每个非控制处理水平或在 {opt tlevel()} 中指定的处理水平的倾向得分的线性预测。如果您指定了 {opt tlevel()} 选项，则需要仅指定一个新变量；否则，您必须为每个处理水平指定一个新变量（控制水平除外）。

{phang}
{opt lnsigma} 计算潜在方差的对数平方根。此选项仅在使用处理模型 {cmd:hetprobit()} 时有效。仅指定一个新变量。

{phang}
{opt tlevel(treat_level)} 指定预测的处理水平。

{phang}
{opt scores} 计算得分变量。为处理均值和平均处理效应方程计算参数级得分。为倾向得分方程计算方程级得分。   

{pmore}
如果 j <= t 的话，第 j 个新变量将包含系数表中第 j 参数的得分，其中 t 是处理水平的数量。否则，它将包含系数表中前 t 个参数后的拟合方程 j-t 的得分。


{marker options_predict_match}{...}
{title:nnmatch 和 psmatch 之后的预测选项}

{dlgtab:主}

{phang}
{opt te}，默认值，计算处理效应。

{phang}
{opt po} 计算每个观察值和处理水平的潜在结果或在 {opt tlevel()} 中指定的处理水平。如果您指定了 {opt tlevel()} 选项，则需要仅指定一个新变量；否则，您必须为控制组和处理组指定新变量。

{phang}
{opt distance} 计算每个观察值的最近邻距离。生成的变量数量等于最近邻匹配的最大数量。这等于通过估计选项 {opt generate(stub)} 生成的索引变量数。您可以使用 {it:stub}{cmd:*} 语法设置距离变量前缀：{it:stub}{cmd:1}、{it:stub}{cmd:2}、....

{phang}
{opt ps} 计算每个处理水平或在 {opt tlevel()} 中指定的处理水平的倾向得分。如果您指定了 {opt tlevel()} 选项，则需要仅指定一个新变量；否则，您必须为控制组和处理组指定新变量。

{phang}
{opt lnsigma} 计算潜在方差的对数平方根。此选项仅在使用处理模型 {cmd:hetprobit()} 时有效。仅指定一个新变量。

{phang}
{opt tlevel(treat_level)} 将潜在结果估计限制为处理组或对照组。此选项只能与选项 {cmd:po} 和 {cmd:ps} 一起指定。


{marker options_predict_ra}{...}
{title:ra 之后的预测选项}

{dlgtab:主}

{phang}
{opt te}，默认值，计算每个非控制处理水平或在 {opt tlevel()} 中指定的处理水平的处理效应。如果您指定了 {opt tlevel()} 选项，则需要仅指定一个新变量；否则，您必须为每个处理水平（控制水平除外）指定一个新变量。

{phang}
{opt cmean} 计算每个处理水平或在 {opt tlevel()} 中指定的处理水平的条件均值。如果您指定了 {opt tlevel()} 选项，则需要仅指定一个新变量；否则，您必须为每个处理水平指定一个新变量。 

{phang}
{opt xb} 计算每个处理水平或在 {opt tlevel()} 中指定的处理水平的线性预测。如果您指定了 {opt tlevel()} 选项，则需要仅指定一个新变量；否则，您必须为每个处理水平指定一个新变量。 

{phang}
{opt lnsigma} 计算每个处理水平或在 {opt tlevel()} 中指定的处理水平的条件潜在方差的对数平方根。此选项在使用结果模型 {cmd:hetprobit()} 时有效。如果您指定了 {opt tlevel()} 选项，则需要仅指定一个新变量；否则，您必须为每个处理水平指定一个新变量。

{phang}
{opt tlevel(treat_level)} 指定预测的处理水平。

{phang}
{opt scores} 计算得分变量。为处理均值和平均处理效应方程计算参数级得分。为回归方程计算方程级得分。   

{pmore}
如果 j <= t 的话，第 j 个新变量将包含系数表中第 j 参数的得分，其中 t 是处理水平的数量。否则，它将包含系数表中前 t 个参数后的拟合方程 j-t 的得分。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse cattaneo2}{p_end}

{pstd}通过倾向得分匹配估计处理效应{p_end}
{phang2}{cmd:. teffects psmatch (bweight) (mbsmoke mmarried c.mage##c.mage}
          {cmd:fbaby medu, probit), generate(po)}{p_end}

{pstd}计算处理效应（默认）{p_end}
{phang2}{cmd:. predict treatment}{p_end}

{pstd}预测控制组的倾向得分{p_end}
{phang2}{cmd:. predict pscore, ps}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <teffects_postestimation.sthlp>}