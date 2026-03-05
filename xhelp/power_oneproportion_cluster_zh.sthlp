{smcl}
{* *! version 1.0.10  21mar2019}{...}
{viewerdialog power "dialog power_oneprop_cluster"}{...}
{vieweralsosee "[PSS-2] power oneproportion, cluster" "mansection PSS-2 poweroneproportion,cluster"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power oneproportion" "help power_oneproportion_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] prtest" "help prtest_zh"}{...}
{viewerjumpto "Syntax" "power_oneproportion_cluster_zh##syntax"}{...}
{viewerjumpto "Menu" "power_oneproportion_cluster_zh##menu"}{...}
{viewerjumpto "Description" "power_oneproportion_cluster_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_oneproportion_cluster_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_oneproportion_cluster_zh##options"}{...}
{viewerjumpto "Remarks: Using power oneproportion, cluster" "power_oneproportion_cluster_zh##remarks"}{...}
{viewerjumpto "Examples" "power_oneproportion_cluster_zh##examples"}{...}
{viewerjumpto "Stored results" "power_oneproportion_cluster_zh##results"}
{help power_oneproportion_cluster:English Version}
{hline}{...}
{p2colset 1 41 43 2}{...}
{p2col:{bf:[PSS-2] power oneproportion, cluster} {hline 2}}群体随机设计下的单样本比例检验的功效分析{p_end}
{p2col:}({mansection PSS-2 poweroneproportion,cluster:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{phang}
计算集群数量

{p 8 20 2}
{opt power} {opt oneprop:ortion} {it:p0} {it:pa}{cmd:,}
{c -(}{opth m(numlist)} {c |} {opth n(numlist)} {cmd:cluster}{c )-}
[{it:{help power_oneproportion_cluster##synoptions:选项}}] 

{phang}
计算集群大小

{p 8 20 2}
{opt power} {opt oneprop:ortion} {it:p0} {it:pa}{cmd:,}
{opth k(numlist)}
[{it:{help power_oneproportion_cluster##synoptions:选项}}] 

{phang}
计算功效 

{p 8 20 2}
{opt power} {opt oneprop:ortion} {it:p0} {it:pa}{cmd:,}
{opth k(numlist)}
{c -(}{opth m(numlist)} {c |} {opth n(numlist)}{c )-}
[{it:{help power_oneproportion_cluster##synoptions:选项}}]

{phang}
计算效应大小和目标比例

{p 8 20 2}
{opt power} {opt oneprop:ortion} {it:p0}{cmd:,}
{opth k(numlist)}
{c -(}{opth m(numlist)} {c |} {opth n(numlist)}{c )-}
{opth p:ower(numlist)}
[{it:{help power_oneproportion_cluster##synoptions:选项}}]

{phang}
其中
{it:p0} 是零假设下的比例或零假设下比例的值，{it:pa} 是对立假设下的比例或目标比例的值。{it:p0} 和 {it:pa} 可以指定为单个数值或括号中的数值列表（参见 {help numlist_zh}）。

{synoptset 30 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{synopt :{opt cluster}}针对CRD进行计算；由 {cmd:k()} 或 {cmd:m()} 隐含{p_end}
{p2coldent:* {opth a:lpha(numlist)}}显著性水平；默认为 {cmd:alpha(0.05)}{p_end}
{p2coldent:* {opth p:ower(numlist)}}功效；默认为 {cmd:power(0.8)}{p_end}
{p2coldent:* {opth b:eta(numlist)}}第二类错误概率；默认为 {cmd:beta(0.2)}{p_end}
{p2coldent:* {opth k(numlist)}}集群数量{p_end}
{p2coldent:* {opth m(numlist)}}集群大小{p_end}
{p2coldent:* {opth n(numlist)}}观察数量{p_end}
{synopt:{opt nfrac:tional}}允许集群、集群大小和样本大小为分数{p_end}
{p2coldent:* {opth diff(numlist)}}对立比例与零比例之间的差异 {it:pa} - {it:p0}；指定为替代比例 {it:pa}{p_end}
{p2coldent:* {opth rho(numlist)}}组内相关；默认为 {cmd:rho(0.5)}{p_end}
{p2coldent:* {opth cvcl:uster(numlist)}}集群大小的变异系数{p_end}
INCLUDE help pss_testmainopts3.ihlp

{syntab:表}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_oneproportion_cluster##tablespec:表格规范}}{cmd:)}]}抑制表格或将结果显示为表格；参见 {manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}将表格数据保存到 {it:filename}；使用 {cmd:replace} 覆盖现有 {it:filename}{p_end}

INCLUDE help pss_graphopts.ihlp

{syntab:迭代}
{synopt: {opt init(#)}}集群数量、集群大小或比例的初始值{p_end}
INCLUDE help pss_iteropts.ihlp

INCLUDE help pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
INCLUDE help pss_numlist.ihlp
{p 4 6 2}{cmd:notitle} 不会出现在对话框中。{p_end}

{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 为

{p 16 16 2}
{it:{help power_oneproportion_cluster##column:列}}[{cmd::}{it:label}]
[{it:列}[{cmd::}{it:label}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:表格选项}}]

{pstd}
{it:列} 是下面定义的列之一，
{it:label} 是列标签（可以包含引号和复合引号）。

{synoptset 28}{...}
{marker column}{...}
{synopthdr :列}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}功效{p_end}
{synopt :{opt beta}}第二类错误概率{p_end}
{synopt :{opt K}}集群数量{p_end}
{synopt :{opt M}}集群大小{p_end}
{synopt :{opt N}}观察数量{p_end}
{synopt :{opt delta}}效应大小{p_end}
{synopt :{opt p0}}零假设比例{p_end}
{synopt :{opt pa}}对立假设比例{p_end}
{synopt :{opt diff}}对立与零比例之间的差价{p_end}
{synopt :{opt rho}}组内相关{p_end}
{synopt :{opt CV_cluster}}集群大小的变异系数{p_end}
{synopt :{opt target}}目标参数；与 {cmd:pa} 同义{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}如果指定列 {cmd:beta}，则在默认表中替换列 {cmd:power} 。{p_end}
{p 4 6 2}如果指定列 {cmd:diff} 和 {cmd:CV_cluster}，则在默认表中显示。{p_end}

INCLUDE help menu_pss

{marker description}{...}
{title:描述}

{pstd}
{cmd:power} {cmd:oneproportion,} {cmd:cluster} 计算在集群随机设计 (CRD) 下单样本比例检验的集群数量、集群大小、功效或目标比例。它根据集群大小、功效以及零假设和对立假设下的比例值计算集群数量。也根据集群数量、功效以及零假设和对立假设下的比例值计算集群大小。或者，它根据集群数量、集群大小以及零假设和对立假设下的比例值计算功效，或者根据集群数量、集群大小、功效和零假设计算目标比例。有关单样本比例检验功效和样本大小分析的一般讨论，请参见 {manhelp power_oneproportion PSS-2:power oneproportion}。有关 {cmd:power} 命令的通用介绍，请参见 {manhelp power PSS-2}。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection PSS-2 poweroneproportion,clusterQuickstart:快速开始}

        {mansection PSS-2 poweroneproportion,clusterRemarksandexamples:备注和示例}

        {mansection PSS-2 poweroneproportion,clusterMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。

{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:cluster} 指定进行 CRD 的计算。这个选项在指定 {cmd:k()} 或 {cmd:m()} 选项时隐含。若使用 {cmd:n()} 选项计算集群数量，则必须指定此选项。

{phang}
{cmd:alpha()},{cmd:power()},{cmd:beta()}; 参见 {manhelp power##mainopts PSS-2: power}。

{phang}
{opth k(numlist)} 指定集群数量。此选项在计算集群大小、功效或效应大小时是必需的。

{phang}
{opth m(numlist)} 指定集群大小。此选项或 {cmd:n()} 选项在计算集群数量、功效或效应大小时是必需的。 {cmd:m()} 可以包含非整数值。在这种情况下，或者如果指定了 {cmd:cvcluster()} 选项，则 {cmd:m()} 表示平均集群大小。

{phang}
{opth n(numlist)} 指定观察数量。此选项或 {cmd:m()} 选项在计算集群数量、功效或效应大小时是必需的。

{phang}
{cmd:nfractional}；参见 {manhelp power##mainopts PSS-2: power}。在计算集群数量和集群大小时，允许使用 {cmd:nfractional} 选项以显示集群数量、集群大小和样本大小的分数值（未四舍五入）。

{phang}
{opth diff(numlist)} 指定对立比例与零比例之间的差异 {it:pa} - {it:p0}。您可以指定替代比例 {it:pa} 作为命令参数，或指定两个比例之间的差异在 {opt diff()} 中。如果指定 {opt diff(#)}，对立比例被计算为 {it:pa} = {it:p0} + {it:#}。此选项在确定效应大小时不被允许。

{phang}
{opth rho(numlist)} 指定组内相关。默认值为 {cmd:rho(0.5)}。

{phang}
{opth cvcluster(numlist)} 指定集群大小的变异系数。此选项用于变化集群大小的情况。

{phang}
{cmd:direction()},{cmd:onesided},{cmd:parallel}; 参见 {manhelp power##mainopts PSS-2: power}。

INCLUDE help pss_taboptsdes.ihlp

INCLUDE help pss_graphoptsdes.ihlp
另请参见 {mansection PSS-2 poweroneproportion,clusterSyntaxcolumn:列} 表中的图表所用符号列表。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定用于样本大小确定的集群数量或集群大小的初始值，或效应大小确定的比例的初始值。默认使用闭式法正态近似来计算估计参数的初始值。

INCLUDE help pss_iteroptsdes.ihlp

{pstd}
以下选项可与 {cmd:power oneproportion, cluster} 一起使用，但不显示在对话框中：

INCLUDE help pss_reportoptsdes.ihlp

{marker remarks}{...}
{title:备注：使用 power oneproportion, cluster}

{pstd}
{cmd:power} {cmd:oneproportion,} {cmd:cluster}请求为 CRD 进行 {cmd:power} {cmd:oneproportion} 命令的计算。在 CRD 中，参与者或集群的组被随机分配，而不是个别参与者，因此样本大小由集群数量和集群大小决定。因此，样本大小的确定由集群大小和集群数量的确定组成。有关使用 {cmd:power} {cmd:oneproportion} 的一般讨论，请参见 {manhelp power_oneproportion PSS-2:power oneproportion}。以下讨论是关于 CRD 的。

{pstd}
如果指定 {cmd:cluster} 选项，则包括 {cmd:k()} 来指定集群数量，或包括 {cmd:m()} 来指定集群大小， {helpb power oneproportion} 命令将为 CRD 的单样本比例检验执行计算。 CRD 的计算基于大样本 Wald z 检验。

{pstd}
所有计算基于双侧假设检验，默认情况下，显著性水平设置为 0.05。您可以通过指定 {cmd:alpha()} 选项来更改显著性水平。您可以指定 {cmd:onesided} 选项以请求单侧检验。

{pstd}
要计算集群数量，您必须将零假设和对立假设下的均值分别指定为命令参数 {it:m0} 和 {it:ma}，并在 {cmd:m()} 选项中指定集群大小。在不指定 {cmd:m()} 选项的情况下，您也可以在 {cmd:n()} 选项中指定样本大小，并指定 {cmd:cluster} 选项，以便 {cmd:power oneproportion} 将为集群随机设计而执行其计算，而不是默认的个体水平设计。您还可以在 {cmd:power()} 选项中指定检验的功效。

{pstd}
要计算集群大小，您必须在 {cmd:k()} 选项中指定零假设比例 {it:p0}、对立假设比例 {it:pa} 和集群数量。您还可以在 {cmd:power()} 选项中指定测试的功效。

{pstd}
要计算功效，您必须在 {cmd:k()} 选项中指定集群数量，在 {cmd:m()} 选项中指定集群大小或在 {cmd:n()} 选项中指定样本大小，零假设比例 {it:p0} 和对立假设比例 {it:pa}。

{pstd}
在计算集群数量、集群大小或功效时，您可以指定对立比例 {it:pa}，可以通过 {cmd:diff()} 选项指定对立比例与零假设比例 {it:pa} - {it:p0} 的差异。

{pstd}
效应大小被定义为对立和零假设比例之间的标准化差异。在 CRD 中，效应大小也会根据集群设计进行调整；参见 {mansection PSS-2 poweroneproportion,clusterMethodsandformulas:{it:方法和公式}}。

{pstd}
要计算效应大小及相应的目标比例，您必须在 {cmd:k()} 选项中指定集群数量，在 {cmd:m()} 选项中指定集群大小或在 {cmd:n()} 选项中指定样本大小，在 {cmd:power()} 选项中指定功效，以及零假设比例 {it:p0}。您还可以在 {cmd:direction()} 选项中指定效应的方向。默认情况下，方向为上 {cmd:direction(upper)}；有关其他详细信息，请参见 {mansection PSS-2 poweroneproportionRemarksandexamplesUsingpoweroneproportion:{it:使用 power oneproportion}}。

{pstd}
所有计算假定组内相关为 0.5。您可以通过指定 {cmd:rho()} 选项来更改此值。此外，默认假设所有集群具有相同的大小，除非在 {cmd:cvcluster()} 选项中指定集群大小的变异系数。

{pstd}
默认情况下，计算的集群数量、集群大小和样本大小将向上取整。但是，您可以指定 {cmd:nfractional} 选项以查看相应的分数值；参见 {mansection PSS-4 UnbalanceddesignsRemarksandexamplesFractionalsamplesizes:{it:分数样本大小}}中的示例。如果在计算集群大小时指定了 {cmd:cvcluster()} 选项，则集群大小表示平均集群大小，因此不会被四舍五入。当在 {cmd:n()} 选项中指定样本大小时，可能会报告分数集群大小，以适应指定的集群数量和样本大小。

{pstd}
{cmd:power oneproportion,} {cmd:cluster} 的某些计算需要迭代，例如在双侧检验中计算集群数量；有关详细信息，请参见 {mansection PSS-2 poweroneproportion,clusterMethodsandformulas:{it:方法和公式}}和 {manhelp power PSS-2}，以获取控制迭代的选项描述。

{marker examples}{...}
{title:示例}

    {title:示例：计算集群数量}

{pstd}
假设集群大小为 5，计算检测到比例为 0.4 所需的集群数量，该值在零假设下为 0.2；假设 5% 的显著性水平、80% 的功效和 0.5 的组内相关（默认值）{p_end}

{phang2}{cmd:. power oneproportion 0.2 0.4, m(5)}

{pstd}
上述相同，只是组内相关为 0.2{p_end}

{phang2}{cmd:. power oneproportion 0.2 0.4, m(5) rho(0.2)}

{pstd}
上述相同，但集群大小变化，变异系数为 0.6{p_end}

{phang2}{cmd:. power oneproportion 0.2 0.4, m(5) cvcluster(0.6)}

{pstd}
与第一个示例相同，使用单侧检验，显著性水平为 1%{p_end}

{phang2}{cmd:. power oneproportion 0.2 0.4, m(5) alpha(0.01) onesided}

{pstd}
指定一组组内相关，绘制结果图{p_end}

{phang2}{cmd:. power oneproportion 0.2 0.4, m(5) rho(0.1(0.1)0.5) graph}


    {title:示例：计算集群大小}

{pstd}
给定 30 个集群，计算检测到比例为 0.4 所需的集群大小，该值在零假设下为 0.2；假设 5% 的显著性水平、80% 的功效和 0.5 的组内相关（默认值）{p_end}

{phang2}{cmd:. power oneproportion 0.2 0.4, k(30)}

{pstd}
如上所述，但对于 30、35、40、45、50 个集群，绘制结果图{p_end}

{phang2}{cmd:. power oneproportion 0.2 0.4, k(30(5)50) graph}

{pstd}
如上所述，但计算分数集群大小{p_end}

{phang2}{cmd:.  power oneproportion 0.2 0.4, k(30(5)50) graph nfractional}


    {title:示例：计算功效}
    
{pstd}
计算 30 个集群，集群大小为 5，默认 5% 显著性水平的双侧检验的功效，其中零假设和对立假设下的比例值被分别知为 0.2 和 0.4；使用默认值 0.5 作为组内相关{p_end}

{phang2}{cmd:. power oneproportion 0.2 0.4, k(30) m(5)}

{pstd}
计算多个替代比例的功效，并绘制结果图{p_end}

{phang2}{cmd:. power oneproportion 0.2 (0.3 0.35 0.4 0.45), k(30) m(5) graph}


    {title:示例：计算目标比例}

{pstd}
计算使用 30 个集群和集群大小为 5 的双侧检验所能检测到的超过 0.2 的最小比例值；假设功效为 80%、显著性水平为 5% 以及组内相关为0.5 (默认值){p_end}
    
{phang2}{cmd:. power oneproportion 0.2, k(30) m(5) power(0.8)}

{pstd}
计算能够检测到的低于 0.2 的最大比例值{p_end}

{phang2}{cmd:. power oneproportion 0.2, k(30) m(5) power(0.8) direction(lower)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:power} {cmd:oneproportion,} {cmd:cluster} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(alpha)}}显著性水平{p_end}
{synopt:{cmd:r(power)}}功效{p_end}
{synopt:{cmd:r(beta)}}第二类错误的概率{p_end}
{synopt:{cmd:r(delta)}}效应大小{p_end}
{synopt:{cmd:r(K)}}集群数量{p_end}
{synopt:{cmd:r(M)}}集群大小{p_end}
{synopt:{cmd:r(N)}}参与者数量{p_end}
{synopt:{cmd:r(nfractional)}}{cmd:1} 如果指定了 {cmd:nfractional}，否则为 {cmd:0}{p_end}
{synopt:{cmd:r(onesided)}}{cmd:1} 表示单侧检验，{cmd:0}表示其他情况{p_end}
{synopt:{cmd:r(p0)}}零假设下的比例{p_end}
{synopt:{cmd:r(pa)}}对立假设下的比例{p_end}
{synopt:{cmd:r(diff)}}对立和零假设比例之间的差异{p_end}
{synopt:{cmd:r(rho)}}组内相关{p_end}
{synopt:{cmd:r(CV_cluster)}}集群大小的变异系数{p_end}
INCLUDE help pss_rrestab_sc.ihlp
{synopt:{cmd:r(init)}}估计参数的初始值{p_end}
INCLUDE help pss_rresiter_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:oneproportion}{p_end}
{synopt:{cmd:r(design)}}{cmd:CRD}{p_end}
{synopt:{cmd:r(test)}}{cmd:wald}{p_end}
{synopt:{cmd:r(direction)}}{cmd:upper} 或 {cmd:lower}{p_end}
INCLUDE help pss_rrestab_mac.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(pss_table)}}结果表{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_oneproportion_cluster.sthlp>}