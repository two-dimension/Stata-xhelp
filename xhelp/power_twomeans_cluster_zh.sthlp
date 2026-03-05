{smcl}
{* *! version 1.0.9  27feb2019}{...}
{viewerdialog power "dialog power_twomeans_cluster"}{...}
{vieweralsosee "[PSS-2] power twomeans, cluster" "mansection PSS-2 powertwomeans,cluster"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power twomeans" "help power_twomeans_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] mixed" "help mixed_zh"}{...}
{vieweralsosee "[R] ztest" "help ztest_zh"}{...}
{viewerjumpto "Syntax" "power_twomeans_cluster_zh##syntax"}{...}
{viewerjumpto "Menu" "power_twomeans_cluster_zh##menu"}{...}
{viewerjumpto "Description" "power_twomeans_cluster_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_twomeans_cluster_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_twomeans_cluster_zh##options"}{...}
{viewerjumpto "Remarks: Using power twomeans, cluster" "power_twomeans_cluster_zh##remarks"}{...}
{viewerjumpto "Examples" "power_twomeans_cluster_zh##examples"}{...}
{viewerjumpto "Stored results""power_twomeans_cluster##results"}
{help power_twomeans_cluster:English Version}
{hline}{...}
{p2colset 1 36 38 2}{...}
{p2col:{bf:[PSS-2] power twomeans, cluster} {hline 2}}进行二样本均值检验的功效分析，CRD{p_end}
{p2col:}({mansection PSS-2 powertwomeans,cluster:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算集群数量

{p 8 20 2}
{opt power} {opt twomeans} {it:m1} {it:m2}{cmd:,}
{c -(}{it:{help power_twomeans_cluster##mspec:mspec}} {c |}
      {it:{help power_twomeans_cluster##nspec:nspec}} {cmd:cluster}{c )-}
[{it:{help power_twomeans_cluster##synoptions:options}}] 


{phang}
计算集群大小

{p 8 20 2}
{opt power} {opt twomeans} {it:m1} {it:m2}{cmd:,}
{it:{help power_twomeans_cluster##kspec:kspec}}
[{it:{help power_twomeans_cluster##synoptions:options}}] 


{phang}
计算功效 

{p 8 20 2}
{opt power} {opt twomeans} {it:m1} {it:m2}{cmd:,}
{it:{help power_twomeans_cluster##kspec:kspec}}
{c -(}{it:{help power_twomeans_cluster##mspec:mspec}} {c |}
      {it:{help power_twomeans_cluster##nspec:nspec}}{c )-}
[{it:{help power_twomeans_cluster##synoptions:options}}]


{phang}
计算效应大小和实验组均值

{p 8 20 2}
{opt power} {opt twomeans} {it:m1}{cmd:,}
{it:{help power_twomeans_cluster##kspec:kspec}}
{c -(}{it:{help power_twomeans_cluster##mspec:mspec}} {c |}
      {it:{help power_twomeans_cluster##nspec:nspec}}{c )-}
{opth p:ower(numlist)}
[{it:{help power_twomeans_cluster##synoptions:options}}]


{phang}
其中
{it:m1} 是对照（参考）组的均值， 
{it:m2} 是实验（比较）组的均值。
{it:m1} 和 {it:m2} 可以指定为一个数字或在括号内指定值的列表（请参见 {help numlist_zh}）。

{marker kspec}{...}
{marker mspec}{...}
{marker nspec}{...}
{phang2}
{it:kspec} 为以下之一

            {cmd:k1()} {cmd:k2()}
	    {cmd:k1()} [{opt krat:io()}]
	    {cmd:k2()} [{opt krat:io()}]

{phang2}
{it:mspec} 为以下之一

            {cmd:m1()} {cmd:m2()}
	    {cmd:m1()} [{opt mrat:io()}]
	    {cmd:m2()} [{opt mrat:io()}]

{phang2}
{it:nspec} 为以下之一

            {cmd:n1()} {cmd:n2()}
	    {cmd:n1()} [{opt nrat:io()}]
	    {cmd:n2()} [{opt nrat:io()}]

{synoptset 30 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{synopt :{opt cluster}}为CRD执行计算；隐含于 
{cmd:k1()}, {cmd:k2()}, {cmd:m1()} 或 {cmd:m2()}{p_end}
{p2coldent:* {opth a:lpha(numlist)}}显著性水平；默认为
   {cmd:alpha(0.05)}{p_end}
{p2coldent:* {opth p:ower(numlist)}}功效；默认为 {cmd:power(0.8)}{p_end}
{p2coldent:* {opth b:eta(numlist)}}二类错误的概率；默认为
   {cmd:beta(0.2)}{p_end}
{p2coldent:* {opth k1(numlist)}}对照组中的集群数量{p_end}
{p2coldent:* {opth k2(numlist)}}实验组中的集群数量{p_end}
{p2coldent:* {opth krat:io(numlist)}}集群比率，{cmd:K2/K1};
    默认为 {cmd:kratio(1)}{p_end}
{p2coldent:* {opth m1(numlist)}}对照组的集群大小{p_end}
{p2coldent:* {opth m2(numlist)}}实验组的集群大小{p_end}
{p2coldent:* {opth mrat:io(numlist)}}集群大小比率，{cmd:M2/M1};
默认为 {cmd:mratio(1)}{p_end}
{p2coldent:* {opth n1(numlist)}}对照组的样本大小{p_end}
{p2coldent:* {opth n2(numlist)}}实验组的样本大小{p_end}
{p2coldent:* {opth nrat:io(numlist)}}样本大小比率，{cmd:N2/N1};
    默认为 {cmd:nratio(1)}{p_end}
{synopt:{cmd:compute(K1}|{cmd:K2}|{cmd:M1}|{cmd:M2)}}在给定另一组的情况下解决某一组的集群数量或集群大小{p_end}
{synopt:{opt nfrac:tional}}允许集群数量、集群大小和样本大小为分数值{p_end}
{p2coldent:* {opth diff(numlist)}}实验组均值与对照组均值之间的差异，{it:m2} - {it:m1}; 指定替代实验组均值 {it:m2}{p_end}
{p2coldent:* {opth sd(numlist)}}对照组和实验组的共同标准差，假设两组的标准差相等；默认为 {cmd:sd(1)}{p_end}
{p2coldent:* {opth sd1(numlist)}}对照组的标准差；
要求使用 {cmd:sd2()}{p_end}
{p2coldent:* {opth sd2(numlist)}}实验组的标准差；
要求使用 {cmd:sd1()}{p_end}
{p2coldent:* {opth rho(numlist)}}组内相关；默认为
{cmd:rho(0.5)}{p_end}
{p2coldent:* {opth cvcl:uster(numlist)}}集群大小的变异系数{p_end}
INCLUDE help pss_testmainopts3.ihlp

{syntab:表格}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_twomeans_cluster##tablespec:tablespec}}{cmd:)}]}抑制表格或将结果显示为表格；参见
{manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}将表格数据保存到 {it:filename}; 使用 {cmd:replace} 以覆盖现有
{it:filename}{p_end}

INCLUDE help pss_graphopts.ihlp

{syntab:迭代}
{synopt: {opt init(#)}}集群数量、集群大小或实验组均值的初始值{p_end}
INCLUDE help pss_iteropts.ihlp

INCLUDE help pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
INCLUDE help pss_numlist.ihlp
{p 4 6 2}{cmd:notitle} 不显示在对话框中.{p_end}


{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 为

{p 16 16 2}
{it:{help power_twomeans_cluster##column:column}}[{cmd::}{it:label}]
[{it:column}[{cmd::}{it:label}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:tableopts}}]

{pstd}
{it:column} 为下方定义的列之一，
且 {it:label} 为列标签（可以包含引号和复合引号）。


{synoptset 28}{...}
{marker column}{...}
{synopthdr :列}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}功效{p_end}
{synopt :{opt beta}}二类错误概率{p_end}
{synopt :{opt K1}}对照组中的集群数量{p_end}
{synopt :{opt K2}}实验组中的集群数量{p_end}
{synopt :{opt kratio}}集群数量的比率，实验组与对照组之间{p_end}
{synopt :{opt M1}}对照组的集群大小{p_end}
{synopt :{opt M2}}实验组的集群大小{p_end}
{synopt :{opt mratio}}集群大小的比率，实验组与对照组之间{p_end}
{synopt :{opt N}}观察总数{p_end}
{synopt :{opt N1}}对照组的观察数量{p_end}
{synopt :{opt N2}}实验组的观察数量{p_end}
{synopt :{opt nratio}}样本大小的比率，实验组与对照组之间{p_end}
{synopt :{opt delta}}效应大小{p_end}
{synopt :{opt m1}}对照组均值{p_end}
{synopt :{opt m2}}实验组均值{p_end}
{synopt :{opt diff}}实验组均值与对照组均值之间的差异{p_end}
{synopt :{opt sd}}共同标准差{p_end}
{synopt :{opt sd1}}对照组标准差{p_end}
{synopt :{opt sd2}}实验组标准差{p_end}
{synopt :{opt rho}}组内相关{p_end}
{synopt :{opt CV_cluster}}集群大小的变异系数{p_end}
{synopt :{opt target}}目标参数；{cmd:m2}的同义词{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}若指定，则 {cmd:beta} 列将在默认表中取代 {cmd:power} 列.{p_end}
{p 4 6 2}若指定，则 {cmd:N} 列将在表中显示.{p_end}
{p 4 6 2}若指定了 {cmd:n1()} 或 {cmd:n2()}，则 {cmd:N1} 和 {cmd:N2} 列将在默认表中显示.{p_end}
{p 4 6 2}若指定则 {cmd:nratio}、{cmd:diff} 和 {cmd:CV_cluster} 列将在默认表中显示.


INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power} {cmd:twomeans,} {cmd:cluster} 计算集群随机设计（CRD）中二样本均值检验的组特定集群数量、集群大小、功效或实验组均值。它在给定集群大小、功效和对照组及实验组均值的情况下计算集群的数量。它也可以在给定集群数量、功效和对照组及实验组均值的情况下计算集群大小。相反，它可以在给定集群数量、集群大小和对照组及实验组均值的情况下计算功效，或者在给定集群数量、集群大小、功效和对照组均值的情况下计算实验组均值。有关二样本均值检验的功效和样本大小分析的概述，请参见 {manhelp power_twomeans PSS-2:power twomeans}。还可以参见 {manhelp power PSS-2} 以了解使用假设检验的 {cmd:power} 命令的一般介绍。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection PSS-2 powertwomeans,clusterQuickstart:快速入门}

        {mansection PSS-2 powertwomeans,clusterRemarksandexamples:备注和示例}

        {mansection PSS-2 powertwomeans,clusterMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:cluster} 指定应为 CRD 执行计算。当指定 {cmd:k1()}、{cmd:k2()}、{cmd:m1()} 或 {cmd:m2()} 选项时，该选项是隐含的。当使用 {it:nspec} 指定样本大小而不是 {it:mspec} 指定集群大小时，需要 {cmd:cluster} 来计算集群数量。

{phang}
{cmd:alpha()}、{cmd:power()}、{cmd:beta()}; 参见
{manhelp power##mainopts PSS-2: power}。

{phang}
{opth k1(numlist)} 指定对照组中的集群数量。

{phang}
{opth k2(numlist)} 指定实验组中的集群数量。

{phang}
{opth kratio(numlist)} 指定实验组与对照组的集群数量比率，{cmd:K2/K1}。默认值为 {cmd:kratio(1)}，表示两个组中的集群数量相等。

{phang}
{opth m1(numlist)} 指定对照组的集群大小。
{cmd:m1()} 可以包含非整数值。

{phang}
{opth m2(numlist)} 指定实验组的集群大小。
{cmd:m2()} 可以包含非整数值。

{phang}
{opth mratio(numlist)} 指定实验组与对照组之间的集群大小比率，{cmd:M2/M1}。默认值为 {cmd:mratio(1)}，表示两个组中的集群大小相等。

{phang}
{cmd:n1()}、{cmd:n2()}、{cmd:nratio()};
{manhelp power##mainopts PSS-2: power}。

{phang}
{cmd:compute(K1}|{cmd:K2}|{cmd:M1}|{cmd:M2)} 在给定另一组的情况下解算集群数量或集群大小。

{phang}
{cmd:nfractional}; 参见 {manhelp power##mainopts PSS-2: power}。
{cmd:nfractional} 选项显示的集群数量、集群大小和样本大小为分数值（不进行四舍五入）。

{phang}
{opt diff()}、{opt sd()}、{opt sd1()}、{opt sd2()}；参见
{manhelp power_twomeans PSS-2:power twomeans}。

{phang}
{opth rho(numlist)} 指定组内相关。默认值为 {cmd:rho(0.5)}。

{phang}
{opth cvcluster(numlist)} 指定集群大小的变异系数。此选项与变化的集群大小一起使用。

{phang}
{cmd:direction()}、{cmd:onesided}、{cmd:parallel}; 参见 
{manhelp power##mainopts PSS-2: power}。

INCLUDE help pss_taboptsdes.ihlp

INCLUDE help pss_graphoptsdes.ihlp
另见 {bf:[PSS-2] power twomeans, cluster} 中列出的符号，以获取图表的列表。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定集群数量或集群大小在样本大小确定中的初始值，或在效应大小确定中的实验组均值的初始值。默认值是使用闭式正态近似计算估计参数的初始值。

INCLUDE help pss_iteroptsdes.ihlp

{pstd}
以下选项可与 {cmd:power twomeans, cluster} 一起使用，但未显示在对话框中：

INCLUDE help pss_reportoptsdes.ihlp


{marker remarks}{...}
{title:备注：使用 power twomeans, cluster}

{pstd}
{cmd:power} {cmd:twomeans,} {cmd:cluster} 请求为 CRD 计算 {cmd:power} {cmd:twomeans} 命令。
在 CRD 中，受试者或集群组被随机化而不是单个受试者，因此样本大小由集群数量和集群大小决定。
样本大小的确定包括在给定集群大小的情况下确定集群数量，或在给定集群数量的情况下确定集群大小。有关使用 {cmd:power} {cmd:twomeans} 的一般讨论，请参见 {manhelp power_twomeans PSS-2:power twomeans}。以下讨论是特定于 CRD。

{pstd}
如果您指定了 {cmd:cluster} 选项，请包括 {cmd:k1()} 或 {cmd:k2()} 以指定集群数量，或包括 {cmd:m1()} 或 {cmd:m2()} 以指定集群大小，{helpb power twomeans} 命令将针对 CRD 的二样本均值检验执行计算。

{pstd}
所有计算都是针对双侧假设检验进行的，默认为显著性水平设定为 0.05。您可以通过指定 {cmd:alpha()} 选项更改显著性水平。您可以指定 {cmd:onesided} 选项以请求单侧检验。默认情况下，所有计算假设为平衡或平均分配设计，意味着两个组中的集群数量和集群大小相等；有关如何指定不平衡设计的描述，请参见 {manlink PSS-4 Unbalanced designs}。

{pstd}
要计算两个组中的集群数量，您必须提供两个组的集群大小。提供集群大小的方式有多种，但最常见的是在 {cmd:m1()} 选项中指定对照组的集群大小，在 {cmd:m2()} 选项中指定实验组的集群大小。请参见 {help power_twomeans_cluster##mspec:{it:mspec}} 和 
{help power_twomeans_cluster##nspec:{it:nspec}} 以及 
{help power_twomeans_cluster##syntax:{it:语法}} 了解其他规格。当指定 {it:nspec} 时，还需要 {cmd:cluster} 选项以请求 {cmd:power} {cmd:twomeans} 为 CRD 执行计算。
假设两个组的集群数量相等，但您可以通过在 {cmd:kratio()} 选项中指定实验组与对照组的集群数量比率来更改此设置。其他参数的指定方式如在 {mansection PSS-2 powertwomeansRemarksandexamplesUsingpowertwomeans:{it:Using power twomeans}} 中描述的 {bf:[PSS-2] power twomeans}。

{pstd}
要计算两个组中的集群大小，您必须提供两个组中的集群数量。提供集群数量有多种方式；请参见 {help power_twomeans_cluster##kspec:{it:kspec}} 
在 {help power_twomeans_cluster##syntax:{it:语法}} 下。最常见的是分别在 {cmd:k1()} 和 {cmd:k2()} 选项中指定对照组和实验组的集群数量。假设两个组中的集群大小相等，但您可以通过在 {cmd:mratio()} 选项中指定实验组与对照组的集群大小比率来更改此设置。其他参数的指定方式如在
{mansection PSS-2 powertwomeansRemarksandexamplesUsingpowertwomeans:{it:Using power twomeans}} 中描述的 {bf:[PSS-2] power twomeans}。

{pstd}
您还可以在给定另一组的条件下通过指定 {cmd:compute()} 选项计算某一组的集群数量或集群大小。例如，要计算对照组的集群数量，您指定 {cmd:compute(K1)} 并提供实验组的集群数量在 {cmd:k2()} 中。类似地，要计算对照组的集群大小，您指定 {cmd:compute(M1)} 并提供实验组的集群大小在 {cmd:m2()} 中。您可以以类似方式计算实验组的集群数量或集群大小。

{pstd}
功效和效应大小的确定与在 {mansection PSS-2 powertwomeansRemarksandexamplesUsingpowertwomeans:{it:Using power twomeans}} 中描述相同，但样本大小信息以集群数量 {help power_twomeans_cluster##kspec:{it:kspec}} 和使用 {help power_twomeans_cluster##mspec:{it:mspec}} 指定的集群大小或（不太常见）使用 {help power_twomeans_cluster##nspec:{it:nspec}} 指定的样本大小提供。

{pstd}
所有计算假设组内相关为 0.5。您可以通过指定 {cmd:rho()} 选项更改此值。此外，所有集群假设为相同大小，除非在 {cmd:cvcluster()} 选项中指定集群大小的变异系数。

{pstd}
默认情况下，计算的集群数量、集群大小和样本大小被向上舍入。但是，您可以指定 {cmd:nfractional} 选项以查看相应的分数值；有关示例，请参见 {mansection PSS-4 Unbalanced designs Remarks and examples Fractional sample sizes:{it:Fractional sample sizes}} 中的 {bf:[PSS-4] Unbalanced designs}。
当计算集群大小时，如果指定了 {cmd:cvcluster()} 选项，则集群大小代表平均集群大小，因此不进行舍入。使用 {help power_twomeans_cluster##nspec:{it:nspec}} 指定样本大小时，可能会报告分数的集群大小，以适应指定的集群数量和样本大小。

{pstd}
{cmd:power} {cmd:twomeans,} {cmd:cluster} 的某些计算需要迭代；详细信息请参见 
{mansection PSS-2 powertwomeans,cluster Methods and formulas:{it:Methods and formulas}} 和 {manhelp power PSS-2} 以获取控制迭代的选项描述。


{marker examples}{...}
{title:示例}

    {title:示例：计算集群数量}

{pstd}
计算在给定对照组均值为 10、两个组的集群大小为 5、两个组的标准差为 12 的条件下，检测到实验组均值为 15 所需的集群数量；假设使用双侧检验，显著性水平为 5%，功效为 80%，组内相关为 0.5，并假设两个组将具有相同数量的集群（默认值）。{p_end}

{phang2}{cmd:. power twomeans 10 15, m1(5) m2(5) sd(12)}

{pstd}
同上，不过组内相关为 0.2。{p_end}

{phang2}{cmd:. power twomeans 10 15, m1(5) m2(5) sd(12) rho(0.2)}

{pstd}
同上，不过集群大小存在变异，变异系数为 0.6。{p_end}

{phang2}{cmd:. power twomeans 10 15, m1(5) m2(5) sd(12) rho(0.2) cvcluster(0.6)}

{pstd}
同第一个示例，不过集群数量的比率为 2。{p_end}

{phang2}{cmd:. power twomeans 10 15, m1(5) m2(5) sd(12) kratio(2)}

{pstd}
指定一组组内相关，绘制结果。{p_end}

{phang2}{cmd:. power twomeans 10 15, m1(5) m2(5) sd(12) rho(0.1(0.1)0.5) graph}

{pstd}
计算实验组的集群数量，给定对照组的集群数量为 50。{p_end}

{phang2}{cmd:. power twomeans 10 15, compute(K2) k1(50) m1(5) m2(5) sd(12)}


    {title:示例：计算集群大小}

{pstd}
计算在给定对照组均值为 10、两个组具有 60 个集群且两个组的标准差均为 12 的条件下，检测到实验组均值为 15 所需的集群大小；假设使用双侧检验，显著性水平为 5%，功效为 80%，组内相关为 0.5，并假设两个组将具有相同的集群大小（默认值）。{p_end}

{phang2}{cmd:. power twomeans 10 15, k1(60) k2(60) sd(12)}

{pstd}
同第一个示例，使用单侧检验，显著性水平为 1%。{p_end}

{phang2}{cmd:. power twomeans 10 15, k1(60) k2(60) sd(12) alpha(0.01) onesided}


    {title:示例：计算功效}
    
{pstd}
计算在两组均为 5 的集群大小和 30 个集群的双侧检验的功效，假设对照组均值为 10，实验组均值为 15，使用默认的 5% 显著性水平，组内相关使用默认值 0.5，两个组的共同标准差为 12。{p_end}

{phang2}{cmd:. power twomeans 10 15, k1(30) k2(30) m1(5) m2(5) sd(12)}

{pstd}
计算实验组中集群数量列表的功效，绘制结果。{p_end}

{phang2}
{cmd:. power twomeans 10 15, k1(30) k2(10(10)60) m1(5) m2(5) sd(12) graph}


    {title:示例：计算目标实验组均值}

{pstd}
计算通过双侧检验检测到的实验组均值的最小值，其值大于对照组均值，假设两个组均有 60 个集群，集群大小为 5；假设功效为 80%，显著性水平为 5%，组内相关为 0.5（默认值），两个组的共同标准差为 12。{p_end}

{phang2}{cmd:. power twomeans 10, k1(60) k2(60) m1(5) m2(5) power(0.8) sd(12)}

{pstd}
计算可检测的比 10 更小的最大均值。{p_end}

{phang2}{cmd:. power twomeans 10, k1(60) k2(60) m1(5) m2(5) power(0.8)}
         {cmd:sd(12) direction(lower)}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:power} {cmd:twomeans,} {cmd:cluster} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(alpha)}}显著性水平{p_end}
{synopt:{cmd:r(power)}}功效{p_end}
{synopt:{cmd:r(beta)}}二类错误的概率{p_end}
{synopt:{cmd:r(delta)}}效应大小{p_end}
{synopt:{cmd:r(K1)}}对照组中的集群数量{p_end}
{synopt:{cmd:r(K2)}}实验组中的集群数量{p_end}
{synopt:{cmd:r(kratio)}}集群数量比率，{cmd:K2/K1}{p_end}
{synopt:{cmd:r(M1)}}对照组的集群大小{p_end}
{synopt:{cmd:r(M2)}}实验组的集群大小{p_end}
{synopt:{cmd:r(mratio)}}集群大小比率，{cmd:M2/M1}{p_end}
{synopt:{cmd:r(N)}}样本总大小{p_end}
{synopt:{cmd:r(N1)}}对照组样本大小{p_end}
{synopt:{cmd:r(N2)}}实验组样本大小{p_end}
{synopt:{cmd:r(nratio)}}样本大小比率，{cmd:N2/N1}{p_end}
{synopt:{cmd:r(nfractional)}}{cmd:1} 如果指定了 {cmd:nfractional} ， {cmd:0} 否则{p_end}
{synopt:{cmd:r(onesided)}}{cmd:1} 用于单侧检验；{cmd:0}
	否则{p_end}
{synopt:{cmd:r(m1)}}对照组均值{p_end}
{synopt:{cmd:r(m2)}}实验组均值{p_end}
{synopt:{cmd:r(diff)}}实验组均值与对照组均值之间的差异{p_end}
{synopt:{cmd:r(sd)}}对照组和实验组的共同标准差{p_end}
{synopt:{cmd:r(sd1)}}对照组标准差{p_end}
{synopt:{cmd:r(sd2)}}实验组标准差{p_end}
{synopt:{cmd:r(rho)}}组内相关{p_end}
{synopt:{cmd:r(CV_cluster)}}集群大小的变异系数{p_end}
INCLUDE help pss_rrestab_sc.ihlp
{synopt:{cmd:r(init)}}估计参数的初始值{p_end}
INCLUDE help pss_rresiter_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:twomeans}{p_end}
{synopt:{cmd:r(design)}}{cmd:CRD}{p_end}
{synopt:{cmd:r(direction)}}{cmd:upper} 或 {cmd:lower}{p_end}
INCLUDE help pss_rrestab_mac.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(pss_table)}}结果表{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_twomeans_cluster.sthlp>}