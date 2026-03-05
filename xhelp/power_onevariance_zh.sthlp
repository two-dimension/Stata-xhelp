{smcl}
{* *! version 1.0.17  27feb2019}{...}
{viewerdialog "variance scale" "dialog power_onevar_var"}{...}
{viewerdialog "standard deviation scale" "dialog power_onevar_sd"}{...}
{vieweralsosee "[PSS-2] power onevariance" "mansection PSS-2 poweronevariance"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-3] ciwidth onevariance" "help ciwidth_onevariance_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] sdtest" "help sdtest_zh"}{...}
{viewerjumpto "Syntax" "power_onevariance_zh##syntax"}{...}
{viewerjumpto "Menu" "power_onevariance_zh##menu"}{...}
{viewerjumpto "Description" "power_onevariance_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_onevariance_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_onevariance_zh##options"}{...}
{viewerjumpto "Remarks: Using power onevariance" "power_onevariance_zh##remarks"}{...}
{viewerjumpto "Examples" "power_onevariance_zh##examples"}{...}
{viewerjumpto "Stored results" "power_onevariance_zh##stored_results"}
{help power_onevariance:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[PSS-2] power onevariance} {hline 2}}单样本方差检验的功效分析{p_end}
{p2col:}({mansection PSS-2 poweronevariance:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算样本量

{p 6 43 2}
方差尺度

{p 8 43 2}
{opt power} {opt onevar:iance} {it:v0} {it:va}
    [{cmd:,} {opth p:ower(numlist)}
    {it:{help power_onevariance##synoptions:选项}}]


{p 6 43 2}
标准差尺度

{p 8 43 2}
{opt power} {opt onevar:iance} {it:s0} {it:sa} {cmd:, sd}
  [{opth p:ower(numlist)}
{it:{help power_onevariance##synoptions:选项}}]



{phang}
计算功效 

{p 6 43 2}
方差尺度

{p 8 43 2}
{opt power} {opt onevar:iance} {it:v0} {it:va}{cmd:,} {opth n(numlist)}
[{it:{help power_onevariance##synoptions:选项}}]


{p 6 43 2}
标准差尺度

{p 8 43 2}
{opt power} {opt onevar:iance} {it:s0} {it:sa}{cmd:, sd} {opth n(numlist)}
[{it:{help power_onevariance##synoptions:选项}}]



{phang}
计算效应大小和目标参数

{p 6 43 2}
目标方差

{p 8 43 2}
{opt power} {opt onevar:iance} {it:v0}{cmd:,} {opth n(numlist)}
{opth p:ower(numlist)} [{it:{help power_onevariance##synoptions:选项}}]


{p 6 43 2}
目标标准差

{p 8 43 2}
{opt power} {opt onevar:iance} {it:s0}{cmd:, sd} {opth n(numlist)}
{opth p:ower(numlist)} [{it:{help power_onevariance##synoptions:选项}}]


{phang}
其中 {it:v0} 和 {it:s0} 是假设下的原假设方差和标准差，或原假设下的方差和标准差的值，而 {it:va} 和 {it:sa} 是备择假设下的替代方差和标准差，或备择假设下的方差和标准差的值。每个参数可以指定为一个数字或一个包含值的列表（见 {help numlist_zh}）。{p_end}


{synoptset 30 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{synopt:{opt sd}}请求使用标准差尺度进行计算；默认使用方差尺度{p_end}

{syntab:主要}
INCLUDE help pss_testmainopts1.ihlp
{synopt: {opt nfrac:tional}}允许分数样本量{p_end}
{p2coldent:* {opth ratio(numlist)}}方差比，{it:va/v0}（如果指定了 {cmd:sd} 选项，则为标准差比 {it:sa/s0}）；指定替代方差 {it:va}（或标准差 {it:sa}）{p_end}
INCLUDE help pss_testmainopts3.ihlp

{syntab:表}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_onevariance##tablespec:表规}}{cmd:)}]}抑制表格或以表格形式显示结果；见 {manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}将表格数据保存至 {it:filename}; 用 {cmd:replace} 覆盖现有的 {it:filename}{p_end}

INCLUDE help pss_graphopts.ihlp

{syntab:迭代}
{synopt: {opt init(#)}}样本量或方差的初始值{p_end}
INCLUDE help pss_iteropts.ihlp

INCLUDE help pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
INCLUDE help pss_numlist.ihlp
{p 4 6 2}{cmd:sd} 不会出现在对话框中； {cmd:sd} 的指定由选定的对话框自动完成。{p_end}
{p 4 6 2}{cmd:notitle} 不会出现在对话框中。{p_end}

{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 是

{p 16 16 2}
{it:{help power_onevariance##column:列}}[{cmd::}{it:标签}]
[{it:列}[{cmd::}{it:标签}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:表选项}}]

{pstd}
{it:列} 是下面定义的列之一，
而 {it:标签} 是列标签（可以包含引号和复合引号）。

{synoptset 28}{...}
{marker column}{...}
{synopthdr :列}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}功效{p_end}
{synopt :{opt beta}}II型错误概率{p_end}
{synopt :{opt N}}受试者数量{p_end}
{synopt :{opt delta}}效应大小{p_end}
{synopt :{opt v0}}原假设方差{p_end}
{synopt :{opt va}}备择假设方差{p_end}
{synopt :{opt s0}}原假设标准差{p_end}
{synopt :{opt sa}}备择假设标准差{p_end}
{synopt :{opt ratio}}备择方差与原假设方差的比率或备择标准差与原假设标准差的比率（如果指定了 {cmd:sd} 选项）{p_end}
{synopt :{opt target}}目标参数； {cmd:va} 的同义词{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}如果指定了 {cmd:beta} 列，将在默认表中替代 {cmd:power} 列。{p_end}
{p 4 6 2}如果指定了 {cmd:sd} 选项，{cmd:s0} 和 {cmd:sa} 列将在默认表中替代 {cmd:v0} 和 {cmd:va} 列显示。{p_end}
{p 4 6 2}如果指定了 {cmd:ratio} 列，将在默认表中显示。如果指定了 {cmd:sd} 选项，则此列包含标准差的比率。否则，此列包含方差的比率。


INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power} {cmd:onevariance} 计算单样本方差检验的样本量、功效或目标方差。默认情况下，它计算给定功效和原假设及备择假设方差参数的值的样本量。或者，它可以计算给定样本量及原假设和备择假设方差的功效或给定样本量、功效和原假设方差的目标方差。结果也可以获得与等效的标准差检验相关的结果，在这种情况下使用标准差而不是方差。另请参见 {manhelp power PSS-2}，以获取有关使用假设检验的 {cmd:power} 命令的总体介绍。

{pstd}
有关针对总体方差的置信区间的精确性和样本量分析，请参见 {help ciwidth_onevariance_zh:[PSS-3] ciwidth onevariance}.


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection PSS-2 poweronevarianceQuickstart:快速入门}

        {mansection PSS-2 poweronevarianceRemarksandexamples:备注和示例}

        {mansection PSS-2 poweronevarianceMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt sd} 指定使用标准差尺度进行计算。默认情况下使用方差尺度。

{dlgtab:主要}

{phang}
{cmd:alpha()}, {cmd:power()}, {cmd:beta()}, {cmd:n()}, {cmd:nfractional}; 见 {manhelp power##mainopts PSS-2:power}。
{opt nfractional} 选项仅允许用于样本量的确定。

{phang}
{opth ratio(numlist)} 指定替代方差与原假设方差的比率 {it:va}/{it:v0}，或指定了 {cmd:sd} 选项时的标准差比 {it:sa}/{it:s0}。可以指定替代方差 {it:va} 作为命令参数或方差比在 {cmd:ratio()} 中指定。如果指定了 {opt ratio(#)}，则替代方差计算为 {it:va} = {it:v0} x {it:#}。此选项不允许与效应大小确定一起使用。

{phang}
{cmd:direction()}, {cmd:onesided}, {cmd:parallel}; 见 
{manhelp power##mainopts PSS-2:power}。

INCLUDE help pss_taboptsdes.ihlp

INCLUDE help pss_graphoptsdes.ihlp
另请参见 {mansection PSS-2 poweronevarianceSyntaxcolumn:列} 表，了解图表中使用的符号列表。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定迭代过程的初始值。迭代用于计算双侧检验的方差和样本量。样本量的默认初始值是从闭式形式的正态近似中获得的。方差的默认初始值是从相应的闭式解中获得的，适用于显著性水平为 alpha/2 的单侧检验。

INCLUDE help pss_iteroptsdes.ihlp

{pstd}
以下选项适用于 {cmd:power onevariance}，但未显示在对话框中：

INCLUDE help pss_reportoptsdes.ihlp


{marker remarks}{...}
{title:备注：使用 power onevariance}

{pstd}
{cmd:power onevariance} 计算单样本方差检验的样本量、功效或目标方差。如果指定了 {cmd:sd} 选项，{cmd:power} {cmd:onevariance} 则计算等效单样本标准差检验的样本量、功效或目标标准差。所有计算均在双侧假设检验中进行，默认显著性水平设置为 0.05。您可以通过指定 {cmd:alpha()} 选项更改显著性水平。您可以指定 {cmd:onesided} 选项以请求单侧检验。

{pstd}
接下来，我们描述在方差度量中使用 {cmd:power onevariance} 的情况。当指定了 {cmd:sd} 选项时，标准差度量的相应用法相同，只是方差 {it:v0} 和 {it:va} 应替换为相应的标准差 {it:s0} 和 {it:sa}。请注意，使用方差和标准差尺度进行的计算结果是相同的，差异仅在于参数的指定。

{pstd}
要计算样本量，您必须分别指定原假设和备择假设下的方差 {it:v0} 和 {it:va}，并可选择在 {cmd:power()} 选项中指定检验的功效。如果未指定 {cmd:power()}，则假设功效为 0.8。

{pstd}
要计算功效，您必须在 {cmd:n()} 选项中指定样本量，并作为参数分别指定原假设和备择假设的方差 {it:v0} 和 {it:va}。

{pstd}
您可以选择指定原假设方差 {it:v0} 和备择方差与原假设方差的比率在 {cmd:ratio()} 选项中，而不是原假设和备择方差 {it:v0} 和 {it:va}。

{pstd}
要计算效应大小、替代方差与原假设方差的比率和目标方差，您必须在 {cmd:n()} 选项中指定样本量，在 {cmd:power()} 选项中指定功效，指定原假设方差 {it:v0}，并可以选择效应的方向。默认情况下，方向为上（{cmd:direction(upper)}），这意味着目标方差假定大于指定的原假设值。您可以通过指定 {cmd:direction(lower)} 选项将方向改为下，意味着目标方差假定小于指定的原假设值。

{pstd}
您还可以通过指定 {cmd:sd} 选项计算单样本标准差检验的功效和样本量。在某些情况下，标准差比方差提供了更有意义的解释。例如，测试得分或智商的标准差与样本平均值的尺度相同，并提供了关于观测值围绕均值的分布的信息。当您指定 {cmd:sd} 选项时，命令名称后面的参数是原假设和备择假设下的标准差 {it:s0} 和 {it:sa}。请注意，使用方差和标准差尺度进行的计算结果是相同的，差异仅在于参数的指定。

{pstd}
默认情况下，计算的样本量会向上取整。您可以指定 {cmd:nfractional} 选项以查看相应的分数样本量；请参见 {mansection PSS-4 UnbalanceddesignsRemarksandexamplesFractionalsamplesizes:{it:Fractional sample sizes}}，以获取示例。 {cmd:nfractional} 选项仅允许用于样本量的确定。

{pstd}
单样本方差检验的检验统计量遵循卡方分布。其自由度取决于样本量；因此，样本量计算需要迭代。双侧检验的效应大小确定也需要迭代。样本量的默认初始值是使用闭式形式的正态近似获得的。效应大小确定的默认初始值是通过使用显著性水平为 alpha/2 的单侧检验的相应计算获得的。可以通过指定 {cmd:init()} 选项更改默认初始值。有关控制迭代过程的其他选项的描述，请参见 {manhelp power PSS-2}。

{marker examples}{...}
{title:示例}

    {title:示例：计算样本量}

{pstd}
    计算在假设下检测方差为 1.5 所需的样本量，假设原假设方差为 1，采用双侧检验；
    假设显著性水平为 5% 和 80% 的功效（默认值）{p_end}
{phang2}{cmd:. power onevariance 1 1.5}

{pstd}
    同上，指定备择假设方差为原假设方差的比率{p_end}
{phang2}{cmd:. power onevariance 1, ratio(1.5)}

{pstd}
    同上，第一个示例使用 90% 的功效{p_end}
{phang2}{cmd:. power onevariance 1 1.5, power(0.9)}

{pstd}
    同上，指定标准差而不是方差 [sqrt(1.5) = 1.2247]{p_end}
{phang2}{cmd:. power onevariance 1 1.2247, sd}


    {title:示例：计算功效}

{pstd}
    假设我们有 50 个受试者的样本，我们想计算双侧假设检验的功效，以检测在假设下方差为 1.5 的方差，假设显著性水平为 5%（默认值）{p_end}
{phang2}{cmd:. power onevariance 1 1.5, n(50)}

{pstd}
    计算一系列样本量的功效，并绘制结果图{p_end}
{phang2}{cmd:. power onevariance 1 1.5, n(50(10)100) graph}


    {title:示例：计算目标方差}

{pstd}
    计算在样本量为 50 且功效为 80% 的情况下，能够检测到的备择方差大于原假设方差为 1 的最小值；
    假设显著性水平为 5%（默认值）{p_end}
{phang2}{cmd:. power onevariance 1, n(50) power(0.8)}

{pstd}
    同上{p_end}
{phang2}{cmd:. power onevariance 1, n(50) power(0.8) direction(upper)}

{pstd}
    计算小于原假设方差的最大方差{p_end}
{phang2}{cmd:. power onevariance 1, n(50) power(0.8) direction(lower)}


{marker stored_results}{...}
{title:存储的结果}

{pstd}
{cmd:power onevariance} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd: r(alpha)}}显著性水平{p_end}
{synopt:{cmd: r(power)}}功效{p_end}
{synopt:{cmd: r(beta)}}第二类错误概率{p_end}
{synopt:{cmd: r(delta)}}效应大小{p_end}
{synopt:{cmd: r(N)}}样本量{p_end}
{synopt:{cmd: r(nfractional)}}{cmd:1} 如果指定了 {cmd:nfractional}，否则为 {cmd:0}{p_end}
{synopt:{cmd: r(onesided)}}{cmd:1} 表示单侧检验，{cmd:0} 表示其他情况{p_end}
{synopt:{cmd: r(v0)}}原假设下的方差（对方差尺度，默认为）{p_end}
{synopt:{cmd: r(va)}}备择假设下的方差（对方差尺度，默认为）{p_end}
{synopt:{cmd: r(s0)}}原假设下的标准差（如果指定了 {cmd:sd} 选项）{p_end}
{synopt:{cmd: r(sa)}}备择假设下的标准差（如果指定了 {cmd:sd} 选项）{p_end}
{synopt:{cmd: r(ratio)}}替代方差与原假设方差的比率（或者如果指定了 {cmd:sd} 选项，则为标准差的比率）{p_end}
INCLUDE help pss_rrestab_sc.ihlp
{synopt:{cmd: r(init)}}样本量或方差的初始值{p_end}
INCLUDE help pss_rresiter_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:onevariance}{p_end}
INCLUDE help pss_rrestest_mac.ihlp
INCLUDE help pss_rrestab_mac.ihlp
{synopt:{cmd:r(scale)}}{cmd:variance} 或 {cmd:standard deviation}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
INCLUDE help pss_rrestab_mat.ihlp

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_onevariance.sthlp>}