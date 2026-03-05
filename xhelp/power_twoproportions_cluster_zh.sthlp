{smcl}
{* *! version 1.0.11  22mar2019}{...}
{viewerdialog power "dialog power_twoprop_cluster"}{...}
{vieweralsosee "[PSS-2] power twoproportions, cluster" "mansection PSS-2 powertwoproportions,cluster"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power twoproportions" "help power_twoproportions_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] melogit" "help melogit_zh"}{...}
{vieweralsosee "[R] prtest" "help prtest_zh"}{...}
{viewerjumpto "Syntax" "power_twoproportions_cluster_zh##syntax"}{...}
{viewerjumpto "Menu" "power_twoproportions_cluster_zh##menu"}{...}
{viewerjumpto "Description" "power_twoproportions_cluster_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_twoproportions_cluster_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_twoproportions_cluster_zh##options"}{...}
{viewerjumpto "Remarks: Using power twoproportions, cluster" "power_twoproportions_cluster_zh##remarks"}{...}
{viewerjumpto "Examples" "power_twoproportions_cluster_zh##examples"}{...}
{viewerjumpto "Stored results""power_twoproportions_cluster##results"}
{help power_twoproportions_cluster:English Version}
{hline}{...}
{p2colset 1 42 44 2}{...}
{p2col:{bf:[PSS-2] power twoproportions, cluster} {hline 2}}对两样本比例测试的功效分析，CRD{p_end}
{p2col:}({mansection PSS-2 powertwoproportions,cluster:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算集群数量

{p 8 20 2}
{opt power} {opt twoprop:ortions} {it:p1} {it:p2}{cmd:,}
{c -(}{it:{help power_twoproportions_cluster##mspec:mspec}} {c |}
      {it:{help power_twoproportions_cluster##nspec:nspec}} {cmd:cluster}{c )-}
[{it:{help power_twoproportions_cluster##synoptions:options}}] 


{phang}
计算集群大小

{p 8 20 2}
{opt power} {opt twoprop:ortions} {it:p1} {it:p2}{cmd:,}
{it:{help power_twoproportions_cluster##kspec:kspec}}
[{it:{help power_twoproportions_cluster##synoptions:options}}] 


{phang}
计算功效 

{p 8 20 2}
{opt power} {opt twoprop:ortions} {it:p1} {it:p2}{cmd:,}
{it:{help power_twoproportions_cluster##kspec:kspec}}
{c -(}{it:{help power_twoproportions_cluster##mspec:mspec}} {c |}
      {it:{help power_twoproportions_cluster##nspec:nspec}}{c )-}
[{it:{help power_twoproportions_cluster##synoptions:options}}]


{phang}
计算效应大小和实验组比例

{p 8 20 2}
{opt power} {opt twoprop:ortions} {it:p1}{cmd:,}
{it:{help power_twoproportions_cluster##kspec:kspec}}
{c -(}{it:{help power_twoproportions_cluster##mspec:mspec}} {c |}
      {it:{help power_twoproportions_cluster##nspec:nspec}}{c )-}
{opth p:ower(numlist)}
[{it:{help power_twoproportions_cluster##synoptions:options}}]


{phang}
其中
{it:p1} 是对照组（参考组）中的比例，{it:p2} 是实验组（对比组）中的比例。
{it:p1} 和 {it:p2} 都可以被指定为一个数字或作为括号内的值列表（见 {help numlist_zh}）。

{marker kspec}{...}
{marker mspec}{...}
{marker nspec}{...}
{phang2}
{it:kspec} 是以下之一

            {cmd:k1()} {cmd:k2()}
	    {cmd:k1()} [{opt krat:io()}]
	    {cmd:k2()} [{opt krat:io()}]

{phang2}
{it:mspec} 是以下之一

            {cmd:m1()} {cmd:m2()}
	    {cmd:m1()} [{opt mrat:io()}]
	    {cmd:m2()} [{opt mrat:io()}]

{phang2}
{it:nspec} 是以下之一

            {cmd:n1()} {cmd:n2()}
	    {cmd:n1()} [{opt nrat:io()}]
	    {cmd:n2()} [{opt nrat:io()}]

{synoptset 30 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{syntab:主}
{synopt :{opt cluster}}为CRD执行计算；由{cmd:k1()}、{cmd:k2()}、{cmd:m1()}或{cmd:m2()}所隐含{p_end}
{p2coldent:* {opth a:lpha(numlist)}}显著性水平；默认值为{cmd:alpha(0.05)}{p_end}
{p2coldent:* {opth p:ower(numlist)}}功效；默认值为{cmd:power(0.8)}{p_end}
{p2coldent:* {opth b:eta(numlist)}}第二类错误的概率；默认值为{cmd:beta(0.2)}{p_end}
{p2coldent:* {opth k1(numlist)}}对照组中的集群数量{p_end}
{p2coldent:* {opth k2(numlist)}}实验组中的集群数量{p_end}
{p2coldent:* {opth krat:io(numlist)}}集群比例，{cmd:K2/K1}；默认值为{cmd:kratio(1)}{p_end}
{p2coldent:* {opth m1(numlist)}}对照组的集群大小{p_end}
{p2coldent:* {opth m2(numlist)}}实验组的集群大小{p_end}
{p2coldent:* {opth mrat:io(numlist)}}集群大小比例，{cmd:M2/M1}；默认值为{cmd:mratio(1)}{p_end}
{p2coldent:* {opth n1(numlist)}}对照组的样本量{p_end}
{p2coldent:* {opth n2(numlist)}}实验组的样本量{p_end}
{p2coldent:* {opth nrat:io(numlist)}}样本量比例，{cmd:N2/N1}；默认值为{cmd:nratio(1)}{p_end}
{synopt:{cmd:compute(K1}|{cmd:K2}|{cmd:M1}|{cmd:M2)}}根据另一组给定的克隆或克隆大小求解一组的数量{p_end}
{synopt:{opt nfrac:tional}}允许分数的集群数、集群大小和样本大小{p_end}
{p2coldent:* {opth diff(numlist)}}实验组与对照组比例的差异，{it:p2}-{it:p1}；替代指定实验组比例{it:p2}{p_end}
{p2coldent:* {opth ratio(numlist)}}实验组比例与对照组比例的比率，{it:p2}/{it:p1}；替代指定实验组比例{it:p2}{p_end}
{p2coldent:* {opth rd:iff(numlist)}}风险差异，{it:p2}-{it:p1}；{cmd:diff()}的同义词{p_end}
{p2coldent:* {opth rr:isk(numlist)}}相对风险，{it:p2}/{it:p1}；{cmd:ratio()}的同义词{p_end}
{p2coldent:* {opth or:atio(numlist)}}比值比，{c -(}{it:p2}(1-{it:p1}){c )-}/{c -(}{it:p1}(1-{it:p2}){c )-}{p_end}
{synopt: {opth effect:(power twoproportions cluster##effectspec:effect)}}指定显示的效应类型；默认值为{cmd:effect(diff)}{p_end}
{p2coldent:* {opth rho(numlist)}}类别间相关；默认值为{cmd:rho(0.5)}{p_end}
{p2coldent:* {opth cvcl:uster(numlist)}}集群大小的变异系数{p_end}
INCLUDE help pss_testmainopts3.ihlp

{syntab:表}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_twoproportions_cluster##tablespec:tablespec}}{cmd:)}]}抑制表格或将结果显示为表格；请参见{manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}将表格数据保存到{it:filename}；使用{cmd:replace}覆盖现有的{it:filename}{p_end}

INCLUDE help pss_graphopts.ihlp

{syntab:迭代}
{synopt: {opt init(#)}}初始值，用于集群数量、集群大小或实验组比例{p_end}
INCLUDE help pss_iteropts.ihlp

INCLUDE help pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
INCLUDE help pss_numlist.ihlp
{p 4 6 2}{cmd:notitle} 在对话框中不显示.{p_end}

{marker effectspec}{...}
{synoptset 30}{...}
{synopthdr :效应}
{synoptline}
{synopt :{opt diff}}比例之间的差异，{it:p2}-{it:p1}；默认值{p_end}
{synopt :{opt ratio}}比例的比率，{it:p2}/{it:p1}{p_end}
{synopt :{opt rd:iff}}风险差异，{it:p2}-{it:p1}{p_end}
{synopt :{opt rr:isk}}相对风险，{it:p2/p1}{p_end}
{synopt :{opt or:atio}}比值比，{c -(}{it:p2}(1-{it:p1}){c )-}/{c -(}{it:p1}(1-{it:p2}){c )-}{p_end}
{synoptline}

{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 是

{p 16 16 2}
{it:{help power_twoproportions_cluster##column:column}}[{cmd::}{it:label}]
[{it:column}[{cmd::}{it:label}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:tableopts}}]

{pstd}
{it:column} 是以下定义的列之一，而 {it:label} 是列标签（可以包含引号和复合引号）。


{synoptset 28}{...}
{marker column}{...}
{synopthdr :列}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}功效{p_end}
{synopt :{opt beta}}第二类错误概率{p_end}
{synopt :{opt K1}}对照组中的集群数量{p_end}
{synopt :{opt K2}}实验组中的集群数量{p_end}
{synopt :{opt kratio}}集群数量的比率，实验组相对于对照组{p_end}
{synopt :{opt M1}}对照组的集群大小{p_end}
{synopt :{opt M2}}实验组的集群大小{p_end}
{synopt :{opt mratio}}集群大小的比率，实验组相对于对照组{p_end}
{synopt :{opt N}}总观察数{p_end}
{synopt :{opt N1}}对照组中的观察数{p_end}
{synopt :{opt N2}}实验组中的观察数{p_end}
{synopt :{opt nratio}}样本大小的比率，实验组相对于对照组{p_end}
{synopt :{opt delta}}效应大小{p_end}
{synopt :{opt p1}}对照组比例{p_end}
{synopt :{opt p2}}实验组比例{p_end}
{synopt :{opt diff}}实验组比例与对照组比例之间的差异{p_end}
{synopt :{opt ratio}}实验组比例相对于对照组比例的比率{p_end}
{synopt :{opt rdiff}}风险差异{p_end}
{synopt :{opt rrisk}}相对风险{p_end}
{synopt :{opt oratio}}比值比{p_end}
{synopt :{opt rho}}类别间相关{p_end}
{synopt :{opt CV_cluster}}集群大小的变异系数{p_end}
{synopt :{opt target}}目标参数；{cmd:p2}的同义词{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}如果指定，则列 {cmd:beta} 会在默认表中替代列 {cmd:power} 显示.{p_end}
{p 4 6 2}如果指定，列 {cmd:N} 会在表中显示.{p_end}
{p 4 6 2}如果指定 {cmd:n1()} 或 {cmd:n2()} ，则默认表中会显示列 {cmd:N1} 和 {cmd:N2} .{p_end}
{p 4 6 2}如果指定，则列 {cmd:nratio}、{cmd:diff}、{cmd:ratio}、{cmd:rdiff}、{cmd:rrisk}、{cmd:oratio}、和 {cmd:CV_cluster} 会在默认表中显示.


INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power} {cmd:twoproportions,} {cmd:cluster} 计算集群随机设计（CRD）中的两样本比例测试的组特定集群数量、组特定集群大小、功效或实验组比例。它根据集群大小、功效以及对照组和实验组比例的值来计算组特定的集群数量。它也计算在给定聚类数量、功效及对照组与实验组比例值的情况下的组特定聚类大小。或者，它在给定聚类数量、聚类大小和对照组与实验组比例值的情况下计算功效，或者在给定聚类数量、聚类大小、功效及对照组比例的情况下计算实验组比例。请参见{manhelp power_twoproportions PSS-2:power twoproportions}，了解对两样本比例测试的功效和样本量分析的一般讨论。也请参见{manhelp power PSS-2}，了解使用假设检验的{cmd:power}命令的一般介绍。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection PSS-2 powertwoproportions,clusterQuickstart:快速启动}

        {mansection PSS-2 powertwoproportions,clusterRemarksandexamples:备注和示例}

        {mansection PSS-2 powertwoproportions,clusterMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{cmd:cluster} 指定应为 CRD 执行计算。当指定 {cmd:k1()}、{cmd:k2()}、{cmd:m1()} 或 {cmd:m2()} 选项时，此选项会隐含。计算集群数量时，使用 {it:nspec} 指定样本大小而不是 {it:mspec} 时，需要 {cmd:cluster}。

{phang}
{cmd:alpha()}、{cmd:power()}、{cmd:beta()}; 见{manhelp power##mainopts PSS-2: power}。

{phang}
{opth k1(numlist)} 指定对照组中的集群数量。

{phang}
{opth k2(numlist)} 指定实验组中的集群数量。

{phang}
{opth kratio(numlist)} 指定实验组相对于对照组的集群数量比，{cmd:K2/K1}。默认值为{cmd:kratio(1)}，表示两组中的集群数量相等。

{phang}
{opth m1(numlist)} 指定对照组的集群大小。{cmd:m1()}可以包含非整数值。

{phang}
{opth m2(numlist)} 指定实验组的集群大小。{cmd:m2()}可以包含非整数值。

{phang}
{opth mratio(numlist)} 指定实验组相对于对照组的集群大小比，{cmd:M2/M1}。默认值为{cmd:mratio(1)}，表示两组中的集群大小相等。

{phang}
{cmd:n1()}、{cmd:n2()}、{cmd:nratio()}; {manhelp power##mainopts PSS-2: power}。

{phang}
{cmd:compute(K1}|{cmd:K2}|{cmd:M1}|{cmd:M2)} 抽取一组的集群数量或集群大小，给定另一组的数值。

{phang}
{cmd:nfractional}; 见{manhelp power##mainopts PSS-2: power}。
{cmd:nfractional} 选项以分数形式（不四舍五入）显示集群数量、集群大小和样本大小的值。

{phang}
{opt diff()}、{opt ratio()}、{opt rdiff()}、{opt rrisk()}、{opt oratio()}、{opt effect()}; 见 {manhelp power_twoproportions PSS-2:power twoproportions}。

{phang}
{opth rho(numlist)} 指定类别间相关。默认值为{cmd:rho(0.5)}。

{phang}
{opth cvcluster(numlist)} 指定集群大小的变异系数。此选项用于变化集群大小。

{phang}
{cmd:direction()}、{cmd:onesided}、{cmd:parallel}; 见 {manhelp power##mainopts PSS-2: power}。

INCLUDE help pss_taboptsdes.ihlp

INCLUDE help pss_graphoptsdes.ihlp
另请参见{mansection PSS-2 powertwoproportions,clusterSyntaxcolumn:column}表中 {bf:[PSS-2] power twoproportions, cluster} 用于图表的符号列表。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定用于样本大小确定的集群数量或集群大小的初始值，或用于效应大小确定的实验组比例的初始值。默认值使用闭合形式正态逼近来计算估计参数的初始值。

INCLUDE help pss_iteroptsdes.ihlp

{pstd}
以下选项在 {cmd:power twoproportions, cluster} 下可用，但未显示在对话框中：

INCLUDE help pss_reportoptsdes.ihlp


{marker remarks}{...}
{title:备注：使用 power twoproportions, cluster}

{pstd}
{cmd:power} {cmd:twoproportions,} {cmd:cluster}请求计算{cmd:power} {cmd:twoproportions}命令的数据以便于CRD。在CRD中，受试者或集群组被随机化，而不是单独的受试者，因此样本大小由集群数量和集群大小决定。因此，样本大小的确定由集群大小的确定和集群数量的确定组成。有关使用{cmd:power} {cmd:twoproportions}的一般讨论，见{manhelp power_twoproportions PSS-2:power twoproportions}。下面的讨论特定于CRD。

{pstd}
如果指定了{cmd:cluster}选项，必须包含{cmd:k1()}或{cmd:k2()}来指定集群数量，或者包含{cmd:m1()}或{cmd:m2()}来指定集群大小，{helpb power twoproportions}将对CRD中的两样本比例测试执行计算。CRD中的计算基于大样本皮尔逊卡方检验。

{pstd}
所有计算都以双侧假设检验为基础，默认显著性水平设置为0.05。您可以通过指定{cmd:alpha()}选项来更改显著性水平。您可以指定{cmd:onesided}选项以请求单侧检验。默认情况下，所有计算假定为平衡或等分配设计，意味着在两组中集群数量和集群大小相等；有关如何指定不平衡设计的描述，请参见{manlink PSS-4 Unbalanced designs}。

{pstd}
要计算两个组中的集群数量，必须提供两个组的集群大小。有多种方式提供集群大小，但最常见的方法是在{cmd:m1()}选项中指定对照组的集群大小，并在{cmd:m2()}选项中指定实验组的集群大小。见{help power_twoproportions_cluster##mspec:{it:mspec}}和{help power_twoproportions_cluster##nspec:{it:nspec}}在{help power_twoproportions_cluster##syntax:{it:Syntax}}中的其他规格。当指定{it:nspec}时，也需要{cmd:cluster}选项，请求{cmd:power} {cmd:twoproportions}为CRD进行计算。假定两组中的集群数量相等，但您可以通过在{cmd:kratio()}选项中指定实验组相对于对照组的集群数量的比率来更改此值。其他参数的指定，如{mansection PSS-2 powertwoproportionsRemarksandexamplesUsingpowertwoproportions:{it:Using power twoproportions}}所述。

{pstd}
要计算两个组中的集群大小，您必须提供两个组的集群数量。有多种方式提供集群数量；见{help power_twoproportions_cluster##kspec:{it:kspec}}在{help power_twoproportions_cluster##syntax:{it:Syntax}}中的讨论。最常见的方法是在{cmd:k1()}和{cmd:k2()}选项中分别指定对照组和实验组中的集群数量。假定两组中的集群大小相等，但您可以通过在{cmd:mratio()}选项中指定实验组与对照组的集群大小的比率来更改此值。其他参数的指定如{mansection PSS-2 powertwoproportionsRemarksandexamplesUsingpowertwoproportions:{it:Using power twoproportions}}所述。

{pstd}
您还可以通过指定{cmd:compute()}选项，根据另一组给定的集群数量或集群大小来计算一种组中的集群数量或集群大小。例如，要计算对照组中的集群数量，您指定{cmd:compute(K1)}并在{cmd:k2()}中提供实验组的集群数量。同样，要计算对照组中的集群大小，您指定{cmd:compute(M1)}并在{cmd:m2()}中提供实验组的集群大小。您可以以类似的方式计算实验组的集群数量或集群大小。

{pstd}
在计算集群数量、集群大小或功效时，您可以指定其他替代效应度量，以替代实验组比例{it:p2};请参见{mansection PSS-2 powertwoproportionsRemarksandexamplesAlternativewaysofspecifyingeffect:{it:Alternative ways of specifying effect}}在{bf:[PSS-2] power twoproportions}。

{pstd}
功效和效应大小的确定与{mansection PSS-2 powertwoproportionsRemarksandexamplesUsingpowertwoproportions:{it:Using power twoproportions}}中的描述相同，但样本大小信息作为集群数量{help power_twoproportions_cluster##kspec:{it:kspec}}提供，以及使用{help power_twoproportions_cluster##mspec:{it:mspec}}的集群大小，或者不常见的使用{help power_twoproportions_cluster##nspec:{it:nspec}}的样本大小提供。

{pstd}
所有计算默认假定类别间相关为0.5。您可以通过指定{cmd:rho()}选项更改此值。此外，所有集群被假定为相同大小，除非在{cmd:cvcluster()}选项中指定了集群大小的变异系数。

{pstd}
默认情况下，计算的集群数量、集群大小和样本大小被四舍五入上调。然而，您可以指定{cmd:nfractional}选项来查看对应的分数值；见{mansection PSS-4 Unbalanced designs Remarks and examples Fractional sample sizes:{it:Fractional sample sizes}}中的示例。计算集群大小时，如果指定了{cmd:cvcluster()}选项，则集群大小表示平均集群大小，因此不进行四舍五入。当使用{help power_twoproportions_cluster##nspec:{it:nspec}}指定样本大小时，可能会报告分数的集群大小，以容纳指定的集群数量和样本大小。

{pstd}
某些{cmd:power} {cmd:twoproportions,} {cmd:cluster}的计算需要迭代；见{mansection PSS-2 powertwoproportions,clusterMethodsandformulas:{it:Methods and formulas}}以获取详细信息以及{manhelp power PSS-2}以获取控制迭代的选项描述。


{marker examples}{...}
{title:示例}

    {title:示例：计算集群数量}

{pstd}
计算所需的集群数量，以检测给定对照组比例为0.2且实验组比例为0.4、集群大小为5的实验组比例；假设双侧检验，显著性水平为5%，功效为80%，类别间相关为0.5，并假设两组将具有相同数量的集群（默认值）{p_end}

{phang2}{cmd:. power twoproportions 0.2 0.4, m1(5) m2(5)}

{pstd}
与上述示例相同，只是使用类别间相关为0.2{p_end}

{phang2}{cmd:. power twoproportions 0.2 0.4, m1(5) m2(5) rho(0.2)}

{pstd}
与上述示例相同，只是集群大小的变异系数为0.6{p_end}

{phang2}
{cmd:. power twoproportions 0.2 0.4, m1(5) m2(5) rho(0.2) cvcluster(0.6)}

{pstd}
与第一个示例相同，只是集群数量比例为2{p_end}

{phang2}{cmd:. power twoproportions 0.2 0.4, m1(5) m2(5) kratio(2)}

{pstd}
指定一组类别间相关，并绘制结果{p_end}

{phang2}{cmd:. power twoproportions 0.2 0.4, m1(5) m2(5) rho(0.1(0.1)0.5) graph}

{pstd}
计算实验组中的集群数量，给定对照组集群数量为50{p_end}

{phang2}{cmd:. power twoproportions 0.2 0.4, compute(K2) k1(50) m1(5) m2(5)}


    {title:示例：计算集群大小}

{pstd}
计算所需的集群大小，以检测给定对照组比例为0.2且实验组比例为0.4，并假设两组均有60个集群；假设双侧检验，显著性水平为5%，功效为80%，类别间相关为0.5，并假设两组将具有相同的集群大小（默认值）{p_end}

{phang2}{cmd:. power twoproportions 0.2 0.4, k1(60) k2(60)}

{pstd}
与第一个示例相同，使用显著性水平为1%的单侧检验{p_end}

{phang2}{cmd:. power twoproportions 0.2 0.4, k1(60) k2(60) alpha(0.01) onesided}


    {title:示例：计算功效}
    
{pstd}
计算两个组中每组有5个集群和30个集群的双侧检验的功效，默认显著性水平为5%，实验组比例为0.4，对照组比例为0.2；使用0.5作为类别间相关的默认值{p_end}

{phang2}{cmd:. power twoproportions 0.2 0.4, k1(30) k2(30) m1(5) m2(5)}

{pstd}
计算实验组的集群数量列表的功效，并绘制结果{p_end}

{phang2}
{cmd:. power twoproportions 0.2 0.4, k1(30) k2(10(10)60) m1(5) m2(5) graph}


    {title:示例：计算目标实验组比例}

{pstd}
计算显著性水平为5%、功效为80%、类别间相关为0.5（默认值）的双侧检验中，可检测的比对照组比例大于的实验组比例的最小值；假设两组有60个大小为5的集群{p_end}

{phang2}{cmd:. power twoproportions 0.2, k1(60) k2(60) m1(5) m2(5) power(0.8)}

{pstd}
计算可检测的最大比例值，且小于0.2{p_end}

{phang2}
{cmd:. power twoproportions 0.2, k1(60) k2(60) m1(5) m2(5) power(0.8) direction(lower)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:power} {cmd:twoproportions,} {cmd:cluster} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(alpha)}}显著性水平{p_end}
{synopt:{cmd:r(power)}}功效{p_end}
{synopt:{cmd:r(beta)}}第二类错误概率{p_end}
{synopt:{cmd:r(delta)}}效应大小{p_end}
{synopt:{cmd:r(K1)}}对照组中的集群数量{p_end}
{synopt:{cmd:r(K2)}}实验组中的集群数量{p_end}
{synopt:{cmd:r(kratio)}}集群数量比例，{cmd:K2/K1}{p_end}
{synopt:{cmd:r(M1)}}对照组的集群大小{p_end}
{synopt:{cmd:r(M2)}}实验组的集群大小{p_end}
{synopt:{cmd:r(mratio)}}集群大小比例，{cmd:M2/M1}{p_end}
{synopt:{cmd:r(N)}}总样本量{p_end}
{synopt:{cmd:r(N1)}}对照组的样本量{p_end}
{synopt:{cmd:r(N2)}}实验组的样本量{p_end}
{synopt:{cmd:r(nratio)}}样本量比例，{cmd:N2/N1}{p_end}
{synopt:{cmd:r(nfractional)}}如果指定{cmd:nfractional}，则为{cmd:1}；其他情况下为{cmd:0}{p_end}
{synopt:{cmd:r(onesided)}}如果为单侧检验则为{cmd:1}；否则为{cmd:0}{p_end}
{synopt:{cmd:r(p1)}}对照组比例{p_end}
{synopt:{cmd:r(p2)}}实验组比例{p_end}
{synopt:{cmd:r(diff)}}实验组与对照组之间的比例差异{p_end}
{synopt:{cmd:r(ratio)}}实验组比例与对照组比例的比率{p_end}
{synopt:{cmd:r(rdiff)}}风险差异{p_end}
{synopt:{cmd:r(rrisk)}}相对风险{p_end}
{synopt:{cmd:r(oratio)}}比值比{p_end}
{synopt:{cmd:r(rho)}}类别间相关{p_end}
{synopt:{cmd:r(CV_cluster)}}集群大小的变异系数{p_end}
INCLUDE help pss_rrestab_sc.ihlp
{synopt:{cmd:r(init)}}估计参数的初始值{p_end}
INCLUDE help pss_rresiter_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:twoproportions}{p_end}
{synopt:{cmd:r(design)}}{cmd:CRD}{p_end}
{synopt:{cmd:r(test)}}{cmd:chi2}{p_end}
{synopt:{cmd:r(effect)}}指定的效应： {cmd:diff}、{cmd:ratio} 等{p_end}
{synopt:{cmd:r(direction)}}{cmd:upper} 或 {cmd:lower}{p_end}
INCLUDE help pss_rrestab_mac.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(pss_table)}}结果表{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_twoproportions_cluster.sthlp>}