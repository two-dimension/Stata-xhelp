{smcl}
{* *! version 1.0.0  27feb2019}{...}
{viewerdialog "specify correlation" "dialog ciwidth_pairedmeans_corr"}{...}
{viewerdialog "specify standard deviation difference" "dialog ciwidth_pairedmeans_sddiff"}{...}
{vieweralsosee "[PSS-3] ciwidth pairedmeans" "mansection PSS-3 ciwidthpairedmeans"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-3] ciwidth" "help ciwidth_zh"}{...}
{vieweralsosee "[PSS-3] ciwidth, graph" "help ciwidth graph"}{...}
{vieweralsosee "[PSS-3] ciwidth, table" "help ciwidth table"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power pairedmeans" "help power pairedmeans"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ttest" "help ttest_zh"}{...}
{vieweralsosee "[R] ztest" "help ztest_zh"}{...}
{viewerjumpto "Syntax" "ciwidth pairedmeans##syntax"}{...}
{viewerjumpto "Menu" "ciwidth pairedmeans##menu"}{...}
{viewerjumpto "Description" "ciwidth pairedmeans##description"}{...}
{viewerjumpto "Links to PDF documentation" "ciwidth pairedmeans##linkspdf"}{...}
{viewerjumpto "Options" "ciwidth pairedmeans##options"}{...}
{viewerjumpto "Examples" "ciwidth pairedmeans##examples"}{...}
{viewerjumpto "Stored results " "ciwidth pairedmeans##results"}
{help ciwidth_pairedmeans:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[PSS-3] ciwidth pairedmeans} {hline 2}}配对均值差异 CI 的精度分析{p_end}
{p2col:}({mansection PSS-3 ciwidthpairedmeans:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
计算样本量

{p 8 16 2}
{cmd:ciwidth} {cmdab:pairedm:eans,}
{help ciwidth_pairedmeans##corrspec:{it:corrspec}}
{opth w:idth(numlist)}
{opth probw:idth(numlist)}
[{help ciwidth pairedmeans##options_table:{it:options}}]


{pstd}
计算 CI 宽度

{p 8 16 2}
{opt ciwidth} {cmdab:pairedm:eans,}
{help ciwidth_pairedmeans##corrspec:{it:corrspec}}
{opth probw:idth(numlist)}
{opth n(numlist)}
[{help ciwidth pairedmeans##options_table:{it:options}}]


{pstd}
计算 CI 宽度的概率

{p 8 16 2}
{opt ciwidth} {cmdab:pairedm:eans,}
{help ciwidth_pairedmeans##corrspec:{it:corrspec}}
{opth w:idth(numlist)}
{opth n(numlist)}
[{help ciwidth pairedmeans##options_table:{it:options}}]


{marker corrspec}{...}
{pstd}
其中 {it:corrspec} 是以下之一

        {cmd:sddiff()}
	{cmd:corr()} [{cmd:sd()}]
	{cmd:corr()} [{cmd:sd1()} {cmd:sd2()}]

{marker options_table}{...}
{synoptset 30 tabbed}{...}
{synopthdr :选项}
{synoptline}
{syntab:主}
包含 help ciw_ciopts
包含 help ciw_nopt
包含 help ciw_nfracopt
{p2coldent:* {opth sddiff(numlist)}}差异的标准差 {it:sigma_d}；不得与 {cmd:corr()} 结合使用{p_end}
{p2coldent:* {opth corr(numlist)}}配对观测值之间的相关性；除非指定 {cmd:sddiff()}，否则是必须的{p_end}
{p2coldent:* {opth sd(numlist)}}共同标准差；默认值为 {cmd:sd(1)}，且需要 {cmd:corr()}{p_end}
{p2coldent:* {opth sd1(numlist)}}处理前组的标准差；需要 {cmd:corr()}{p_end}
{p2coldent:* {opth sd2(numlist)}}处理后组的标准差；需要 {cmd:corr()}{p_end}
{synopt :{opt knownsd}}请求假设已知标准差 {it:sigma_d} 的计算；默认假设未知标准差{p_end}
{p2coldent:* {opth fpc(numlist)}}有限总体修正（FPC），作为抽样率或总体大小{p_end}
包含 help ciw_sideopts

包含 help ciw_tableopts

包含 help ciw_graphopts

包含 help ciw_iteropts
{synoptline}
包含 help pss_numlist
{p 4 6 2}{cmd:notitle} 在对话框中不显示.{p_end}

{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 是

{p 8 16 2}
{help ciwidth_pairedmeans##column:{it:column}}[{cmd::}{it:label}]
[{it:column}[{cmd::}{it:label}] [...]]
[{cmd:,} {help ciwidth table##tableopts:{it:tableopts}}]

{pstd}
{it:column} 是下方定义的列之一，{it:label} 是列标签（可能包含引号和复合引号）。

{marker column}{...}
{synoptset 28}{...}
{synopthdr :列}
{synoptline}
{synopt :{cmd:level}}置信水平{p_end}
{synopt :{cmd:alpha}}显著性水平{p_end}
{synopt :{cmd:N}}受试者数量{p_end}
{synopt :{cmd:Pr_width}}CI 宽度的概率{p_end}
{synopt :{cmd:width}}CI 宽度{p_end}
{synopt :{cmd:sd_d}}差异的标准差{p_end}
{synopt :{cmd:sd}}共同标准差{p_end}
{synopt :{cmd:sd1}}处理前组的标准差{p_end}
{synopt :{cmd:sd2}}处理后组的标准差{p_end}
{synopt :{cmd:corr}}配对观察值之间的相关性{p_end}
{synopt :{cmd:fpc}}FPC{p_end}
{* 没有符号则在有意义上无法同时有总体大小和}{...}
{* 抽样率委托手动计算{...}
{synopt :{cmd:_all}}显示所有支持的列{p_end}
{synoptline}
{p 4 6 2}如果指定了 {cmd:alpha()}，则在默认表中显示 {cmd:alpha} 列，而不是 {cmd:level} 列.{p_end}
{p 4 6 2}如果指定了相应的选项，列 {cmd:sd}、{cmd:sd1}、{cmd:sd2}、{cmd:corr} 和 {cmd:fpc} 在默认表中显示。


包含 help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:ciwidth pairedmeans} 计算来自配对样本的两个均值差异的样本量、CI 宽度和 CI 宽度的概率。它可以计算给定 CI 宽度和 CI 宽度概率的样本量。或者，它可以为给定样本量和 CI 宽度概率计算 CI 宽度。它还可以计算给定样本量和 CI 宽度的 CI 宽度概率。另见 {help ciwidth_zh:[PSS-3] ciwidth}，了解其他 CI 方法的 PrSS 分析。

{pstd}
有关二组配对均值检验的功效和样本量分析，请参见 {helpb power pairedmeans:[PSS-2] power pairedmeans}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection PSS-3 ciwidthpairedmeansRemarksandexamples:备注和示例}

        {mansection PSS-3 ciwidthpairedmeansMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{marker mainopts}{...}
{dlgtab:主}

{phang}
{opt level()}, {opt alpha()}, {opt probwidth()}, {opt width()}, {opt n()},
{opt nfractional}; 请参见 {help ciwidth_zh:[PSS-3] ciwidth}。
{opt probwidth()} 不能与 {opt knownsd} 一起使用。
{opt nfractional} 选项仅允许用于样本量确定。

{phang}
{opth sddiff(numlist)} 指定差异的标准差 {it:sigma_d}。必须指定 {cmd:sddiff()} 或 {cmd:corr()} 中的一个。

{phang}
{opth corr(numlist)} 指定配对的处理前和处理后观测值之间的相关性。此选项与 {cmd:sd1()} 和 {cmd:sd2()} 或 {cmd:sd()} 一起用于计算差异的标准差，除非直接在 {cmd:sddiff()} 选项中提供该标准差。必须指定 {cmd:corr()} 或 {cmd:sddiff()}。

{phang}
{opth sd(numlist)} 指定处理前和处理后组的共同标准差。指定 {opt sd(#)} 意味着 {cmd:sd1()} 和 {cmd:sd2()} 都等于 {it:#}。除非在 {cmd:sddiff()} 选项中直接提供该标准差，否则选项 {cmd:corr()} 和 {cmd:sd()} 用于计算差异的标准差。默认值为 {cmd:sd(1)}。

{phang}
{opth sd1(numlist)} 指定处理前组的标准差。除非在 {cmd:sddiff()} 选项中直接提供该标准差，否则选项 {cmd:corr()}、{cmd:sd1()} 和 {cmd:sd2()} 用于计算差异的标准差。

{phang}
{opth sd2(numlist)} 指定处理后组的标准差。除非在 {cmd:sddiff()} 选项中直接提供该标准差，否则选项 {cmd:corr()}、{cmd:sd1()} 和 {cmd:sd2()} 用于计算差异的标准差。

{phang}
{opt knownsd} 请求将差异的标准差 {it:sigma_d} 在计算中视为已知。默认情况下，标准差被视为未知，并且计算是根据学生 t 的 CI 来执行。如果指定了 {cmd:knownsd}，则计算是根据基于正态分布的 CI 执行的。{cmd:knownsd} 不能与 {cmd:probwidth()} 一起使用，并且在计算 CI 宽度概率时不允许使用。

{phang}
{opth fpc(numlist)} 请求在计算中使用有限总体修正。如果 {cmd:fpc()} 的值在 0 和 1 之间，则它被解释为抽样率 n/N，其中 N 是总体中的单位总数。当指定样本量 n 时，如果 {cmd:fpc()} 的值大于 n，则它被解释为总体大小，但在 1 和 n 之间的值是错误的。对于样本量确定，{cmd:fpc()} 值大于 1 时被解释为总体大小。{cmd:fpc()} 不允许混合抽样率和总体大小。

包含 help ciw_sideoptsdes

包含 help ciw_tableoptsdes

包含 help ciw_graphoptsdes
另见 {mansection PSS-3 ciwidthpairedmeansSyntaxcolumn:列} 表中关于图形使用的符号的列表。

包含 help ciw_initoptdes

包含 help ciw_iteroptsdes

{pstd}
以下选项在 {cmd:ciwidth pairedmeans} 中可用，但未在对话框中显示：

包含 help ciw_nodboptdes


{marker examples}{...}
{title:示例}

    {title:示例：计算样本量}

{pstd}
    计算两个配对样本均值之差的双侧 95% CI（默认）所需的样本量，以确保宽度不超过 8，概率为 90%；假设差异的标准差为 24{p_end}
{phang2}{cmd:. ciwidth pairedmeans, width(8) probwidth(0.9)}
       {cmd:sddiff(24)}

{pstd}
    计算假设已知的差异标准差的样本量{p_end}
{phang2}{cmd:. ciwidth pairedmeans, width(8) sddiff(24) knownsd}

{pstd}
    同上，使用下限单侧置信区间{p_end}
{phang2}{cmd:. ciwidth pairedmeans, width(8) sddiff(24)}
       {cmd:knownsd lower}

{pstd}
    同第一个示例，已知总体大小为 500{p_end}
{phang2}{cmd:. ciwidth pairedmeans, width(8) probwidth(0.9)}
       {cmd:sddiff(24) fpc(500)}

{pstd}
    同第一个示例，但允许小数样本量{p_end}
{phang2}{cmd:. ciwidth pairedmeans, width(8) probwidth(0.9)} 
       {cmd:sddiff(24) nfractional}

{pstd}
    按照第一个示例计算样本量，但配对观测值之间的相关性为 0.7；假设处理前标准差为 22，处理后标准差为 29{p_end}
{phang2}{cmd:. ciwidth pairedmeans, width(8) probwidth(0.9)}
       {cmd:corr(.7) sd1(22) sd2(29)}

{pstd}
    同上，假设共同标准差为 25{p_end}
{phang2}{cmd:. ciwidth pairedmeans, width(8) probwidth(0.9)}
       {cmd:corr(.7) sd(25)}


    {title:示例：计算 CI 宽度}

{pstd}
    假设我们有 100 个受试者的样本，我们想计算两个配对均值之差的双侧 95% CI（默认）的宽度；假设差异的标准差为 24，并且我们希望 96% 确定未来研究中的 CI 宽度不大于估计的宽度{p_end}
{phang2}{cmd:. ciwidth pairedmeans, n(100) probwidth(0.96) sddiff(24)}

{pstd}
    同上，但配对观测值之间的相关性为 0.7；假设处理前标准差为 20，处理后标准差为 24{p_end}
{phang2}{cmd:. ciwidth pairedmeans, n(100) probwidth(0.96) sd1(20)}
       {cmd:sd2(24) corr(.7)}

{pstd}
    计算一系列样本量的 CI 宽度，并将结果绘制成图形{p_end}
{phang2}{cmd:. ciwidth pairedmeans, n(70(10)100) probwidth(0.96)}
       {cmd:sddiff(24) graph}

{pstd}
    同上，但输出为表格形式{p_end}
{phang2}{cmd:. ciwidth pairedmeans, n(70(10)100) probwidth(0.96)}
       {cmd:sddiff(24) graph table}


    {title:示例：计算 CI 宽度的概率}

{pstd}
    假设我们有 80 个受试者的样本，我们想计算两个配对均值之差的双侧 95% CI（默认）宽度不超过 8 的概率；假设差异的标准差为 18{p_end}
{phang2}{cmd:. ciwidth pairedmeans, width(8) n(80) sddiff(18)}

{pstd}
    同上，假设配对观测值之间的相关性为 0.7，并且共同标准差为 22{p_end}
{phang2}{cmd:. ciwidth pairedmeans, width(8) n(80) corr(0.7) sd(22)}

{pstd}
    对若干不同样本量计算 CI 宽度的概率{p_end}
{phang2}{cmd:. ciwidth pairedmeans, width(8) n(50(10)80) corr(0.7) sd(22)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:ciwidth pairedmeans} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:r(level)}}置信水平{p_end}
{synopt :{cmd:r(alpha)}}显著性水平{p_end}
{synopt :{cmd:r(N)}}样本总量{p_end}
{synopt :{cmd:r(nfractional)}}{cmd:1} 如果指定了 {cmd:nfractional}，则为 {cmd:0} 否则{p_end}
{synopt :{cmd:r(onesided)}}{cmd:1} 为单侧 CI，{cmd:0} 否则{p_end}
{synopt :{cmd:r(Pr_width)}}CI 宽度的概率{p_end}
{synopt :{cmd:r(Pr_width_a)}}CI 宽度的实际概率（当指定 {cmd:probwidth()} 时，用于样本量确定）{p_end}
{synopt :{cmd:r(width)}}CI 宽度{p_end}
{synopt :{cmd:r(width_a)}}实际 CI 宽度（当指定 {cmd:knownsd} 时，用于样本量确定）{p_end}
{synopt :{cmd:r(corr)}}配对观测值之间的相关性{p_end}
{synopt :{cmd:r(sd_d)}}差异的标准差{p_end}
{synopt :{cmd:r(sd1)}}处理前组的标准差{p_end}
{synopt :{cmd:r(sd2)}}处理后组的标准差{p_end}
{synopt :{cmd:r(sd)}}共同标准差{p_end}
{synopt :{cmd:r(knownsd)}}{cmd:1} 如果指定 {cmd:knownsd}，则为 {cmd:0} 否则{p_end}
{synopt :{cmd:r(fpc)}}有限总体修正（如果指定）{p_end}
{synopt :{cmd:r(separator)}}表中分隔行之间的行数{p_end}
{synopt :{cmd:r(divider)}}{cmd:1} 如果请求表中的分隔符，则为 {cmd:0} 否则{p_end}
{synopt :{cmd:r(init)}}样本量的初始值{p_end}
{synopt :{cmd:r(maxiter)}}最大迭代次数{p_end}
{synopt :{cmd:r(iter)}}执行的迭代次数{p_end}
{synopt :{cmd:r(tolerance)}}请求的参数公差{p_end}
{synopt :{cmd:r(deltax)}}最终达到的参数公差{p_end}
{synopt :{cmd:r(ftolerance)}}请求的目标函数与零的距离{p_end}
{synopt :{cmd:r(function)}}目标函数与零的最终距离{p_end}
{synopt :{cmd:r(converged)}}{cmd:1} 如果迭代算法收敛，则为 {cmd:0} 否则{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt :{cmd:r(type)}}{cmd:ci}{p_end}
{synopt :{cmd:r(method)}}{cmd:pairedmeans}{p_end}
{synopt :{cmd:r(onesidedci)}}{cmd:upper} 或 {cmd:lower}（用于单侧 CI）{p_end}
{synopt :{cmd:r(columns)}}显示的表列{p_end}
{synopt :{cmd:r(labels)}}表列标签{p_end}
{synopt :{cmd:r(widths)}}表列宽度{p_end}
{synopt :{cmd:r(formats)}}表列格式{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt :{cmd:r(pss_table)}}结果表{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ciwidth_pairedmeans.sthlp>}