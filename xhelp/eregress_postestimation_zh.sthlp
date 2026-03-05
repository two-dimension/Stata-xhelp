{smcl}
{* *! version 1.0.6  19jun2019}{...}
{viewerdialog "predict after eregress" "dialog eregress_p"}{...}
{viewerdialog "predict after xteregress" "dialog eregress_p"}{...}
{vieweralsosee "[ERM] eregress postestimation" "mansection ERM eregresspostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] eregress" "help eregress_zh"}{...}
{vieweralsosee "[ERM] eregress predict" "help eregress predict"}{...}
{vieweralsosee "[ERM] predict advanced" "help erm predict advanced"}{...}
{vieweralsosee "[ERM] predict treatment" "help erm predict treatment"}{...}
{vieweralsosee "[ERM] eprobit postestimation" "help eprobit postestimation"}{...}
{viewerjumpto "Postestimation commands" "eregress postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "eregress_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "eregress postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "eregress postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "eregress postestimation##examples"}
{help eregress_postestimation:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[ERM] eregress postestimation} {hline 2}}eregress 和 xteregress 的后估计工具{p_end}
{p2col:}({mansection ERM eregresspostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
下面的后估计命令在 {opt eregress} 和 {opt xteregress} 之后特别重要：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb erm estat teffects:estat teffects}}处理效应和潜在结果均值{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
在 {opt eregress} 和 {opt xteregress} 之后，还可以使用以下标准后估计命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_contrast
包含 help post_estatic
包含 help post_estatsum
包含 help post_estatvce
{p2coldent:+ {help estat svy:{bf:estat} (svy)}}用于调查数据的后估计统计{p_end}
包含 help post_estimates
包含 help post_forecast_star
包含 help post_hausman_star
包含 help post_lincom
包含 help post_lrtest_star
{synopt:{helpb eregress_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含 help post_marginsplot
包含 help post_nlcom
{synopt :{helpb eregress postestimation##predict:predict}}预测值、残差、影响统计和其他诊断措施{p_end}
包含 help post_predictnl
包含 help post_pwcompare
{p2coldent:+ {bf:{help suest_zh}}}看似无关的估计{p_end}
包含 help post_test
包含 help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。{p_end}
{p 4 6 2}
+ {cmd:suest} 和调查数据 {cmd:estat} 命令在 {cmd:xteregress} 之后不可用。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ERM eregresspostestimationRemarksandexamples:备注和示例}

        {mansection ERM eregresspostestimationMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在此帮助文件中。

{marker syntax_predict}{...}
{marker predict}{...}
{title:预测}

{pstd}
在 {cmd:eregress} 和 {cmd:xteregress} 之后的预测描述如下

            {helpb eregress predict:[ERM] eregress predict}      在 eregress 和 xteregress 之后的预测
            {helpb erm predict treatment:[ERM] predict treatment}     处理统计的预测
            {helpb erm predict advanced:[ERM] predict advanced}      预测的高级功能

{pstd}
{helpb eregress predict:[ERM] eregress predict} 描述了最常用的预测。如果您拟合了一个具有处理效应的模型，专门与这些模型相关的预测将在 {helpb erm predict treatment:[ERM] predict treatment} 中详细说明。{helpb erm predict advanced:[ERM] predict advanced} 描述了不常用的预测，例如辅助方程中结果的预测。

包含 help syntax_margins

{synoptset 17 tabbed}{...}
{synopthdr :统计量}
{synoptline}
{syntab :主}
{synopt :{opt m:ean}}均值；默认值{p_end}
{synopt :{opt pr}}二元或有序 y 的概率{p_end}
{synopt :{opt pom:ean}}潜在结果均值{p_end}
{synopt :{opt te}}处理效应{p_end}
{synopt :{opt tet}}对处理组的处理效应{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt pr(a,b)}}对于连续 y，Pr({it:a} < y < {it:b}){p_end}
{synopt :{opt e(a,b)}}{it:E}(y {c |} {it:a} < y < {it:b})对于连续 y{p_end}
{synopt :{opt ys:tar(a,b)}}{it:E}(y*), y* = max{c -(}{it:a},min(y,{it:b}){c )-}对于连续 y{p_end}
{synopt :{opt expm:ean}}计算 E{c -(}exp(y_i){c )-}{p_end}
{synoptline}
{p2colreset}{...}

包含 help notes_margins


包含 help menu_margins


{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 估计响应的边际值，包括均值、概率、潜在结果均值、处理效应和线性预测。

{marker examples}{...}
{title:示例}

    {hline}
{pstd}
设置{p_end}
{phang2}
{cmd:. webuse class10}{p_end}
{phang2}
{cmd:. eregress gpa income, endogenous(hsgpa = income i.hscomp)}{p_end}
{phang2}
{cmd:. generate str name = "Billy" in 537}

{pstd}
如果我们将 Billy 的 {cmd:hsgpa} 固定在 2.00 和 3.00 的预期大学 GPA{p_end}
{phang2}
{cmd:. margins if name=="Billy", at(hsgpa=(2 3)) predict(fix(hsgpa))}

{pstd}
如果我们将 Billy 的 {cmd:hsgpa} 固定在 2.00 和 3.00，并且考虑他的 {cmd:hsgpa}、{cmd:hscomp} 的值，以及导致 {cmd:hsgpa} 与大学 GPA 之间相关性的不可观测因素{p_end}
{phang2}
{cmd:. generate hsgpaT = hsgpa}{p_end}
{phang2}
{cmd:. margins if name=="Billy", at(hsgpa=(2 3)) predict(base(hsgpa=hsgpaT))}

    {hline}
{pstd}
设置{p_end}
{phang2}
{cmd:. webuse wageed, clear}{p_end}
{phang2}
{cmd:. eregress wage c.age##c.age tenure, extreat(college) vce(robust)}

{pstd}
对处理组的平均处理效应{p_end}
{phang2}
{cmd:. estat teffects, atet}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <eregress_postestimation.sthlp>}