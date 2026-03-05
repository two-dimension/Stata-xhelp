{smcl}
{* *! version 1.1.7  27feb2019}{...}
{viewerdialog "score test" "dialog power_oneprop_score"}{...}
{viewerdialog "Wald test" "dialog power_oneprop_wald"}{...}
{viewerdialog "binomial test" "dialog power_oneprop_binom"}{...}
{vieweralsosee "[PSS-2] power oneproportion" "mansection PSS-2 poweroneproportion"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power oneproportion, cluster" "help power_oneproportion_cluster_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bitest" "help bitest_zh"}{...}
{vieweralsosee "[R] prtest" "help prtest_zh"}{...}
{viewerjumpto "Syntax" "power_oneproportion_zh##syntax"}{...}
{viewerjumpto "Menu" "power_oneproportion_zh##menu"}{...}
{viewerjumpto "Description" "power_oneproportion_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_oneproportion_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_oneproportion_zh##options"}{...}
{viewerjumpto "Remarks: Using power oneproportion" "power_oneproportion_zh##remarks"}{...}
{viewerjumpto "Examples" "power_oneproportion_zh##examples"}{...}
{viewerjumpto "Video examples" "power_oneproportion_zh##video"}{...}
{viewerjumpto "Stored results" "power_oneproportion_zh##stored_results"}
{help power_oneproportion:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[PSS-2] power oneproportion} {hline 2}}一样本比例检验的功效分析{p_end}
{p2col:}({mansection PSS-2 poweroneproportion:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{phang}
计算样本大小

{p 8 43 2}
{opt power} {opt oneprop:ortion} {it:p0} {it:pa}
[{cmd:,} {opth p:ower(numlist)} 
{it:{help power_oneproportion##synoptions:选项}}]

{phang}
计算功效 

{p 8 43 2}
{opt power} {opt oneprop:ortion} {it:p0} {it:pa}{cmd:,} {opth n(numlist)} 
[{it:{help power_oneproportion##synoptions:选项}}]

{phang}
计算效应大小和目标比例 

{p 8 43 2}
{opt power} {opt oneprop:ortion} {it:p0}{cmd:,} {opth n(numlist)} 
{opth p:ower(numlist)} [{it:{help power_oneproportion##synoptions:选项}}]

{phang}
其中 {it:p0} 是无效（假设的）比例或无效假设下比例的值，{it:pa} 是替代（目标）比例或替代假设下比例的值。
{it:p0} 和 {it:pa} 可以分别指定为一个数字或一组括号内的值（见 {help numlist_zh}）。{p_end}

{synoptset 30 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{synopt:{opth test:(power_oneproportion##testspec:测试)}}指定测试的类型；默认是 {cmd:test(score)}{p_end}

{syntab:主要}
包括帮助 pss_testmainopts1.ihlp
{synopt: {opt nfrac:tional}}允许分数样本大小{p_end}
{p2coldent:* {opth diff(numlist)}}替代比例和无效比例之间的差异，{it:pa}-{it:p0}；指定替代比例 {it:pa} 代替{p_end}
{synopt: {opt critval:ues}}显示二项检验的临界值{p_end}
{synopt: {opt contin:uity}}对离散分布的正态近似应用连续性校正{p_end}
包括帮助 pss_testmainopts3.ihlp

{syntab:表格}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_oneproportion##tablespec:表格规范}}{cmd:)}]}抑制表格或以表格显示结果；见
{manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}将表格数据保存到 {it:filename}；使用 {cmd:replace} 以覆盖现有的
{it:filename}{p_end}

包括帮助 pss_graphopts.ihlp

{syntab:迭代}
{synopt: {opt init(#)}}样本大小或比例的初始值{p_end}
包括帮助 pss_iteropts.ihlp

{synopt: {opt cluster}}执行 CRD 的计算；见
    {manhelp power_oneproportion_cluster PSS-2:power oneproportion, cluster}{p_end}
包括帮助 pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
包括帮助 pss_numlist.ihlp
{p 4 6 2}{cmd:cluster} 和 {cmd:notitle} 不会出现在对话框中。{p_end}

{synoptset 30}{...}
{marker testspec}{...}
{synopthdr :测试}
{synoptline}
{synopt :{opt score}}得分测试；默认{p_end}
{synopt :{opt wald}}Wald 测试{p_end}
{synopt :{opt binom:ial}}二项测试{p_end}
{synoptline}
{p 4 6 2}{cmd:test()} 不会出现在对话框中。
所选的对话框由 {cmd:test()} 规范确定。

{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 是

{p 16 16 2}
{it:{help power_oneproportion##column:列}}[{cmd::}{it:标签}]
[{it:列}[{cmd::}{it:标签}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:表格选项}}]

{pstd}
{it:列} 是下面定义的列之一，而 {it:标签} 是列标签（可以包含引号和复合引号）。

{synoptset 30}{...}
{marker column}{...}
{synopthdr :列}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt alpha_a}}观察到的显著性水平{p_end}
{synopt :{opt power}}功效{p_end}
{synopt :{opt beta}}第二类错误概率{p_end}
{synopt :{opt N}}受试者人数{p_end}
{synopt :{opt delta}}效应大小{p_end}
{synopt :{opt p0}}无效比例{p_end}
{synopt :{opt pa}}替代比例{p_end}
{synopt :{opt diff}}替代和无效比例之间的差异{p_end}
{synopt :{opt C_l}}下临界值{p_end}
{synopt :{opt C_u}}上临界值{p_end}
{synopt :{opt target}}目标参数；{cmd:pa} 的同义词{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}默认表中列 {cmd:beta} 替代了列 {cmd:power} 的显示，如果指定的话。{p_end}
{p 4 6 2}如果指定，列 {cmd:diff}在默认表中显示。{p_end}
{p 4 6 2}当指定 {cmd:test(binomial)} 选项时，可以使用列 {cmd:alpha_a}、{cmd:C_l} 和 {cmd:C_u}。{p_end}
{p 4 6 2}如果指定 {cmd:critvalues} 选项，列 {cmd:C_l} 和 {cmd:C_u}将在默认表中显示。

包括帮助 menu_pss

{marker description}{...}
{title:描述}

{pstd}
{cmd:power} {cmd:oneproportion} 计算一样本比例检验的样本大小、功效或目标比例。默认情况下，它计算给定功效和无效假设和替代假设下比例参数的值的样本大小。或者，它可以计算给定样本大小和无效假设与替代假设下的比例值的功效，或给定样本大小、功效和无效比例的目标比例。有关聚类随机设计中的功效和样本大小分析，请参见 
{manhelp power_oneproportion_cluster PSS-2:power oneproportion, cluster}。
另见 {manhelp power PSS-2} 以获取使用假设检验的 {cmd:power} 命令的一般介绍。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection PSS-2 poweroneproportionQuickstart:快速开始}

        {mansection PSS-2 poweroneproportionRemarksandexamples:备注和示例}

        {mansection PSS-2 poweroneproportionMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。

{marker options}{...}
{title:选项}

{phang}
{opt test(test)} 指定用于功效和样本大小计算的测试类型。{it:test} 是 {cmd:score}、{cmd:wald} 或 {cmd:binomial} 之一。

{pmore}
{cmd:score} 请求计算得分测试。这是默认测试。

{pmore}
{cmd:wald} 请求计算 Wald 测试。这对应于使用替代比例的值而不是默认无效比例的比例标准误的计算。

{pmore}
{cmd:binomial} 请求计算二项测试。使用二项分布的计算对于样本大小和效应大小确定不可用；有关详细信息，请参见
{mansection PSS-2 poweroneproportionRemarksandexamplesex7:示例 7}。此测试不允许使用迭代选项。

{dlgtab:主要}

{phang}
{cmd:alpha()}、{cmd:power()}、{cmd:beta()}、{cmd:n()}、{cmd:nfractional}；见
{manhelp power##mainopts PSS-2:power}。
{opt nfractional} 选项仅允许用于样本大小确定。

{phang}
{opth diff(numlist)} 指定替代比例和无效比例之间的差异，{it:pa} - {it:p0}。您可以将替代比例 {it:pa} 指定为命令参数或二者之间的差异在 {cmd:diff()} 中指定。如果您指定 {opt diff(#)}，替代比例计算为 {it:pa} = {it:p0} + {it:#}。此选项在效应大小确定时不允许使用。

{phang}
{opt critvalues} 请求在基于二项分布的计算时报告临界值。

{phang}
{opt continuity} 请求对离散分布的正态近似应用连续性校正。{opt continuity} 不能与 {cmd:test(binomial)} 一起指定。

{phang}
{cmd:direction()}、{cmd:onesided}、{cmd:parallel}；见
{manhelp power##mainopts PSS-2:power}。

包括帮助 pss_taboptsdes.ihlp

包括帮助 pss_graphoptsdes.ihlp
另见 {mansection PSS-2 poweroneproportionSyntaxcolumn:列} 表中的图表使用的符号。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定样本大小确定的样本大小初始值或效应大小确定的比例初始值。

包括帮助 pss_iteroptsdes.ihlp

{pstd}
{cmd:power oneproportion} 提供以下选项，但未显示在对话框中：

{phang}
{opt cluster}；见
{manhelp power_oneproportion_cluster PSS-2:power oneproportion, cluster}。

包括帮助 pss_reportoptsdes.ihlp

{marker remarks}{...}
{title:备注：使用 power oneproportion}

{pstd}
{cmd:power oneproportion} 计算一样本比例检验的样本大小、功效或目标比例。所有计算都用于双侧假设检验，默认显著性水平设置为 0.05。您可以通过指定 {cmd:alpha()} 选项更改显著性水平。您可以指定 {cmd:onesided} 选项以请求单侧检验。

{pstd}
要计算样本大小，您必须分别指定无效假设和替代假设下的比例 {it:p0} 和 {it:pa}，并可选择性地在 {cmd:power()} 选项中指定检验的功效。默认功效设为 0.8。

{pstd}
要计算功效，您必须在 {cmd:n()} 选项中指定样本大小，以及无效假设和替代假设下的比例 {it:p0} 和 {it:pa}。

{pstd}
在计算样本大小或功效时，您可以用 {cmd:diff()} 选项指定替代比例 {it:pa} 与无效比例 {it:p0} 之间的差异 {it:pa} - {it:p0}。

{pstd}
要计算效应大小、替代与无效比例之间的差异和目标比例，您必须在 {cmd:n()} 选项中指定样本大小，在 {cmd:power()} 选项中指定功效，无效比例 {it:p0}，并可选择最终效应的方向。默认方向为上，即假设目标比例大于指定的无效值。您可以通过指定 {cmd:direction(lower)} 选项将方向改为下，这意味着假设目标比例小于指定的无效值。

{pstd}
默认情况下，所有计算基于比例的大样本 z 测试，使用正态分布作为检验统计量的抽样分布。为功效确定，您可以请求使用小样本二项测试，通过指定 {cmd:binomial} 选项。二项测试无法用于样本大小和效应具体的确定；请参见 {mansection PSS-2 poweroneproportionRemarksandexamplesex7:示例 7} 获取详细信息。

{pstd}
默认情况下，计算的样本大小向上取整。您可以指定 {cmd:nfractional} 选项以查看相应的分数样本大小；请参见 {mansection PSS-4 UnbalanceddesignsRemarksandexamplesFractionalsamplesizes:{it:分数样本大小}} 在 
{bf:[PSS-4] 不平衡设计} 中的示例。{cmd:nfractional} 选项仅允许用于样本大小确定。

{pstd}
某些 {cmd:power oneproportion} 的计算需要迭代。例如，对于一个大样本 z 测试，双侧检验的样本大小通过迭代求解非线性功效方程获得。迭代程序的样本大小默认初始值是通过闭合形式的一侧公式得到的。如果需要，您可以通过指定 {cmd:init()} 选项进行更改。有关其他控制迭代程序的选项描述，请参见 {manhelp power PSS-2}。

{marker examples}{...}
{title:示例}

    {title:示例：计算样本大小}

{pstd}
    计算检测比例为 0.2 的样本大小，假设无效假设下比例为 0.1，使用双侧检验；
    假设显著性水平为 5%，功效为 80%（默认值）{p_end}
{phang2}{cmd:. power oneproportion 0.1 0.2}

{pstd}
    与上述相同，使用 {cmd:diff()} 选项指定无效假设和替代假设下的比例差异{p_end}
{phang2}{cmd:. power oneproportion 0.1, diff(0.1)}

{pstd}
    与第一个示例相同，使用 90% 的功效{p_end}
{phang2}{cmd:. power oneproportion 0.1 0.2, power(0.9)}

{pstd}
    与第一个示例相同，使用单侧检验和 1% 显著性水平{p_end}
{phang2}{cmd:. power oneproportion 0.1 0.2, alpha(0.01) onesided}

{pstd}
    计算一系列替代比例和功效的样本大小，并绘制结果{p_end}
{phang2}{cmd:. power oneproportion 0.1 (0.2(0.1)0.9), power(0.8 0.9) graph}

    {title:示例：计算功效}

{pstd}
    对 50 个受试者的样本，计算双侧检验的功效以检测比例为 0.2 的假设，假设无效均值为 0.1；显著性水平为 5%（默认值）{p_end}
{phang2}{cmd:. power oneproportion 0.1 0.2, n(50)}

{pstd}
    与上述相同，假设采用二项测试{p_end}
{phang2}{cmd:. power oneproportion 0.1 0.2, n(50) test(binomial)}

{pstd}
    计算一系列替代比例和样本大小的功效，并绘制结果{p_end}
{phang2}{cmd:. power oneproportion 0.1 (0.2 0.5 0.7 0.9), n(5(1)15) graph}

    {title:示例：计算目标比例}

{pstd}
    计算在样本为 50 人且功效为 80%的情况下，使用双侧检验能够检测的超过 0.1 的最小比例值；假设显著性水平为 5%（默认值）{p_end}
{phang2}{cmd:. power oneproportion 0.1, n(50) power(0.8)}

{pstd}
    与上述相同{p_end}
{phang2}{cmd:. power oneproportion 0.1, n(50) power(0.8) direction(upper)}

{pstd}
    与上述相同，使用 Wald 测试而不是默认得分测试{p_end}
{phang2}{cmd:. power oneproportion 0.1, n(50) power(0.8) test(wald)}

{pstd}
    计算能够检测的少于 0.1 的最大比例{p_end}
{phang2}{cmd:. power oneproportion 0.1, n(50) power(0.8)}
      {cmd:direction(lower) test(wald)}

{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=SMl0BTSpC3Q&list=UUVk4G4nEtBS4tLOyHqustDA":样本比例与参考值的比较样本大小计算}

{phang}
{browse "https://www.youtube.com/watch?v=178LFlzwJlI&list=UUVk4G4nEtBS4tLOyHqustDA":样本比例与参考值的比较功效计算}

{phang}
{browse "https://www.youtube.com/watch?v=i2r-OgXP4gY&list=UUVk4G4nEtBS4tLOyHqustDA":使用 Stata 比较样本比例与参考值的最小可检测效应大小}

{marker stored_results}{...}
{title:存储结果}

{pstd}
{cmd:power oneproportion} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
包括帮助 pss_rresoneprop_sc.ihlp
{synopt:{cmd: r(p0)}}无效假设下的比例{p_end}
{synopt:{cmd: r(pa)}}替代假设下的比例{p_end}
{synopt:{cmd: r(diff)}}替代和无效比例之间的差异{p_end}
{synopt:{cmd: r(C_l)}}二项分布的下临界值{p_end}
{synopt:{cmd: r(C_u)}}二项分布的上临界值{p_end}
{synopt:{cmd: r(continuity)}}{bf:1} 如果使用了连续性校正；
{bf:0} 否则{p_end}
包括帮助 pss_rrestab_sc.ihlp
{synopt:{cmd: r(init)}}样本大小或比例的初始值{p_end}
包括帮助 pss_rresiter_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:oneproportion}{p_end}
{synopt:{cmd:r(test)}}{cmd:score}、{cmd:wald} 或 {cmd:binomial}{p_end}
包括帮助 pss_rrestest_mac.ihlp
包括帮助 pss_rrestab_mac.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
包括帮助 pss_rrestab_mat.ihlp


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_oneproportion.sthlp>}