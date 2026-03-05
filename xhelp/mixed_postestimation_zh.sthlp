{smcl}
{* *! version 1.3.5  28aug2018}{...}
{viewerdialog predict "dialog mixed_p"}{...}
{viewerdialog estat "dialog mixed_estat"}{...}
{vieweralsosee "[ME] mixed postestimation" "mansection ME mixedpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] mixed" "help mixed_zh"}{...}
{viewerjumpto "Postestimation commands" "mixed postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "mixed_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "mixed postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "mixed postestimation##syntax_margins"}{...}
{viewerjumpto "test" "mixed postestimation##syntax_test"}{...}
{viewerjumpto "lincom" "mixed postestimation##syntax_lincom"}{...}
{viewerjumpto "contrast" "mixed postestimation##syntax_contrast"}{...}
{viewerjumpto "pwcompare" "mixed postestimation##syntax_pwcompare"}{...}
{viewerjumpto "Examples" "mixed postestimation##examples"}{...}
{viewerjumpto "Stored results" "mixed postestimation##results"}{...}
{viewerjumpto "Reference" "mixed postestimation##reference"}
{help mixed_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[ME] mixed postestimation} {hline 2}}混合模型的事后估计工具{p_end}
{p2col:}({mansection ME mixedpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:事后估计命令}

{pstd}
以下的事后估计命令在 {cmd:mixed} 之后特别重要：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb estat df}}计算并显示固定效应的自由度{p_end}
{synopt :{helpb estat group}}总结嵌套组的组成{p_end}
{synopt :{helpb estat icc}}估计类内相关{p_end}
{synopt :{helpb estat recovariance}}显示估计的随机效应协方差矩阵{p_end}
{synopt :{helpb me estat sd:estat sd}}将方差成分显示为标准差和相关性{p_end}
{synopt :{helpb me estat wcorrelation:estat wcorrelation}}显示组内相关性和标准差{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准事后估计命令也可用：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb mixed_postestimation##contrast:contrast}}对估计的对比和ANOVA风格的联合检验{p_end}
包含帮助 post_estatic
包含帮助 post_estatsum
包含帮助 post_estatvce
包含帮助 post_estimates
包含帮助 post_hausman
{synopt :{helpb mixed_postestimation##lincom:lincom}}线性组合系数的点估计、标准误差、检验和推断{p_end}
包含帮助 post_lrtest
{synopt:{helpb mixed_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含帮助 post_marginsplot
包含帮助 post_nlcom
{synopt :{helpb mixed postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
包含帮助 post_predictnl
{synopt:{helpb mixed postestimation##pwcompare:pwcompare}}估计的成对比较{p_end}
{synopt :{helpb mixed postestimation##test:test}}简单和复合线性假设的Wald检验{p_end}
包含帮助 post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ME mixedpostestimationRemarksandexamples:备注和示例}

        {mansection ME mixedpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 4 4 2}
获取随机效应的BLUP和BLUP的标准误差的语法

{p 8 16 2}
{cmd:predict} {dtype}
{{it:{help newvarlist##stub*:stub}}{cmd:*} | {newvar:list}}
{ifin}
{cmd:,}
{opt ref:fects}
[{cmd:reses(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {help varlist_zh:{it:newvarlist}}{cmd:)}
{opt relev:el(levelvar)}]


{p 4 4 2}
在最大似然估计后获取分数的语法

{p 8 16 2}
{cmd:predict} {dtype}
{{it:{help newvarlist##stub*:stub}}{cmd:*} | {newvar:list}}
{ifin} {cmd:,} {cmdab:sc:ores}


{p 4 4 2}
获取其他预测的语法

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} 
[{cmd:,} {it:statistic} {opt relev:el(levelvar)}]


{synoptset 18 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主}
{synopt :{cmd:xb}}仅针对模型的固定部分的线性预测；默认值{p_end}
{synopt :{cmd:stdp}}固定部分线性预测的标准误差{p_end}
{synopt :{opt fit:ted}}拟合值，固定部分线性预测加上基于预测随机效应的贡献{p_end}
{synopt :{opt res:iduals}}残差，响应减去拟合值{p_end}
{p2coldent :* {opt rsta:ndard}}标准化的残差{p_end}
{synoptline}
{p2colreset}{...}
包含帮助 unstarred


包含帮助 menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测值，如线性预测、标准误差、拟合值、残差和标准化残差。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{opt xb}，默认情况下，基于模型中估计的固定效应（系数）计算线性预测 xb。这相当于在模型中将所有随机效应固定为其理论均值0。

{phang}
{opt stdp} 计算线性预测 xb 的标准误差。

{marker reffects}{...}
{phang}
{opt reffects} 计算随机效应的最佳线性无偏预测（BLUP）。默认情况下，计算模型中所有随机效应的BLUP。然而，如果指定了 {opt relevel(levelvar)} 选项，则仅计算模型中级别 {it:levelvar} 的BLUP。例如，如果 {cmd:class} 嵌套在 {cmd:school} 中，则输入

{p 12 16 2}{cmd:. predict b*, reffects relevel(school)}{p_end}

{pmore}
将生成学校级别的BLUP。您必须指定 q 个新变量，其中 q 是模型（或级别）中的随机效应项的数量。然而，更简单的方法是直接指定 {it:stub}{cmd:*}，让 Stata 将变量命名为 {it:stub}{cmd:1}、{it:stub}{cmd:2}、...、{it:stub}q。

{pmore}
{help mixed_postestimation##MLMUS:Rabe-Hesketh 和 Skrondal (2012, sec. 2.11.2)} 讨论经验贝叶斯预测与BLUP的联系，以及这些预测如何是无偏的。当与随机效应相关的组在重复样本中期望变动时，它们是无偏的。如果您期望这些组在重复样本中是固定的，那么这些预测就不再是无偏的。

{phang}
{cmd:reses(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {help varlist_zh:{it:newvarlist}}{cmd:)} 计算随机效应的BLUP的标准误差。默认情况下，计算模型中所有BLUP的标准误差。然而，如果指定了 {opt relevel(levelvar)} 选项，则仅计算模型中级别 {it:levelvar} 的标准误差；请参见 {helpb mixed postestimation##reffects:reffects} 选项。

{pmore}
您必须指定 q 个新变量，其中 q 是模型（或级别）中的随机效应项的数量。然而，更简单的方法是直接指定 {it:stub}{cmd:*}，让 Stata 将变量命名为 {it:stub}{cmd:1}、{it:stub}{cmd:2}、...、{it:stub}q。新变量将与相应随机效应变量具有相同的存储类型。

{pmore}
{cmd:reffects} 和 {cmd:reses()} 选项通常会一次生成多个新变量。当发生这种情况时，生成变量中包含的随机效应（或标准误差）对应于 {cmd:mixed} 输出中列出的方差成分的顺序。尽管如此，检查生成变量的变量标签（例如使用 {cmd:describe} 命令）在解读哪些变量对应于模型中的哪些项时仍然是有用的。

{phang}
{opt fitted} 计算拟合值，等于固定部分线性预测加上基于预测随机效应的贡献，或在混合模型标记中，即 xb + Zu。默认情况下，拟合值考虑模型中所有级别的随机效应，但是，如果指定了 {opt relevel(levelvar)} 选项，则拟合值从最顶层级别开始，一直到包括级别 {it:levelvar}。例如，如果 {cmd:class} 嵌套在 {cmd:school} 中，则输入

{p 12 16 2}{cmd:. predict yhat_school, fitted relevel(school)}{p_end}

{pmore}
将生成学校级别的预测。也就是说，预测将包含学校特定的随机效应，而不包括每个学校中嵌套的每个班级的随机效应。

{phang}
{opt residuals} 计算残差，等于响应减去拟合值。默认情况下，拟合值考虑模型中所有级别的随机效应；但是，如果指定了 {opt relevel(levelvar)} 选项，则拟合值从最顶层级别开始，一直到包括级别 {it:levelvar}。

{phang}
{opt rstandard} 计算标准化的残差，等于残差乘以估计的误差协方差矩阵的逆平方根。

{phang}
{cmd:scores} 计算模型中每个参数的参数级分数，包括回归系数和方差成分。参数的分数是相对于该参数的对数似然（或对数伪似然）的第一导数。每个最高级组计算一个分数，且其值在该组的最后一条记录中。分数在存储于 {cmd:e(b)} 中的估计度量下计算。

{pmore}
{cmd:scores} 在限制最大似然（REML）估计后不可用。

{phang}
{opt relevel(levelvar)} 指定在模型中要获得涉及随机效应的预测的级别；有关详细信息，请参阅上述选项。 {it:levelvar} 是模型级别的名称，是描述该级别分组的变量的名称，或者是 {cmd:_all}，这是一个特殊的指定，表示一个包含所有估计数据的组。


包含帮助 syntax_margins1

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{cmd:xb}}仅针对模型的固定部分的线性预测；默认值{p_end}
{synopt :{opt ref:fects}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt :{opt sc:ores}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt :{opt fit:ted}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt :{opt res:iduals}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt :{opt rsta:ndard}}与 {cmd:margins} 不允许一起使用{p_end}
{synoptline}
{p2colreset}{...}

包含帮助 notes_margins


包含帮助 menu_margins


{marker des_margins}{...}
{title:margins的描述}

{pstd}
{cmd:margins} 估计线性预测的响应边际。


{marker syntax_test}{...}
{marker test}{...}
{title:test和testparm的语法}

{p 8 16 2}
{cmdab:te:st} {cmd:(}{it:{help test##spec:spec}}{cmd:)}
[{cmd:(}{it:{help test##spec:spec}}{cmd:)} ...]
[{cmd:,} {it:{help test##test_options:test_options}} {opt small}]

{p 8 16 2}
{cmd:testparm}
{varlist}
[{cmd:,} {it:{help test##testparm_options:testparm_options}} {opt small}]


{marker menu_test}{...}
{title:test和testparm的菜单}

{phang}
{bf:统计 > 事后估计}


{marker des_test}{...}
{title:test和testparm的描述}

{pstd}
{cmd:test} 和 {cmd:testparm} 默认情况下，对最近拟合的 {cmd:mixed} 模型的参数执行简单和综合线性假设的卡方检验。它们还支持对固定效应的F检验，并进行小样本调整。{p_end}


{marker options_test}{...}
{title:test和testparm的选项}

{dlgtab:选项}

{phang}
{it:test_options}; 参见 {help test_zh:[R] test} 选项。选项 {cmd:df()}、{cmd:common} 和 {cmd:nosvyadjust} 不能与 {cmd:small} 一起指定。

{phang}
{it:testparm_options}; 参见 {it:testparm} 中的选项 {help test_zh:[R] test}。选项 {cmd:df()} 和 {cmd:nosvyadjust} 不能与 {cmd:small} 一起指定。

{phang}
{opt small} 指定固定效应的F检验采用最近拟合的 {cmd:mixed} 模型中使用的方法获得的分母自由度（DDF）。如果在之前的 {cmd:mixed} 命令中未指定选项 {cmd:dfmethod()}，则不允许使用选项 {opt small}。对于某些方法，某些检验的DDF可能不可用。有关更多详细信息，请参见 {mansection ME mixedRemarksandexamplesSmall-sampleinferenceforfixedeffects:{it:固定效应的小样本推断}} 在 {bf:[ME] mixed} 中。

{marker syntax_lincom}{...}
{marker lincom}{...}
{title:lincom的语法}

{p 8 16 2}
{cmd:lincom} {it:{help exp_zh}} 
[{cmd:,} {it:{help lincom##options:lincom_options}} {opt small}]


{marker menu_lincom}{...}
{title:lincom的菜单}

{phang}
{bf:统计 > 事后估计}


{marker des_lincom}{...}
{title:lincom的描述}

{pstd}
{cmd:lincom} 默认情况下，计算线性组合系数的点估计、标准误差、z统计、p值和置信区间。 {cmd:lincom} 还提供固定效应线性组合的t统计，计算方法使用在 {cmd:mixed} 的 {cmd:dfmethod()} 选项中指定的DF方法。


{marker options_lincom}{...}
{title:lincom的选项}

{phang}
{it:lincom_options}; 参见 {help lincom_zh:[R] lincom} 选项。选项 {cmd:df()} 不能与 {cmd:small} 一起指定。

{phang}
{opt small} 指定固定效应的线性组合的t统计采用最近拟合的 {cmd:mixed} 模型中使用的方法获得的自由度。如果在之前的 {cmd:mixed} 命令中未指定选项 {cmd:dfmethod()}，则不允许使用选项 {opt small}。对于某些方法，某些线性组合的自由度可能不可用。有关更多详细信息，请参见 {mansection ME mixedRemarksandexamplesSmall-sampleinferenceforfixedeffects:{it:固定效应的小样本推断}} 在 {bf:[ME] mixed} 中。


{marker syntax_contrast}{...}
{marker contrast}{...}
{title:contrast的语法}

{p 8 16 2}
{cmd:contrast} {it:{help contrast##syntax:termlist}} 
[{cmd:,} {it:{help contrast##options_table:contrast_options}} {opt small}]


{marker menu_contrast}{...}
{title:contrast的菜单}

{phang}
{bf:统计 > 事后估计}


{marker des_contrast}{...}
{title:contrast的描述}

{pstd}
{cmd:contrast} 默认情况下，进行线性假设的卡方检验，并针对最近拟合的 {cmd:mixed} 模型的因子变量及其交互作用形成对比。 {cmd:contrast} 还支持 {cmd:mixed, dfmethod()} 后的F检验，进行小样本调整。


{marker options_contrast}{...}
{title:contrast的选项}

{phang}
{it:contrast_options}; 参见 {help contrast_zh:[R] contrast} 选项。选项 {cmd:df()} 和 {cmd:nosvyadjust} 不能与 {cmd:small} 一起指定。

{phang}
{opt small} 指定对比检验采用最近拟合的 {cmd:mixed} 模型中使用的方法获得的DDF。如果在之前的 {cmd:mixed} 命令中未指定选项 {cmd:dfmethod()}，则不允许使用选项 {opt small}。对于某些方法，某些对比的DDF可能不可用。有关更多详细信息，请参见 {mansection ME mixedRemarksandexamplesSmall-sampleinferenceforfixedeffects:{it:固定效应的小样本推断}} 在 {bf:[ME] mixed} 中。


{marker syntax_pwcompare}{...}
{marker pwcompare}{...}
{title:pwcompare的语法}

{p 8 16 2}
{cmd:pwcompare} {it:{help pwcompare##syntax:marginlist}} 
[{cmd:,} {it:{help pwcompare##options_table:pwcompare_options}} {opt small}]


{marker menu_pwcompare}{...}
{title:pwcompare的菜单}

{phang}
{bf:统计 > 事后估计}


{marker des_pwcompare}{...}
{title:pwcompare的描述}

{pstd}
{cmd:pwcompare} 执行最近拟合的 {cmd:mixed} 模型中因子变量水平的成对比较。 {cmd:pwcompare} 默认情况下，以对比（差异）报告边际比较，以及成对比较的z检验或置信区间。 {cmd:pwcompare} 还支持 {cmd:mixed, dfmethod()} 之后的小样本调整的t检验。


{marker options_pwcompare}{...}
{title:pwcompare的选项}

{phang}
{it:pwcompare_options}; 参见 {help pwcompare_zh:[R] pwcompare} 选项。选项 {cmd:df()} 不能与 {cmd:small} 一起指定。

{phang}
{opt small} 指定成对比较的t检验采用最近拟合的 {cmd:mixed} 模型中使用的 {cmd:dfmethod()} 选项所获得的自由度。如果在之前的 {cmd:mixed} 命令中未指定选项 {cmd:dfmethod()}，则不允许使用选项 {opt small}。对于某些方法，某些成对比较的自由度可能不可用。有关更多详细信息，请参见 {mansection ME mixedRemarksandexamplesSmall-sampleinferenceforfixedeffects:{it:固定效应的小样本推断}} 在 {bf:[ME] mixed} 中。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse pig}{p_end}
{phang2}{cmd:. mixed weight week || id: week, covariance(unstructured)}{p_end}

{pstd}ID级别的随机效应相关矩阵{p_end}
{phang2}{cmd:. estat recovariance, correlation}{p_end}

{pstd}展示集群的边际标准差和相关性{p_end}
{phang2}{cmd:. estat wcorrelation, format(%4.2g)}{p_end}

{pstd}随机效应的BLUPS和BLUP的标准误差{p_end}
{phang2}{cmd:. predict u1 u0, reffects reses(s1 s0)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse productivity, clear}{p_end}
{phang2}{cmd:. mixed gsp private emp hwy water other unemp || region: ||}
             {cmd:state:}{p_end}

{pstd}总结嵌套组的组成{p_end}
{phang2}{cmd:. estat group}{p_end}

{pstd}区域级别的拟合值{p_end}
{phang2}{cmd:. predict gsp_region, fitted relevel(region)}{p_end}

{pstd}对数似然分数{p_end}
{phang2}{cmd:. predict double sc*, scores}{p_end}

{pstd}计算残差类内相关{p_end}
{phang2}{cmd:. estat icc}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse childweight, clear}
{p_end}
{phang2}{cmd:. mixed weight age || id: age, covariance(unstructured)}{p_end}

{pstd}展示第一个集群的组内相关性{p_end}
{phang2}{cmd:. estat wcorrelation, list}{p_end}

{pstd}展示ID 258的组内相关性{p_end}
{phang2}{cmd:. estat wcorrelation, at(id=258) list}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse pig, clear}{p_end}
{phang2}{cmd:. mixed weight i.week || id:, reml}{p_end}

{pstd}使用三种不同的方法计算并比较DF{p_end}
{phang2}{cmd:. estat df, method(kroger anova repeated)}{p_end}

{pstd}将 {cmd:kroger} 方法的结果发布到 {cmd:e()}{p_end}
{phang2}{cmd:. estat df, method(kroger) post}{p_end}

{pstd}检验 {cmd:2.week} 的系数是否等于 {cmd:3.week} 的系数，并使用Kenward-Roger方法进行小样本调整{p_end}
{phang2}{cmd:. test 2.week = 3.week, small}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse pig, clear}{p_end}
{phang2}{cmd:. mixed weight i.week || id:, reml dfmethod(kroger)}{p_end}

{pstd}检验 {cmd:2.week} 的系数是否等于 {cmd:3.week} 的系数，并使用Kenward-Roger方法进行小样本调整{p_end}
{phang2}{cmd:. test 2.week = 3.week, small}{p_end}

{pstd}检验 {cmd:i.week} 上的所有系数是否为0，并使用Kenward-Roger方法进行小样本调整{p_end}
{phang2}{cmd:. testparm i.week, small}{p_end}

{pstd}估计固定效应的线性组合，并使用Kenward-Roger方法进行小样本调整{p_end}
{phang2}{cmd:. lincom 2.week + 3.week, small}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse cont3way, clear}{p_end}
{phang2}{cmd:. mixed y sex##race || group:, reml dfmethod(kroger)}{p_end}

{pstd}使用Kenward-Roger方法对每个因子的主效应进行小样本调整的检验{p_end}
{phang2}{cmd:. contrast sex race, small}{p_end}

{pstd}检验 {cmd:race} 的参考类别对比，并进行小样本调整{p_end}
{phang2}{cmd:. contrast r.race, small}{p_end}

{pstd}检验交互效应，并进行小样本调整{p_end}
{phang2}{cmd:. contrast race#sex, small}{p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
带有选项 {cmd:small} 的 {cmd:pwcompare} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(L_df)}}每个边际差异的自由度{p_end}
{synopt:{cmd:r(M_df)}}每个边际估计的自由度{p_end}

{pstd}
带有选项 {cmd:post} 和 {cmd:small} 的 {cmd:pwcompare} 在 {cmd:e()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(L_df)}}每个边际差异的自由度{p_end}
{synopt:{cmd:e(M_df)}}每个边际估计的自由度{p_end}


{marker reference}{...}
{title:参考文献}

{marker MLMUS}{...}
{phang}
Rabe-Hesketh, S. 和 A. Skrondal. 2012.
{browse "http://www.stata-press.com/books/multilevel-longitudinal-modeling-stata/index.html":{it:使用Stata进行多层次和纵向建模}.}
第3版. College Station, TX: Stata Press.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mixed_postestimation.sthlp>}