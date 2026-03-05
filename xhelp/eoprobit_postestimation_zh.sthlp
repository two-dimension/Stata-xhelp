{smcl}
{* *! version 1.0.6  19jun2019}{...}
{viewerdialog "predict after eoprobit" "dialog eoprobit_p"}{...}
{viewerdialog "predict after xteoprobit" "dialog eoprobit_p"}{...}
{vieweralsosee "[ERM] eoprobit postestimation" "mansection ERM eoprobitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] eoprobit" "help eoprobit_zh"}{...}
{vieweralsosee "[ERM] eoprobit predict" "help eoprobit predict"}{...}
{vieweralsosee "[ERM] predict advanced" "help erm predict advanced"}{...}
{vieweralsosee "[ERM] predict treatment" "help erm predict treatment"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] eprobit postestimation" "help eprobit postestimation"}{...}
{viewerjumpto "Postestimation commands" "eoprobit postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "eoprobit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "eoprobit postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "eoprobit postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "eoprobit postestimation##examples"}
{help eoprobit_postestimation:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[ERM] eoprobit postestimation} {hline 2}}eoprobit 和 xteoprobit 的后估计工具{p_end}
{p2col:}({mansection ERM eoprobitpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在使用 {opt eoprobit} 和 {opt xteoprobit} 之后，以下后估计命令特别重要：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb erm estat teffects:estat teffects}}处理效应和潜在结果均值{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
在使用 {opt eoprobit} 和 {opt xteoprobit} 之后，可以使用以下标准后估计命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_contrast
包含 help post_estatic
包含 help post_estatsum
包含 help post_estatvce
{p2coldent:+ {help estat svy:{bf:estat} (svy)}}针对调查数据的后估计统计{p_end}
包含 help post_estimates
包含 help post_forecast_star
包含 help post_hausman_star
包含 help post_lincom
包含 help post_lrtest_star
{synopt:{helpb eoprobit_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含 help post_marginsplot
包含 help post_nlcom
{synopt :{helpb eoprobit postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
包含 help post_predictnl
包含 help post_pwcompare
{p2coldent:+ {bf:{help suest_zh}}}貌似无关的估计{p_end}
包含 help post_test
包含 help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。{p_end}
{p 4 6 2}
+ {cmd:suest} 和调查数据的 {cmd:estat} 命令在 {cmd:xteoprobit} 之后不可用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ERM eoprobitpostestimationRemarksandexamples:备注和示例}

        {mansection ERM eoprobitpostestimationMethodsandformulas:方法和公式}

{pstd}
以上章节未包含在本帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测}

{pstd}
在 {cmd:eoprobit} 和 {cmd:xteoprobit} 之后的预测在以下位置有描述

            {helpb eoprobit predict:[ERM] eoprobit predict}      eoprobit 和 xteoprobit 之后的预测
            {helpb erm predict treatment:[ERM] predict treatment}     针对处理统计的预测
            {helpb erm predict advanced:[ERM] predict advanced}      预测的高级功能

{pstd}
{helpb eoprobit predict:[ERM] eoprobit predict} 描述最常用的预测。如果您拟合了一个具有处理效应的模型，特定于这些模型的预测在 {helpb erm predict treatment:[ERM] predict treatment} 中详细列出。
{helpb erm predict advanced:[ERM] predict advanced} 描述不常用的预测，例如辅助方程中的结果预测。


包含 help syntax_margins

{synoptset 17 tabbed}{...}
{synopthdr :统计量}
{synoptline}
{syntab :主}
{synopt :{opt pr}}二元或有序 y 的概率；默认值{p_end}
{synopt :{opt m:ean}}均值{p_end}
{synopt :{opt pom:ean}}潜在结果均值{p_end}
{synopt :{opt te}}处理效应{p_end}
{synopt :{opt tet}}处理效应对已处理的影响{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt pr(a,b)}}连续 y 的 Pr({it:a} < y < {it:b}){p_end}
{synopt :{opt e(a,b)}}{it:E}(y {c |} {it:a} < y < {it:b}) 适用于连续 y{p_end}
{synopt :{opt ys:tar(a,b)}}{it:E}(y*), y* = max{c -(}{it:a},min(y,{it:b}){c )-} 适用于连续 y{p_end}
{synopt :{opt expm:ean}}计算 E{c -(}exp(y_i){c )-}{p_end}
{synoptline}
{p2colreset}{...}

包含 help notes_margins


包含 help menu_margins


{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 估算响应的边际，例如概率、均值、潜在结果均值、处理效应和线性预测。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}
{cmd:. webuse womenhlth}{p_end}
{phang2}
{cmd:. eoprobit health i.exercise grade, entreat(insured = grade i.workschool)}
{cmd:vce(robust)}

{pstd}
平均潜在结果均值{p_end}
{phang2}
{cmd:. estat teffects, pomean}

{pstd}
平均处理效应{p_end}
{phang2}
{cmd:. estat teffects}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <eoprobit_postestimation.sthlp>}