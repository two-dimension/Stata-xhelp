{smcl}
{* *! version 1.1.10  18apr2019}{...}
{viewerdialog power "dialog power_logrank"}{...}
{vieweralsosee "[PSS-2] power logrank" "mansection PSS-2 powerlogrank"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power logrank, cluster" "help power_logrank_cluster_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power cox" "help power cox"}{...}
{vieweralsosee "[PSS-2] power exponential" "help power exponential"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stcox" "help stcox_zh"}{...}
{vieweralsosee "[ST] sts test" "help sts test"}{...}
{viewerjumpto "Syntax" "power_logrank_zh##syntax"}{...}
{viewerjumpto "Menu" "power_logrank_zh##menu"}{...}
{viewerjumpto "Description" "power_logrank_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_logrank_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_logrank_zh##options"}{...}
{viewerjumpto "Remarks: Using power logrank" "power_logrank_zh##remarks"}{...}
{viewerjumpto "Examples" "power_logrank_zh##examples"}{...}
{viewerjumpto "Stored results""power_logrank##results"}{...}
{viewerjumpto "References""power_logrank##references"}
{help power_logrank:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[PSS-2] power logrank} {hline 2}}对 log-rank 检验的
效能分析{p_end}
{p2col:}({mansection PSS-2 powerlogrank:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算样本大小

{p 8 20 2}
{opt power} {opt log:rank} [{it:surv1} [{it:surv2}]]
[{cmd:,} {opth p:ower(numlist)} 
{it:{help power_logrank##synoptions:选项}}] 


{phang}
计算效能 

{p 8 20 2}
{opt power} {opt log:rank} [{it:surv1} [{it:surv2}]]{cmd:,}
{opth n(numlist)}
[{it:{help power_logrank##synoptions:选项}}]


{phang}
计算效应大小

{p 8 20 2}
{opt power} {opt log:rank} [{it:surv1}]{cmd:,}
{opth n(numlist)} {opth p:ower(numlist)}
[{it:{help power_logrank##synoptions:选项}}]


{phang}
其中
{it:surv1} 是研究结束时对照组（参考组）的生存概率 {it:t*}，而
{it:surv2} 是实验组（对比组）在研究结束时的生存概率 {it:t*}。
{it:surv1} 和 {it:surv2} 可以以单一数字或以括号中的数值列表进行指定（参见 {help numlist_zh}）。

{synoptset 30 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{syntab:主}
{p2coldent:* {opth a:lpha(numlist)}}显著性水平；默认值为
   {cmd:alpha(0.05)}{p_end}
{p2coldent:* {opth p:ower(numlist)}}效能；默认值为 {cmd:power(0.8)}{p_end}
{p2coldent:* {opth b:eta(numlist)}}Ⅱ型错误概率；默认值为
   {cmd:beta(0.2)}{p_end}
{p2coldent:* {opth n(numlist)}}总样本大小；计算效能或
效应大小时必需{p_end}
{p2coldent:* {opth n1(numlist)}}对照组的样本大小{p_end}
{p2coldent:* {opth n2(numlist)}}实验组的样本大小{p_end}
{p2coldent:* {opth nrat:io(numlist)}}样本大小的比率，{cmd:N2/N1}；
默认值为 {cmd:nratio(1)}，表示组大小相等{p_end}
{synopt:{opt nfrac:tional}}允许分数样本大小{p_end}
{p2coldent:* {opth hr:atio(numlist)}}实验组与对照组的危险比；
默认值为 {cmd:hratio(0.5)}{p_end}
{p2coldent:* {opth lnhr:atio(numlist)}}实验组与对照组的对数危险比{p_end}
{synopt:{opt sch:oenfeld}}在计算中使用基于对数危险比的公式；默认情况下使用基于危险比的公式{p_end}
{synopt:{cmdab:effect(}{it:{help power_cox##effect:效应}}{cmd:)}}指定在输出中显示的效应类型；默认值是方法特定的{p_end}
INCLUDE help pss_testmainopts2.ihlp

{syntab:删失}
{synopt:{cmdab:simp:son(}{it:# # #}|{it:matname}{cmd:)}}在三个特定时间点上计算对照组的生存概率，以便计算事件（失效）的概率，使用赫西的规则假设均匀入组{p_end}
{synopt:{cmd:st1(}{it:{help varname_zh:varname_s varname_t}}{cmd:)}}变量
{it:varname_s}，包含对照组的生存概率，以及
{it:varname_t}，包含相应的时间点，以便使用数值积分计算事件（失效）的概率，假设均匀入组{p_end}
{p2coldent:* {opth wdp:rob(numlist)}}预计将退出研究的受试者比例；默认值为 {cmd:wdprob(0)}{p_end}

{syntab:表格}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_logrank##tablespec:表格规格}}{cmd:)}]}压制表格或以表格的形式显示结果；见
{manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}保存
表格数据到 {it:filename}；使用 {cmd:replace} 来覆盖现有
{it:filename}{p_end}

INCLUDE help pss_graphopts.ihlp

{syntab:迭代}
{synopt: {opt init(#)}}效应大小的初始值{p_end}
INCLUDE help pss_iteropts.ihlp

{synopt: {opt cluster}}进行CRD计算；见
    {manhelp power_logrank_cluster PSS-2:power logrank, cluster}{p_end}
INCLUDE help pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
INCLUDE help pss_numlist.ihlp
{p 4 6 2}{cmd:cluster} 和 {cmd:notitle} 在对话框中不可见。{p_end}


{synoptset 17}{...}
{marker effect}{...}
{synopthdr :效应}
{synoptline}
{synopt:{opt hr:atio}}危险比{p_end}
{synopt:{opt lnhr:atio}}对数危险比{p_end}
{synoptline}


{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 为

{p 16 16 2}
{it:{help power_logrank##column:列}}[{cmd::}{it:标签}]
[{it:列}[{cmd::}{it:标签}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:表格选项}}]

{pstd}
{it:列} 是下面定义的列之一，
而 {it:标签} 是一个列标签（可以包含引号和复合引号）。


{synoptset 28}{...}
{marker column}{...}
{synopthdr :列}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}效能{p_end}
{synopt :{opt beta}}Ⅱ型错误概率{p_end}
{synopt :{opt N}}受试者总数{p_end}
{synopt :{opt N1}}对照组受试者数量{p_end}
{synopt :{opt N2}}实验组受试者数量{p_end}
{synopt :{opt nratio}}样本大小比率，实验组与对照组{p_end}
{synopt :{opt delta}}效应大小{p_end}
{synopt :{opt E}}事件总数（失效数）{p_end}
{synopt :{opt hratio}}危险比{p_end}
{synopt :{opt lnhratio}}对数危险比{p_end}
{synopt :{opt s1}}对照组的生存概率{p_end}
{synopt :{opt s2}}实验组的生存概率{p_end}
{synopt :{opt Pr_E}}事件（失效）的总体概率{p_end}
{synopt :{opt Pr_w}}退出的概率{p_end}
{synopt :{opt target}}目标参数； {cmd:hratio} 或 {cmd:lnhratio}{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}如果指定，{cmd:beta}列将在默认表中替代{cmd:power}列显示。{p_end}
{p 4 6 2}如果指定，{cmd:lnhratio}列将在默认表中替代{cmd:hratio}列显示。{p_end}
{p 4 6 2}列 {cmd:s1} 和 {cmd:s2} 仅在指定时可用。{p_end}
{p 4 6 2}如果指定，列 {cmd:nratio} 和 {cmd:Pr_w} 将在默认表中显示。


INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power logrank} 使用 log-rank 检验计算比较两个组的生存函数的样本大小、效能或效应大小。可以使用 Freedman 或 Schoenfeld 方法获得结果。效应大小可以表示为危险比或对数危险比。该命令支持不平衡设计，并提供选项来考虑行政删失、均匀入组和退出研究的受试者。有关分层随机设计中的效能和样本大小分析，请参见
{manhelp power_logrank_cluster PSS-2:power logrank, cluster}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection PSS-2 powerlogrankQuickstart:快速入门}

        {mansection PSS-2 powerlogrankRemarksandexamples:备注和示例}

        {mansection PSS-2 powerlogrankMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{cmd:alpha()}, {cmd:power()}, {cmd:beta()}, {cmd:n()}, {cmd:n1()}, {cmd:n2()},
{cmd:nratio()}, {cmd:nfractional}; 请参见 {manhelp power##mainopts PSS-2: power}。

{phang}
{opth hratio(numlist)} 指定实验组与对照组的危险比（效应大小）。默认值为 {cmd:hratio(0.5)}。该值通常定义为 log-rank 检验希望检测到的实验程序相对于对照程序的临床显著改善。

{pmore}
您可以在 {cmd:hratio()} 中指定危险比，或在 {cmd:lnhratio()} 中指定对数危险比。默认值为 {cmd:hratio(0.5)}。如果同时指定了参数 {it:surv1} 和 {it:surv2}，则不允许使用 {cmd:hratio()}，而危险比将作为
ln({it:surv2})/ln({it:surv1}) 计算。

{pmore}
该选项不允许与效应大小的确定组合使用，并且不能和 {cmd:lnhratio()} 一起使用。

{phang}
{opth lnhratio(numlist)} 指定实验组与对照组的对数危险比（效应大小）。该值通常定义为 log-rank 检验希望检测到的实验程序相对于对照程序的临床显著改善。

{pmore}
您可以在 {cmd:hratio()} 中指定危险比，或在 {cmd:lnhratio()} 中指定对数危险比。默认值为 {cmd:hratio(0.5)}。如果同时指定了参数 {it:surv1} 和 {it:surv2}，则不允许使用 {cmd:lnhratio()}，而对数危险比的计算方式为
ln{c -(}ln({it:surv2})/ln({it:surv1}){c )-}。

{pmore}
该选项不允许与效应大小的确定组合使用，并且不能和 {cmd:hratio()} 一起使用。

{phang}
{cmd:schoenfeld} 请求使用基于对数危险比的公式进行计算，依据
{help power logrank##S1981:Schoenfeld (1981)}。默认情况下使用基于危险比的公式，依据
{help power logrank##F1982:Freedman (1982)}。

{phang}
{opt effect(effect)} 指定输出中报告的效应大小类型为 {cmd:delta}。{it:effect} 为 {cmd:hratio} 或 {cmd:lnhratio} 之一。默认情况下，效应大小 {cmd:delta} 是对于危险比测试的危险比，{cmd:effect(hratio)}，以及对于对数危险比测试的对数危险比，{cmd:effect(lnhratio)}（当 {cmd:schoenfeld} 被指定时）。

{phang}
{cmd:direction()}, {cmd:onesided}, {cmd:parallel}; 参见
{manhelp power##mainopts PSS-2: power}。
{cmd:direction(lower)} 是默认值。

{dlgtab:删失}

{phang}
{cmd:simpson(}{it:# # #}|{it:matname}{cmd:)} 指定
在三个特定时间点上的对照组生存概率，以使用赫西规则计算事件（失效）的概率，假设均匀入组。可以指定实际值或者包含这些值的 1 x 3 矩阵 {it:matname}。默认情况下，事件的概率近似为失效率的平均值 1-s_1 和 1-s_2；见
{mansection PSS-2 powerlogrankMethodsandformulas:{it:方法和公式}}
在 {bf:[PSS-2] power logrank} 中。{cmd:simpson()} 不能与 {cmd:st1()} 结合使用，并且如果指定了命令参数 {it:surv1} 或 {it:surv2} 也不得使用。该选项不允许用于效应大小的计算。

{phang}
{cmd:st1(}{it:{help varname_zh:varname_s varname_t}}{cmd:)} 指定变量
{it:varname_s}，包含对照组的生存概率，以及
{it:varname_t}，包含相应时间点，以使用数值积分计算事件（失效）的概率，假设均匀入组；见 {manhelp dydx R}。{it:varname_t} 的最小值和最大值必须分别为随访期的长度和研究的持续时间。默认情况下，事件的概率近似为失效率的平均值 1-s_1 和 1-s_2；见
{mansection PSS-2 powerlogrankMethodsandformulas:{it:方法和公式}} 在
{bf:[PSS-2] power logrank} 中。{cmd:st1()} 不能与 {cmd:simpson()} 结合使用，并且如果指定了命令参数 {it:surv1} 或 {it:surv2} 也不得使用。该选项不允许用于效应大小的计算。

{phang}
{opth wdprob(numlist)} 指定预计将退出研究的受试者比例。默认值为 {cmd:wdprob(0)}。{cmd:wdprob()} 仅在样本大小计算中允许使用。

INCLUDE help pss_taboptsdes.ihlp

INCLUDE help pss_graphoptsdes.ihlp
另见 {mansection PSS-2 powerlogrankSyntaxcolumn:列} 表在
{bf:[PSS-2] power logrank} 中使用的符号列表。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定效应大小估计的初始值
或者，如果指定了 {cmd:schoenfeld}，则根据效应大小的确定指定对数危险比的初始值。

INCLUDE help pss_iteroptsdes.ihlp

{pstd}
以下选项与 {cmd:power logrank} 可用，但未在对话框中显示：

{phang}
{opt cluster}; 见 {manhelp power_logrank_cluster PSS-2:power logrank, cluster}。

INCLUDE help pss_reportoptsdes.ihlp


{marker remarks}{...}
{title:备注：使用 power logrank}

{pstd}
{cmd:power logrank} 计算比较两个组中的生存者函数的 log-rank 检验的样本大小、效能或效应大小。所有计算都是针对双侧假设检验进行的，默认显著性水平设置为 0.05。您可以通过指定 {cmd:alpha()} 选项来更改显著性水平。您可以指定 {cmd:onesided} 选项来请求单侧检验。默认情况下，所有计算都假设是平衡或均等分配设计；参见 {manlink PSS-4 Unbalanced designs} 了解如何指定不平衡设计的描述。

{pstd}
要计算总样本大小，您指定效应大小，并在 {cmd:power()} 选项中可选择性地提供检验的效能。默认效能设置为 0.8。默认情况下，计算得到的样本大小向上取整。您可以指定 {cmd:nfractional} 选项来查看相应的分数样本大小；参见 {mansection PSS-4 UnbalanceddesignsRemarksandexamplesFractionalsamplesizes:{it:分数样本大小}} 在 {bf:[PSS-4] Unbalanced designs} 中的示例。{cmd:nfractional} 选项仅适用于样本大小的确定。

{pstd}
要计算效能，您必须在 {cmd:n()} 选项中指定总样本大小，以及一个效应大小。

{pstd}
效应大小可以在 {cmd:hratio()} 选项中指定为危险比，或者在 {cmd:lnhratio()} 选项中指定为对数危险比。如果都未指定，则默认为 0.5。

{pstd}
要计算效应大小，可以用危险比或对数危险比表示，您必须在 {cmd:n()} 选项中指定总样本大小；在 {cmd:power()} 选项中提供效能；并可选择指定效应的方向。默认为下限，{cmd:direction(lower)}，这意味着假设目标危险比小于 1，或目标对数危险比为负值。换句话说，实验治疗被认为是对照治疗的改善。如果您希望将方向更改为上限，意味着目标危险比大于 1，则使用 {cmd:direction(upper)}。

{pstd}
而不指定总样本大小 {cmd:n()}，您可以指定 {cmd:n1()} 和 {cmd:n2()} 中的组大小，或在计算效能或效应大小时指定其中一个组大小和 {cmd:nratio()}。另见 {mansection PSS-4 UnbalanceddesignsRemarksandexamplesTwosamples:{it:两个样本}} 在 {bf:[PSS-4] Unbalanced designs} 中获取更多细节。

{pstd}
如前所述，{cmd:power logrank} 的效应大小可以表示为危险比或对数危险比。默认情况下，输出中标记为 {cmd:delta} 的效应大小与 Freedman 方法的危险比相对应，且与 Schoenfeld 方法的对数危险比相对应。您可以通过指定 {cmd:effect()} 选项来更改此项：
{cmd:effect(hratio)}（默认）报告危险比和
{cmd:effect(lnhratio)} 报告对数危险比。

{pstd}
默认情况下，所有计算都假设没有删失。在存在 {help pss glossary##administrative_censoring:行政删失} 的情况下，您必须在研究结束时在对照组中指定生存概率作为第一个命令参数。您还可以指定实验组在研究结束时的生存概率作为第二个命令参数。否则，将使用指定的危险比或对数危险比和对照组的生存概率计算该值。为适应在均匀入组假设下的 {help pss glossary##accrual_period:入组期}，
生存信息可能会通过选项 {cmd:simpson()} 或选项 {cmd:st1()} 提供；见
{mansection PSS-2 powerlogrankRemarksandexamplesIncludinginformationaboutsubjectaccrual:{it:包括有关受试者入组的信息}} 在 {bf:[PSS-2] power logrank} 中的详细信息。

{pstd}
在计算样本大小时，您可以通过在 {cmd:wdprob()} 选项中指定预计的退出比例来调整受试者退出研究的情况。

{pstd}
默认情况下，{cmd:power logrank} 为危险比检验执行计算。
使用 {cmd:schoenfeld} 选项请求对数危险比检验的计算。

{pstd}
在存在删失的情况下，效应大小的确定需要迭代。
估计的危险比或（如果指定了 {cmd:schoenfeld}）对数危险比的 默认初始值是基于假设没有删失的公式得出的。可以通过指定 {cmd:init()} 选项来更改该值。请参见 {manhelp power PSS-2} 以获取其它控制迭代过程的选项的描述。


{marker examples}{...}
{title:示例}

    {title:示例：计算样本大小}

{pstd}
计算检测默认危险比为 0.5 所需的失效数量，
使用 Freedman 方法；假设双侧假设检验，显著性水平 5%
，期望的效能为 80%，每组的观察数量相等（默认值）

{phang2}{cmd:. power logrank}

{pstd}
与上述相同，但使用 Schoenfeld 方法

{phang2}{cmd:. power logrank, schoenfeld}

{pstd}
计算在存在删失的情况下，检测生存从 50% 到 60% 的变化所需的样本大小，
使用单侧检验

{phang2}{cmd:. power logrank 0.5 0.6, onesided}

{pstd}
与上述相同，但指定对照组的生存概率
和危险比

{phang2}{cmd:. power logrank 0.5, hratio(0.7370) onesided}

{pstd}
与上述相同，假设实验组的样本大小为对照组的两倍

{phang2}{cmd:. power logrank 0.5, nratio(2) hratio(0.7370) onesided}

    {title:示例：计算效能}

{pstd}
继续上述示例，我们认为在对照组中只能招募 50 名受试者，实验组中招募 100 名受试者。我们调查在这种情况下，检验的效能为多少。

{phang2}{cmd:. power logrank 0.5, n(150) nratio(2) hratio(0.7370) onesided}

    {title:示例：最小可检测的危险比}

{pstd}
继续上述示例，确定在样本大小为 150 的情况下，对于90%效能的最小可检测危险比；默认假设目标危险比小于 1

{phang2}{cmd:. power logrank, power(0.9) n(150) nratio(2) onesided}

    {title:示例：包括受试者入组信息}

{pstd}
继续上述示例，假设受试者将在 18 个月内均匀入组，并随后跟踪 24 个月。从针对对照组的生存函数的 Kaplan-Meier 估计中，在时间点 f = 24、0.5r + f = 33、和 T = 42 个月的生存概率分别为 0.70、0.5 和 0.45。我们将使用赫西规则来计算失效的概率。我们还将使用 Schoenfeld 方法。

{phang2}{cmd:. power logrank, schoenfeld simpson(0.7 0.5 0.45)}

{pstd}
有时候，我们可能在多个时间点上有对照组的生存概率的估计。在这种情况下，我们可以使用数值积分来估计失效的总体概率，而不是使用赫西规则。这可以通过使用选项 {cmd:st1()} 来完成。作为插图，继续以上示例，假设我们的生存估计和时间存储在变量 {cmd:surv} 和 {cmd:time} 中。

        {cmd:. clear}
        {cmd:. set obs 3}
        {cmd:. input surv time}
 
                 surv       time
          1.  {cmd:.7  24}
          2.  {cmd:.5  33}
          3.  {cmd:.45 42}

{pstd}
我们在选项 {cmd:st1()} 中指定这些变量，并获得与使用赫西规则相同的结果。

{phang2}{cmd:. power logrank, schoenfeld st1(surv time)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:power logrank} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(alpha)}}显著性水平{p_end}
{synopt:{cmd:r(power)}}效能{p_end}
{synopt:{cmd:r(beta)}}Ⅱ型错误概率{p_end}
{synopt:{cmd:r(delta)}}效应大小{p_end}
{synopt:{cmd:r(N)}}总样本大小{p_end}
{synopt:{cmd:r(N_a)}}实际样本大小{p_end}
{synopt:{cmd:r(N1)}}对照组样本大小{p_end}
{synopt:{cmd:r(N2)}}实验组样本大小{p_end}
{synopt:{cmd:r(nratio)}}样本大小比率，{cmd:N2/N1}{p_end}
{synopt:{cmd:r(nratio_a)}}实际样本大小比率{p_end}
{synopt:{cmd:r(nfractional)}}如果指定了 {cmd:nfractional}，则为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt:{cmd:r(onesided)}}如果是单侧检验则为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt:{cmd:r(E)}}事件总数（失效）{p_end}
{synopt:{cmd:r(hratio)}}危险比{p_end}
{synopt:{cmd:r(lnhratio)}}对数危险比{p_end}
{synopt:{cmd:r(s1)}}对照组的生存概率（如果指定）{p_end}
{synopt:{cmd:r(s2)}}实验组的生存概率（如果指定）{p_end}
{synopt:{cmd:r(Pr_E)}}事件（失效）的概率{p_end}
{synopt:{cmd:r(Pr_w)}}退出的概率{p_end}
{synopt:{cmd:r(t_min)}}最小时间（如果指定了 {cmd:st1()}）{p_end}
{synopt:{cmd:r(t_max)}}最大时间（如果指定了 {cmd:st1()}）{p_end}
INCLUDE help pss_rrestab_sc.ihlp
{synopt:{cmd:r(init)}}危险比或对数危险比的初始值{p_end}
INCLUDE help pss_rresiter_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:logrank}{p_end}
{synopt:{cmd:r(test)}}{cmd:Freedman} 或 {cmd:Schoenfeld}{p_end}
{synopt:{cmd:r(effect)}}{cmd:hratio} 或 {cmd:lnhratio}{p_end}
{synopt:{cmd:r(survvar)}}包含生存概率的变量名称（如果指定了 {cmd:st1()}）{p_end}
{synopt:{cmd:r(timevar)}}包含时间点的变量名称（如果指定了 {cmd:st1()}）{p_end}
{synopt:{cmd:r(direction)}}{cmd:lower} 或 {cmd:upper}{p_end}
INCLUDE help pss_rrestab_mac.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
INCLUDE help pss_rrestab_mat.ihlp
{synopt:{cmd:r(simpmat)}}对照组生存概率（如果指定了 {cmd:simpson()}）{p_end}


{marker references}{...}
{title:参考文献}

{marker S1981}{...}
{phang}
Schoenfeld, D. A. 1981.  The asymptotic properties of nonparametric tests for
comparing survival distributions.  {it:Biometrika} 68: 316-319.

{marker F1982}{...}
{phang}
Freedman, L. S. 1982.  Tables of the number of patients required in clinical
trials using the logrank test.  {it:Statistics in Medicine} 1: 121-129.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_logrank.sthlp>}