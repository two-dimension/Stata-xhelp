{smcl}
{* *! version 1.0.5  19jun2019}{...}
{viewerdialog "predict after eprobit" "dialog eprobit_p"}{...}
{viewerdialog "predict after xteprobit" "dialog eprobit_p"}{...}
{vieweralsosee "[ERM] eprobit postestimation" "mansection ERM eprobitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] eprobit" "help eprobit_zh"}{...}
{vieweralsosee "[ERM] eprobit predict" "help eprobit predict"}{...}
{vieweralsosee "[ERM] predict advanced" "help erm predict advanced"}{...}
{vieweralsosee "[ERM] predict treatment" "help erm predict treatment"}{...}
{viewerjumpto "Postestimation commands" "eprobit postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "eprobit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "eprobit postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "eprobit postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "eprobit postestimation##examples"}
{help eprobit_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[ERM] eprobit postestimation} {hline 2}}eprobit 和 xteprobit 的后估计工具{p_end}
{p2col:}({mansection ERM eprobitpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {opt eprobit} 和 {opt xteprobit} 之后，以下后估计命令尤为重要：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb erm estat teffects:estat teffects}}处理效应和潜在结果均值{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
在 {opt eprobit} 和 {opt xteprobit} 之后，以下标准后估计命令可用：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 帮助 post_contrast
包含 帮助 post_estatic
包含 帮助 post_estatsum
包含 帮助 post_estatvce
{p2coldent:+ {help estat svy:{bf:estat} (svy)}}多阶段抽样数据的后估计统计{p_end}
包含 帮助 post_estimates
包含 帮助 post_forecast_star
包含 帮助 post_hausman_star
包含 帮助 post_lincom
包含 帮助 post_lrtest_star
{synopt:{helpb eprobit_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含 帮助 post_marginsplot
包含 帮助 post_nlcom
{synopt :{helpb eprobit postestimation##predict:predict}}预测、残差、影响统计和其他诊断指标{p_end}
包含 帮助 post_predictnl
包含 帮助 post_pwcompare
{p2coldent:+ {bf:{help suest_zh}}}表面无关估计{p_end}
包含 帮助 post_test
包含 帮助 post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。{p_end}
{p 4 6 2}
+ {cmd:suest} 和多阶段抽样数据 {cmd:estat} 命令在 {cmd:xteprobit} 后不可用。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection ERM eprobitpostestimationRemarksandexamples:注意事项和示例}

        {mansection ERM eprobitpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测}

{pstd}
在 {cmd:eprobit} 和 {cmd:xteprobit} 之后的预测如以下所述：

            {helpb eprobit predict:[ERM] eprobit predict}       在 eprobit 和 xteprobit 之后的预测
            {helpb erm predict treatment:[ERM] predict treatment}     治疗统计的预测
            {helpb erm predict advanced:[ERM] predict advanced}      预测的高级特性

{pstd}
{helpb eprobit predict:[ERM] eprobit predict} 描述了最常用的预测。如果你拟合了一个包含处理效应的模型，特定于这些模型的预测详述在 {helpb erm predict treatment:[ERM] predict treatment} 中。
{helpb erm predict advanced:[ERM] predict advanced} 描述了不常用的预测，例如辅助方程的结果预测。

包含 帮助 syntax_margins

{synoptset 17 tabbed}{...}
{synopthdr :统计量}
{synoptline}
{syntab :主}
{synopt :{opt pr}}二元或有序 y 的概率；默认值{p_end}
{synopt :{opt m:ean}}均值{p_end}
{synopt :{opt pom:ean}}潜在结果均值{p_end}
{synopt :{opt te}}处理效应{p_end}
{synopt :{opt tet}}对处理对象的处理效应{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt pr(a,b)}}Pr({it:a} < y < {it:b}) 对于连续 y{p_end}
{synopt :{opt e(a,b)}}{it:E}(y {c |} {it:a} < y < {it:b}) 对于连续 y{p_end}
{synopt :{opt ys:tar(a,b)}}{it:E}(y*), y* = max{c -(}{it:a},min(y,{it:b}){c )-} 对于连续 y{p_end}
{synopt :{opt expm:ean}}计算 E{c -(}exp(y_i){c )-}{p_end}
{synoptline}
{p2colreset}{...}

包含 帮助 notes_margins


包含 帮助 menu_margins


{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 估计概率、均值、潜在结果均值、处理效应和线性预测的响应边际。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}
{cmd:. webuse class10}{p_end}
{phang2}
{cmd:. eprobit graduate income i.roommate, endogenous(hsgpa = income i.hscomp)}
{cmd:entreat(program = i.campus i.scholar income) vce(robust)}

{pstd}
{cmd:program} 的平均处理效应{p_end}
{phang2}
{cmd:. estat teffects}

{pstd}
处理对象的 {cmd:program} 的平均处理效应{p_end}
{phang2}
{cmd:. estat teffects, atet}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <eprobit_postestimation.sthlp>}