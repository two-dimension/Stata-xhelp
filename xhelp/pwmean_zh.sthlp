{smcl}
{* *! version 1.0.20  20apr2018}{...}
{viewerdialog pwmean "dialog pwmean"}{...}
{vieweralsosee "[R] pwmean" "mansection R pwmean"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] pwmean postestimation" "help pwmean postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] contrast" "help contrast_zh"}{...}
{vieweralsosee "[R] margins" "help margins_zh"}{...}
{vieweralsosee "[R] margins, pwcompare" "help margins_pwcompare_zh"}{...}
{vieweralsosee "[R] pwcompare" "help pwcompare_zh"}{...}
{vieweralsosee "[R] ttest" "help ttest_zh"}{...}
{viewerjumpto "Syntax" "pwmean_zh##syntax"}{...}
{viewerjumpto "Menu" "pwmean_zh##menu"}{...}
{viewerjumpto "Description" "pwmean_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "pwmean_zh##linkspdf"}{...}
{viewerjumpto "Options" "pwmean_zh##options"}{...}
{viewerjumpto "Examples" "pwmean_zh##examples"}{...}
{viewerjumpto "Stored results" "pwmean_zh##results"}
{help pwmean:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] pwmean} {hline 2}}均值的成对比较
{p_end}
{p2col:}({mansection R pwmean:查看完整 PDF 手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:pwmean} {varname}{cmd:,} {opth over(varlist)} [{it:options}]

{marker options_table}{...}
{synoptset 22 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{p2coldent :* {cmd:over(}{it:{help varlist_zh}}{cmd:)}}比较 {it:varlist} 中每个组合水平的均值{p_end}
{synopt:{opt mcomp:are}{cmd:(}{it:{help pwmean##method:method}}{cmd:)}}调整多重比较的结果；默认值是 {cmd:mcompare(noadjust)}{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}置信水平；默认值是 {cmd:level(95)}{p_end}
{synopt:{opt ci:effects}}显示均值差异和置信区间的表格；默认值{p_end}
{synopt:{opt pv:effects}}显示均值差异和 p 值的表格{p_end}
{synopt:{opt eff:ects}}显示均值差异、p 值和置信区间的表格{p_end}
{synopt:{opt cim:eans}}显示均值和置信区间的表格{p_end}
{synopt:{opt group:s}}显示均值的表格，带有将其与其他均值进行显著性差异分组的代码{p_end}
{synopt:{opt sort}}按显示的均值或差异对结果表进行排序{p_end}
{synopt :{it:{help pwmean##display_options:display_options}}}控制列格式、行宽和因子变量标签{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}*{opt over(varlist)} 是必需的。{p_end}
{p 4 6 2}
有关估计后可用功能，请参见 {manhelp pwmean_postestimation R:pwmean postestimation}。{p_end}

{marker method}{...}
{synoptset 22}{...}
{synopthdr:方法}
{synoptline}
{synopt:{opt noadj:ust}}不进行多重比较调整；默认值{p_end}
{synopt:{opt bon:ferroni}}Bonferroni 方法{p_end}
{synopt:{opt sid:ak}}Sidak 方法{p_end}
{synopt:{opt sch:effe}}Scheffe 方法{p_end}
{synopt:{opt tuk:ey}}Tukey 方法{p_end}
{synopt:{opt snk}}Student-Newman-Keuls 方法{p_end}
{synopt:{opt dunc:an}}Duncan 方法{p_end}
{synopt:{opt dunn:ett}}Dunnett 方法{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 汇总、表格和检验 >}
{bf:汇总和描述性统计 > 均值的成对比较}


{marker description}{...}
{title:描述}

{pstd}
{cmd:pwmean} 执行均值的成对比较。它计算 {varname} 在 {varlist} 中变量水平组合的均值的所有成对差异。成对比较的检验和置信区间假设组间方差相等。{cmd:pwmean} 还允许使用 Bonferroni 方法、Scheffe 方法、Tukey 方法、Dunnett 方法等来调整置信区间和 p 值，以考虑多重比较。

{pstd}
有关执行均值的成对比较、估计的边际均值和其他类型的边际线性预测，请参见 {manhelp pwcompare R:pwcompare}，它们在 {help anova_zh}、{help regress_zh} 和大多数其他估计命令之后可用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R pwmeanQuickstart:快速入门}

        {mansection R pwmeanRemarksandexamples:备注和示例}

        {mansection R pwmeanMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth over(varlist)} 是必需的并指定对于 {it:varlist} 中的每个变量水平组合计算均值。

{phang}
{opt mcompare(method)} 
指定计算 p 值和置信区间的方法，以考虑多重比较。

{pmore}
大多数方法调整比较错误率 alpha_c，以达到预设的实验错误率 alpha_e。

{phang2}
{cmd:mcompare(noadjust)}
是默认值；它指定不进行调整。

{center: alpha_c = alpha_e}

{phang2}
{cmd:mcompare(bonferroni)}
根据 Bonferroni 不等式的上限调整比较错误率：

{center: alpha_e <= m * alpha_c}

{pmore2}
其中 m 是该项内的比较数量。

{pmore2}
调整后的比较错误率为

{center: alpha_c = alpha_e/m}

{phang2}
{cmd:mcompare(sidak)}
根据概率不等式的上限调整比较错误率

{center:alpha_e <= 1 - (1 - alpha_c)^m}

{pmore2}
其中 m 是该项内的比较数量。

{pmore2}
当 m 次比较独立时，该调整是精确的。

{phang2}
{cmd:mcompare(scheffe)}
使用 F（或卡方）分布控制实验错误率，自由度等于 k-1，其中 k 是被比较的均值数量。

{phang2}
{cmd:mcompare(tukey)} 使用通常称为 Tukey 的诚实显著差异的方法。
该方法使用学生化的范围分布，而不是 t 分布。

{phang2}
{cmd:mcompare(snk)} 是 {cmd:mcompare(tukey)} 的一种变体，仅计算参与给定比较的均值数量，而不是所有均值的总数。

{phang2}
{cmd:mcompare(duncan)} 是 {cmd:mcompare(snk)} 的一种变体，附加调整显著性概率。

{phang2}
{cmd:mcompare(dunnett)} 使用 Dunnett 方法与参考类别进行比较。

{dlgtab:报告}

{phang}
{opt level(#)}
指定置信区间的置信水平，以百分比表示。默认值为 {cmd:level(95)} 或 {helpb set level} 设置的值。
{opt groups} 选项使用的显著性水平为 100-{it:#}，以百分比表示。

{phang} 
{opt cieffects} 
指定报告均值的成对比较及其标准误和置信区间的表格。这是默认设置。

{phang} 
{opt pveffects} 
指定报告均值的成对比较及其标准误、检验统计量和 p 值的表格。

{phang}
{opt effects}
指定报告均值的成对比较及其标准误、检验统计量、p 值和置信区间的表格。

{phang} 
{opt cimeans} 
指定报告均值及其标准误和置信区间的表格。

{phang}
{opt groups} 
指定报告均值及其标准误和组代码的表格。
组代码中具有相同字母的均值在指定显著性水平下没有显著差异。

{phang}
{opt sort} 
指定按照表中显示的均值或差异对报告的表进行排序。

{marker display_options}{...}
{phang}
{it:display_options}:
{opt nofvlab:el},
{opt fvwrap(#)},
{opt fvwrapon(style)},
{opth cformat(%fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}，以及
{opt nolstretch}。

{phang2}
{opt nofvlabel} 显示因子变量水平值，而不是附加的值标签。此选项覆盖 {cmd:fvlabel} 设置；请参见 
{helpb set showbaselevels:[R] set showbaselevels}。

{phang2}
{opt fvwrap(#)} 指定在必须换行时允许的最大行数。需要超过 {it:#} 行的标签将被截断。此选项覆盖 {cmd:fvwrap} 设置；请参见
{helpb set showbaselevels:[R] set showbaselevels}。

{phang2}
{opt fvwrapon(style)} 指定换行的值标签是否在单词边界处断开或根据可用空间断开。

{phang3}
{cmd:fvwrapon(word)}，默认值，指定值标签在单词边界处断开。

{phang3}
{cmd:fvwrapon(width)} 指定值标签根据可用空间断开。

{pmore2}
此选项覆盖 {cmd:fvwrapon} 设置；请参见
{helpb set showbaselevels:[R] set showbaselevels}。

{phang2}
{opt cformat(%fmt)} 指定如何格式化均值、标准误和置信限的成对比较表。

{phang2}
{opt pformat(%fmt)} 指定如何格式化均值的成对比较表中的 p 值。

{phang2}
{opt sformat(%fmt)} 指定如何格式化均值的成对比较表中的检验统计量。

{phang2}
{opt nolstretch} 指定成对比较的表宽度不应自动扩展以适应较长的变量名称。默认值 
{cmd:lstretch} 是自动扩展成对比较表的宽度，直到达到结果窗口的宽度。要更改默认值，请使用 
{help lstretch_zh:set lstretch off}。 {opt nolstretch} 不会在对话框中显示。
{p_end}


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse yield}{p_end}

{pstd}每种肥料的平均产量{p_end}
{phang2}{cmd:. pwmean yield, over(fertilizer) cimeans}{p_end}

{pstd}肥料的均值产量的成对比较{p_end}
{phang2}{cmd:. pwmean yield, over(fertilizer) effects}{p_end}

{pstd}使用 Tukey 调整进行均值产量的成对比较，当计算 p 值时{p_end}
{phang2}{cmd:. pwmean yield, over(fertilizer) pveffects mcompare(tukey)}{p_end}

{pstd}使用 Dunnett 调整将每种肥料的均值产量与对照组（肥料 1）进行比较{p_end}
{phang2}
{cmd:. pwmean yield, over(fertilizer) effects mcompare(dunnett)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:pwmean} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(df_r)}}方差的自由度{p_end}
{synopt:{cmd:e(balanced)}}如果数据完全平衡则为 {cmd:1}，否则为 {cmd:0}{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:pwmean}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(title)}}输出中的标题{p_end}
{synopt:{cmd:e(depvar)}}计算均值的变量名称{p_end}
{synopt:{cmd:e(over)}}{it:varlist} 来自 {opt over()}{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}均值估计{p_end}
{synopt:{cmd:e(V)}}均值估计的方差-协方差矩阵{p_end}
{synopt:{cmd:e(error)}}均值可估计性代码；{break}
	{cmd:0} 表示可估计，{break}
	{cmd:8} 表示不可估计{p_end}
{synopt:{cmd:e(b_vs)}}均值差异估计{p_end}
{synopt:{cmd:e(V_vs)}}均值差异估计的方差-协方差
矩阵{p_end}
{synopt:{cmd:e(error_vs)}}均值差异可估计性代码；{break}
	{cmd:0} 表示可估计，{break}
	{cmd:8} 表示不可估计{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <pwmean.sthlp>}