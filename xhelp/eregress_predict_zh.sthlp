{smcl}
{* *! version 1.0.4  19jun2019}{...}
{viewerdialog "predict after eregress" "dialog eregress_p"}{...}
{viewerdialog "predict after xteregress" "dialog eregress_p"}{...}
{vieweralsosee "[ERM] eregress predict" "mansection ERM eregresspredict"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] eregress" "help eregress_zh"}{...}
{vieweralsosee "[ERM] eregress postestimation" "help eregress postestimation"}{...}
{viewerjumpto "Syntax" "eregress predict##syntax"}{...}
{viewerjumpto "Description" "eregress predict##description"}{...}
{viewerjumpto "Links to PDF documentation" "eregress_predict_zh##linkspdf"}{...}
{viewerjumpto "Options for statistics" "eregress predict##opts_stat"}{...}
{viewerjumpto "Options for how results are calculated" "eregress predict##opts_how"}{...}
{viewerjumpto "Examples" "eregress predict##examples"}
{help eregress_predict:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[ERM] eregress predict} {hline 2}}在 eregress 和 xteregress 后进行预测{p_end}
{p2col:}({mansection ERM eregresspredict:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
您之前拟合的模型为

            {cmd:eregress y x1} ...{cmd:,} ...

{pstd}
紧接在 {cmd:eregress} 命令后的方程称为主方程。它是

            {cmd:y}_i = beta_0 + beta_1{cmd:x1}_i + ... + e_i.{cmd:y}

{pstd}
或者您可能有面板数据，并通过输入 {cmd:xteregress} 拟合模型：

            {cmd:xteregress y x1} ...{cmd:,} ...

{pstd}
那么主方程将是

{p 12 14 2}
     {cmd:y}_{ij} = beta_0 + beta_1 {cmd:x1}_{ij} +
             ... + u_i.{cmd:y} + v_{ij}.{cmd:y}

{pstd}
在这两种情况下，{cmd:predict} 会为主方程中的 {cmd:y} 计算预测。模型中的其他方程称为辅助方程或复杂方程。我们的讨论遵循单一误差项的横截面情况，但在我们合并随机效应和观察级别的误差项时，它也适用于面板数据情况，即 e_{ij}.{cmd:y} = u_i.{cmd:y} + v_{ij}.{cmd:y}。

{pstd}
{opt predict} 的语法是

{p 8 16 2}
{cmd:predict} {dtype} {newvar}
{ifin}
[{cmd:,} {it:stdstatistics} {it:howcalculated}]

{marker stdstatistics_options}
{synoptset 25}{...}
{synopthdr:stdstatistics}
{synoptline}
{synopt :{opt m:ean}}线性预测；默认选项{p_end}
{synopt :{opt xb}}排除所有复杂情况的线性预测{p_end}
{synoptline}

{marker howcalculated_options}{...}
{synopthdr:howcalculated}
{synoptline}
{synopt :default}不固定；基于数据的基本值{p_end}
{synopt :{opth fix:(eregress_predict##endogvars:endogvars)}}固定指定的内生协变量{p_end}
{synopt :{opth base:(eregress_predict##valspecs:valspecs)}}指定任何变量的基本值{p_end}
{synopt :{opth targ:et(eregress_predict##valspecs:valspecs)}}一种更方便地指定 {cmd:fix()} 和 {cmd:base()} 的方式{p_end}
{synoptline}

{p 4 6 2}
注意：{opt fix()} 和 {opt base()} 选项仅在主方程中包含内生变量的模型中影响结果。{opt target()} 选项有时是一种指定 {opt fix()} 和 {opt base()} 选项的更方便的方法。

{marker endogvars}{...}
{phang}
{it:endogvars} 是出现在主方程中的一个或多个内生变量的名称。

{marker valspecs}{...}
{phang}
{it:valspecs} 指定评估预测的变量值。每个 {it:valspec} 的形式为

	  {it:varname} {cmd:=} {it:#}

	  {it:varname} {cmd:=} {cmd:(}{it:exp}{cmd:)}

	  {it:varname} {cmd:=} {it:othervarname}

{pmore}
例如，{opt base(valspecs)} 可以是 {cmd:base(w1=0)} 或 {cmd:base(w1=0 w2=1)}。

{pstd}
注意：

{phang2}
(1) {opt predict} 还可以计算处理效应统计数据。
      见 {help erm_predict_treatment_zh:[ERM] predict treatment}。

{phang2}
(2) {opt predict} 还可以对其他方程进行预测，除了这里讨论的主方程预测。
      见 {help erm_predict_advanced_zh:[ERM] predict advanced}。


{marker description}{...}
{title:描述}

{pstd}
在本条目中，我们展示如何在拟合模型后创建包含逐个观察预测的新变量，使用 {cmd:eregress} 和 {cmd:xteregress}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ERM eregresspredictRemarksandexamples:备注和例子}

        {mansection ERM eregresspredictMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker opts_stat}{...}
{title:统计选项}

{phang}
{opt mean}
指定计算线性预测。在每个观察中，线性预测是条件于协变量的因变量的期望值。
结果依赖于如何处理复杂情况，这由
{help eregress_predict##howcalculated_options:{it:howcalculated}} 选项决定。

{phang}
{opt xb} 指定在忽略所有复杂情况的情况下计算线性预测。此预测对应于在数据中观察到的情况，即主方程中的所有协变量均为外生。

{marker opts_how}{...}
{title:结果如何计算的选项}

{pstd}
默认情况下，预测是考虑所有复杂情况进行计算的。这在
{mansection ERM eregresspredictRemarksandexamples:{it:备注和例子}}
的 {bf:[ERM] eregress predict} 中进行了讨论。

{phang}
{cmd:fix(}{varname} ...{cmd:)} 指定一组来自主方程的内生变量以外生变量的方式进行处理。
这在 {manlink ERM Intro 3} 中进行了讨论，并在
{mansection ERM eregresspredictRemarksandexamples:{it:备注和例子}}
的 {bf:[ERM] eregress predict} 中进一步讨论。

{phang}
{cmd:base(}{varname} {cmd:=} ...{cmd:)} 指定来自任何方程的变量列表及其值。这些值将在计算 e_i.{cmd:y}（或在面板情况下为 e_{ij}.{cmd:y}）的期望值时使用。
其他方程的误差由于误差间的相关性而流入主方程。估计模型时估计的相关性。溢出的程度依赖于这些相关性和误差的值。此问题在 {manlink ERM Intro 3} 中进行了讨论，并在
{mansection ERM eregresspredictRemarksandexamples:{it:备注和例子}}
的 {bf:[ERM] eregress predict} 中进一步讨论。

{phang}
{cmd:target(}{varname} {cmd:=} ...{cmd:)} 有时是更方便地指定 {opt fix()} 和 {opt base()} 选项的一种方式。您需要指定来自主方程的变量列表及其值。这些值将覆盖计算 beta_0 + beta_1{cmd:x1}_i + ... 中变量的值。使用 {opt target()} 在
{mansection ERM eregresspredictRemarksandexamples:{it:备注和例子}}
的 {bf:[ERM] eregress predict} 中进行了讨论。
{p_end}


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}
{cmd:. webuse class10}{p_end}
{phang2}
{cmd:. eregress gpa income, endogenous(hsgpa = income i.hscomp)}{p_end}
{phang2}
{cmd:. generate orig=hsgpa}{p_end}

{pstd}
预测大学 GPA，考虑到 {cmd:hsgpa} 的内生性{p_end}
{phang2}
{cmd:. predict gpahat}{p_end}

{pstd}
预测大学 GPA，将 {cmd:hsgpa} 视为外生{p_end}
{phang2}
{cmd:. predict gpafix, fix(hsgpa)}{p_end}

{pstd}
预测大学 GPA，设置 {cmd:hsgpa=2} 并将其视为外生{p_end}
{phang2}
{cmd:. replace hsgpa=2}{p_end}
{phang2}
{cmd:. predict gpafix2, fix(hsgpa)}{p_end}

{pstd}
预测大学 GPA，设置 {cmd:hsgpa=2} 并考虑 {cmd:hscomp} 以及导致 {cmd:hsgpa} 和 {cmd:gpa} 之间相关性的未观测特征{p_end}
{phang2}
{cmd:. predict gpa_base2, base(hsgpa=orig)}{p_end}

{pstd}
清理{p_end}
{phang2}
{cmd:. replace hsgpa=orig}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <eregress_predict.sthlp>}