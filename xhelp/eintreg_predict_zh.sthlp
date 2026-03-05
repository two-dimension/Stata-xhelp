{smcl}
{* *! version 1.0.4  19jun2019}{...}
{viewerdialog "predict after eintreg" "dialog eintreg_p"}{...}
{viewerdialog "predict after xteintreg" "dialog eintreg_p"}{...}
{vieweralsosee "[ERM] eintreg predict" "mansection ERM eintregpredict"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] eintreg" "help eintreg_zh"}{...}
{vieweralsosee "[ERM] eintreg postestimation" "help eintreg postestimation"}{...}
{viewerjumpto "语法" "eintreg predict##syntax"}{...}
{viewerjumpto "描述" "eintreg predict##description"}{...}
{viewerjumpto "PDF文档链接" "eintreg_predict_zh##linkspdf"}{...}
{viewerjumpto "统计选项" "eintreg predict##opts_stat"}{...}
{viewerjumpto "结果计算方式选项" "eintreg predict##opts_how"}{...}
{viewerjumpto "示例" "eintreg predict##examples"}
{help eintreg_predict:English Version}
{hline}{...}
{p2colset 1 26 35 2}{...}
{p2col:{bf:[ERM] eintreg predict} {hline 2}}在eintreg和xteintreg之后进行预测{p_end}
{p2col:}({mansection ERM eintregpredict:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
您之前拟合的模型为 

            {cmd:eintreg yl yu x1} ...{cmd:,} ...

{pstd}
紧跟在{cmd:eintreg}命令之后指定的方程称为主要方程。它是

            {cmd:y}_i = beta_0 + beta_1{cmd:x1}_i + ... + e_i.{cmd:y}

{pstd}
其中 {cmd:yl}_i {ul:<} y_i {ul:<} {cmd:yu}_i。

{pstd}
或者您可能有面板数据，通过输入{cmd:xteintreg}拟合模型

            {cmd:xteintreg yl yu x1} ...{cmd:,} ...

{pstd}
那么主要方程将是

            {cmd:y}_{ij} = beta_0 + beta_1{cmd:x1}_{ij} + ... + u_i.{cmd:y} + v_{ij}.{cmd:y}

{pstd}
其中 {cmd:yl}_{ij} {ul:<} y_{ij} {ul:<} {cmd:yu}_{ij}。

{pstd}
在任何一种情况下，{cmd:predict}计算主要方程中{cmd:y}的预测值。模型中的其他方程称为辅助方程或复杂方程。我们的讨论将着眼于具有单一误差项的横截面案例，但在我们将随机效应和观察级别的误差项合并时，它也适用于面板数据情况，
e_{ij}.{cmd:y} = u_i.{cmd:y} + v_{ij}.{cmd:y}。

{pstd}
{cmd:predict}的语法为

{p 8 16 2}
{cmd:predict} {dtype} {newvar}
{ifin}
[{cmd:,} {it:stdstatistics} {it:howcalculated}]

{marker stdstatistics_options}{...}
{synoptset 25}{...}
{synopthdr:统计选项}
{synoptline}
{synopt :{opt m:ean}}线性预测；默认值{p_end}
{synopt :{opt xb}}线性预测，不包括所有复杂因素{p_end}
{synopt :{opt ys:tar(a,b)}}E(y*_j), y*_j = max{c -(}a, min(y_j, b){c )-}{p_end}
{synoptline}
{p 4 6 2}
{it:a} 和 {it:b} 是数值，缺失值 ({cmd:.})，或变量名。

{marker howcalculated_options}{...}
{synopthdr:结果计算方式选项}
{synoptline}
{synopt :default}未固定；基于数据的基础值{p_end}
{synopt :{opth fix:(eintreg_predict##endogvars:endogvars)}}固定指定的内生协变量{p_end}
{synopt :{opth base:(eintreg_predict##valspecs:valspecs)}}指定任何变量的基准值{p_end}
{synopt :{opth targ:et(eintreg_predict##valspecs:valspecs)}}更方便地指定 {opt fix()} 和 {opt base()}{p_end}
{synoptline}

{p 4 6 2}
注意： {cmd:fix()} 和 {cmd:base()} 选项只在主要方程中有内生变量的模型中影响结果。
{cmd:target()} 选项有时是指定 {cmd:fix()} 和 {cmd:base()} 选项的更方便方式。

{marker endogvars}{...}
{phang}
{it:endogvars} 是主要方程中一个或多个内生变量的名称。

{marker valspecs}{...}
{phang}
{it:valspecs} 指定预测要评估的变量值。每个 {it:valspec} 形式为

	  {it:varname} {cmd:=} {it:#}

	  {it:varname} {cmd:=} {cmd:(}{it:exp}{cmd:)}

	  {it:varname} {cmd:=} {it:othervarname}

{pmore}
例如，{opt base(valspecs)} 可以是 {cmd:base(w1=0)} 或 {cmd:base(w1=0 w2=1)}。

{pstd}
备注：

{phang2}
(1) {cmd:predict} 还可以计算治疗效应统计。
      请参见 {help erm_predict_treatment_zh:[ERM] predict treatment}。

{phang2}
(2) {cmd:predict} 还可以为其他方程做预测，除了这里讨论的主要方程预测。请参见 {help erm_predict_advanced_zh:[ERM] predict advanced}。


{marker description}{...}
{title:描述}

{pstd}
在本条目中，我们展示了在使用 {cmd:eintreg} 或 {cmd:xteintreg} 拟合模型后如何创建包含逐观察预测的新变量。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ERM eintregpredictRemarksandexamples:备注和示例}

        {mansection ERM eintregpredictMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker opts_stat}{...}
{title:统计选项}

{phang}
{opt mean}
指定计算线性预测。在每个观察中，线性预测是条件于协变量的因变量 y 的期望值。
结果取决于如何处理复杂因素，这由
{help eintreg_predict##howcalculated_options:{it:如何计算}} 选项确定。

{phang}
{cmd:xb} 指定计算线性预测，忽略所有复杂因素。该预测对应于在所有主要方程中协变量为外生的情况下所观察到的内容。

{phang}
{opt ystar(a,b)}
指定线性预测在 {it:a} 和 {it:b} 之间被截断。如果 {it:a} 为缺失值 ({cmd:.})，则 {cmd:a} 被视为 -infty。如果 {it:b} 为缺失值 ({cmd:.})，则 {it:b} 被视为 +infty。{it:a} 和 {it:b} 可以指定为数值、缺失值 ({cmd:.}) 或变量名。


{marker opts_how}{...}
{title:结果计算方式选项}

{pstd}
默认情况下，预测是考虑所有复杂因素计算的。这在
{mansection ERM eregresspredictRemarksandexamples:{it:备注和示例}}
中进行了讨论，参考 {bf:[ERM] eregress predict}。

{phang}
{cmd:fix(}{varname} ...{cmd:)} 指定从主要方程中视为外生的内生变量列表。这在 {manlink ERM Intro 3} 中进行了讨论，并在
{mansection ERM eregresspredictRemarksandexamples:{it:备注和示例}}
中进行了进一步讨论，参考 {bf:[ERM] eregress predict}。

{phang}
{cmd:base(}{varname} {cmd:=} ...{cmd:)} 指定来自任意方程的变量列表及其值。这些值将用于计算
e_i.{cmd:y}（或面板情况下的 e_{ij}.{cmd:y}）的期望值。其他方程的误差由于误差之间的相关性而溢出到主要方程中。相关性是在模型拟合时估计的。溢出的数量取决于这些相关性和误差的值。此问题在 {manlink ERM Intro 3} 中进行了讨论，并在
{mansection ERM eregresspredictRemarksandexamples:{it:备注和示例}}中进行了进一步讨论，参考 {bf:[ERM] eregress predict}。

{phang}
{cmd:target(}{varname} {cmd:=} ...{cmd:)} 有时是指定 {cmd:fix()} 和 {cmd:base()} 选项的更方便方式。您指定一个主要方程中的变量列表及其值。这些值将覆盖计算 beta_0 + beta_1{cmd:x1}_i + ... 中的变量值。使用 {cmd:target()} 的方式在
{mansection ERM eregresspredictRemarksandexamples:{it:备注和示例}}
中进行了讨论，参考 {bf:[ERM] eregress predict}。
{p_end}


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}
{cmd:. webuse class10}{p_end}
{phang2}
{cmd:. eintreg gpal gpau income, endogenous(hsgpa = income i.hscomp)}{p_end}
{phang2}
{cmd:. generate orig=hsgpa}{p_end}

{pstd}
预测大学GPA，考虑到{cmd:hsgpa}的内生性{p_end}
{phang2}
{cmd:. predict gpahat}{p_end}

{pstd}
预测大学GPA，将{cmd:hsgpa}视为外生{p_end}
{phang2}
{cmd:. predict gpafix, fix(hsgpa)}{p_end}

{pstd}
预测大学GPA，设置{cmd:hsgpa=2}并将其视为外生{p_end}
{phang2}
{cmd:. replace hsgpa=2}{p_end}
{phang2}
{cmd:. predict gpafix2, fix(hsgpa)}{p_end}

{pstd}
预测大学GPA，设置{cmd:hsgpa=2}并考虑影响{cmd:hscomp}以及导致{cmd:hsgpa}与大学GPA之间相关性的未观察特征{p_end}
{phang2}
{cmd:. predict gpa_base2, base(hsgpa=orig)}{p_end}

{pstd}
清理{p_end}
{phang2}
{cmd:. replace hsgpa=orig}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <eintreg_predict.sthlp>}