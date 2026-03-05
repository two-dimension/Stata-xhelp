{smcl}
{* *! version 1.0.9  27feb2019}{...}
{viewerdialog power "dialog power_onemean_cluster"}{...}
{vieweralsosee "[PSS-2] power onemean, cluster" "mansection PSS-2 poweronemean,cluster"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power onemean" "help power_onemean_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ztest" "help ztest_zh"}{...}
{viewerjumpto "Syntax" "power_onemean_cluster_zh##syntax"}{...}
{viewerjumpto "Menu" "power_onemean_cluster_zh##menu"}{...}
{viewerjumpto "Description" "power_onemean_cluster_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_onemean_cluster_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_onemean_cluster_zh##options"}{...}
{viewerjumpto "Remarks: Using power onemean, cluster" "power_onemean_cluster_zh##remarks"}{...}
{viewerjumpto "Examples" "power_onemean_cluster_zh##examples"}{...}
{viewerjumpto "Stored results""power_onemean_cluster##results"}
{help power_onemean_cluster:English Version}
{hline}{...}
{p2colset 1 35 37 2}{...}
{p2col:{bf:[PSS-2] power onemean, cluster} {hline 2}}单样本均值检验的功效分析，CRD{p_end}
{p2col:}({mansection PSS-2 poweronemean,cluster:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算集群数量

{p 8 20 2}
{opt power} {opt onemean} {it:m0} {it:ma}{cmd:,}
{c -(}{opth m(numlist)} {c |} {opth n(numlist)} {cmd:cluster}{c )-}
[{it:{help power_onemean_cluster##synoptions:选项}}] 


{phang}
计算集群大小

{p 8 20 2}
{opt power} {opt onemean} {it:m0} {it:ma}{cmd:,}
{opth k(numlist)}
[{it:{help power_onemean_cluster##synoptions:选项}}] 


{phang}
计算功效 

{p 8 20 2}
{opt power} {opt onemean} {it:m0} {it:ma}{cmd:,}
{opth k(numlist)}
{c -(}{opth m(numlist)} {c |} {opth n(numlist)}{c )-}
[{it:{help power_onemean_cluster##synoptions:选项}}]


{phang}
计算效应量和目标均值

{p 8 20 2}
{opt power} {opt onemean} {it:m0}{cmd:,}
{opth k(numlist)}
{c -(}{opth m(numlist)} {c |} {opth n(numlist)}{c )-}
{opth p:ower(numlist)}
[{it:{help power_onemean_cluster##synoptions:选项}}]


{phang}
其中
{it:m0} 是零假设下的均值（假设均值），而 {it:ma} 是备择假设下的均值（目标均值）。 
{it:m0} 和 {it:ma} 可以分别指定为一个数字或括号中的值列表（见 {help numlist_zh}）。

{synoptset 30 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{synopt :{opt cluster}}对CRD进行计算；由 {cmd:k()} 或 {cmd:m()} 隐含{p_end}
{p2coldent:* {opth a:lpha(numlist)}}显著性水平；默认值为
   {cmd:alpha(0.05)}{p_end}
{p2coldent:* {opth p:ower(numlist)}}功效；默认值为 {cmd:power(0.8)}{p_end}
{p2coldent:* {opth b:eta(numlist)}}第二类错误的概率；默认值为
   {cmd:beta(0.2)}{p_end}
{p2coldent:* {opth k(numlist)}}集群数量{p_end}
{p2coldent:* {opth m(numlist)}}集群大小{p_end}
{p2coldent:* {opth n(numlist)}}样本数量{p_end}
{synopt:{opt nfrac:tional}}允许集群数量、集群大小和样本数量为分数{p_end}
{p2coldent:* {opth diff(numlist)}}备择均值和零均值之间的差异，{it:ma} - {it:m0}；可在此处指定，而不是备择均值 {it:ma}{p_end}
{p2coldent:* {opth sd(numlist)}}标准差；默认值为
    {cmd:sd(1)}{p_end}
{p2coldent:* {opth rho(numlist)}}组内相关；默认值为
{cmd:rho(0.5)}{p_end}
{p2coldent:* {opth cvcl:uster(numlist)}}集群大小的变异系数{p_end}
INCLUDE help pss_testmainopts3.ihlp

{syntab:表格}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_onemean_cluster##tablespec:表格规范}}{cmd:)}]}抑制表格或将结果显示为表格；见
{manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}将表格数据保存到 {it:filename}；使用 {cmd:replace} 覆盖现有的 {it:filename}{p_end}

INCLUDE help pss_graphopts.ihlp

{syntab:迭代}
{synopt: {opt init(#)}}集群数量、集群大小或均值的初始值{p_end}
INCLUDE help pss_iteropts.ihlp

INCLUDE help pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
INCLUDE help pss_numlist.ihlp
{p 4 6 2}{cmd:notitle} 不会出现在对话框中.{p_end}


{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 为

{p 16 16 2}
{it:{help power_onemean_cluster##column:列}}[{cmd::}{it:标签}]
[{it:列}[{cmd::}{it:标签}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:表格选项}}]

{pstd}
{it:列} 是下面定义的列之一，
并且 {it:标签} 是列标签（可以包含引号和复合引号）。


{synoptset 28}{...}
{marker column}{...}
{synopthdr :列}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}功效{p_end}
{synopt :{opt beta}}第二类错误概率{p_end}
{synopt :{opt K}}集群数量{p_end}
{synopt :{opt M}}集群大小{p_end}
{synopt :{opt N}}样本数量{p_end}
{synopt :{opt delta}}效应量{p_end}
{synopt :{opt m0}}零假设均值{p_end}
{synopt :{opt ma}}备择假设均值{p_end}
{synopt :{opt diff}}备择均值和零均值之间的差异{p_end}
{synopt :{opt sd}}标准差{p_end}
{synopt :{opt rho}}组内相关{p_end}
{synopt :{opt CV_cluster}}集群大小的变异系数{p_end}
{synopt :{opt target}}目标参数；{cmd:ma} 的同义词{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}列 {cmd:beta} 在默认表中代替列 {cmd:power} 显示（如果指定）{p_end}
{p 4 6 2}列 {cmd:diff} 和 {cmd:CV_cluster} 如果指定则显示在默认表中{p_end}


INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power} {cmd:onemean,} {cmd:cluster} 计算在集群随机设计（CRD）中的单样本均值检验的集群数量、集群大小、功效或目标均值。它根据集群大小、功效和零假设与备择假设均值的值来计算集群数量。它还可以根据集群数量、功效和零假设与备择假设均值的值来计算集群大小。或者，它可以根据集群数量、集群大小以及零假设和备择假设均值的值来计算功效，或者根据集群数量、集群大小、功效和零假设均值来计算目标均值。有关单样本均值检验的功效和样本量分析的一般讨论，请参见 {manhelp power_onemean PSS-2:power onemean}。有关 {cmd:power} 命令及其假设检验的一般介绍，请参见 {manhelp power PSS-2}。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection PSS-2 poweronemean,clusterQuickstart:快速开始}

        {mansection PSS-2 poweronemean,clusterRemarksandexamples:备注与示例}

        {mansection PSS-2 poweronemean,clusterMethodsandformulas:方法与公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:cluster} 指定应对 CRD 进行计算。当指定 {cmd:k()} 或 {cmd:m()} 选项时，隐含包含此选项。如果使用 {cmd:n()} 选项计算集群数量，则需要此选项。

{phang}
{cmd:alpha()}, {cmd:power()}, {cmd:beta()}；见
{manhelp power##mainopts PSS-2: power}。

{phang}
{opth k(numlist)} 指定集群数量。选择此选项是计算集群大小、功效或效应量的必要条件。

{phang}
{opth m(numlist)} 指定集群大小。该选项或 {cmd:n()} 选项是计算集群数量、功效或效应量的必要条件。{cmd:m()} 可以包含非整数值。在这种情况下，或者如果指定了 {cmd:cvcluster()} 选项，则 {cmd:m()} 表示平均集群大小。

{phang}
{opth n(numlist)} 指定观察数量。该选项或 {cmd:m()} 选项是在计算集群数量、功效或效应量的必要条件。

{phang}
{cmd:nfractional}；见 {manhelp power##mainopts PSS-2: power}。
对于集群数量和集群大小的计算，允许 {cmd:nfractional} 选项以显示不四舍五入的集群数量、集群大小和样本大小的分数值。

{phang}
{opt diff()}、{opt sd()}；见
{manhelp power_onemean PSS-2:power onemean}。

{phang}
{opth rho(numlist)} 指定组内相关。默认值为 {cmd:rho(0.5)}。

{phang}
{opth cvcluster(numlist)} 指定集群大小的变异系数。使用它有可变的集群大小。

{phang}
{cmd:direction()}、{cmd:onesided}、{cmd:parallel}；见 
{manhelp power##mainopts PSS-2: power}。

INCLUDE help pss_taboptsdes.ihlp

INCLUDE help pss_graphoptsdes.ihlp
另请参见 {mansection PSS-2 poweronemean,clusterSyntaxcolumn:列} 表中的图表所使用的符号。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定集群数量或集群大小的初始值，用于样本量确定，或指定效应量确定的均值的初始值。默认情况下，使用封闭形式的正态近似来计算参数的初始估计值。

INCLUDE help pss_iteroptsdes.ihlp

{pstd}
以下选项适用于 {cmd:power onemean, cluster} 但未在对话框中显示：

INCLUDE help pss_reportoptsdes.ihlp


{marker remarks}{...}
{title:备注: 使用 power onemean, cluster}

{pstd}
{cmd:power} {cmd:onemean,} {cmd:cluster} 请求在 CRD 中进行 {cmd:power} {cmd:onemean} 命令的计算。在 CRD 中，受试者或集群组被随机化，而不是单个受试者，因此样本大小由集群数量和集群大小决定。样本量的确定因此包括在给定集群大小情况下确定集群数量或在给定集群数量情况下确定集群大小。有关使用 {cmd:power} {cmd:onemean} 的一般讨论，请参见 {manhelp power_onemean PSS-2:power onemean}。下面的讨论是特定于 CRD 的。

{pstd}
如果您指定 {cmd:cluster} 选项，请包括 {cmd:k()} 来指定集群数量，或包括 {cmd:m()} 来指定集群大小，{helpb power onemean} 命令将针对 CRD 中的单样本均值检验执行计算。

{pstd}
所有计算都是针对双侧假设检验进行的，默认显著性水平为 0.05。您可以通过指定 {cmd:alpha()} 选项来更改显著性水平。您可以指定 {cmd:onesided} 选项以请求单侧检验。

{pstd}
要计算集群数量，您必须将零假设和备择假设下的均值分别指定为命令参数 {it:m0} 和 {it:ma}，并在 {cmd:m()} 选项中指定集群大小。您可以改为在 {cmd:n()} 选项中指定样本大小，并指定 {cmd:cluster} 选项，以便 {cmd:power onemean} 将为集群随机设计执行计算，而不是默认的个体水平设计。您也可以在 {cmd:power()} 选项中指定检验的功效。

{pstd}
要计算集群大小，您必须在 {cmd:k()} 选项中指定零均值 {it:m0}、备择均值 {it:ma} 和集群数量。您也可以在 {cmd:power()} 选项中指定检验的功效。

{pstd}
要计算功效，您必须在 {cmd:k()} 选项中指定集群数量，在 {cmd:m()} 选项中指定集群大小或在 {cmd:n()} 选项中指定样本大小，零均值 {it:m0} 和备择均值 {it:ma}。

{pstd}
在计算集群数量、集群大小或功效时，您可以通过 {cmd:diff()} 选项指定备择均值 {it:ma} 和零均值 {it:m0} 之间的差异 {it:ma} - {it:m0}。

{pstd}
效应量被定义为备择均值和零均值之间的标准化差异。在 CRD 中，效应量也会针对集群设计进行调整；见
{mansection PSS-2 poweronemean,clusterMethodsandformulas:{it:方法与公式}}。

{pstd}
要计算效应量及相应的目标均值，您必须在 {cmd:k()} 选项中指定集群数量，在 {cmd:m()} 选项中指定集群大小或在 {cmd:n()} 选项中指定样本大小，在 {cmd:power()} 选项中指定功效，并指定零均值 {it:m0}。您还可以在 {cmd:direction()} 选项中指定效应的方向。方向默认为上，{cmd:direction(upper)}；有关详细信息，请参见 {mansection PSS-2 poweronemeanRemarksandexamplesUsingpoweronemean:{it:使用 power onemean}} 以及 {bf:[PSS-2] power onemean}。

{pstd}
CRD 的计算基于一个依赖（渐近）正态分布的 z 检验，并假定标准差已知，您可以在 {cmd:sd()} 选项中指定。否则，默认值为 1。

{pstd}
所有计算都假定组内相关为 0.5。您可以通过指定 {cmd:rho()} 选项来更改此值。此外，所有集群假定为相同大小，除非在 {cmd:cvcluster()} 选项中指定集群大小的变异系数。

{pstd}
默认情况下，计算的集群数量、集群大小和样本大小都向上取整。但是，您可以指定 {cmd:nfractional} 选项以查看相应的分数值；见
{mansection PSS-4 UnbalanceddesignsRemarksandexamplesFractionalsamplesizes:{it:分数样本大小}}
在 {bf:[PSS-4] 不平衡设计} 中的示例。如果在计算集群大小时指定了 {cmd:cvcluster()} 选项，则集群大小表示平均集群大小，因此不会四舍五入。当样本大小在 {cmd:n()} 选项中指定时，可能会报告分数集群大小以适应指定的集群数量和样本大小。

{pstd}
{cmd:power onemean,} {cmd:cluster} 的某些计算需要迭代，例如计算双侧检验的集群数量；有关详细信息，请参见
{mansection PSS-2 poweronemean,clusterMethodsandformulas:{it:方法与公式}}以及 {manhelp power PSS-2} 描述控制迭代的选项。


{marker examples}{...}
{title:示例}

    {title:示例: 计算集群数量}

{pstd}
给定集群大小为 5，计算在零假设值为 10 时检测到均值为 15 所需的集群数量，标准差为 12；假设双侧检验，功效为 80%，显著性水平为 5%，组内相关为 0.5（默认值）{p_end}

{phang2}{cmd:. power onemean 10 15, m(5) sd(12)}

{pstd}
与上述相同，但组内相关为 0.2{p_end}

{phang2}{cmd:. power onemean 10 15, m(5) sd(12) rho(0.2)}

{pstd}
与上述相同，但集群大小具有变异系数为 0.6{p_end}

{phang2}{cmd:. power onemean 10 15, m(5) sd(12) rho(0.2) cvcluster(0.6)}

{pstd}
与第一个示例相同，使用 1% 显著性水平的单侧检验{p_end}

{phang2}{cmd:. power onemean 10 15, m(5) sd(12) alpha(0.01) onesided}

{pstd}
指定多个组内相关的列表，绘制结果图{p_end}
{phang2}{cmd:. power onemean 10 15, m(5) sd(12) rho(0.1(0.1)0.5) graph}


    {title:示例: 计算集群大小}

{pstd}
给定 30 个集群，计算在零假设值为 10 时检测到均值为 15 所需的集群大小，标准差为 12；假设双侧检验，功效为 80%，显著性水平为 5%，组内相关为 0.5（默认值）{p_end}

{phang2}{cmd:. power onemean 10 15, k(30) sd(12)}

{pstd}
与上述相同，但对于 30、35、40、45、50 个集群，绘制结果图{p_end}

{phang2}{cmd:. power onemean 10 15, k(30(5)50) sd(12) graph}

{pstd}
与上述相同，但计算分数集群大小{p_end}

{phang2}{cmd:. power onemean 10 15, k(30(5)50) sd(12) graph nfractional}


    {title:示例: 计算功效}
    
{pstd}
计算在 30 个集群、集群大小为 5 的情况下，默认 5% 显著性水平的双侧检验的功效，其中零假设下的均值为 10，备择假设下的均值为 15；使用默认值 0.5 作为组内相关和标准差 12{p_end}

{phang2}{cmd:. power onemean 10 15, k(30) m(5) sd(12)}

{pstd}
计算多个备择均值的功效，绘制结果图{p_end}

{phang2}{cmd:. power onemean 10 (11 13 15 17), k(30) m(5) sd(12) graph}


    {title:示例: 计算目标均值}

{pstd}
计算可以使用 30 个集群、集群大小为 5 的情况下，超出 10 的可以检测到的均值的最小值；假设功效为 80%，显著性水平为 5%，组内相关为 0.5（默认值），标准差为 12{p_end}
    
{phang2}{cmd:. power onemean 10, k(30) m(5) power(0.8) sd(12)}

{pstd}
计算可以检测到的最大均值值，小于 10{p_end}

{phang2}{cmd:. power onemean 10, k(30) m(5) power(0.8) sd(12) direction(lower)}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:power} {cmd:onemean,} {cmd:cluster} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(alpha)}}显著性水平{p_end}
{synopt:{cmd:r(power)}}功效{p_end}
{synopt:{cmd:r(beta)}}第二类错误概率{p_end}
{synopt:{cmd:r(delta)}}效应量{p_end}
{synopt:{cmd:r(K)}}集群数量{p_end}
{synopt:{cmd:r(M)}}集群大小{p_end}
{synopt:{cmd:r(N)}}受试者数量{p_end}
{synopt:{cmd:r(nfractional)}}{cmd:1} 如果指定了 {cmd:nfractional}，否则为 {cmd:0}{p_end}
{synopt:{cmd:r(onesided)}}{cmd:1} 对于单侧检验，{cmd:0} 否则{p_end}
{synopt:{cmd:r(m0)}}零假设下均值{p_end}
{synopt:{cmd:r(ma)}}备择假设下均值{p_end}
{synopt:{cmd:r(diff)}}备择均值和零均值之间的差异{p_end}
{synopt:{cmd:r(sd)}}标准差{p_end}
{synopt:{cmd:r(rho)}}组内相关{p_end}
{synopt:{cmd:r(CV_cluster)}}集群大小的变异系数{p_end}
INCLUDE help pss_rrestab_sc.ihlp
{synopt:{cmd:r(init)}}估计参数的初始值{p_end}
INCLUDE help pss_rresiter_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:onemean}{p_end}
{synopt:{cmd:r(design)}}{cmd:CRD}{p_end}
{synopt:{cmd:r(direction)}}{cmd:upper} 或 {cmd:lower}{p_end}
INCLUDE help pss_rrestab_mac.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(pss_table)}}结果表{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_onemean_cluster.sthlp>}