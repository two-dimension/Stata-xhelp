{smcl}
{* *! version 1.0.5  19jun2019}{...}
{viewerdialog "predict after eprobit" "dialog eprobit_p"}{...}
{viewerdialog "predict after xteprobit" "dialog eprobit_p"}{...}
{vieweralsosee "[ERM] eprobit predict" "mansection ERM eprobitpredict"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] eprobit" "help eprobit_zh"}{...}
{vieweralsosee "[ERM] eprobit postestimation" "help eprobit postestimation"}{...}
{viewerjumpto "Syntax" "eprobit predict##syntax"}{...}
{viewerjumpto "Description" "eprobit predict##description"}{...}
{viewerjumpto "Links to PDF documentation" "eprobit_predict_zh##linkspdf"}{...}
{viewerjumpto "Options for statistics" "eprobit predict##opts_stat"}{...}
{viewerjumpto "Options for how results are calculated" "eprobit predict##opts_how"}{...}
{viewerjumpto "Examples" "eprobit predict##examples"}
{help eprobit_predict:English Version}
{hline}{...}
{p2colset 1 26 35 2}{...}
{p2col:{bf:[ERM] eprobit predict} {hline 2}}在 eprobit 和 xteprobit 之后进行预测{p_end}
{p2col:}({mansection ERM eprobitpredict:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
您之前拟合的模型是 

            {cmd:eprobit y x1} ...{cmd:,} ...

{pstd}
紧接在 {cmd:eprobit} 命令后的方程称为主方程。它是

            Pr(y_i) = Pr(beta_0 + beta_1{cmd:x1}_i + ... + e_i.{cmd:y} > 0)

{pstd}
或者您可能有面板数据，并通过输入 {cmd:xteprobit} 拟合了模型

            {cmd:xteprobit y x1} ...{cmd:,} ... 

{pstd}
那么主方程将是

{p 12 14 2}
            Pr(y_{ij}) = Pr(beta_0 + beta_1 {cmd:x1}_{ij}
                  + ... + u_i.{cmd:y} + v_{ij}.{cmd:y} > 0)

{pstd}
在两种情况下，{cmd:predict} 计算主方程中 Pr({cmd:y}) 的预测值。模型中的其他方程称为辅助方程或复杂方程。我们的讨论是基于跨截面案例，其中有单个误差项，但当我们将随机效应和观察级别的误差项合并时，它适用于面板数据情况，e_{ij}.{cmd:y} = u_i.{cmd:y} + v_{ij}.{cmd:y}。

{pstd}
{cmd:predict} 的语法为

{p 8 16 2}
{cmd:predict} {dtype} {newvar}
{ifin}
[{cmd:,} {it:stdstatistics} {it:howcalculated}]

{marker stdstatistics_options}{...}
{synoptset 25}{...}
{synopthdr:stdstatistics}
{synoptline}
{synopt :{opt pr}}正结果的概率; 默认设置{p_end}
{synopt :{opt xb}}不考虑所有复杂因素的线性预测{p_end}
{synoptline}

{marker howcalculated_options}{...}
{synopthdr:howcalculated}
{synoptline}
{synopt :default}不固定; 基于数据的基值{p_end}
{synopt :{opth fix:(eprobit_predict##endogvars:endogvars)}}固定指定的内生协变量{p_end}
{synopt :{opth base:(eprobit_predict##valspecs:valspecs)}}指定任意变量的基值{p_end}
{synopt :{opth targ:et(eprobit_predict##valspecs:valspecs)}}指定 {opt fix()} 和 {opt base()} 的更便捷方式{p_end}
{synoptline}

{p 4 6 2}
注意: {opt fix()} 和 {opt base()} 选项仅在主方程中包含内生变量的模型中影响结果。
{opt target()} 选项有时是一种更便捷的方式来指定 {opt fix()} 和 {opt base()} 选项。

{marker endogvars}{...}
{phang}
{it:endogvars} 是在主方程中出现的一个或多个内生变量的名称。

{marker valspecs}{...}
{phang}
{it:valspecs} 指定要评估预测值的变量值。每个 {it:valspec} 的形式为

	  {it:varname} {cmd:=} {it:#}

	  {it:varname} {cmd:=} {cmd:(}{it:exp}{cmd:)}

	  {it:varname} {cmd:=} {it:othervarname}

{pmore}
例如，{opt base(valspecs)} 可以是 {cmd:base(w1=0)} 或 {cmd:base(w1=0 w2=1)}。

{pstd}
注意事项:

{phang2}
(1) {opt predict} 还可以计算治疗效果统计量。
      请参阅 {help erm_predict_treatment_zh:[ERM] predict treatment}。

{phang2}
(2) {opt predict} 还可以对其他方程进行预测，除了主方程预测之外。
      请参阅 {help erm_predict_advanced_zh:[ERM] predict advanced}。


{marker description}{...}
{title:描述}

{pstd}
在此条目中，我们展示了如何在使用 {cmd:eprobit} 和 {cmd:xteprobit} 拟合模型后创建包含逐观测预测的新变量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ERM eprobitpredictRemarksandexamples:备注和示例}

        {mansection ERM eprobitpredictMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker opts_stat}{...}
{title:统计选项}

{phang}
{opt pr}
计算正结果的预测概率。在每个观测中，预测是基于协变量的条件概率。结果取决于复杂因素的处理方式，这由 {help eprobit_predict##howcalculated_options:{it:howcalculated}} 选项决定。

{phang}
{opt xb} 指定忽略所有复杂因素计算线性预测。


{marker opts_how}{...}
{title:结果计算方式的选项}

{pstd}
默认情况下，预测是考虑所有复杂因素进行计算的。这点在 {mansection ERM eregresspredictRemarksandexamples:{it:备注和示例}} 中进行了讨论
关于 {bf:[ERM] eregress predict}。

{phang}
{cmd:fix(}{varname} ...{cmd:)} 指定来自主方程的一组内生变量，处理为外生变量。这在 {manlink ERM Intro 3} 中被讨论，并在 {mansection ERM eregresspredictRemarksandexamples:{it:备注和示例}} 中进一步讨论
关于 {bf:[ERM] eregress predict}。

{phang}
{cmd:base(}{varname} {cmd:=} ...{cmd:)} 指定任何方程的变量及其值。如果 {opt eprobit} 和 {cmd:xteprobit} 拟合线性模型，我们会告诉您这些值将用于计算 e_i.{cmd:y}（或面板情况下的 e_{ij}.{cmd:y}）的期望值。这样的理解不会误导你，但在 {opt eprobit} 和 {cmd:xteprobit} 的情况下并不正式正确。线性或非线性，其他方程的误差因误差的相关性而溢出到主方程中。相关性是在拟合模型时估计的。溢出的量取决于这些相关性和误差的值。这个问题在 {manlink ERM Intro 3} 中讨论，并在 {mansection ERM eregresspredictRemarksandexamples:{it:备注和示例}} 中进一步讨论
关于 {bf:[ERM] eregress predict}。

{phang}
{cmd:target(}{varname} {cmd:=} ...{cmd:)} 有时是指定 {cmd:fix()} 和 {cmd:base()} 选项的更便捷方式。您指定一组来自主方程的变量及其值。这些值会覆盖用于计算 beta_0 + beta_1{cmd:x1}_i + .... 的变量值。使用 {cmd:target()} 的讨论详见
{mansection ERM eregresspredictRemarksandexamples:{it:备注和示例}}
关于 {bf:[ERM] eregress predict}。
{p_end}


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}
{cmd:. webuse class10}{p_end}
{phang2}
{cmd:. eprobit graduate income i.roommate, endogenous(hsgpa = income i.hscomp)}{p_end}
{phang2}
{cmd:. generate orig=hsgpa}{p_end}

{pstd}
预测毕业的概率，考虑 {cmd:hsgpa} 的内生性{p_end}
{phang2}
{cmd:. predict gpahat}{p_end}

{pstd}
预测毕业的概率，将 {cmd:hsgpa} 视为外生变量{p_end}
{phang2}
{cmd:. predict gpafix, fix(hsgpa)}{p_end}

{pstd}
预测毕业的概率，将 {cmd:hsgpa=2} 并将其视为外生变量{p_end}
{phang2}
{cmd:. replace hsgpa=2}{p_end}
{phang2}
{cmd:. predict gpafix2, fix(hsgpa)}{p_end}

{pstd}
预测毕业的概率，将 {cmd:hsgpa=2} 并考虑 {cmd:hscomp} 以及导致 {cmd:graduate} 和 {cmd:hsgpa} 之间相关的未观察特征{p_end}
{phang2}
{cmd:. predict gpa_base2, base(hsgpa=orig)}{p_end}

{pstd}
清理{p_end}
{phang2}
{cmd:. replace hsgpa=orig}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <eprobit_predict.sthlp>}