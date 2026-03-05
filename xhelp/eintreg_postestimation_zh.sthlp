{smcl}
{* *! version 1.0.7  19jun2019}{...}
{viewerdialog "predict after eintreg" "dialog eintreg_p"}{...}
{viewerdialog "predict after xteintreg" "dialog eintreg_p"}{...}
{vieweralsosee "[ERM] eintreg postestimation" "mansection ERM eintregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] eintreg" "help eintreg_zh"}{...}
{vieweralsosee "[ERM] eintreg predict" "help eintreg predict"}{...}
{vieweralsosee "[ERM] predict advanced" "help erm predict advanced"}{...}
{vieweralsosee "[ERM] predict treatment" "help erm predict treatment"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] eprobit postestimation" "help eprobit postestimation"}{...}
{viewerjumpto "Postestimation commands" "eintreg postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "eintreg_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "eintreg postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "eintreg postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "eintreg postestimation##examples"}
{help eintreg_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[ERM] eintreg postestimation} {hline 2}}eintreg 和 xteintreg 的后估计工具{p_end}
{p2col:}({mansection ERM eintregpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {opt eintreg} 和 {opt xteintreg} 之后，有以下后估计命令特别重要：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb erm estat teffects:estat teffects}}处理效应和潜在结果均值{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
在 {opt eintreg} 和 {opt xteintreg} 之后，可用以下标准后估计命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含帮助 post_contrast
包含帮助 post_estatic
包含帮助 post_estatsum
包含帮助 post_estatvce
{p2coldent:+ {help estat svy:{bf:estat} (svy)}}调查数据的后估计统计{p_end}
包含帮助 post_estimates
包含帮助 post_forecast_star
包含帮助 post_hausman_star
包含帮助 post_lincom
包含帮助 post_lrtest_star
{synopt:{helpb eintreg_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含帮助 post_marginsplot
包含帮助 post_nlcom
{synopt :{helpb eintreg postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
包含帮助 post_predictnl
包含帮助 post_pwcompare
{p2coldent:+ {bf:{help suest_zh}}}貌似无关估计{p_end}
包含帮助 post_test
包含帮助 post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。{p_end}
{p 4 6 2}
+ {cmd:suest} 和调查数据的 {cmd:estat} 命令在 {cmd:xteintreg} 之后不可用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ERM eintregpostestimationRemarksandexamples:备注和示例}

        {mansection ERM eintregpostestimationMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测}

{pstd}
{cmd:eintreg} 和 {cmd:xteintreg} 之后的预测如下所述：

            {helpb eintreg predict:[ERM] eintreg predict}       eintreg 和 xteintreg 之后的预测
            {helpb erm predict treatment:[ERM] predict treatment}     处理统计的预测
            {helpb erm predict advanced:[ERM] predict advanced}      预测的高级功能

{pstd}
{helpb eintreg predict:[ERM] eintreg predict} 描述了最常用的预测。如果你拟合了处理效应模型，与这些模型相关的预测在 {helpb erm predict treatment:[ERM] predict treatment} 中详细说明。{helpb erm predict advanced:[ERM] predict advanced} 描述不太常用的预测，例如辅助方程中结果的预测。

包含帮助 syntax_margins

{synoptset 17 tabbed}{...}
{synopthdr :统计量}
{synoptline}
{syntab :主要}
{synopt :{opt m:ean}}均值；默认为该值{p_end}
{synopt :{opt pr}}二元或序数 y 的概率{p_end}
{synopt :{opt pom:ean}}潜在结果均值{p_end}
{synopt :{opt te}}处理效应{p_end}
{synopt :{opt tet}}对处理的大L处理效应{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt pr(a,b)}}连续 y 的 Pr({it:a} < y < {it:b}){p_end}
{synopt :{opt e(a,b)}}{it:E}(y {c |} {it:a} < y < {it:b}) 适用于连续 y{p_end}
{synopt :{opt ys:tar(a,b)}}{it:E}(y*), y* = max{c -(}{it:a},min(y,{it:b}){c )-}适用于连续 y{p_end}
{synopt :{opt expm:ean}}计算 E{c -(}exp(y_i){c )-}{p_end}
{synoptline}
{p2colreset}{...}

包含帮助 notes_margins

包含帮助 menu_margins


{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 估计响应的边际均值、概率、潜在结果均值、处理效应和线性预测。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}
{cmd:. webuse class10}{p_end}
{phang2}
{cmd:. eintreg gpal gpau income, endogenous(hsgpa = income i.hscomp)}{p_end}
{phang2}
{cmd:. generate str name = "Billy" in 537}

{pstd}
如果我们将比利的 {cmd:hsgpa} 固定在 2.00 和 3.00，仅考虑他的 {cmd:income} 值，那么大学 GPA 的预期值{p_end}
{phang2}
{cmd:. margins if name=="Billy", at(hsgpa=(2 3)) predict(fix(hsgpa))}

{pstd}
如果我们将比利的 {cmd:hsgpa} 固定在 2.00 和 3.00，并且还考虑他的 {cmd:hsgpa}、{cmd:hscomp} 和导致 {cmd:hsgpa} 与大学 GPA 之间相关性的不可观察因素，那么大学 GPA 的预期值{p_end}
{phang2}
{cmd:. generate hsgpaT = hsgpa}{p_end}
{phang2}
{cmd:. margins if name=="Billy", at(hsgpa=(2 3)) predict(base(hsgpa=hsgpaT))}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <eintreg_postestimation.sthlp>}