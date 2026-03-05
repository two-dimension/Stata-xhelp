{smcl}
{* *! version 1.0.3  15mar2019}{...}
{viewerdialog predict "dialog predict"}{...}
{vieweralsosee "[ERM] predict treatment" "mansection ERM predicttreatment"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] eintreg postestimation" "help eintreg postestimation"}{...}
{vieweralsosee "[ERM] eintreg predict" "help eintreg predict"}{...}
{vieweralsosee "[ERM] eoprobit postestimation" "help eoprobit postestimation"}{...}
{vieweralsosee "[ERM] eoprobit predict" "help eoprobit predict"}{...}
{vieweralsosee "[ERM] eprobit postestimation" "help eprobit postestimation"}{...}
{vieweralsosee "[ERM] eprobit predict" "help eprobit predict"}{...}
{vieweralsosee "[ERM] eregress postestimation" "help eregress postestimation"}{...}
{vieweralsosee "[ERM] eregress predict" "help eregress predict"}{...}
{viewerjumpto "语法" "erm_predict_treatment_zh##syntax"}{...}
{viewerjumpto "描述" "erm_predict_treatment_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "erm_predict_treatment_zh##linkspdf"}{...}
{viewerjumpto "选项" "erm_predict_treatment_zh##options"}{...}
{viewerjumpto "示例" "erm_predict_treatment_zh##examples"}
{help erm_predict_treatment:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[ERM] predict treatment} {hline 2}}预测处理统计{p_end}
{p2col:}({mansection ERM predicttreatment:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
您之前使用 {cmd:entreat()} 或 
{cmd:extreat()} 选项拟合模型， 

        {cmd:eregress     y    x1} ...{cmd:,} ... {cmd:entreat(treated =} ...) ...
        {cmd:eintreg    yl yu  x1} ...{cmd:,} ... {cmd:entreat(treated =} ...) ...
        {cmd:eprobit      y    x1} ...{cmd:,} ... {cmd:entreat(treated =} ...) ...
        {cmd:eoprobit     y    x1} ...{cmd:,} ... {cmd:entreat(treated =} ...) ...
        {cmd:xteregress   y    x1} ...{cmd:,} ... {cmd:entreat(treated =} ...) ...
        {cmd:xteintreg  yl yu  x1} ...{cmd:,} ... {cmd:entreat(treated =} ...) ...
        {cmd:xteprobit    y    x1} ...{cmd:,} ... {cmd:entreat(treated =} ...) ...
        {cmd:xteoprobit   y    x1} ...{cmd:,} ... {cmd:entreat(treated =} ...) ...

        {cmd:eregress     y    x1} ...{cmd:,} ... {cmd:extreat(treated)} ...
        {cmd:eintreg    yl yu  x1} ...{cmd:,} ... {cmd:extreat(treated)} ...
        {cmd:eprobit      y    x1} ...{cmd:,} ... {cmd:extreat(treated)} ...
        {cmd:eoprobit     y    x1} ...{cmd:,} ... {cmd:extreat(treated)} ...
        {cmd:xteregress   y    x1} ...{cmd:,} ... {cmd:extreat(treated)} ...
        {cmd:xteintreg  yl yu  x1} ...{cmd:,} ... {cmd:extreat(treated)} ...
        {cmd:xteprobit    y    x1} ...{cmd:,} ... {cmd:extreat(treated)} ...
        {cmd:xteoprobit   y    x1} ...{cmd:,} ... {cmd:extreat(treated)} ...

{pstd}
在这些情况下，{cmd:predict} 有额外功能。 {cmd:predict} 的
额外语法为 

{p 8 16 2}
{cmd:predict} {dtype} {newvar}
{ifin}{cmd:,}
{helpb erm_predict_treatment##treatstatistic:{it:treatstatistic}}
[{help erm_predict_treatment##treatmodifier:{it:treatmodifier}}
{help erm_predict_treatment##oprobitmodifier:{it:oprobitmodifier}}]

{pstd}
在某些情况下，需要指定多个新变量：

{p 8 16 2}
{cmd:predict} {dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {help varlist_zh:{it:newvarlist}}{c )-}
{ifin}{cmd:,}
{helpb erm_predict_treatment##treatstatistic:{it:treatstatistic}}
[{help erm_predict_treatment##treatmodifier:{it:treatmodifier}}
{help erm_predict_treatment##oprobitmodifier:{it:oprobitmodifier}}]

{marker treatstatistic}{...}
{synoptset 20}{...}
{synopthdr:treatstatistic}
{synoptline}
{synopt :{opt pom:ean}}潜在结果均值 (POM){p_end}
{synopt :{opt te}}处理效应 (TE){p_end}
{synopt :{opt tet}}对接受处理者的处理效应 (TET){p_end}
{synoptline}

{marker treatmodifier}{...}
{synopthdr:treatmodifier}
{synoptline}
{synopt :{opt tl:evel(#)}}计算的处理水平{help erm_predict_treatment##treatstatistic:{it:treatstatistic}}{p_end}
{synoptline}

{p 4 6 2}
{it:#} 可以指定为变量 {cmd:treated} 中记录的值，如 1, 2, ... 或如 1, 5, ...，取决于记录的值。

{p 4 6 2}
{it:#} 也可以指定为 {cmd:#1}, {cmd:#2}, ...，意味着 {cmd:treated} 中记录的第一个、第二个... 值。

{marker oprobitmodifier}{...}
{synopthdr:oprobitmodifier}
{synoptline}
{synopt :{opt outl:evel(#)}}计算的有序结果 {help erm_predict_treatment##treatstatistic:{it:treatstatistic}}{p_end}
{synoptline}

{p 4 6 2}
当用于与 {cmd:eoprobit} 或 {cmd:xteoprobit} 拟合的模型时，{it:treatstatistic} 为指定的结果计算，或如果不另行指定则为第一个结果。

{p 4 6 2}
{opt outlevel(#)} 指定要计算的结果。 {it:#} 的指定方式与 {opt tlevel()} 相同，但含义不同。在 {opt outlevel()} 的情况下，您在指定结果，而不是处理水平。


{marker description}{...}
{title:描述}

{pstd}
{cmd:predict} 可以预测潜在结果均值、处理效应和对接受处理者的处理效应，前提是模型使用 {cmd:entreat()} 或 {cmd:extreat()} 选项进行拟合。下面描述了 {cmd:predict} 的选项。

{pstd}
有关 {cmd:predict} 的标准用法，请参见

            {manhelp eregress_predict ERM:eregress predict}
            {manhelp eintreg_predict ERM:eintreg predict}
            {manhelp eprobit_predict ERM:eprobit predict}
            {manhelp eoprobit_predict ERM:eoprobit predict}

{pstd}
有关 {cmd:predict} 的高级用法，请参见

            {manhelp erm_predict_advanced ERM:predict advanced}

{pstd}
另请参见 {manhelp erm_estat_teffects ERM:estat teffects} 以获取关于平均处理统计的报告。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ERM predicttreatmentRemarksandexamples:备注和示例}

        {mansection ERM predicttreatmentMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{pstd}
要计算的统计选项 -- {cmd:pomean}、{cmd:te} 和 {cmd:tet} -- 是互斥的。您每次 {cmd:predict} 命令只计算一个处理统计。

{phang}
{opt pomean} 为每个处理水平计算 POM。 POM 是在所有人被分配到每个处理水平时将观察到的 {cmd:y} 的期望值。

{pmore}
如果有两个处理水平（一个对照和一个处理），您将输入

{phang3}
{cmd:. predict pom1 pom2, pomean}

{pmore}
如果有三个水平，您将输入 

{phang3}
{cmd:. predict pom1 pom2 pom3, pomean}

{pmore}
{cmd:pomean} 也可以与 {cmd:tlevel()} 一起使用以产生个体 POM：

{phang3}
{cmd:. predict pom1, pomean tlevel(#1)}{p_end}
{phang3}
{cmd:. predict pom2, pomean tlevel(#2)}

{pmore}
如果您使用 {cmd:eoprobit} 或 {cmd:xteoprobit} 拟合模型，上述示例中计算的 POM 将针对 {cmd:y} 的第一个结果。您可以更改该内容。请参见
{mansection ERM predicttreatmentRemarksandexamplesPredictingtreatmenteffectsaftereoprobitandxteoprobit:{it:在 eoprobit 和 xteoprobit 后预测处理效应}}
在 {bf:[ERM] predict treatment} 中。

{phang}
{cmd:te}
计算每个处理水平的 TE。 TE 是 POM 之间的差异。例如，如果有两个处理水平 -- 一个对照和一个处理 -- 则只有一个处理效应，且为 {cmd:pom2-pom1}。如果有三个水平，则有两个处理效应，{cmd:pom2-pom1} 和 {cmd:pom3-pom1}。

{pmore}
如果有两个处理水平 -- 一个对照和一个处理 -- 您将输入

{phang3}
{cmd:. predict te2, te}

{pmore}
如果有三个水平，您将输入 

{phang3}
{cmd:. predict te2 te3, te}

{pmore}
{opt te} 也可以与 {cmd:tlevel()} 一起使用以产生个体 TE：

{phang3}
{cmd:. predict te2, te tlevel(#2)}{p_end}
{phang3}
{cmd:. predict te3, te tlevel(#3)}

{pmore}
如果您使用 {cmd:eoprobit} 或 {cmd:xteoprobit} 拟合模型，上述示例中计算的 TE 将针对 {cmd:y} 的第一个结果。您可以更改该内容。请参见
{mansection ERM predicttreatmentRemarksandexamplesPredictingtreatmenteffectsaftereoprobitandxteoprobit:{it:在 eoprobit 和 xteoprobit 后预测处理效应}}
在 {bf:[ERM] predict treatment} 中。

{phang}
{opt tet} 计算 TET。 TET 是基于处理水平条件下 POM 之间的差异。

{pmore}
如果有两个处理水平 -- 一个对照和一个处理 -- 您将输入

{phang3}
{cmd:. predict tet2, tet}

{pmore}
如果有三个水平，您将输入

{phang3}
{cmd:. predict tet2 tet3, tet}

{pmore}
{opt tet} 也可以与 {opt tlevel()} 一起使用以产生个体 TET：

{phang3}
{cmd:. predict tet2, tet tlevel(#2)}{p_end}
{phang3}
{cmd:. predict tet3, tet tlevel(#3)}

{pmore}
如果您使用 {cmd:eoprobit} 或 {cmd:xteoprobit} 拟合模型，上述示例中计算的 TET 将针对 {cmd:y} 的第一个结果。您可以更改该内容。请参见 
{mansection ERM predicttreatmentRemarksandexamplesPredictingtreatmenteffectsaftereoprobitandxteoprobit:{it:在 eoprobit 和 xteoprobit 后预测处理效应}}
在 {bf:[ERM] predict treatment} 中。

{phang}
{opt tlevel(#)} 
可选用于 {cmd:pomean}、{cmd:te} 或 {cmd:tet}。其用法如上所示。

{phang}
{opt outlevel(#)} 
可选用于 {cmd:pomean}、{cmd:te} 或 {cmd:tet}，与使用 {cmd:eoprobit} 和 {cmd:xteoprobit} 拟合的模型一起使用。请参见
{mansection ERM predicttreatmentRemarksandexamplesPredictingtreatmenteffectsaftereoprobitandxteoprobit:{it:在 eoprobit 和 xteoprobit 后预测处理效应}}
在 {bf:[ERM] predict treatment}。
{p_end}


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}
{cmd:. webuse wellness}{p_end}
{phang2}
{cmd:. eprobit lost4 age i.sex, endogenous(weight = i.sex gym) entreat(wellpgm = age i.smoke, nointeract) select(completed = i.wellpgm experience i.salaried) vce(robust)}

{pstd}
为每个观察值预测处理效应{p_end}
{phang2}
{cmd:. predict te, te}{p_end}

{pstd}
估计每个处理水平的潜在结果均值{p_end}
{phang2}
{cmd:. predict pom1 pom2, pomean}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <erm_predict_treatment.sthlp>}