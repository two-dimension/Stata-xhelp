{smcl}
{* *! version 1.1.9  21mar2019}{...}
{viewerdialog "chi-squared test" "dialog power_twoprop_chi2"}{...}
{viewerdialog "LR test" "dialog power_twoprop_lrchi2"}{...}
{viewerdialog "Fisher's exact test" "dialog power_twoprop_fisher"}{...}
{vieweralsosee "[PSS-2] power twoproportions" "mansection PSS-2 powertwoproportions"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power twoproportions, cluster" "help power_twoproportions_cluster_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bitest" "help bitest_zh"}{...}
{vieweralsosee "[R] prtest" "help prtest_zh"}{...}
{viewerjumpto "Syntax" "power_twoproportions_zh##syntax"}{...}
{viewerjumpto "Menu" "power_twoproportions_zh##menu"}{...}
{viewerjumpto "Description" "power_twoproportions_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_twoproportions_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_twoproportions_zh##options"}{...}
{viewerjumpto "Remarks: Using power twoproportions" "power_twoproportions_zh##remarks"}{...}
{viewerjumpto "Examples" "power_twoproportions_zh##examples"}{...}
{viewerjumpto "Video examples" "power_twoproportions_zh##videos"}{...}
{viewerjumpto "Stored results" "power_twoproportions_zh##stored_results"}
{help power_twoproportions:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[PSS-2] power twoproportions} {hline 2}}双样本比例检验的功效分析{p_end}
{p2col:}({mansection PSS-2 powertwoproportions:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算样本量

{p 8 43 2}
{opt power} {opt twoprop:ortions} {it:p1} {it:p2}
[{cmd:,} {opth p:ower(numlist)} 
{it:{help power_twoproportions##synoptions:options}}] 


{phang}
计算功效 

{p 8 43 2}
{opt power} {opt twoprop:ortions} {it:p1} {it:p2}{cmd:,} {opth n(numlist)}
[{it:{help power_twoproportions##synoptions:options}}]


{phang}
计算效应量和实验组比例

{p 8 43 2}
{opt power} {opt twoprop:ortions} {it:p1}{cmd:,} {opth n(numlist)} 
{opth p:ower(numlist)} [{it:{help power_twoproportions##synoptions:options}}]


{phang}
其中
{it:p1} 是对照（参考）组中的比例，而
{it:p2} 是实验（比较）组中的比例。
{it:p1} 和 {it:p2} 可以被指定为一个数字或一组值的列表（见 {help numlist_zh}）。{p_end}


{synoptset 30 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{synopt:{opth test:(power_twoproportions##testspec:test)}}指定检验类型；默认是
{cmd:test(chi2)}{p_end}

{syntab:主要}
INCLUDE help pss_twotestmainopts1.ihlp
{synopt: {opt nfrac:tional}}允许分数样本量{p_end}
{p2coldent:* {opth diff(numlist)}}实验组和对照组比例之间的差异，{it:p2}-{it:p1}；指定代替实验组比例 {it:p2}{p_end}
{p2coldent:* {opth ratio(numlist)}}实验组比例与对照组比例的比值，{it:p2}/{it:p1}；指定代替实验组比例 {it:p2}{p_end}
{p2coldent:* {opth rd:iff(numlist)}}风险差异，{it:p2}-{it:p1}；{cmd:diff()} 的同义词{p_end}
{p2coldent:* {opth rr:isk(numlist)}}相对风险，{it:p2}/{it:p1}；{cmd:ratio()} 的同义词{p_end}
{p2coldent:* {opth or:atio(numlist)}}优势比，{c -(}{it:p2}(1-{it:p1}){c )-}/{c -(}{it:p1}(1-{it:p2}){c )-}{p_end}
{synopt: {opth effect:(power twoproportions##effectspec:effect)}}指定显示的效应类型；默认是 {cmd:effect(diff)}{p_end}
{synopt: {opt contin:uity}}对离散分布的正态近似应用连续性校正{p_end}
INCLUDE help pss_testmainopts3.ihlp

{syntab:表格}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_twoproportions##tablespec:tablespec}}{cmd:)}]}抑制表格或将结果显示为表格；见
{manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}将表格数据保存到 {it:filename}；使用 {cmd:replace} 来覆盖现有的 {it:filename}{p_end}

INCLUDE help pss_graphopts.ihlp

{syntab:迭代}
{synopt: {opt init(#)}}样本量或实验组比例的初始值{p_end}
INCLUDE help pss_iteropts.ihlp

{synopt: {opt cluster}}进行 CRD 计算；见
    {manhelp power_twoproportions_cluster PSS-2:power twoproportions, cluster}{p_end}
INCLUDE help pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
INCLUDE help pss_numlist.ihlp
{p 4 6 2}{cmd:cluster} 和 {cmd:notitle} 不会出现在对话框中。{p_end}

{synoptset 30}{...}
{marker testspec}{...}
{synopthdr :测试}
{synoptline}
{synopt :{opt chi2}}皮尔逊卡方检验；默认{p_end}
{synopt :{opt lrchi2}}似然比检验{p_end}
{synopt :{opt fisher}}费舍尔-欧文的精确条件检验{p_end}
{synoptline}
{p 4 6 2}{cmd:test()} 不会出现在对话框中。
所选的对话框取决于 {cmd:test()} 规格。

{marker effectspec}{...}
{synopthdr :效应}
{synoptline}
{synopt :{opt diff}}比例之间的差异，{it:p2}-{it:p1}；默认{p_end}
{synopt :{opt ratio}}比例的比值，{it:p2}/{it:p1}{p_end}
{synopt :{opt rd:iff}}风险差异，{it:p2}-{it:p1}{p_end}
{synopt :{opt rr:isk}}相对风险，{it:p2/p1}{p_end}
{synopt :{opt or:atio}}优势比，{c -(}{it:p2}(1-{it:p1}){c )-}/{c -(}{it:p1}(1-{it:p2}){c )-}{p_end}
{synoptline}

{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 是

{p 16 16 2}
{it:{help power_twoproportions##column:column}}[{cmd::}{it:label}]
[{it:column}[{cmd::}{it:label}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:tableopts}}]

{pstd}
{it:column} 是下面定义的列之一，{it:label} 是列标签（可以包含引号和复合引号）。

{synoptset 30}{...}
{marker column}{...}
{synopthdr :列}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt alpha_a}}观察到的显著性水平{p_end}
{synopt :{opt power}}功效{p_end}
{synopt :{opt beta}}二型错误概率{p_end}
{synopt :{opt N}}受试者总数{p_end}
{synopt :{opt N1}}对照组中的受试者人数{p_end}
{synopt :{opt N2}}实验组中的受试者人数{p_end}
{synopt :{opt nratio}}样本大小比，实验组与对照组{p_end}
{synopt :{opt delta}}效应量{p_end}
{synopt :{opt p1}}对照组比例{p_end}
{synopt :{opt p2}}实验组比例{p_end}
{synopt :{opt diff}}实验组比例与对照组比例之间的差异{p_end}
{synopt :{opt ratio}}实验组比例与对照组比例的比值{p_end}
{synopt :{opt rdiff}}风险差异{p_end}
{synopt :{opt rrisk}}相对风险{p_end}
{synopt :{opt oratio}}优势比{p_end}
{synopt :{opt target}}目标参数；{cmd:p2} 的同义词{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}如果指定，列 {cmd:beta} 会在默认表中代替列 {cmd:power} 显示。{p_end}
{p 4 6 2}当指定 {cmd:test(fisher)} 选项时，可以使用列 {cmd:alpha_a}。{p_end}
{p 4 6 2}如果指定，列 {cmd:nratio}、{cmd:diff}、{cmd:ratio}、{cmd:rdiff}、{cmd:rrisk} 和 {cmd:oratio} 会在默认表中显示。


INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power twoproportions} 计算双样本比例检验的样本量、功效或实验组比例。默认情况下，
它计算给定功效和对照组与实验组比例值下的样本量。或者，它可以在给定的样本量条件下计算功效，以及对照组与实验组比例值，或在给定样本量、功效和对照组比例下计算实验组比例。对于聚类随机设计中的功效和样本量分析，请参见
{manhelp power_twoproportions_cluster PSS-2:power twoproportions, cluster}。
另请参见 {manhelp power PSS-2}，了解使用假设检验的 {cmd:power} 命令的一般介绍。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection PSS-2 powertwoproportionsQuickstart:快速开始}

        {mansection PSS-2 powertwoproportionsRemarksandexamples:备注和示例}

        {mansection PSS-2 powertwoproportionsMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt test(test)} 指定功效和样本量计算的检验类型。 {it:test} 是 {cmd:chi2}、{cmd:lrchi2} 或 {cmd:fisher} 之一。

{pmore}
{cmd:chi2} 请求进行皮尔逊卡方检验的计算。这是默认检验。

{pmore}
{cmd:lrchi2} 请求进行似然比检验的计算。

{pmore}
{cmd:fisher} 请求进行费舍尔-欧文的精确条件检验的计算。此检验不允许使用迭代选项。

{dlgtab:主要}

{phang}
{cmd:alpha()}、{cmd:power()}、{cmd:beta()}、{cmd:n()}、{cmd:n1()}、
{cmd:n2()}、{cmd:nratio()}、{cmd:compute()}、{cmd:nfractional}； 
见 {manhelp power##mainopts PSS-2:power}。

{phang}
{opth diff(numlist)} 指定实验组比例和对照组比例之间的差异，{it:p2} - {it:p1}。您可以
将实验组比例 {it:p2} 指定为命令参数或将两比例之间的差异指定在 {cmd:diff()} 中。如果您指定 {opt diff(#)}，则实验组比例被计算为 {it:p2} = {it:p1} + {it:#}。 该选项不允许与效应量的确定同时使用，且不得与 {cmd:ratio()}、{cmd:rdiff()}、{cmd:rrisk()} 或 {cmd:oratio()} 一起使用。

{phang}
{opth ratio(numlist)} 指定实验组比例与对照组比例的比值，{it:p2}/{it:p1}。您可以
将实验组比例 {it:p2} 指定为命令参数或将两比例之间的比值指定在 {cmd:ratio()} 中。如果您指定 {opt ratio(#)}，则实验组比例被计算为 {it:p2} = {it:p1} x {it:#}。 该选项不允许与效应量的确定同时使用，且不得与 {cmd:diff()}、{cmd:rdiff()}、{cmd:rrisk()} 或 {cmd:oratio()} 一起使用。

{phang}
{opth rdiff(numlist)} 指定风险差异 {it:p2} - {it:p1}。该选项是 {cmd:diff()} 的同义词，
但结果标记为风险差异。该选项不允许与效应量的确定同时使用，且不得与 {cmd:diff()}、{cmd:ratio()}、{cmd:rrisk()} 或 
{cmd:oratio()} 一起使用。

{phang}
{opth rrisk(numlist)} 指定相对风险或风险比 {it:p2}/{it:p1}。该选项是 {cmd:ratio()} 的同义词，
但结果标记为相对风险。该选项不允许与效应量的确定同时使用，且不得与 {cmd:diff()}、
{cmd:ratio()}、{cmd:rdiff()} 或 {cmd:oratio()} 一起使用。

{phang}
{opth oratio(numlist)} 指定优势比 {c -(}{it:p2}(1 - {it:p1}){c )-}/{c -(}{it:p1}(1 - {it:p2}){c )-}。您可以
将实验组比例 {it:p2} 指定为命令参数或将优势比在 {cmd:oratio()} 中指定。如果您指定 {opt oratio(#)}，则实验组比例被计算为
{it:p2} = 1/{c -(}1+(1-{it:p1})/({it:p1} x {it:#}){c )-}。 该选项不允许与效应量的确定同时使用，且不得与
{cmd:diff()}、{cmd:ratio()}、{cmd:rdiff()} 或 {cmd:rrisk()} 一起使用。

{phang}
{opt effect(effect)} 指定在输出中报告的效应量类型为 {cmd:delta}。{it:effect} 是 {cmd:diff}、
{cmd:ratio}、{opt rd:iff}、{opt rr:isk} 或 {opt or:atio} 之一。默认情况下，效应量
{cmd:delta} 是两个比例之间的差异。如果指定了 {cmd:diff()}、{cmd:ratio()}、{cmd:rdiff()}、{cmd:rrisk()} 或 {cmd:oratio()}，那么效应量
{cmd:delta} 将包含对应于指定选项的依赖量。例如，如果指定了 {cmd:oratio()}，则 {cmd:delta}
将包含优势比。

{phang}
{opt continuity} 请求对离散分布的正态近似应用连续性校正。 
{opt continuity} 不能与 {cmd:test(fisher)} 或 {cmd:test(lrchi2)} 同时指定。

{phang}
{cmd:direction()}、{cmd:onesided}、{cmd:parallel}；见 
{manhelp power##mainopts PSS-2:power}。

INCLUDE help pss_taboptsdes.ihlp

INCLUDE help pss_graphoptsdes.ihlp
另请参见 {bf:[PSS-2] power twoproportions} 中的 {mansection PSS-2 powertwoproportionsSyntaxcolumn:column} 表，以获取图表使用的符号列表。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定估计参数的初始值。对于样本量确定，估计参数是对照组大小 n1，
或者，如果指定了 {cmd:compute(N2)}，则实验组大小 n2。对于效应量确定，估计参数是实验组比例 p2。
双侧检验的样本量的默认初始值是基于对应的单侧大样本 z 检验，显著性水平为 alpha/2。实验组比例的默认初始值是通过二分法计算得出的。

INCLUDE help pss_iteroptsdes.ihlp

{pstd}
在 {cmd:power twoproportions} 可用以下选项，但在对话框中未显示：

{phang}
{opt cluster}；见
{manhelp power_twoproportions_cluster PSS-2:power twoproportions, cluster}。

INCLUDE help pss_reportoptsdes.ihlp


{marker remarks}{...}
{title:备注：使用 power twoproportions}

{pstd}
{cmd:power twoproportions} 计算双样本比例检验的样本量、功效或实验组比例。所有计算均针对双侧假设检验进行，默认显著性水平设为 0.05。您可以通过指定 {cmd:alpha()} 选项更改显著性水平。您可以指定 {cmd:onesided} 选项请求单侧检验。默认情况下，所有计算假设为平衡或均等分配设计；有关如何指定不平衡设计的说明，见
{manlink PSS-4 Unbalanced designs}。

{pstd}
{cmd:power twoproportions} 针对三种不同的检验进行功效分析，可以在 {cmd:test()} 选项中指定。默认是皮尔逊卡方检验（{cmd:test(chi2)}），该检验通过标准正态分布近似检验统计量的抽样分布。您可以通过指定 {cmd:test(lrchi2)} 选项请求基于似然比检验的计算。要请求基于超几何分布的费舍尔精确条件检验，可以指定 {cmd:test(fisher)}。{cmd:fisher} 方法不适用于计算样本量或效应量；具体细节请见
{mansection PSS-2 powertwoproportionsRemarksandexamplesex8:例子 8}。

{pstd}
要计算总样本量，您必须指定对照组比例 {it:p1}、实验组比例 {it:p2}，并可选地在 {cmd:power()} 选项中指定检验的功效。默认功效设为 0.8。

{pstd}
您可以在给定另一个参数的情况下计算其中一个组的样本量，而不是总样本量。要计算对照组样本量，您必须在 {cmd:compute(N1)} 选项中指定，并在 {cmd:n2()} 选项中指定实验组的样本量。同样地，要计算实验组样本量，您必须在 {cmd:compute(N2)} 选项中指定，并在 {cmd:n1()} 选项中指定对照组的样本量。

{pstd}
要计算功效，您必须在 {cmd:n()} 选项中指定总样本量、对照组比例 {it:p1} 和实验组比例 {it:p2}。

{pstd}
在计算样本量或功效时，您可以使用其他替代效应度量，来替代实验组比例 {it:p2}；见
{mansection PSS-2 powertwoproportionsRemarksandexamplessub1:{it:替代效应的指定方法}}
在 {bf:[PSS-2] power twoproportions} 中。

{pstd}
要计算效应量和实验组比例，您必须在 {cmd:n()} 选项中指定总样本量、在 {cmd:power()} 选项中指定功效、对照组比例 {it:p1}，并可选地指定效应的方向。默认方向为上（{cmd:direction(upper)}），意味着假定实验组比例大于指定的对照组值。您可以通过指定 {cmd:direction(lower)} 选项将方向改为下（这意味着假定实验组比例小于指定的对照组值）。

{pstd}
双样本比例检验的效应量有多种定义。{cmd:effect()} 选项指定 {cmd:power} {cmd:twoproportions} 应使用何种定义来报告效应量，该效应量在 {cmd:power} 命令的输出中标记为 {cmd:delta}。可用的定义包括实验组比例与对照组比例之间的差异（{cmd:diff}）、实验组比例与对照组比例的比值（{cmd:ratio}）、风险差异 {it:p2} - {it:p1}（{cmd:rdiff}）、相对风险 {it:p2}/{it:p1}（{cmd:rrisk}）和优势比 {c -(}{it:p2}(1 - {it:p1}){c )-}/{c -(}{it:p1}(1 - {it:p2}){c )-}（{cmd:oratio}）。当指定了 {cmd:effect()} 时，效应量 {cmd:delta} 包含相应效应的估计值，并标记。

默认情况下， {cmd:delta} 对应于两个比例之间的差异。如果指定了任何选项 {cmd:diff()}、{cmd:ratio()}、{cmd:rdiff()}、{cmd:rrisk()} 或 {cmd:oratio()}，而未指定 {cmd:effect()}，则 {cmd:delta} 将包含与指定选项对应的效应量。

{pstd}
您可以在 {cmd:n()} 中指定总样本量，而在 {cmd:n1()} 和 {cmd:n2()} 中指定个别组的大小，或者在计算功效或效应量时指定一个组的大小和 {cmd:nratio()}。有关更多详细信息，请参见
{mansection PSS-4 Unbalanced designs Remarks and examples Twosamples:{it:两组样本}}在 {bf:[PSS-4] Unbalanced designs}中。

{marker examples}{...}
{title:示例}

    {title:示例：计算样本量}

{pstd}
    计算所需的总样本量，以检测实验组比例为 0.5 时，对照组比例为 0.1；假设双侧假设检验，显著性水平为 5%，所需功效为 80%，并且两组将具有相同数量的观测（默认值）{p_end}
{phang2}{cmd:. power twoproportions 0.1 0.5}

{pstd}
    和上述相同，假设实验组样本量将是对照组大小的两倍{p_end}
{phang2}{cmd:. power twoproportions 0.1 0.5, nratio(2)}

{pstd}
    和第一个示例相同，假设对照组的样本量知道为 60{p_end}
{phang2}{cmd:. power twoproportions 0.1 0.5, n1(60) compute(N2)}

{pstd}
    和第一个示例相同，使用单侧检验和 10% 的显著性水平{p_end}
{phang2}{cmd:. power twoproportions 0.1 0.5, alpha(0.1) onesided}

{pstd}
    和第一个示例相同，使用 {cmd:diff()} 选项来指定比例差异{p_end}
{phang2}{cmd:. power twoproportions 0.1, diff(0.4)}

{pstd}
    通过指定优势比和对照组比例来计算总样本量；假设双侧假设检验，显著性水平为 5%，所需功效为 80%，并且两组将具有相同数量的观测（默认值）{p_end}
{phang2}{cmd:. power twoproportions 0.1, or(3)}

{pstd}
    与上述相似，指定风险比为 3{p_end}
{phang2}{cmd:. power twoproportions 0.1, rr(3)}

{pstd}
    对一系列实验组比例和功效计算总样本量，并绘制结果图{p_end}
{phang2}{cmd:. power twoproportions 0.1 (0.2(0.1)0.9), power(0.8 0.9) graph}


    {title:示例：计算功效}

{pstd}
    假设我们有一个包含 50 名受试者的样本。在假设对照组比例为 0.1 时，计算双侧检验的功效，以检测实验组比例为 0.5；假设两个组具有相同数量的观测和 5% 的显著性水平（默认值）{p_end}
{phang2}{cmd:. power twoproportions 0.1 0.5, n(50)}

{pstd}
    与上述相同，但对照组有 20 名受试者，实验组有 30 名受试者{p_end}
{phang2}{cmd:. power twoproportions 0.1 0.5, n1(20) n2(30)}

{pstd}
    与上述相同{p_end}
{phang2}{cmd:. power twoproportions 0.1 0.5, n1(20) nratio(1.5)}

{pstd}
    与上述相同{p_end}
{phang2}{cmd:. power twoproportions 0.1 0.5, n2(30) nratio(1.5)}

{pstd}
    对一系列样本量计算功效，绘制结果图{p_end}
{phang2}{cmd:. power twoproportions 0.1 0.5, n(50(10)100) graph}


    {title:示例：计算实验组比例}

{pstd}
    计算可以检测到的实验组比例的最小值，该值超过对照组比例 0.3，使用双侧检验，样本总数为 100 名受试者，两组数量相等；假设显著性水平为 5% 和功效为 80%（默认值）{p_end}
{phang2}{cmd:. power twoproportions 0.3, n(100) power(0.8)}

{pstd}
    与上述相同{p_end}
{phang2}{cmd:. power twoproportions 0.3, n(100) power(0.8) direction(upper)}

{pstd}
    计算可以检测到的最大比例，该比例低于 0.3{p_end}
{phang2}{cmd:. power twoproportions 0.3, n(100) power(0.8) direction(lower)}


{marker videos}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=QyZf8H3uQ2c":如何计算两个独立比例的样本量}

{phang}
{browse "https://www.youtube.com/watch?v=4fNjMqbK19o":如何计算两个独立比例的功效}
            
{phang}
{browse "https://www.youtube.com/watch?v=E6F5PAOKoK4":如何计算两个独立比例的最小可检测效应量}


{marker stored_results}{...}
{title:存储的结果}

{pstd}
{cmd:power twoproportions} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
INCLUDE help pss_rrestwoprop_sc.ihlp
{synopt:{cmd: r(p1)}}对照组比例{p_end}
{synopt:{cmd: r(p2)}}实验组比例{p_end}
{synopt:{cmd: r(diff)}}实验组和对照组比例的差异{p_end}
{synopt:{cmd: r(ratio)}}实验组比例与对照组比例的比值{p_end}
{synopt:{cmd: r(rdiff)}}风险差异{p_end}
{synopt:{cmd: r(rrisk)}}相对风险{p_end}
{synopt:{cmd: r(oratio)}}优势比{p_end}
{synopt:{cmd: r(continuity)}}{bf:1} 如果使用了连续性校正；
{bf:0} 否则{p_end}
INCLUDE help pss_rrestab_sc.ihlp
{synopt:{cmd: r(init)}}样本量或实验组比例的初始值{p_end}
INCLUDE help pss_rresiter_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:twoproportions}{p_end}
{synopt:{cmd:r(test)}}{cmd:chi2}、{cmd:lrchi2} 或 {cmd:fisher}{p_end}
{synopt:{cmd:r(effect)}}指定的效应：{cmd:diff}、{cmd:ratio} 等{p_end}
INCLUDE help pss_rrestest_mac.ihlp
INCLUDE help pss_rrestab_mac.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
INCLUDE help pss_rrestab_mat.ihlp

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_twoproportions.sthlp>}