{smcl}
{* *! version 1.0.11  21mar2019}{...}
{viewerdialog "power (test all)" "dialog power_rsquared_all"}{...}
{viewerdialog "power (test subset)" "dialog power_rsquared_subset"}{...}
{vieweralsosee "[PSS-2] power rsquared" "mansection PSS-2 powerrsquared"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power oneslope" "help power oneslope"}{...}
{vieweralsosee "[PSS-2] power pcorr" "help power pcorr"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[R] test" "help test_zh"}{...}
{viewerjumpto "Syntax" "power_rsquared_zh##syntax"}{...}
{viewerjumpto "Menu" "power_rsquared_zh##menu"}{...}
{viewerjumpto "Description" "power_rsquared_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_rsquared_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_rsquared_zh##options"}{...}
{viewerjumpto "Remarks: Using power rsquared" "power_rsquared_zh##remarks"}{...}
{viewerjumpto "Examples" "power_rsquared_zh##examples"}{...}
{viewerjumpto "Stored results" "power_rsquared_zh##stored_results"}
{help power_rsquared:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[PSS-2] power rsquared} {hline 2}}多重线性回归中的 R 平方检验的功效分析{p_end}
{p2col:}({mansection PSS-2 powerrsquared:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算样本量 

{p 6 8 2}
        检验所有系数

{p 8 43 2}
{opt power} {opt rsq:uared} {it:R2T} 
[{cmd:,}
{opth p:ower(numlist)}
{it:{help power_rsquared##synoptions:选项}}]

{p 6 8 2}
        检验部分系数

{p 8 43 2}
{opt power} {opt rsq:uared} {it:R2R} {it:R2F}{cmd:,}
{opth nc:ontrol(numlist)}
[{opth p:ower(numlist)}
{it:{help power_rsquared##synoptions:选项}}]


{phang}
计算功效 

{p 6 8 2}
        检验所有系数

{p 8 43 2}
{opt power} {opt rsq:uared} {it:R2T}{cmd:,}
{opth n(numlist)} [{it:{help power_rsquared##synoptions:选项}}]

{p 6 8 2}
        检验部分系数

{p 8 43 2}
{opt power} {opt rsq:uared} {it:R2R} {it:R2F}{cmd:,}
{opth nc:ontrol(numlist)}
{opth n(numlist)}
[{it:{help power_rsquared##synoptions:选项}}]


{phang}
计算效应大小和目标 R 平方

{p 6 8 2}
        检验所有系数

{p 8 43 2}
{opt power} {opt rsq:uared}{cmd:,} {opth n(numlist)} 
{opth p:ower(numlist)} [{it:{help power_rsquared##synoptions:选项}}]

{p 6 8 2}
        检验部分系数

{p 8 43 2}
{opt power} {opt rsq:uared} {it:R2R}{cmd:,}
{opth nc:ontrol(numlist)}
{opth n(numlist)}
{opth p:ower(numlist)}
[{it:{help power_rsquared##synoptions:选项}}]


{phang}
其中 {it:R2T} 是检验模型在替代假设下的假设 R 平方，当检验模型中的所有系数时，{it:R2R} 是简化模型的 R 平方，{it:R2F} 是检验模型中部分系数时的完整模型的假设 R 平方。

{pmore}
{it:R2T}、{it:R2R} 和 {it:R2F} 可以分别指定为一个数字或括号中的值列表（参见 {it:{help numlist_zh}}）。{p_end}


{synoptset 28 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
INCLUDE help pss_testmainopts1
{synopt: {opt nfrac:tional}}允许分数样本量{p_end}
{p2coldent:* {opth ntest:ed(numlist)}}被检验的协变量数量{p_end}
{p2coldent:* {opth nc:ontrol(numlist)}}控制协变量的数量；用于检验部分系数时必需{p_end}
{p2coldent:* {opth diff(numlist)}}完整模型和简化模型 R 平方之间的差异，{it:R2F}-{it:R2R}；在检验部分系数时指定，而不是完整模型的 R 平方 {it:R2F}{p_end}
{synopt: {opt par:allel}}在指定多个每个选项或参数的值时，将带星号的选项中的数字列表视为并行处理（不列举所有可能值的组合）

{syntab:表}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_rsquared##tablespec:tablespec}}{cmd:)}]}抑制表格或以表格显示结果；见 {manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}将表格数据保存到 {it:filename}；使用 {cmd:replace} 来覆盖现有的 {it:filename}{p_end}

INCLUDE help pss_graphopts

{syntab:迭代}
{synopt: {opt init(#)}}在检验所有系数的情况下，样本量或被检验模型的 R 平方的初始值，以及在检验部分系数的情况下完整模型和简化模型的 R 平方之间差异的初始值{p_end}
INCLUDE help pss_iteropts

INCLUDE help pss_reportopts
{synoptline}
{p2colreset}{...}
INCLUDE help pss_numlist
{p 4 6 2}{cmd:notitle}不会出现在对话框中。{p_end}

{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 是

{p 16 16 2}
{it:{help power_rsquared##column:column}}[{cmd::}{it:label}]
[{it:column}[{cmd::}{it:label}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:tableopts}}]

{pstd}
{it:column} 是下面定义的列之一，{it:label} 是列标签（可以包含引号和复合引号）。

{synoptset 28}{...}
{marker column}{...}
{synopthdr :列}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}功效{p_end}
{synopt :{opt beta}}II型错误概率{p_end}
{synopt :{opt N}}样本数量{p_end}
{synopt :{opt delta}}效应大小{p_end}
{synopt :{opt R2_T}}被检验模型的 R 平方{p_end}
{synopt :{opt R2_R}}简化模型的 R 平方{p_end}
{synopt :{opt R2_F}}完整模型的 R 平方{p_end}
{synopt :{opt R2_diff}}完整模型和简化模型之间的 R 平方差异{p_end}
{synopt :{opt ntested}}被检验协变量的数量{p_end}
{synopt :{opt ncontrol}}控制协变量的数量{p_end}
{synopt :{opt target}}目标参数；{cmd:R2_T} 或 {cmd:R2_diff} 的同义词{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}如果指定，列 {cmd:beta} 将在默认表中替代列 {cmd:power} 显示。{p_end}
{p 4 6 2}在检验所有系数的情况下，列 {cmd:R2_T} 在默认表中显示，并且如果指定了 {cmd:ncontrol()} 则不可用。{p_end}
{p 4 6 2}列 {cmd:R2_R}、{cmd:R2_F}、{cmd:R2_diff} 和 {cmd:ncontrol} 在部分系数的默认表中显示，并且仅在指定了 {cmd:ncontrol()} 时可用。{p_end}
{p 4 6 2}对于检验所有系数，{cmd:target} 是 {cmd:R2_T}。对于检验部分系数，{cmd:target} 是 {cmd:R2_diff}。


INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power} {cmd:rsquared} 计算多重线性回归中 R 平方检验的样本量、功效或目标 R 平方。R 平方检验是检验决定系数 R 平方的 F 检验，用于检验回归模型中所有系数或部分系数的显著性。

{pstd}
默认情况下，{cmd:power rsquared} 计算在给定功效和被检验模型的 R 平方 {it:R2T} 的情况下对所有系数的检验的样本量。它也可以计算在给定样本量和 {it:R2T} 的情况下的功效，或在给定样本量和功效的情况下目标 {it:R2T}。

{pstd}
如果提供了控制协变量的数量，{cmd:power rsquared} 计算在给定功效、完整模型的 R 平方 {it:R2F} 和简化模型的 R 平方 {it:R2R} 的情况下对部分系数的检验的样本量。它也可以在给定样本量、{it:R2R} 和 {it:R2F} 的情况下计算功效，或在给定样本量、功效和 {it:R2R} 的情况下目标 {it:R2F}。

{pstd}
有关 {cmd:power} 命令使用假设检验的整体介绍，请参见 {manhelp power PSS-2}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection PSS-2 powerrsquaredQuickstart:快速开始}

        {mansection PSS-2 powerrsquaredRemarksandexamples:备注和示例}

        {mansection PSS-2 powerrsquaredMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:alpha()}、{cmd:power()}、{cmd:beta()}、{cmd:n()}、{cmd:nfractional}；见 {manhelp power##mainopts PSS-2:power}。
{opt nfractional} 选项仅允许用于样本量确定。

{phang}
{opth ntested(numlist)} 指定被检验协变量的数量。 默认值为 {cmd:ntested(1)}。

{phang}
{opth ncontrol(numlist)} 指定控制协变量的数量或简化模型中的协变量数量。这个选项在检验部分系数时是必需的。如果未指定该选项，则假定检验所有系数。

{phang}
{opth diff(numlist)} 在计算部分系数的样本量或功效时，指定完整模型和简化模型之间的 R 平方差 {it:R2F} - {it:R2R}。在检验部分系数时，您可以指定完整模型的 R 平方 {it:R2F} 作为命令参数，或者在 {opt diff()} 选项中指定差值 {it:R2F} - {it:R2R}。此选项在计算效应大小时是不允许的。

{phang}
{cmd:parallel}；见 {manhelp power##mainopts PSS-2:power}。

INCLUDE help pss_taboptsdes

INCLUDE help pss_graphoptsdes
另请参见 {bf:[PSS-2] power rsquared} 中的 {mansection PSS-2 powerrsquaredSyntaxcolumn:column} 表，以获取图表中使用的符号列表。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定样本量的初始值，用于样本量确定，或者在检验所有系数时被检验模型的 R 平方的初始值，以及在检验部分系数时完整模型和简化模型的 R 平方之间差异的初始值。 默认情况下使用二分法搜索方法计算初始值。

INCLUDE help pss_iteroptsdes

{pstd}
以下选项可用于 {cmd:power rsquared}，但不会在对话框中显示：

INCLUDE help pss_reportoptsdes


{marker remarks}{...}
{title:备注：使用 power rsquared}

{pstd}
{cmd:power rsquared} 计算多重线性回归中 R 平方检验的样本量、功效或目标斜率。默认情况下，所有计算在显著性水平 0.05 下执行。您可以通过指定 {cmd:alpha()} 选项来更改显著性水平。

{pstd}
默认情况下，被检验协变量的数量设置为 1。您可以通过 {cmd:ntested()} 选项更改被检验协变量的数量。所有计算假设模型包括常数。要检验部分系数，您还必须指定 {cmd:ncontrol()} 选项。

{pstd}
要计算检验模型中所有系数的样本量，您必须指定被检验模型的 R 平方 {it:R2T}。对于检验部分系数，您必须指定简化模型的 R 平方 {it:R2R} 和完整模型的 R 平方 {it:R2F}。对于任一检验，您可以在 {cmd:power()} 选项中指定检验的功效。默认功效设定为 0.8。

{pstd}
要计算功效，您必须在 {cmd:n()} 选项中指定样本量。要检验模型中的所有系数，还必须指定 {it:R2T}。要检验部分系数，还必须指定 {it:R2R} 和 {it:R2F}。

{pstd}
在计算部分系数的样本量或功效时，您可以在 {cmd:diff()} 选项中指定完整模型和简化模型之间的 R 平方差，而不是 {it:R2F}。

{pstd}
要计算效应大小，即被检验协变量解释的 R 平方与模型误差解释的方差之比，您必须在 {cmd:n()} 选项中指定样本量，在 {cmd:power()} 选项中指定检验的功效。对于检验所有系数，{cmd:power} {cmd:rsquared} 报告效应大小和 {it:R2T}。对于检验部分系数，您还必须指定 {it:R2R} 以获取效应大小。对于此检验，{cmd:power rsquared} 报告效应大小以及完整模型和简化模型 R 平方统计量之间的差异。

{pstd}
默认情况下，计算得到的样本量向上取整。您可以指定 {cmd:nfractional} 选项以查看相应的分数样本量；请参见 {bf:[PSS-4] Unbalanced designs} 中的 {mansection PSS-4 UnbalanceddesignsRemarksandexamplesFractionalsamplesizes:{it:Fractional sample sizes}} 以获取示例。{cmd:nfractional} 选项仅允许用于样本量确定。

{pstd}
{cmd:power rsquared} 的样本量和效应大小计算需要迭代，因为非中心 F 分布的分母自由度依赖于样本量，非中心参数依赖于样本量和效应大小。默认初始值使用二分法搜索方法获得。您可以使用 {cmd:init()} 选项指定自己的值。样本量的初始值必须大于多重回归模型中的参数数量。有关控制迭代过程的其他选项，请参见 {help power_zh:[PSS-2] power} 的描述。


{marker examples}{...}
{title:示例}

    {title:示例：计算样本量}

{pstd}
计算检测 R 平方为 0.1 所需的样本量；假设模型中只有一个被检验协变量，显著性水平为 5%，功效为 80%（默认值）{p_end}
{phang2}{cmd:. power rsquared 0.1}

{pstd}
与上述相同，但假设被检验协变量的数量为 3{p_end}
{phang2}{cmd:. power rsquared 0.1, ntested(3)}

{pstd}
计算对于 R 平方检验，给定简化模型 R 平方为 0.10 和完整模型 R 平方为 0.15 的样本量，假设模型中只有一个被检验协变量，显著性水平为 5%，功效为 80%（默认值）{p_end}
{phang2}{cmd:. power rsquared 0.1 0.15, ncontrol(2)}

{pstd}
与上述相同，但假设被检验协变量的数量为 3{p_end}
{phang2}{cmd:. power rsquared 0.1 0.15, ncontrol(2) ntested(3)}

{pstd}
与上述相同，但指定完整模型与简化模型之间的 R 平方差，而不是完整模型的 R 平方{p_end}
{phang2}{cmd:. power rsquared 0.1, ncontrol(2) ntested(3) diff(0.05)}


    {title:示例：计算功效}

{pstd}
计算所有系数的 R 平方检验的功效；假设样本量为 80，R 平方为 0.1，显著性水平为 5%，被检验协变量为 3{p_end}
{phang2}{cmd:. power rsquared 0.1, n(80) ntested(3)}

{pstd}
计算有 2 个控制协变量和 3 个被检验协变量的功效{p_end}
{phang2}{cmd:. power rsquared 0.1 0.15, n(80) ncontrol(2) ntested(3)}

{pstd}
计算一系列完整模型 R 平方值的功效，并将结果绘制图形{p_end}
{phang2}{cmd:. power rsquared 0.1 (0.15(0.05)0.4), n(80) ncontrol(2) ntested(3) graph}


    {title:示例：计算目标 R 平方}

{pstd}
计算在 80 个观察值、80% 的功效和默认的 5% 显著性水平下，所有协变量可以检测到的 R 平方的最小值；假设被检验协变量的数量为 3{p_end}
{phang2}{cmd:. power rsquared, n(80) power(0.8) ntested(3)}

{pstd}
计算在简化模型 R 平方为 0.1 的情况下，给定 80 个观察值、80% 的功效和默认 5% 显著性水平时可以检测到的完整模型的 R 平方的最小值；假设有 2 个控制协变量和 3 个被检验协变量{p_end}
{phang2}{cmd:. power rsquared 0.1, n(80) power(0.8) ncontrol(2) ntested(3)}


{marker stored_results}{...}
{title:存储的结果}

{pstd}
{cmd:power rsquared} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd: r(alpha)}}显著性水平{p_end}
{synopt:{cmd: r(power)}}功效{p_end}
{synopt:{cmd: r(beta)}}II型错误概率{p_end}
{synopt:{cmd: r(delta)}}效应大小{p_end}
{synopt:{cmd: r(N)}}样本量{p_end}
{synopt:{cmd: r(nfractional)}}{cmd:1} 如果指定了 {cmd:nfractional}，否则为 {cmd:0}{p_end}
{synopt:{cmd: r(R2_T)}}被检验模型的 R 平方{p_end}
{synopt:{cmd: r(R2_R)}}简化模型的 R 平方{p_end}
{synopt:{cmd: r(R2_F)}}完整模型的 R 平方{p_end}
{synopt:{cmd: r(R2_diff)}}完整模型和简化模型 R 平方之间的差异{p_end}
{synopt:{cmd: r(ntested)}}被检验协变量的数量{p_end}
{synopt:{cmd: r(ncontrol)}}控制协变量的数量{p_end}
INCLUDE help pss_rrestab_sc
{synopt:{cmd: r(init)}}样本量或 R 平方的初始值{p_end}
INCLUDE help pss_rresiter_sc

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:rsquared}{p_end}
INCLUDE help pss_rrestab_mac

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
INCLUDE help pss_rrestab_mat

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_rsquared.sthlp>}