{smcl}
{* *! version 1.0.21  27feb2019}{...}
{viewerdialog "specify correlation" "dialog power_pairedmeans_corr"}{...}
{viewerdialog "specify standard deviation difference" "dialog power_pairedmeans_sddiff"}{...}
{vieweralsosee "[PSS-2] power pairedmeans" "mansection PSS-2 powerpairedmeans"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power repeated" "help power repeated"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-3] ciwidth pairedmeans" "help ciwidth_pairedmeans_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ttest" "help ttest_zh"}{...}
{viewerjumpto "Syntax" "power_pairedmeans_zh##syntax"}{...}
{viewerjumpto "Menu" "power_pairedmeans_zh##menu"}{...}
{viewerjumpto "Description" "power_pairedmeans_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_pairedmeans_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_pairedmeans_zh##options"}{...}
{viewerjumpto "Remarks: Using power pairedmeans" "power_pairedmeans_zh##remarks"}{...}
{viewerjumpto "Examples" "power_pairedmeans_zh##examples"}{...}
{viewerjumpto "Video examples" "power_pairedmeans_zh##video"}{...}
{viewerjumpto "Stored results" "power_pairedmeans_zh##stored_results"}
{help power_pairedmeans:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[PSS-2] power pairedmeans} {hline 2}}针对两组配对均数检验的效能分析{p_end}
{p2col:}({mansection PSS-2 powerpairedmeans:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算样本量

{p 8 43 2}
{opt power} {opt pairedm:eans} {it:ma1} {it:ma2}{cmd:,} 
{it:{help power pairedmeans##corrspec:corrspec}}
[{opth p:ower(numlist)} 
{it:{help power_pairedmeans##synoptions:options}}] 


{phang}
计算效能 

{p 8 43 2}
{opt power} {opt pairedm:eans} {it:ma1} {it:ma2}{cmd:,} 
{it:{help power pairedmeans##corrspec:corrspec}}
{opth n(numlist)} 
[{it:{help power_pairedmeans##synoptions:options}}]


{phang}
计算效应大小和目标均值差

{p 8 43 2}
{opt power} {opt pairedm:eans} [{it:ma1}]{cmd:,}
{it:{help power pairedmeans##corrspec:corrspec}}
{opth n(numlist)} 
{opth p:ower(numlist)} [{it:{help power_pairedmeans##synoptions:options}}]


{marker corrspec}{...}
{phang}
其中 {it:corrspec} 是以下之一

        {cmd:sddiff()}
	{cmd:corr()} [{cmd:sd()}]
	{cmd:corr()} [{cmd:sd1()} {cmd:sd2()}]

{phang}
{it:ma1} 是替代假设下的处理前均值或处理前均值，而 {it:ma2} 是替代假设下的处理后均值或处理后均值的值。 {it:ma1} 和 {it:ma2} 可以指定为一个数字或以括号中的值列表指定（见 {help numlist_zh}）。

{synoptset 30 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
INCLUDE help pss_testmainopts1.ihlp
{synopt: {opt nfrac:tional}}允许使用分数样本量{p_end}
{p2coldent:* {opth nulld:iff(numlist)}}零假设下的差异，即处理后均值和处理前均值之间的差异；默认值为 {cmd:nulldiff(0)}{p_end}
{p2coldent:* {opth altd:iff(numlist)}}替代差异 {it:da=ma2-ma1}，即在替代假设下处理后均值和处理前均值之间的差异{p_end}
{p2coldent:* {opth sddiff(numlist)}}差异的标准差 {it:sigma_d}；不可与 {cmd:corr()} 结合使用{p_end}
{p2coldent:* {opth corr(numlist)}}成对观察值之间的相关性；除非指定了 {cmd:sddiff()}，否则该选项是必要的{p_end}
{p2coldent:* {opth sd(numlist)}}共同标准差；默认值为 {cmd:sd(1)}，并要求 {cmd:corr()}{p_end}
{p2coldent:* {opth sd1(numlist)}}处理前组的标准差；要求 {cmd:corr()}{p_end}
{p2coldent:* {opth sd2(numlist)}}处理后组的标准差；要求 {cmd:corr()}{p_end}
{synopt:{opt knownsd}}请求计算时假定已知的标准差 {it:sigma_d}；默认假定为未知标准差{p_end}
{p2coldent:* {opth fpc(numlist)}}有限总体校正（FPC），作为采样率或总数{p_end}
INCLUDE help pss_testmainopts3.ihlp

{syntab:表格}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_pairedmeans##tablespec:tablespec}}{cmd:)}]}抑制表格或将结果显示为表格；请参见 {manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}保存表格数据到 {it:filename}；使用 {cmd:replace} 来覆盖现有的 {it:filename}{p_end}

INCLUDE help pss_graphopts.ihlp

{syntab:迭代}
{synopt: {opt init(#)}}样本量或均值差的初始值；默认值是使用正态近似{p_end}
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
{it:{help power_pairedmeans##column:column}}[{cmd::}{it:label}]
[{it:column}[{cmd::}{it:label}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:tableopts}}]

{pstd}
{it:column} 是下方定义的列之一，{it:label} 是列标签（可以包含引号和复合引号）。

{synoptset 28}{...}
{marker column}{...}
{synopthdr :column}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}功效{p_end}
{synopt :{opt beta}}II型错误概率{p_end}
{synopt :{opt N}}受试者数量{p_end}
{synopt :{opt delta}}效应大小{p_end}
{synopt :{opt d0}}零假设均值差{p_end}
{synopt :{opt da}}替代均值差{p_end}
{synopt :{opt ma1}}替代处理前均值{p_end}
{synopt :{opt ma2}}替代处理后均值{p_end}
{synopt :{opt sd_d}}差异的标准差{p_end}
{synopt :{opt sd}}共同标准差{p_end}
{synopt :{opt sd1}}处理前组的标准差{p_end}
{synopt :{opt sd2}}处理后组的标准差{p_end}
{synopt :{opt corr}}成对观察值之间的相关性{p_end}
{synopt :{opt fpc}}FPC{p_end}
{* 没有该符号，表示人口大小和}{...}
{* 采样率一起，没有意义}{...}
{synopt :{opt target}}目标参数；{cmd:da} 的同义词{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}如果指定，列 {cmd:beta} 将在默认表中替代列 {cmd:power} 显示.{p_end}
{p 4 6 2}如果指定，列 {cmd:ma1}、{cmd:ma2}、{cmd:sd}、{cmd:sd1}、{cmd:sd2}、{cmd:corr} 和 {cmd:fpc} 将在默认表中显示。

INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power} {cmd:pairedmeans} 计算两组配对均数检验的样本量、功效或目标均值差。默认情况下，它根据给定的功效及零假设和替代均值差的值计算样本量。或者，它可以根据给定的样本量及零假设和替代均值差的值计算功效，或基于给定的样本量、功效和零均值差计算目标均值差。 同时也请参见 {manhelp power PSS-2}，获得关于使用假设检验的 {cmd:power} 命令的一般介绍。

{pstd}
有关从成对样本计算两个均值之间差异的置信区间的精度和样本量分析，请参见 
{help ciwidth_pairedmeans_zh:[PSS-3] ciwidth pairedmeans}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection PSS-2 powerpairedmeansQuickstart:快速入门}

        {mansection PSS-2 powerpairedmeansRemarksandexamples:备注和示例}

        {mansection PSS-2 powerpairedmeansMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:alpha()}, {cmd:power()}, {cmd:beta()}, {cmd:n()}, {cmd:nfractional}；见 {manhelp power##mainopts PSS-2:power}。
{opt nfractional} 选项仅允许用于样本量确定。

{phang}
{opth nulldiff(numlist)} 指定在零假设下处理后均值与处理前均值之间的差。默认值为 {cmd:nulldiff(0)}，表示处理前均值等于零假设下的处理后均值。

{phang}
{opth altdiff(numlist)} 指定替代差值 {it:da} = {it:ma2} - {it:ma1}，即在替代假设下处理后均值与处理前均值之间的差异。该选项是对指定替代均值 {it:ma1} 和 {it:ma2} 的替代选项。如果结合使用 {it:ma1} 与 {opt altdiff(#)}，则 {it:ma2} = {it:#} + {it:ma1}。

{phang}
{opth sddiff(numlist)} 指定差异的标准差 {it:sigma_d}。必须指定 {cmd:sddiff()} 或 {cmd:corr()}。

{phang}
{opth corr(numlist)} 指定配对、处理前和处理后观察值之间的相关性。该选项与 {cmd:sd1()} 和 {cmd:sd2()} 或 {cmd:sd()} 一起使用，以计算差异的标准差，除非该标准差通过 {cmd:sddiff()} 选项直接提供。必须指定 {cmd:corr()} 或 {cmd:sddiff()}。

{phang}
{opth sd(numlist)} 指定处理前和处理后组的共同标准差。指定 {opt sd(#)} 意味着 {cmd:sd1()} 和 {cmd:sd2()} 都等于 {it:#}。选项 {cmd:corr()} 和 {cmd:sd()} 用于计算差异的标准差，除非该标准差由 {cmd:sddiff()} 直接提供。默认值为 {cmd:sd(1)}。

{phang}
{opth sd1(numlist)} 指定处理前组的标准差。选项 {cmd:corr()}、{cmd:sd1()} 和 {cmd:sd2()} 用于计算差异的标准差，除非该标准差由 {cmd:sddiff()} 直接提供。

{phang}
{opth sd2(numlist)} 指定处理后组的标准差。选项 {cmd:corr()}、{cmd:sd1()} 和 {cmd:sd2()} 用于计算差异的标准差，除非该标准差由 {cmd:sddiff()} 直接提供。

{phang}
{cmd:knownsd} 请求在计算中将差异的标准差 {it:sigma_d} 视为已知的。默认情况下，标准差视为未知，并且计算基于配对 t 检验，该检验使用的检验统计量的抽样分布为学生 t 分布。如果指定了 {cmd:knownsd}，则计算基于配对 z 检验，该检验使用正态分布作为统计量的抽样分布。

{phang}
{opth fpc(numlist)} 请求在计算中使用有限总体校正。如果 {cmd:fpc()} 的值在 0 和 1 之间，则解释为采样率 n/N，其中 N 是总体中的单位总数。当指定样本量 n 时，如果 {cmd:fpc()} 的值大于 n，则解释为总体大小，但将值设置在 1 和 n 之间是错误的。在样本量确定时，{cmd:fpc()} 的值大于 1 被解释为总体大小。 {cmd:fpc()} 在混合采样率和总体大小时是错误的。

{phang}
{cmd:direction()}、{cmd:onesided}、{cmd:parallel}；见 {manhelp power##mainopts PSS-2:power}。

INCLUDE help pss_taboptsdes.ihlp

INCLUDE help pss_graphoptsdes.ihlp
另见 {mansection PSS-2 powerpairedmeansSyntaxcolumn:column} 表格中的图表所用符号列表。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定用于样本量确定的样本量初始值或用于效应大小确定的均值差初始值。默认值是使用封闭形式正态近似来计算样本量或均值差的初始值。

INCLUDE help pss_iteroptsdes.ihlp

{pstd}
以下选项可与 {cmd:power pairedmeans} 一同使用，但在对话框中未显示：

INCLUDE help pss_reportoptsdes.ihlp


{marker remarks}{...}
{title:备注: 使用 power pairedmeans}

{pstd}
{cmd:power pairedmeans} 计算两组配对均数检验的样本量、功效或目标均值差。所有计算均基于双侧假设检验，默认显著性水平设为 0.05。您可以通过指定 {cmd:alpha()} 选项来更改显著性水平。您可以指定 {cmd:onesided} 选项请求单侧检验。

{pstd}
默认情况下，所有计算基于配对 t 检验，该检验假设差异的标准差未知。对于已知标准差，您可以指定 {cmd:knownsd} 选项请求配对 z 检验。

{pstd}
对于所有计算，您必须在 {cmd:sddiff()} 选项中指定差异的标准差，或者在 {cmd:corr()} 选项中指定配对观察值之间的相关性。如果您指定了 {cmd:corr()} 选项，则可以在相应的 {cmd:sd1()} 和 {cmd:sd2()} 选项中指定处理前和处理后组的个别标准差。默认情况下，它们的值设为 1。当两个标准差相等时，您可以在 {cmd:sd()} 选项中指定共同标准差，而不是分别指定它们。

{pstd}
要计算样本量，您必须在替代假设下分别指定处理前和处理后均值 {it:ma1} 和 {it:ma2}，并可选择性地在 {cmd:power()} 选项中指定检验的功效。默认功效设为 0.8。

{pstd}
要计算功效，您必须在 {cmd:n()} 选项中指定样本量，并在替代假设下分别指定处理前和处理后均值 {it:ma1} 和 {it:ma2}。

{pstd}
在计算样本量或功效时，您可以使用替代均值 {it:ma1} 和 {it:ma2}之间的差异 {it:ma2} - {it:ma1}，指定在 {cmd:altdiff()} 选项中。

{pstd}
默认情况下，零假设下处理后均值和处理前均值之间的差异设为零。您可以在 {cmd:nulldiff()} 选项中指定其他值。

{pstd}
要计算效应大小，您必须在 {cmd:n()} 选项中指定样本量，在 {cmd:power()} 中指定功效，并可选择性地指定效应方向。默认方向为上，即假设目标均值差大于指定的零值。这也是假设正效应大小的等价形式。您可以通过指定 {cmd:direction(lower)} 选项将方向更改为下，这意味着目标均值差被假设为小于指定的零值。这相当于假设负效应大小。

{pstd}
默认情况下，计算得出的样本量向上取整。您可以指定 {cmd:nfractional} 选项查看相应的分数样本量；请参见 {mansection PSS-4 UnbalanceddesignsRemarksandexamplesFractionalsamplesizes:{it:分数样本量}}，了解示例。 {cmd:nfractional} 选项仅允许用于样本量确定。

{pstd}
一些 {cmd:power pairedmeans} 的计算需要迭代。例如，当差异的标准差未知时，计算使用非中心的学生 t 分布。其自由度依赖于样本量，非中心性参数依赖于样本量和效应大小。因此，样本量和效应大小的计算需要迭代。估计参数的默认初始值通过使用封闭形式的正态近似获得。您可以通过指定 {cmd:init()} 选项来更改这些值。有关控制迭代过程的其他选项，请参见 {help power_zh:[PSS-2] power}。

{pstd}
所有计算假设为无限总体。要进行有限总体设计，请使用 {cmd:fpc()} 选项指定采样率或总体大小。当指定该选项时，差异的标准差应用有限总体校正因素。校正因素依赖于样本量；因此，在这种情况下计算样本量需要迭代。在这种情况下，样本量计算的初始值是根据与有限总体大小相关的正态近似选择的。


{marker examples}{...}
{title:示例}

    {title:示例: 计算样本量}

{pstd}
    计算所需样本量，以便检测处理前均值为 1 和处理后均值为 1.5 的替代假设，使用双侧检验，当差异的标准差为 1；假定显著性水平为 5% 和 80% 的功效（默认值）{p_end}
{phang2}{cmd:. power pairedmeans 1 1.5, sddiff(1)}

{pstd}
    同上，假定差异的标准差为已知{p_end}
{phang2}{cmd:. power pairedmeans 1 1.5, sddiff(1) knownsd}

{pstd}
    按照第一个示例计算样本量，但成对观察值之间的相关性为 0.7；假定个体标准差均为 1（默认值）{p_end}
{phang2}{cmd:. power pairedmeans 1 1.5, corr(0.7)}

{pstd}
    同上，使用 10% 的显著性水平和单侧检验{p_end}
{phang2}{cmd:. power pairedmeans 1 1.5, corr(0.7) alpha(0.1) onesided}

{pstd}
    同上，假定零假设下均值差为 0.2{p_end}
{phang2}{cmd:. power pairedmeans 1 1.5, corr(0.7) nulldiff(0.2) alpha(0.1)}
    {cmd:onesided}

{pstd}
    计算一系列替代处理后均值和功效所需的样本量，并绘制结果图{p_end}
{phang2}{cmd:. power pairedmeans 1 (1.5(0.1)2), corr(0.7) power(0.8 0.9)}
       {cmd:graph}


    {title:示例: 计算功效}

{pstd}
    假设我们有 50 名受试者，并且我们想计算双侧假设检验的功效，检测处理前均值为 1 和处理后均值为 1.5，当差异的标准差为 1；假定零假设下均值差为 0，使用 5% 的显著性水平（默认值）{p_end}
{phang2}{cmd:. power pairedmeans 1 1.5, n(50) sddiff(1)}

{pstd}
    同上，指定均值差{p_end}
{phang2}{cmd:. power pairedmeans, n(50) sddiff(1) altdiff(0.5)}

{pstd}
    同第一个示例，假定成对观察值之间的相关性为 0.7，并且共同标准差为 2{p_end}
{phang2}{cmd:. power pairedmeans 1 1.5, n(50) corr(0.7) sd(2)}

{pstd}
    同上，假定处理前和处理后组的标准差分别为 1 和 1.5{p_end}
{phang2}{cmd:. power pairedmeans 1 1.5, n(50) corr(0.7) sd1(1) sd2(1.5)}

{pstd}
    同上，假定有限总体为 300 名受试者{p_end}
{phang2}{cmd:. power pairedmeans 1 1.5, n(50) corr(0.7) sd1(1) sd2(1.5)}
       {cmd:fpc(300)}

{pstd}
    计算一系列样本量的功效，并绘制结果图{p_end}
{phang2}{cmd:. power pairedmeans 1 1.5, n(50(10)100) corr(0.7) graph}


    {title:示例: 计算目标均值差}

{pstd}
    假设我们有 100 名受试者，并且我们想计算可以通过双侧假设检验检测到的，替代均值差大于零的最小值，功效为 80%，如果替代假设下的处理前均值为 1，差异的标准差为 1；假定显著性水平为 5% 和共同标准差为 1（默认值）{p_end}
{phang2}{cmd:. power pairedmeans 1, n(100) power(0.8) sddiff(1)}

{pstd}
    同上{p_end}
{phang2}{cmd:. power pairedmeans 1, n(100) power(0.8) direction(upper)}
     {cmd:sddiff(1)}

{pstd}
    计算可检测到的、替代均值差小于零 的值，功效为 80%{p_end}
{phang2}{cmd:. power pairedmeans 1, n(100) power(0.8) direction(lower)}
     {cmd:sddiff(1)}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=41Hmat-5MX8":计算成对样本均值比较的样本量}

{phang}
{browse "https://www.youtube.com/watch?v=RCox1fE8rQw":计算成对样本均值比较的功效}

{phang}
{browse "https://www.youtube.com/watch?v=zmIevk4VBY8":计算成对样本均值比较的最小可检测效应大小}


{marker stored_results}{...}
{title:存储结果}

{pstd}
{cmd:power pairedmeans} 将以下结果存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd: r(alpha)}}显著性水平{p_end}
{synopt:{cmd: r(power)}}功效{p_end}
{synopt:{cmd: r(beta)}}II型错误概率{p_end}
{synopt:{cmd: r(delta)}}效应大小{p_end}
{synopt:{cmd: r(N)}}样本量{p_end}
{synopt:{cmd: r(nfractional)}}{cmd:1} 如果指定了 {cmd:nfractional}，否则为 {cmd:0}{p_end}
{synopt:{cmd: r(onesided)}}{cmd:1} 表示为单侧检验，否则为 {cmd:0}{p_end}
{synopt:{cmd: r(d0)}}零假设下的处理后均值与处理前均值的差{p_end}
{synopt:{cmd: r(da)}}替代假设下的处理后均值与处理前均值的差{p_end}
{synopt:{cmd: r(ma1)}}替代假设下的处理前均值{p_end}
{synopt:{cmd: r(ma2)}}替代假设下的处理后均值{p_end}
{synopt:{cmd: r(corr)}}成对观察值之间的相关性{p_end}
{synopt:{cmd: r(sd_d)}}差异的标准差{p_end}
{synopt:{cmd: r(sd1)}}处理前组的标准差{p_end}
{synopt:{cmd: r(sd2)}}处理后组的标准差{p_end}
{synopt:{cmd: r(sd)}}共同标准差{p_end}
{synopt:{cmd: r(knownsd)}}{cmd:1} 如果指定了 {cmd:knownsd}，否则为 {cmd:0}{p_end}
{synopt:{cmd: r(fpc)}}有限总体校正{p_end}
INCLUDE help pss_rrestab_sc.ihlp
{synopt:{cmd: r(init)}}初始样本量或目标均值差的值{p_end}
INCLUDE help pss_rresiter_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:pairedmeans}{p_end}
INCLUDE help pss_rrestest_mac.ihlp
INCLUDE help pss_rrestab_mac.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
INCLUDE help pss_rrestab_mat.ihlp


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_pairedmeans.sthlp>}