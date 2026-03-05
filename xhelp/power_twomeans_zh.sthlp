{smcl}
{* *! version 1.1.11  21mar2019}{...}
{viewerdialog power "dialog power_twomeans"}{...}
{vieweralsosee "[PSS-2] power twomeans" "mansection PSS-2 powertwomeans"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power twomeans, cluster" "help power_twomeans_cluster_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power oneway" "help power oneway"}{...}
{vieweralsosee "[PSS-2] power twoway" "help power twoway"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-3] ciwidth twomeans" "help ciwidth_twomeans_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ttest" "help ttest_zh"}{...}
{viewerjumpto "Syntax" "power_twomeans_zh##syntax"}{...}
{viewerjumpto "Menu" "power_twomeans_zh##menu"}{...}
{viewerjumpto "Description" "power_twomeans_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_twomeans_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_twomeans_zh##options"}{...}
{viewerjumpto "Remarks: Using power twomeans" "power_twomeans_zh##remarks"}{...}
{viewerjumpto "Examples" "power_twomeans_zh##examples"}{...}
{viewerjumpto "Stored results""power_twomeans##stored_results"}
{help power_twomeans:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[PSS-2] power twomeans} {hline 2}}两样本均值的功效分析{p_end}
{p2col:}({mansection PSS-2 powertwomeans:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算样本大小

{p 8 43 2}
{opt power} {opt twomeans} {it:m1} {it:m2}
[{cmd:,} {opth p:ower(numlist)} 
{it:{help power_twomeans##synoptions:选项}}] 


{phang}
计算功效

{p 8 43 2}
{opt power} {opt twomeans} {it:m1} {it:m2}{cmd:,} 
{opth n(numlist)}
[{it:{help power_twomeans##synoptions:选项}}]


{phang}
计算效应大小和实验组均值

{p 8 43 2}
{opt power} {opt twomeans} {it:m1}{cmd:,} {opth n(numlist)} 
{opth p:ower(numlist)} [{it:{help power_twomeans##synoptions:选项}}]


{phang}
其中 {it:m1} 是对照组（参考组）的均值，{it:m2} 是实验组（比较组）的均值。 {it:m1} 和 {it:m2} 可以分别指定为一个数字或一个括号内的值列表（见 {help numlist_zh}）。{p_end}


{synoptset 30 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
INCLUDE help pss_twotestmainopts1.ihlp
{synopt: {opt nfrac:tional}}允许分数样本大小{p_end}
{p2coldent:* {opth diff(numlist)}}实验组均值与对照组均值之间的差异，{it:m2}-{it:m1}；可以指定为实验组均值 {it:m2} 的替代{p_end}
{p2coldent:* {opth sd(numlist)}}假设两个组的标准差相等的情况下，对照组和实验组的共同标准差；默认值为 {cmd:sd(1)}{p_end}
{p2coldent:* {opth sd1(numlist)}}对照组的标准差；需要 {cmd:sd2()}{p_end}
{p2coldent:* {opth sd2(numlist)}}实验组的标准差；需要 {cmd:sd1()}{p_end}
{synopt: {opt knownsds}}请求计算假设已知两组的标准差；默认假设标准差未知{p_end}
INCLUDE help pss_testmainopts3.ihlp

{syntab:表格}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_twomeans##tablespec:表格规格}}{cmd:)}]}抑制表格或将结果显示为表格；见 {manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}将表格数据保存到 {it:filename}；使用 {cmd:replace} 以覆盖现有 {it:filename}{p_end}

INCLUDE help pss_graphopts.ihlp

{syntab:迭代}
{synopt: {opt init(#)}}样本大小或实验组均值的初始值{p_end}
INCLUDE help pss_iteropts.ihlp

{synopt: {opt cluster}}执行分层随机设计的计算；见 {manhelp power_twomeans_cluster PSS-2:power twomeans, cluster}{p_end}
INCLUDE help pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
INCLUDE help pss_numlist.ihlp
{p 4 6 2}{cmd:cluster} 和 {cmd:notitle} 不会出现在对话框中。{p_end}

{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 是

{p 16 16 2}
{it:{help power_twomeans##column:列}}[{cmd::}{it:标签}]
[{it:列}[{cmd::}{it:标签}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:表格选项}}]

{pstd}
{it:列} 是下面定义的列之一，{it:标签} 是列标签（可以包含引号和复合引号）。

{synoptset 28}{...}
{marker column}{...}
{synopthdr :列}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}功效{p_end}
{synopt :{opt beta}}II型错误概率{p_end}
{synopt :{opt N}}受试者总数{p_end}
{synopt :{opt N1}}对照组的受试者数量{p_end}
{synopt :{opt N2}}实验组的受试者数量{p_end}
{synopt :{opt nratio}}样本大小的比例，实验组与对照组的比例{p_end}
{synopt :{opt delta}}效应大小{p_end}
{synopt :{opt m1}}对照组均值{p_end}
{synopt :{opt m2}}实验组均值{p_end}
{synopt :{opt diff}}对照组均值与实验组均值之间的差异{p_end}
{synopt :{opt sd}}共同标准差{p_end}
{synopt :{opt sd1}}对照组标准差{p_end}
{synopt :{opt sd2}}实验组标准差{p_end}
{synopt :{opt target}}目标参数；{cmd:m2} 的同义词{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}列 {cmd:beta} 在默认表中显示为列 {cmd:power} 的位置如果指定。{p_end}
{p 4 6 2}如果指定，列 {cmd:nratio}、{cmd:diff}、{cmd:sd}、{cmd:sd1} 和 {cmd:sd2} 在默认表中显示。


INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power twomeans} 计算两样本均值检验的样本大小、功效或实验组均值。默认情况下，它为给定的功效以及对照组和实验组均值的值计算样本大小。或者，它可以为给定样本大小和对照组及实验组均值的值计算功效，或者在给定样本大小、功效和对照组均值的情况下计算实验组均值。有关聚类随机设计中的功效和样本大小分析，请见 {manhelp power_twomeans_cluster PSS-2:power twomeans, cluster}。此外，请参见 {manhelp power PSS-2} 以获取使用假设检验的 {cmd:power} 命令的一般介绍。

{pstd}
有关计算两个独立样本均值差异的置信区间的精确度和样本大小分析，请查看 {help ciwidth_twomeans_zh:[PSS-3] ciwidth twomeans}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection PSS-2 powertwomeansQuickstart:快速开始}

        {mansection PSS-2 powertwomeansRemarksandexamples:备注和示例}

        {mansection PSS-2 powertwomeansMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:alpha()}, {cmd:power()}, {cmd:beta()}, {cmd:n()}, {cmd:n1()},
{cmd:n2()}, {cmd:nratio()}, {cmd:compute()}, {cmd:nfractional}; 
见 {manhelp power##mainopts PSS-2: power}。

{phang}
{opth diff(numlist)} 指定实验组均值与对照组均值的差异，{it:m2} - {it:m1}。您可以将实验组均值 {it:m2} 作为命令参数指定，也可以在 {cmd:diff()} 中指定两均值之间的差异。如果您指定 {opt diff(#)}，则实验组均值计算为 {it:m2} = {it:m1} + {it:#}。此选项在计算效应大小时不允许使用。

{phang}
{opth sd(numlist)} 指定假设两个组的标准差相等的情况下，对照组和实验组的共同标准差。默认值为 {cmd:sd(1)}。

{phang}
{opth sd1(numlist)} 指定对照组的标准差。如果您指定 {cmd:sd1()}，则还必须指定 {cmd:sd2()}。

{phang}
{opth sd2(numlist)} 指定实验组的标准差。如果您指定 {cmd:sd2()}，则还必须指定 {cmd:sd1()}。

{phang}
{opt knownsds} 请求在计算时将每组的标准差视为已知。默认情况下，标准差被视为未知，计算基于两样本 t 检验，该检验使用学生 t 分布作为检验统计量的抽样分布。如果指定了 {cmd:knownsds}，则计算基于两样本 z 检验，该检验使用正态分布作为检验统计量的抽样分布。

{phang}
{cmd:direction()}, {cmd:onesided}, {cmd:parallel}; 见 {manhelp power##mainopts PSS-2: power}。

INCLUDE help pss_taboptsdes.ihlp

INCLUDE help pss_graphoptsdes.ihlp
另请参见 {mansection PSS-2 powertwomeansSyntaxcolumn:列} 表以获取图形使用的符号列表。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定估计参数的初始值。对于样本大小的确定，估计参数为控制组大小 n1，或者如果指定了 {cmd:compute(N2)}，则为实验组大小 n2。对于效应大小的确定，估计参数为实验组均值 {it:m2}。默认的初始值对于双边检验为从对应单边检验的显著性水平 alpha/2 获得的封闭形式解。t 检验计算的默认初始值是在对应的大样本正态近似基础上获得的。

INCLUDE help pss_iteroptsdes.ihlp

{pstd}
以下选项可与 {cmd:power twomeans} 一起使用，但未显示在对话框中：

{phang}
{opt cluster}; 见 {manhelp power_twomeans_cluster PSS-2:power twomeans, cluster}。

INCLUDE help pss_reportoptsdes.ihlp


{marker remarks}{...}
{title:备注: 使用 power twomeans}

{pstd}
{cmd:power twomeans} 计算两样本均值检验的样本大小、功效或实验组均值。所有计算均为双侧假设检验，默认显著性水平设为 0.05。您可以通过指定 {cmd:alpha()} 选项更改显著性水平。您可以指定 {cmd:onesided} 选项请求单侧检验。所有计算默认假设为平衡或等分配设计；有关如何指定不平衡设计的描述，请参见 {manlink PSS-4 Unbalanced designs}。

{pstd}
默认情况下，所有计算均为两样本 t 检验，假设标准差相等且未知。默认情况下，共同标准差设为 1，但可以通过指定 {cmd:sd()} 选项进行更改。要指定不同的标准差，请使用相应的 {cmd:sd1()} 和 {cmd:sd2()} 选项。这些选项必须一起指定，且不得与 {cmd:sd()} 一起使用。当指定了 {cmd:sd1()} 和 {cmd:sd2()} 时，计算基于 Satterthwaite 的 t 检验，该检验假设标准差不等且未知。如果已知标准差，请使用 {cmd:knownsds} 选项请求计算基于两样本 z 检验。

{pstd}
要计算总体样本大小，您必须指定对照组均值 {it:m1}、实验组均值 {it:m2}，并可选择在 {cmd:power()} 选项中指定检验的功效。默认功效设为 0.8。

{pstd}
也可以在给定另一组大小的情况下计算其中一组的样本大小。要计算对照组样本大小，您必须在 {cmd:compute(N1)} 选项中指定并在 {cmd:n2()} 选项中指定实验组的样本大小。同样，要计算实验组样本大小，您必须在 {cmd:compute(N2)} 选项中指定并在 {cmd:n1()} 选项中指定对照组的样本大小。

{pstd}
要计算功效，您必须在 {cmd:n()} 选项中指定总样本大小、对照组均值 {it:m1} 和实验组均值 {it:m2}。

{pstd}
在计算样本大小或功效时，您可以在 {cmd:diff()} 选项中指定实验组均值与对照组均值之间的差异 {it:m2}-{it:m1}，而不是实验组均值 {it:m2}。

{pstd}
要计算效应大小、实验组均值与零假设均值之间的差异以及实验组均值，您必须在 {cmd:n()} 选项中指定总样本大小、在 {cmd:power()} 选项中指定功效、指定对照组均值 {it:m1}，并可选择效应方向。默认方向为上，{cmd:direction(upper)}，这意味着实验组均值假定大于指定的对照组值。您可以通过指定 {cmd:direction(lower)} 选项将方向更改为下，这意味着实验组均值假定小于指定的对照组值。

{pstd}
在计算功效或效应大小时，您可以在 {cmd:n1()} 和 {cmd:n2()} 中指定个别组大小，或在 {cmd:nratio()} 中指定其中一个组的大小。有关详细信息，请参见 {mansection PSS-4 UnbalanceddesignsRemarksandexamplesTwosamples:{it:Two samples}} 中的 {bf:[PSS-4] Unbalanced designs}。

{marker examples}{...}
{title:示例}

    {title:示例: 计算样本大小}

{pstd}
    计算检测实验组均值为 1.5 所需的总体样本大小，已知对照组均值为 1；假设两个组的标准差均为 1，将使用双侧检验，显著性水平为 5%，且两个组的观察数相同（默认值）{p_end}
{phang2}{cmd:. power twomeans 1 1.5}

{pstd}
    与上面相同，使用 {cmd:diff()} 选项指定对照组与实验组均值之间的差异{p_end}
{phang2}{cmd:. power twomeans 1, diff(0.5)}
        
{pstd}
    与第一个示例相同，但指定实验组将有两倍于对照组的观察数{p_end}
{phang2}{cmd:. power twomeans 1 1.5, nratio(2)}

{pstd}
    使用与第一个示例相同的参数，查找如果已知对照组有 60 个观察数，实验组所需的样本大小{p_end}
{phang2}{cmd:. power twomeans 1 1.5, n1(60) compute(N2)}

{pstd}
    与第一个示例相同，只是对照组的标准差为 2，实验组的标准差为 3{p_end}
{phang2}{cmd:. power twomeans 1 1.5, sd1(2) sd2(3)}

{pstd}
    计算上述参数所需的总体样本大小，假设标准差已知{p_end}
{phang2}{cmd:. power twomeans 1 1.5, sd1(2) sd2(3) knownsds}

{pstd}
    计算显著性水平为 10% 的单侧检验所需的样本大小{p_end}
{phang2}{cmd:. power twomeans 1 1.5, alpha(0.1) onesided}

{pstd}
    计算一系列实验组均值和功效，绘制结果图{p_end}
{phang2}{cmd:. power twomeans 1 (1.1(0.1)2), power(0.8 0.9) graph}


    {title:示例: 计算功效}

{pstd}
    假设我们有 50 个样本，并想计算双侧检验的功效，以检测实验组均值为 1.5，假设对照组均值为 1；假设两个组的观察数相同，两个组的标准差均为 1，显著性水平为 5%（默认值）{p_end}
{phang2}{cmd:. power twomeans 1 1.5, n(50)}

{pstd}
    与上面相同，假设对照组有 20 个观察数，实验组有 30 个观察数{p_end}
{phang2}{cmd:. power twomeans 1 1.5, n1(20) n2(30)}

{pstd}
    与上面相同{p_end}
{phang2}{cmd:. power twomeans 1 1.5, n1(20) nratio(1.5)}

{pstd}
    与上面相同{p_end}
{phang2}{cmd:. power twomeans 1 1.5, n2(30) nratio(1.5)}

{pstd}
    计算一系列样本大小的功效，绘制结果图{p_end}
{phang2}{cmd:. power twomeans 1 1.5, n(50(10)100) graph}


    {title:示例: 计算实验组均值}

{pstd}
    计算可以在对照组均值基础上使用双侧假设检验检测出的实验组均值的最小值，假设两个组都有 100 个观察，功效为 80%；假设显著性水平为 5%，且两个组的标准差均为 1（默认值）{p_end}
{phang2}{cmd:. power twomeans 1, n(100) power(0.8)}

{pstd}
    与上面相同{p_end}
{phang2}{cmd:. power twomeans 1, n(100) power(0.8) direction(upper)}

{pstd}
    计算可以检测出的低于 1 的最大均值{p_end}
{phang2}{cmd:. power twomeans 1, n(100) power(0.8) direction(lower)}


{marker stored_results}{...}
{title:存储结果}

{pstd}
{cmd:power twomeans} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
INCLUDE help pss_rrestwotest_sc.ihlp
{synopt:{cmd: r(m1)}}对照组均值{p_end}
{synopt:{cmd: r(m2)}}实验组均值{p_end}
{synopt:{cmd: r(diff)}}实验组和对照组均值之间的差异{p_end}
{synopt:{cmd: r(sd)}}对照组和实验组的共同标准差{p_end}
{synopt:{cmd: r(sd1)}}对照组标准差{p_end}
{synopt:{cmd: r(sd2)}}实验组标准差{p_end}
{synopt:{cmd: r(unequal)}} {cmd:1}表示不等方差检验，{cmd:0} 表示相反{p_end}
{synopt:{cmd: r(knownsds)}} {cmd:1} 如果指定了选项 {cmd:knownsds}，{cmd:0} 否则{p_end}
INCLUDE help pss_rrestab_sc.ihlp
{synopt:{cmd: r(init)}}样本大小或实验组均值的初始值{p_end}
INCLUDE help pss_rresiter_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:twomeans}{p_end}
INCLUDE help pss_rrestest_mac.ihlp
INCLUDE help pss_rrestab_mac.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
INCLUDE help pss_rrestab_mat.ihlp

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_twomeans.sthlp>}