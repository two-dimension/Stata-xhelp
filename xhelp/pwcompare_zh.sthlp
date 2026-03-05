{smcl}
{* *! version 1.1.16  05sep2018}{...}
{viewerdialog pwcompare "dialog pwcompare"}{...}
{vieweralsosee "[R] pwcompare" "mansection R pwcompare"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] pwcompare postestimation" "help pwcompare postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] contrast" "help contrast_zh"}{...}
{vieweralsosee "[R] lincom" "help lincom_zh"}{...}
{vieweralsosee "[R] margins" "help margins_zh"}{...}
{vieweralsosee "[R] margins, pwcompare" "help margins_pwcompare_zh"}{...}
{vieweralsosee "[R] pwmean" "help pwmean_zh"}{...}
{vieweralsosee "[R] test" "help test_zh"}{...}
{viewerjumpto "Syntax" "pwcompare_zh##syntax"}{...}
{viewerjumpto "Menu" "pwcompare_zh##menu"}{...}
{viewerjumpto "Description" "pwcompare_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "pwcompare_zh##linkspdf"}{...}
{viewerjumpto "Options" "pwcompare_zh##options"}{...}
{viewerjumpto "Examples" "pwcompare_zh##examples"}{...}
{viewerjumpto "Stored results" "pwcompare_zh##results"}
{help pwcompare:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[R] pwcompare} {hline 2}}成对比较 {p_end}
{p2col:}({mansection R pwcompare:查看完整的PDF手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:pwcompare} {it:marginlist}
[{cmd:,}
	{it:{help pwcompare##options_table:选项}}]

{pstd}
其中 {it:marginlist} 是当前估计结果中出现的因子变量或交互作用的列表，或 {cmd:_eqns} 以引用方程。
变量可以带或不带 {cmd:i.} 前缀，您可以使用任何因子变量语法：

		. {cmd:pwcompare i.sex i.group i.sex#i.group}

		. {cmd:pwcompare sex group sex#group}

		. {cmd:pwcompare sex##group}

{marker options_table}{...}
{synoptset 24 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opt mcomp:are}{cmd:(}{it:{help pwcompare##method:方法}}{cmd:)}}调整
    多重比较；默认值为 {cmd:mcompare(noadjust)}{p_end}
{synopt:{opt asobs:erved}}将所有因子变量视为观察到的{p_end}

{syntab:方程}
{synopt:{opt eq:uation(eqspec)}}在方程 {it:eqspec} 内执行比较 {p_end}
{synopt:{opt ateq:uations}}在每个方程内执行比较{p_end}

{syntab:高级}
{synopt:{opt emptycells}{cmd:(}{it:{help contrast##empspec:empspec}}{cmd:)}}处理平衡因子的空单元 {p_end}
{synopt:{opt noestimcheck}}抑制可估计性检查{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt:{opt ci:effects}}显示包含置信区间的效应表；
         默认值{p_end}
{synopt:{opt pv:effects}}显示包含p值的效应表{p_end}
{synopt:{opt eff:ects}}显示包含置信区间与p值的效应表
     {p_end}
{synopt:{opt cim:argins}}显示边际值与置信区间的表{p_end}
{synopt:{opt group:s}}显示边际值与组编码的表{p_end}
{synopt:{opt sort}}在每个项内排序边际值或对比{p_end}
{synopt:{opt post}}将边际值及其VCE作为估计结果发布{p_end}
{synopt:{it:{help pwcompare##display_options:显示选项}}}控制	
    列格式、行间距、行宽和因子变量标签
    {p_end}
{synopt:{it:{help pwcompare##eform_option:eform_option}}}报告指数对比{p_end}

{synopt :{opt df(#)}}对计算p值和置信区间使用 {it:#} 自由度的t分布{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt df(#)} 在对话框中不可见。
{p_end}

{marker method}{...}
{synoptset 24 tabbed}{...}
{synopthdr:方法}
{synoptline}
{synopt:{opt noadj:ust}}不调整多重比较；默认值{p_end}
{synopt:{opt bon:ferroni} [{opt adjustall}]}Bonferroni 方法；在所有术语中调整{p_end}
{synopt:{opt sid:ak} [{opt adjustall}]}Sidak 方法；在所有术语中调整{p_end}
{synopt:{opt sch:effe}}Scheffe 方法{p_end}
{p2coldent:+ {opt tuk:ey}}Tukey 方法{p_end}
{p2coldent:+ {opt snk}}Student-Newman-Keuls 方法{p_end}
{p2coldent:+ {opt dunc:an}}Duncan 方法{p_end}
{p2coldent:+ {opt dunn:ett}}Dunnett 方法{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
+ 
{opt tukey},
{opt snk},
{opt duncan},
和
{opt dunnett}
仅在以下结果中允许：
{help anova_zh},
{help manova_zh},
{help regress_zh},
和
{help mvreg_zh}。
{opt tukey},
{opt snk},
{opt duncan},
和
{opt dunnett}
不允许用于
{help svy_zh} 的结果。
{p_end}

{p 4 6 2}
如果在估计中使用，时间序列操作符是允许的。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:pwcompare} 执行最近拟合模型中因子变量水平之间的成对比较。 {cmd:pwcompare} 可以比较估计单元均值、边际均值、截距、边际截距、斜率或边际斜率——统称为边际。 {cmd:pwcompare} 将比较结果报告为边际的对比（差异），并附上对比的显著性检验或置信区间。
这些检验和置信区间可以根据多重比较进行调整。

{pstd}
{cmd:pwcompare} 可以与 {cmd:svy} 估计结果一起使用；请参见
{manhelp svy_postestimation SVY:svy 后估计}。

{pstd}
有关如何进行线性和非线性预测的边际的成对比较，请参见
{manhelp margins_pwcompare R:margins, pwcompare}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R pwcompareQuickstart:快速开始}

        {mansection R pwcompareRemarksandexamples:备注和示例}

        {mansection R pwcompareMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt mcompare(method)}
指定用于计算p值和置信区间的方法，以考虑因子变量项内的多重比较。

{pmore}
大多数方法调整比较错误率 alpha_c，以达到预设的实验错误率 alpha_e。

{phang2}
{cmd:mcompare(noadjust)}
是默认值；它指定不进行调整。

{center: alpha_c = alpha_e}

{phang2}
{cmd:mcompare(bonferroni)}
根据Bonferroni不等式的上限调整比较错误率：

{center: alpha_e <= m * alpha_c}

{pmore2}
其中 m 是项内的比较数量。

{pmore2}
调整后的比较错误率为

{center: alpha_c = alpha_e/m}

{phang2}
{cmd:mcompare(sidak)}
根据概率不等式的上限调整比较错误率

{center:alpha_e <= 1 - (1 - alpha_c)^m}

{pmore2}
其中 m 是项内的比较数量。

{pmore2}
调整后的比较错误率为

{center:alpha_c = 1 - (1 - alpha_e)^(1/m)}

{pmore2}
当这 m 个比较是独立的时，这种调整是精确的。

{phang2}
{cmd:mcompare(scheffe)}
使用自由度等于项的秩的F（水平方差）分布控制实验错误率。

{pmore}
针对 {help anova_zh}、{help regress_zh}、{help manova_zh} 和 {help mvreg_zh} 的结果， {cmd:pwcompare} 允许以下额外的方法。
这些方法不允许与使用
{cmd:vce(robust)} 或
{cmd:vce(cluster} {it:clustvar}{cmd:)} 的结果一起使用。

{phang2}
{cmd:mcompare(tukey)} 使用通常称为Tukey的诚实显著差异。
此方法使用Student化范围分布，而不是t分布。

{phang2}
{cmd:mcompare(snk)} 是对 {cmd:mcompare(tukey)} 的一种变体，仅计算给定比较的边际数量，而不是所有边际的总数。

{phang2}
{cmd:mcompare(duncan)} 是对 {cmd:mcompare(snk)} 的一种变体，附加地调整显著性概率。

{phang2}
{cmd:mcompare(dunnett)} 使用Dunnett方法与参考类别进行比较。

{phang2}
{cmd:mcompare(}{it:method} {cmd:adjustall)} 指定多重比较调整跨所有项计算所有比较，而非逐项进行多重比较。这当指定在 {it:marginlist} 中包含多个变量或项时，导致更保守的调整。此选项仅与 {cmd:bonferroni} 和 {cmd:sidak} 方法兼容。

{phang}
{opt asobserved}
指定因子协变量应使用拟合模型时观察到的单元频率进行评估。 默认情况下，将所有因子协变量视为每个水平有相等数量的观察值。

{dlgtab:方程}

{phang}
{opt equation(eqspec)}
指定要计算边际的方程。 默认情况是从第一个方程计算边际。

{phang}
{opt atequations}
指定边际在每个方程内计算。

{dlgtab:高级}

{marker empspec}{...}
{phang}
{opt emptycells(empspec)}
指定在处理被视为平衡的因子变量的交互作用时如何处理空单元。

{phang2}
{cmd:emptycells(strict)}
是默认值；它指定涉及空单元的边际被视为不可估计。

{phang2}
{cmd:emptycells(reweight)}
指定增加观察到的单元的效应以适应任何缺失单元。这使得边际成为可估计的，但改变其解释。

{phang}
{opt noestimcheck}
指定 {cmd:pwcompare} 不检查可估计性。 默认情况下，检查请求的边际，发现不可估计的将被报告为不可估计。不可估计性的原因通常是由于空单元。如果指定了 {cmd:noestimcheck}，则按通常方式计算估计并报告，即使结果的估计是可操控的，也就是说它们可以在具有不同参数化的等效模型间有所不同。

{dlgtab:报告}

{phang}
{opt level(#)};
指定置信区间的置信水平，作为百分比。 默认值为 {cmd:level(95)} 或由 {helpb set level} 设置。
{opt groups} 选项使用的显著性水平是 100-{it:#}，以百分比形式表示。

{phang} 
{opt cieffects} 
指定报告包含标准误差和置信区间的成对比较的表格。 这是默认值。

{phang} 
{opt pveffects} 
指定报告包含标准误差、检验统计量和p值的成对比较的表格。

{phang}
{opt effects}
指定报告包含标准误差、检验统计量、p值和置信区间的成对比较的表格。

{phang} 
{opt cimargins} 
指定报告包含标准误差和置信区间的边际值的表格。

{phang}
{opt groups} 
指定报告包含标准误差和组编码的边际值的表格。
具有相同字母的组编码在指定显著性水平下并不显著不同。

{phang}
{opt sort} 
指定在每一项中对报告的表格进行边际值或差异排序。

{phang} 
{opt post} 
使 {cmd:pwcompare} 像 Stata 估计（e系列）命令一样工作。
{cmd:pwcompare} 将估计的边际向量与估计的方差协方差矩阵发布到 {cmd:e()}，因此您可以像对待任何其他估计命令的结果一样处理估计的边际。 例如，您可以使用 {cmd:test} 对边际进行假设的同时检验，或使用 {cmd:lincom} 创建线性组合。

{marker display_options}{...}
{phang}
{it:显示选项}:
{opt vsquish},
{opt nofvlab:el},
{opt fvwrap(#)},
{opt fvwrapon(style)},
{opth cformat(%fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}, 和
{opt nolstretch}。

{phang2}
{opt vsquish} 
指定压制因子变量项或时间序列操作变量与模型中其他变量之间的空白间隔。

{phang2}
{opt nofvlabel} 显示因子变量水平值，而不是附加的值标签。 此选项覆盖 {cmd:fvlabel} 设置；请参见 
{helpb set showbaselevels:[R] set showbaselevels}。

{phang2}
{opt fvwrap(#)} 指定当必须换行显示长值标签时允许多少行。 超过 {it:#} 行的标签被截断。 此选项覆盖 {cmd:fvwrap} 设置；请参见
{helpb set showbaselevels:[R] set showbaselevels}。

{phang2}
{opt fvwrapon(style)} 指定包裹值标签时是否在单词边界处折断或根据可用空间折断。

{phang3}
{cmd:fvwrapon(word)}，默认值，指定在单词边界处折断值标签。

{phang3}
{cmd:fvwrapon(width)} 指定根据可用空间折断值标签。

{pmore2}
此选项覆盖 {cmd:fvwrapon} 设置；请参见
{helpb set showbaselevels:[R] set showbaselevels}。

{phang2}
{opt cformat(%fmt)} 指定在成对比较表中如何格式化对比或边际、标准误差和置信限。

{phang2}
{opt pformat(%fmt)} 指定在成对比较表中如何格式化p值。

{phang2}
{opt sformat(%fmt)} 指定在成对比较表中如何格式化检验统计量。

{phang2}
{opt nolstretch} 指定不自动加宽成对比较表的宽度以适应更长的变量名称。 默认值为 {cmd:lstretch}，即自动加宽成对比较表到结果窗口的宽度。 要更改默认值，请使用
{help lstretch_zh:set lstretch off}。 {opt nolstretch} 不显示在对话框中。
{p_end}

{marker eform_option}{...}
{phang}
{it:eform_option} 指定对比表以指数形式显示。 显示 exp(对比)，而不是 对比。 标准误差和置信区间也会被转换。 请参见 {manhelpi eform_option R} 以获取可用选项列表。

{pstd}
以下选项可与 {opt pwcompare} 一起使用，但未在对话框中显示：

{phang}
{opt df(#)} 指定使用 {it:#} 自由度的t分布计算p值和置信区间。
默认值是使用 {cmd:e(df_r)} 自由度或当 {cmd:e(df_r)} отсутствует 时使用标准正态分布。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}一元模型的设置{p_end}
{phang2}{cmd:. webuse yield}{p_end}
{phang2}{cmd:. regress yield i.fertilizer}{p_end}

{pstd}每种肥料的平均产量{p_end}
{phang2}{cmd:. pwcompare fertilizer, cimargins}{p_end}

{pstd}平均产量的成对比较{p_end}
{phang2}{cmd:. pwcompare fertilizer}{p_end}

{pstd}使用Duncan的调整进行p值和置信区间的成对比较{p_end}
{phang2}{cmd:. pwcompare fertilizer, effects mcompare(duncan)}{p_end}

{pstd}二元模型的设置{p_end}
{phang2}{cmd:. regress yield fertilizer##irrigation}{p_end}

{pstd}基于Tukey的诚实显著差异的组编码显示的单元均值的成对比较{p_end}
{phang2}{cmd:. pwcompare fertilizer#irrigation, group mcompare(tukey)}{p_end}

{pstd}连续协变量的设置{p_end}
{phang2}{cmd:. regress yield fertilizer##c.N03_N}{p_end}

{pstd}基于Scheffe方法的每种肥料的斜率成对比较，置信区间已调整{p_end}
{phang2}{cmd:. pwcompare fertilizer#c.N03_N, mcompare(scheffe)}{p_end}

    {hline}
{pstd}非线性模型的设置{p_end}
{phang2}{cmd:. webuse hospital}{p_end}
{phang2}{cmd:. logit satisfied i.hospital}{p_end}

{pstd}使用Bonferroni调整进行对数几率的成对比较{p_end}
{phang2}{cmd:. pwcompare hospital, mcompare(bonferroni)}{p_end}

    {hline}
{pstd}多方程模型的设置{p_end}
{phang2}{cmd:. webuse jaw}{p_end}
{phang2}{cmd:. mvreg y1 y2 y3 = i.fracture}{p_end}

{pstd}第一个方程中骨折的边际的成对比较{p_end}
{phang2}{cmd:. pwcompare fracture}{p_end}

{pstd}在每个方程内的骨折边际的成对比较{p_end}
{phang2}{cmd:. pwcompare fracture, atequations}{p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:pwcompare} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(df_r)}}方差自由度{p_end}
{synopt:{cmd:r(k_terms)}}在 {it:marginlist} 中的项数{p_end}
{synopt:{cmd:r(level)}}置信区间的置信水平{p_end}
{synopt:{cmd:r(balanced)}}如果完全平衡数据，{cmd:1}，否则为 {cmd:0}{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(cmd)}}{cmd:pwcompare}{p_end}
{synopt:{cmd:r(cmdline)}}输入的命令{p_end}
{synopt:{cmd:r(est_cmd)}}来自原始估计结果的 {cmd:e(cmd)}{p_end}
{synopt:{cmd:r(est_cmdline)}}来自原始估计结果的 {cmd:e(cmdline)}{p_end}
{synopt:{cmd:r(title)}}输出中的标题{p_end}
{synopt:{cmd:r(emptycells)}}{it:empspec} 来自 {cmd:emptycells()}{p_end}
{synopt:{cmd:r(groups}{it:#}{cmd:)}}在 {cmd:r(b)} 中第 {it:#} 个边际的组编码{p_end}
{synopt:{cmd:r(mcmethod_vs)}}来自 {opt mcompare()} 的 {it:method}{p_end}
{synopt:{cmd:r(mctitle_vs)}}来自 {opt mcompare()} 的 {it:method} 的标题{p_end}
{synopt:{cmd:r(mcadjustall_vs)}}{cmd:adjustall} 或空{p_end}
{synopt:{cmd:r(margin_method)}}{cmd:asbalanced} 或 {cmd:asobserved}{p_end}
{synopt:{cmd:r(vce)}}在原始估计命令中指定的 {it:vcetype}{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(b)}}边际估计{p_end}
{synopt:{cmd:r(V)}}边际估计的方差协方差矩阵{p_end}
{synopt:{cmd:r(error)}}边际可估计性代码；{break}
	{cmd:0} 意味着可估计，{break}
	{cmd:8} 意味着不可估计{p_end}
{synopt:{cmd:r(table)}}矩阵
	包含边际及其标准误差、检验统计量、
	p值和置信区间{p_end}
{synopt:{cmd:r(M)}}生成模型系数的边际的矩阵{p_end}
{synopt:{cmd:r(b_vs)}}边际差估计{p_end}
{synopt:{cmd:r(V_vs)}}边际差估计的方差协方差矩阵{p_end}
{synopt:{cmd:r(error_vs)}}边际差的可估计性代码；{break}
	{cmd:0} 意味着可估计，{break}
	{cmd:8} 意味着不可估计{p_end}
{synopt:{cmd:r(table_vs)}}矩阵
	包含边际差及其标准误差、检验
	统计量、p值和置信区间{p_end}
{synopt:{cmd:r(L)}}生成模型系数的边际差的矩阵{p_end}
{synopt:{cmd:r(k_groups)}}每个项的显著性组数量{p_end}
{p2colreset}{...}


{pstd}
使用 {opt post} 选项的 {cmd:pwcompare} 还将在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(df_r)}}方差自由度{p_end}
{synopt:{cmd:e(k_terms)}}在 {it:marginlist} 中的项数{p_end}
{synopt:{cmd:e(balanced)}}如果完全平衡数据，{cmd:1}，否则为 {cmd:0}{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:pwcompare}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(est_cmd)}}来自原始估计结果的 {cmd:e(cmd)}{p_end}
{synopt:{cmd:e(est_cmdline)}}来自原始估计结果的 {cmd:e(cmdline)}{p_end}
{synopt:{cmd:e(title)}}输出中的标题{p_end}
{synopt:{cmd:e(emptycells)}}{it:empspec} 来自 {cmd:emptycells()}{p_end}
{synopt:{cmd:e(margin_method)}}{cmd:asbalanced} 或 {cmd:asobserved}{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 设为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 设为 {cmd:asobserved}{p_end}
{synopt:{cmd:e(vce)}}在原始估计命令中指定的 {it:vcetype}{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}边际估计{p_end}
{synopt:{cmd:e(V)}}边际估计的方差协方差矩阵{p_end}
{synopt:{cmd:e(error)}}边际可估计性代码；{break}
	{cmd:0} 意味着可估计，{break}
	{cmd:8} 意味着不可估计{p_end}
{synopt:{cmd:e(M)}}生成模型系数的边际的矩阵{p_end}
{synopt:{cmd:e(b_vs)}}边际差估计{p_end}
{synopt:{cmd:e(V_vs)}}边际差估计的方差协方差矩阵{p_end}
{synopt:{cmd:e(error_vs)}}边际差的可估计性代码；{break}
	{cmd:0} 意味着可估计，{break}
	{cmd:8} 意味着不可估计{p_end}
{synopt:{cmd:e(L)}}生成模型系数的边际差的矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <pwcompare.sthlp>}