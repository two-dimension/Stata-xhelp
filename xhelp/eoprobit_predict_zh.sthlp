{smcl}
{* *! version 1.0.4  19jun2019}{...}
{viewerdialog "predict after eoprobit" "dialog eoprobit_p"}{...}
{viewerdialog "predict after xteoprobit" "dialog eoprobit_p"}{...}
{vieweralsosee "[ERM] eoprobit predict" "mansection ERM eoprobitpredict"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] eoprobit" "help eoprobit_zh"}{...}
{vieweralsosee "[ERM] eoprobit postestimation" "help eoprobit postestimation"}{...}
{viewerjumpto "语法" "eoprobit predict##syntax"}{...}
{viewerjumpto "描述" "eoprobit predict##description"}{...}
{viewerjumpto "PDF 文档链接" "eoprobit_predict_zh##linkspdf"}{...}
{viewerjumpto "统计选项" "eoprobit predict##opts_stat"}{...}
{viewerjumpto "结果计算方式选项" "eoprobit predict##opts_how"}{...}
{viewerjumpto "示例" "eoprobit predict##examples"}
{help eoprobit_predict:English Version}
{hline}{...}
{p2colset 1 27 35 2}{...}
{p2col:{bf:[ERM] eoprobit predict} {hline 2}}在 eoprobit 和 xteoprobit 后进行预测{p_end}
{p2col:}({mansection ERM eoprobitpredict:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
您之前拟合了模型 

            {cmd:eoprobit y x1} ...{cmd:,} ...

{pstd}
紧接在 {cmd:eoprobit} 命令后面指定的方程称为主方程。它是

            Pr(y_i=m) = Pr(c_{m-1} {ul:<} {bf:x}_i beta + e_i.{cmd:y} {ul:<} c_m)

{pstd}
或者您可能有面板数据，并通过输入

            {cmd:xteoprobit y x1} ...{cmd:,} ...

拟合了模型。

{pstd}
那么主方程将是

{p 12 14 2}
            Pr(y_{ij}=m) = Pr(c_{m-1} {ul:<} {bf:x}_{ij}beta + u_{i}.{cmd:y} + v_{ij}.{cmd:y} {ul:<} c_m)

{pstd}
在这两种情况下，请注意该方程为每个结果 m 生成概率，m = 1 到 M。 {cmd:predict} 计算主方程中概率的预测值。模型中的其他方程称为辅助方程或复杂方程。我们的讨论遵循具有单个误差项的横截面情况，但也适用于面板数据情况，当我们合并随机效应和观察级别的误差项，e_{ij}.{cmd:y} = u_i.{cmd:y} + v_{ij}.{cmd:y}。

{pstd}
{cmd:predict} 的语法是

{p 8 16 2}
{cmd:predict} {dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {help varlist_zh:{it:newvarlist}}{c )-} 
{ifin}
[{cmd:,} {it:stdstatistics} {it:howcalculated}]

{marker stdstatistics_options}{...}
{synoptset 25}{...}
{synopthdr:标准统计选项}
{synoptline}
{synopt :{opt pr}}每个结果的概率；默认值{p_end}
{synopt :{opt outlevel(#)}}仅计算 m = {it:#} 的概率{p_end}
{synopt :{opt xb}}线性预测，排除所有复杂因素{p_end}
{synoptline}

{marker howcalculated_options}{...}
{synopthdr:结果计算方式选项}
{synoptline}
{synopt :默认}不固定；从数据获取基础值{p_end}
{synopt :{opth fix:(eoprobit_predict##endogvars:endogvars)}}固定指定的内生协变量{p_end}
{synopt :{opth base:(eoprobit_predict##valspecs:valspecs)}}指定任何变量的基础值{p_end}
{synopt :{opth targ:et(eoprobit_predict##valspecs:valspecs)}}更方便的指定 {opt fix()} 和 {opt base()} 的方式{p_end}
{synoptline}

{p 4 6 2}
注意：{opt fix()} 和 {opt base()} 选项仅在主方程中具有内生变量的模型中影响结果。
{opt target()} 选项有时是一种更方便的方式来指定 {opt fix()} 和 {opt base()} 选项。

{marker endogvars}{...}
{phang}
{it:endogvars} 是一个或多个出现在主方程中的内生变量的名称。

{marker valspecs}{...}
{phang}
{it:valspecs} 指定要评估预测值的变量值。每个 {it:valspec} 的形式为

	  {it:varname} {cmd:=} {it:#}

	  {it:varname} {cmd:=} {cmd:(}{it:exp}{cmd:)}

	  {it:varname} {cmd:=} {it:othervarname}

{pmore}
例如， {opt base(valspecs)} 可以是 {cmd:base(w1=0)} 或 {cmd:base(w1=0 w2=1)}。

{pstd}
注意事项：

{phang2}
(1) {cmd:predict} 还可以计算处理效应统计。
      请参见 {help erm_predict_treatment_zh:[ERM] predict treatment}。

{phang2}
(2) {cmd:predict} 还可以为其他方程产生预测，除了这里讨论的主方程预测。请参见 {help erm_predict_advanced_zh:[ERM] predict advanced}。


{marker description}{...}
{title:描述}

{pstd}
在本条目中，我们展示如何在拟合模型后创建包含逐观察预测的新变量，使用 {cmd:eoprobit} 或 {cmd:xteoprobit}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ERM eoprobitpredictRemarksandexamples:备注和示例}

        {mansection ERM eoprobitpredictMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在此帮助文件中。


{marker opts_stat}{...}
{title:统计选项}

{phang}
{opt pr}
计算每个结果的预测概率。
在每个观察中，预测是基于协变量条件下的概率。结果依赖于
如何处理复杂因素，这由 {help eoprobit_predict##howcalculated_options:{it:howcalculated}} 选项来决定。

{phang}
{opt outlevel(#)}
 指定仅计算
结果 m = {it:#} 的概率，而不是计算 M 个概率。
如果您不指定此选项，y 记录三个结果。您输入 

{phang3}
{cmd:. predict p1 p2 p3}

{pmore}
 以获得每个结果的概率。如果您只想要第三个结果的概率，可以输入 

{phang3}
{cmd:. predict p3, outlevel(#3)}

{pmore}
 如果第三个结果对应于 {cmd:y==3}，您可以输入 

{phang3}
{cmd:. predict p3, outlevel(3)}

{pmore}
 如果第三个结果对应于 {cmd:y==57}，您可以输入 

{phang3}
{cmd:. predict p3, outlevel(57)}

{pmore}
 大多数用户将结果编号为 1、2 和 3。某些用户将其编号为 0、1 和 2。您甚至可以将其编号为 3、5 和 57。Stata 不在乎它们是如何编号的。

{phang}
{opt xb} 指定计算线性预测时忽略所有复杂因素。


{marker opts_how}{...}
{title:结果计算方式选项}

{pstd}
默认情况下，预测是考虑所有复杂因素计算的。这在
{mansection ERM eregresspredictRemarksandexamples:{it:备注和示例}}
中讨论了 {bf:[ERM] eregress predict}。

{phang}
{cmd:fix(}{varname} ...{cmd:)} 指定一组来自主方程的内生变量，处理时视为外生。这在 {manlink ERM Intro 3} 中讨论，并在 {mansection ERM eregresspredictRemarksandexamples:{it:备注和示例}}
中进一步讨论 {bf:[ERM] eregress predict}。

{phang}
{cmd:base(}{varname} {cmd:=} ...{cmd:)} 指定来自任何方程的变量和其值。如果 {opt eoprobit} 和 {cmd:xteoprobit} 正在拟合线性模型，我们会告诉您这些值将在计算 e_i.{cmd:y} 的期望值时使用（或在面板情况下使用 e_{ij}.{cmd:y}）。这种思维方式不会误导您，但在 {opt eoprobit} 和 {cmd:xteoprobit} 的情况下并不正式正确。无论线性或非线性，来自其他方程的误差会因误差之间的相关性而溢出到主方程中。当模型拟合时，这些相关性是被估计的。溢出的量取决于这些相关性和误差的值。这一问题在 {manlink ERM Intro 3} 中讨论，并在 {mansection ERM eregresspredictRemarksandexamples:{it:备注和示例}}
中进一步讨论 {bf:[ERM] eregress predict}。

{phang}
{cmd:target(}{varname} {cmd:=} ...{cmd:)} 有时是一种更方便的方式来指定 {cmd:fix()} 和 {cmd:base()} 选项。您指定一组来自主方程的变量和它们的值。这些值将覆盖用于计算 beta_0 + beta_1{cmd:x1}_i + ... 的变量值。使用 {opt target()} 的情况在 {mansection ERM eregresspredictRemarksandexamples:{it:备注和示例}}
中讨论 {bf:[ERM] eregress predict}。
{p_end}


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}
{cmd:. webuse womenhlth}{p_end}
{phang2}
{cmd:. eoprobit health i.exercise grade, endogenous(insured = grade i.workschool, probit)}{p_end}
{phang2}
{cmd:. generate orig=insured}{p_end}

{pstd}
预测在考虑 {cmd:insured} 的内生性后具有优秀健康状态的概率{p_end}
{phang2}
{cmd:. predict exhlth, outlevel(5)}{p_end}

{pstd}
预测具有优秀健康状态的概率，将 {cmd:insured} 视为外生{p_end}
{phang2}
{cmd:. predict exhlth_fix, outlevel(5) fix(insured)}{p_end}

{pstd}
预测具有优秀健康状态的概率，设置 {cmd:insured=1} 并将其视为外生{p_end}
{phang2}
{cmd:. replace insured=1}{p_end}
{phang2}
{cmd:. predict exhlth_fix1, outlevel(5) fix(insured)}{p_end}

{pstd}
预测具有优秀健康状态的概率，设置 {cmd:insured=1} 并考虑 {cmd:workschool}
和导致 {cmd:health} 与 {cmd:insured} 之间相关性的未观测特征{p_end}
{phang2}
{cmd:. predict exhlth_base1, outlevel(5) base(insured=orig)}{p_end}

{pstd}
清理{p_end}
{phang2}
{cmd:. replace insured=orig}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <eoprobit_predict.sthlp>}