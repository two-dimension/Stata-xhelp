{smcl}
{* *! version 1.1.10  05mar2019}{...}
{viewerdialog power "dialog power_onemean"}{...}
{vieweralsosee "[PSS-2] power onemean" "mansection PSS-2 poweronemean"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power onemean, cluster" "help power_onemean_cluster_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-3] ciwidth onemean" "help ciwidth onemean"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ttest" "help ttest_zh"}{...}
{viewerjumpto "Syntax" "power_onemean_zh##syntax"}{...}
{viewerjumpto "Menu" "power_onemean_zh##menu"}{...}
{viewerjumpto "Description" "power_onemean_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_onemean_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_onemean_zh##options"}{...}
{viewerjumpto "Remarks: Using power onemean" "power_onemean_zh##remarks"}{...}
{viewerjumpto "Examples" "power_onemean_zh##examples"}{...}
{viewerjumpto "Video examples" "power_onemean_zh##video"}{...}
{viewerjumpto "Stored results" "power_onemean_zh##stored_results"}
{help power_onemean:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[PSS-2] power onemean} {hline 2}}单样本均值测试的功效分析{p_end}
{p2col:}({mansection PSS-2 poweronemean:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算样本大小

{p 8 43 2}
{opt power} {opt onemean} {it:m0} {it:ma} [, {opth p:ower(numlist)} 
{it:{help power_onemean##synoptions:options}}] 


{phang}
计算功效 

{p 8 43 2}
{opt power} {opt onemean} {it:m0} {it:ma}{cmd:,} {opth n(numlist)} 
[{it:{help power_onemean##synoptions:options}}]


{phang}
计算效应大小和目标均值 

{p 8 43 2}
{opt power} {opt onemean} {it:m0}{cmd:,} {opth n(numlist)} 
{opth p:ower(numlist)} [{it:{help power_onemean##synoptions:options}}]


{phang}
其中 {it:m0} 是零假设下的均值（假定均值），而 {it:ma} 是备择假设下的均值（目标均值）。 {it:m0} 和 {it:ma} 可以指定为一个数字或一组括号内的值（见 {help numlist_zh}）。{p_end}


{synoptset 30 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
INCLUDE help pss_testmainopts1.ihlp
{synopt: {opt nfrac:tional}}允许使用小数样本大小{p_end}
{p2coldent:* {opth diff(numlist)}}备择均值与零假设均值之间的差，{it:ma}-{it:m0}；可指定为备择均值 {it:ma} 的替代项{p_end}
{p2coldent:* {opth sd(numlist)}}标准差；默认值为 {cmd:sd(1)}{p_end}
{synopt: {opt knownsd}}请求在计算中假设已知标准差；默认假设为未知标准差{p_end}
{p2coldent:* {opth fpc(numlist)}}有限总体校正 (FPC)，作为抽样率或总体大小{p_end}
INCLUDE help pss_testmainopts3.ihlp

{syntab:表}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_onemean##tablespec:tablespec}}{cmd:)}]}抑制表或将结果显示为表格；见 {manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}将表数据保存到 {it:filename}；使用 {cmd:replace} 替换现有的 {it:filename}{p_end}

INCLUDE help pss_graphopts.ihlp

{syntab:迭代}
{synopt: {opt init(#)}}样本大小或均值的初始值；默认值为使用正态近似{p_end}
INCLUDE help pss_iteropts.ihlp

{synopt: {opt cluster}}对 CRD 进行计算；见 {manhelp power_onemean_cluster PSS-2:power onemean, cluster}{p_end}
INCLUDE help pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
INCLUDE help pss_numlist.ihlp
{p 4 6 2}{cmd:cluster} 和 {cmd:notitle} 不会出现在对话框中。{p_end}

{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 为

{p 16 16 2}
{it:{help power_onemean##column:column}}[{cmd::}{it:label}]
[{it:column}[{cmd::}{it:label}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:tableopts}}]

{pstd}
{it:column} 是下列定义的列之一，{it:label} 是列标签（可以包含引号和复合引号）。

{synoptset 28}{...}
{marker column}{...}
{synopthdr :column}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}功效{p_end}
{synopt :{opt beta}}第二类错误概率{p_end}
{synopt :{opt N}}受试者数量{p_end}
{synopt :{opt delta}}效应大小{p_end}
{synopt :{opt m0}}零假设均值{p_end}
{synopt :{opt ma}}备择假设均值{p_end}
{synopt :{opt diff}}备择均值与零假设均值之间的差{p_end}
{synopt :{opt sd}}标准差{p_end}
{synopt :{opt fpc}}FPC{p_end}
{* 没有符号时，不存在像手动一样的总体大小和}{...}
{* 抽样率的意义}{...}
{synopt :{opt target}}目标参数；{cmd:ma} 的同义词{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}如果指定，列 {cmd:beta} 会在默认表中替代列 {cmd:power} 显示。{p_end}
{p 4 6 2}如果指定，列 {cmd:diff} 和 {cmd:fpc} 会在默认表中显示。


INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power} {cmd:onemean} 计算单个样本均值测试的样本大小、功效或目标均值。 默认情况下，它计算在零假设和备择假设下给定功效和均值参数值的样本大小。 或者，它可以计算给定样本大小和零假设以及备择均值的功效，或者给定样本大小、功效以及零假设的目标均值。 对于簇随机设计的功效和样本大小分析，请参见 {manhelp power_onemean_cluster PSS-2:power onemean, cluster}。 另见 {manhelp power PSS-2}，以获取有关 {cmd:power} 命令使用假设检验的一般概述。

{pstd}
有关总体均值的置信区间的精度和样本大小分析，请参见 {help ciwidth_onemean_zh:[PSS-3] ciwidth onemean}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection PSS-2 poweronemeanQuickstart:快速开始}

        {mansection PSS-2 poweronemeanRemarksandexamples:备注和示例}

        {mansection PSS-2 poweronemeanMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:alpha()}, {cmd:power()}, {cmd:beta()}, {cmd:n()}, {cmd:nfractional}；见 {manhelp power##mainopts PSS-2:power}。
{opt nfractional} 选项仅允许用于样本大小决策。

{phang}
{opth diff(numlist)} 指定备择均值与零假设均值之间的差，{it:ma} - {it:m0}。你可以指定备择均值 {it:ma} 作为命令参数或在 {cmd:diff()} 中指定两个均值之间的差。如果指定 {opt diff(#)}，则备择均值按 {it:ma} = {it:m0} + {it:#} 计算。此选项不允许与效应大小决策一起使用。

{phang}
{opth sd(numlist)} 指定样本标准差或总体标准差。默认值为 {cmd:sd(1)}。 默认情况下，{cmd:sd()} 指定样本标准差。如果指定了 {cmd:knownsd}，{cmd:sd()} 则指定总体标准差。

{phang}
{cmd:knownsd} 请求在计算中将标准差视为已知。 默认情况下，标准差被视为未知，计算基于 t 检验，该检验使用 Student's t 分布作为检验统计的抽样分布。如果指定了 {cmd:knownsd}，则计算基于 z 检验，该检验使用正态分布作为检验统计的抽样分布。

{phang}
{opth fpc(numlist)} 请求在计算中使用有限总体校正。如果 {cmd:fpc()} 的值介于 0 到 1 之间，则解释为抽样率 n/N，其中 N 是总体中单位的总数。当指定样本大小 n 时，如果 {cmd:fpc()} 的值大于 n，则解释为总体大小，但在 1 和 n 之间的值是错误的。对于样本大小的决策，{cmd:fpc()} 的值大于 1 被解释为总体大小。在 {cmd:fpc()} 中混合抽样率和总体大小是错误的。

{phang}
{cmd:direction()}, {cmd:onesided}, {cmd:parallel}；见 {manhelp power##mainopts PSS-2:power}。

INCLUDE help pss_taboptsdes.ihlp

INCLUDE help pss_graphoptsdes.ihlp
还请参见 {bf:[PSS-2] power onemean} 中的 {mansection PSS-2 poweronemeanSyntaxcolumn:column} 表，获取图形所用符号的列表。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定样本大小或效应大小决策的均值的初始值。默认值为使用封闭形式的正态近似来计算样本大小或均值的初始值。

INCLUDE help pss_iteroptsdes.ihlp

{pstd}
以下选项可与 {cmd:power onemean} 一起使用，但未显示在对话框中：

{phang}
{opt cluster}；见 {manhelp power_onemean_cluster PSS-2:power onemean, cluster}。

INCLUDE help pss_reportoptsdes.ihlp


{marker remarks}{...}
{title:备注：使用 power onemean}

{pstd}
{cmd:power onemean} 计算单样本均值检验的样本大小、功效或目标均值。 所有计算都是在双侧假设检验的基础上进行的，默认显著性水平设为 0.05。 您可以通过指定 {cmd:alpha()} 选项来更改显著性水平。 您可以指定 {cmd:onesided} 选项以请求单侧检验。

{pstd}
默认情况下，所有计算基于 t 检验，假设标准差未知，并使用默认值 1 作为标准差的估算值。您可以在 {cmd:sd()} 选项中指定标准差的其他值。 对于已知的标准差，您可以指定 {cmd:knownsd} 选项以请求 z 检验。  

{pstd}
要计算样本大小，您必须分别指定零假设和备择假设下的均值 {it:m0} 和 {it:ma}，以及可选的测试功效值 {cmd:power()}。默认功效设为 0.8。  

{pstd}
要计算功效，您必须在 {cmd:n()} 选项中指定样本大小，以及零假设和备择假设下的均值 {it:m0} 和 {it:ma}。

{pstd}
在计算样本大小或功效时，您可以指定备择均值 {it:ma} 的差异 {it:ma} - {it:m0}，在 {cmd:diff()} 选项中代替备用均值。

{pstd}
要计算效应大小，即备择均值与零假设均值之间的标准化差值，及相应的目标均值，您必须在 {cmd:n()} 选项中指定样本大小，在 {cmd:power()} 选项中指定功效 ，指定零假设均值 {it:m0}，并可选地指定效应方向。默认情况下，方向为上（{cmd:direction(upper)}），这意味着目标均值假定大于指定的零值。这也相当于假定正效应大小。您可以通过指定 {cmd:direction(lower)} 选项将方向更改为下，这意味着目标均值被假定小于指定的零值，这相当于假定负效应大小。

{pstd}
默认情况下，计算的样本大小会向上取整。您可以指定 {cmd:nfractional} 选项查看对应的小数样本大小；见 {mansection PSS-4 UnbalanceddesignsRemarksandexamplesFractionalsamplesizes:{it:Fractional sample sizes}} 中的示例 {bf:[PSS-4] Unbalanced designs}。 {cmd:nfractional} 选项仅允许用于样本大小决策。

{pstd}
{cmd:power onemean} 的一些计算需要迭代。例如，当标准差未知时，计算使用非中心 Student's t 分布。 它的自由度依赖于样本大小，而非中心参数依赖于样本大小和效应大小。因此，样本大小和效应大小的决策需要迭代。 默认参数的初始值是通过使用封闭形式的正态近似获得的。 可以通过指定 {cmd:init()} 选项更改它们。有关控制迭代程序的其他选项的描述，请参见 {help power_zh:[PSS-2] power}。

{pstd}
所有计算假设总体无限。 要处理有限总体，使用 {cmd:fpc()} 选项指定抽样率或总体大小。当指定此选项时，将对总体标准差应用有限总体校正。该校正依赖于样本大小，因此即使在已知标准差情况下，计算有限总体的样本大小也需要迭代。样本大小的初始值是基于假设总体无限的相应样本大小。

{marker examples}{...}
{title:示例}

    {title:示例：计算样本大小}

{pstd}
    计算在假设均值为 1 的情况下检测均值为 2 所需的样本大小；假设样本标准差为 1，显著性水平为 5%，功效为 80%，并且将使用双侧检验（默认为}）{p_end}
{phang2}{cmd:. power onemean 1 2}

{pstd}
    同上，使用 {cmd:diff()} 选项指定零假设和备择假设下均值之间的差{p_end}
{phang2}{cmd:. power onemean 1, diff(1)}

{pstd}
    同上，使用 90% 的功效{p_end}
{phang2}{cmd:. power onemean 1 2, power(0.9)}

{pstd}
    同上，假设已知的总体标准差为 2{p_end}
{phang2}{cmd:. power onemean 1 2, sd(2) knownsd}

{pstd}
    同上，假设总体大小为 200{p_end}
{phang2}{cmd:. power onemean 1 2, sd(2) knownsd fpc(200)}

{pstd}
    同上，使用显著性水平为 1% 的单侧检验{p_end}
{phang2}{cmd:. power onemean 1 2, alpha(0.01) onesided}
    
{pstd}
    指定一组备择均值和两个功效水平，并绘制结果{p_end}
{phang2}{cmd:. power onemean 1 (1.5(0.5)3), power(0.8 0.9) graph}


    {title:示例：计算功效}

{pstd}
    假设我们有 50 个样本，想要计算检验均值为 2 时的双侧检验功效，零均值为 1；假设样本标准差为 1，并且显著性水平为 5%（默认为）{p_end}
{phang2}{cmd:. power onemean 1 2, n(50)}

{pstd}
    计算多个备择均值和样本大小的功效，并绘制结果{p_end}
{phang2}{cmd:. power onemean 0 (0.2 0.5 0.7 1), n(5(1)15) graph}


    {title:示例：计算目标均值}

{pstd}
    计算在显著性水平为 5%，样本标准差为 1（默认为）情况下，能检测到的超过 1 的最小均值值，使用 50 个观测值和 80% 的功效{p_end}
{phang2}{cmd:. power onemean 1, n(50) power(0.8)}

{pstd}
    同上{p_end}
{phang2}{cmd:. power onemean 1, n(50) power(0.8) direction(upper)}

{pstd}
    计算低于 1 的最大均值值{p_end}
{phang2}{cmd:. power onemean 1, n(50) power(0.8) direction(lower)}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=wZcUTJ_34ic&list=PLN5IskQdgXWmExGRjdy0s0VCdYnzGMZrT":针对参考值比较样本均值的样本量计算}

{phang}
{browse "https://www.youtube.com/watch?v=Fmb8yHBl-n0&list=PLN5IskQdgXWmExGRjdy0s0VCdYnzGMZrT":针对参考值比较样本均值的功效计算}

{phang}
{browse "https://www.youtube.com/watch?v=Ulx_tlVBgqM&list=PLN5IskQdgXWmExGRjdy0s0VCdYnzGMZrT":针对参考值比较样本均值的最小可检测效应大小}


{marker stored_results}{...}
{title:存储结果}

{pstd}
{cmd:power onemean} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd: r(alpha)}}显著性水平{p_end}
{synopt:{cmd: r(power)}}功效{p_end}
{synopt:{cmd: r(beta)}}第二类错误的概率{p_end}
{synopt:{cmd: r(delta)}}效应大小{p_end}
{synopt:{cmd: r(N)}}样本大小{p_end}
{synopt:{cmd: r(nfractional)}}{cmd:1} 如果指定了 {cmd:nfractional}，否则为 {cmd:0}{p_end}
{synopt:{cmd: r(onesided)}}{cmd:1} 为单侧检验，{cmd:0} 否则{p_end}
{synopt:{cmd: r(m0)}}零假设下的均值{p_end}
{synopt:{cmd: r(ma)}}备择假设下的均值{p_end}
{synopt:{cmd: r(diff)}}备择均值与零假设均值之间的差{p_end}
{synopt:{cmd: r(sd)}}标准差{p_end}
{synopt:{cmd: r(knownsd)}}{cmd:1} 如果指定了选项 {cmd:knownsd}，{cmd:0} 否则{p_end}
{synopt:{cmd: r(fpc)}}有限总体校正（如果指定）{p_end}
INCLUDE help pss_rrestab_sc.ihlp
{synopt:{cmd: r(init)}}样本大小或均值的初始值{p_end}
INCLUDE help pss_rresiter_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:onemean}
{p_end}
INCLUDE help pss_rrestest_mac.ihlp
INCLUDE help pss_rrestab_mac.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
INCLUDE help pss_rrestab_mat.ihlp


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_onemean.sthlp>}