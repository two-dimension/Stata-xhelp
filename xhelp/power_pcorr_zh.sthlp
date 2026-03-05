{smcl}
{* *! version 1.0.12  12mar2019}{...}
{viewerdialog power "dialog power_pcorr"}{...}
{vieweralsosee "[PSS-2] power pcorr" "mansection PSS-2 powerpcorr"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power oneslope" "help power oneslope"}{...}
{vieweralsosee "[PSS-2] power rsquared" "help power rsquared"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] pcorr" "help pcorr_zh"}{...}
{viewerjumpto "Syntax" "power_pcorr_zh##syntax"}{...}
{viewerjumpto "Menu" "power_pcorr_zh##menu"}{...}
{viewerjumpto "Description" "power_pcorr_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_pcorr_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_pcorr_zh##options"}{...}
{viewerjumpto "Remarks: Using power pcorr" "power_pcorr_zh##remarks"}{...}
{viewerjumpto "Examples" "power_pcorr_zh##examples"}{...}
{viewerjumpto "Stored results" "power_pcorr_zh##stored_results"}
{help power_pcorr:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[PSS-2] power pcorr} {hline 2}}多元线性回归中的部分相关性检验的功效分析{p_end}
{p2col:}({mansection PSS-2 powerpcorr:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算样本大小

{p 8 43 2}
{opt power} {opt pcorr} {it:rho2_p} 
[{cmd:,}
{opth p:ower(numlist)}
{it:{help power_pcorr##synoptions:options}}]


{phang}
计算功效

{p 8 43 2}
{opt power} {opt pcorr} {it:rho2_p}{cmd:,}
{opth n(numlist)} [{it:{help power_pcorr##synoptions:options}}]


{phang}
计算效应量和目标平方部分相关性

{p 8 43 2}
{opt power} {opt pcorr}{cmd:,} {opth n(numlist)} 
{opth p:ower(numlist)} [{it:{help power_pcorr##synoptions:options}}]


{phang}
其中 {it:rho2_p} 是在多元线性回归中假设的平方部分相关性。 {it:rho2_p} 可以指定为一个数字或在括号中的值列表（见 {it:{help numlist_zh}}）。{p_end}


{synoptset 28 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
包含 help pss_testmainopts1
{synopt: {opt nfrac:tional}}允许使用小数样本大小{p_end}
{p2coldent:* {opth ntest:ed(numlist)}}被测试协变量的数量；默认值为 {cmd:ntested(1)}{p_end}
{p2coldent:* {opth nc:ontrol(numlist)}}控制协变量的数量；默认值为 {cmd:ncontrol(1)}{p_end}
{synopt: {opt par:allel}}在指定多个值的情况下，将带星号的选项中的数值列表视为并行（不列举所有可能的值组合）

{syntab:表}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_pcorr##tablespec:tablespec}}{cmd:)}]}抑制表格或显示结果为表格；见 {manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}将表格数据保存到 {it:filename}; 使用 {cmd:replace} 替换已存在的 {it:filename}{p_end}

包含 help pss_graphopts

{syntab:迭代}
{synopt: {opt init(#)}}样本大小或平方部分相关性的初始值{p_end}
包含 help pss_iteropts

包含 help pss_reportopts
{synoptline}
{p2colreset}{...}
包含 help pss_numlist
{p 4 6 2}{cmd:notitle} 不会出现在对话框中。{p_end}

{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 是

{p 16 16 2}
{it:{help power_pcorr##column:column}}[{cmd::}{it:label}]
[{it:column}[{cmd::}{it:label}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:tableopts}}]

{pstd}
{it:column} 是下面定义的列之一，而 {it:label} 是列标签（可以包含引号和复合引号）。

{synoptset 28}{...}
{marker column}{...}
{synopthdr :列}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}功效{p_end}
{synopt :{opt beta}}II型错误概率{p_end}
{synopt :{opt N}}受试者数量{p_end}
{synopt :{opt delta}}效应量{p_end}
{synopt :{opt rho2_p}}平方部分多重相关性{p_end}
{synopt :{opt ntested}}被测试协变量的数量{p_end}
{synopt :{opt ncontrol}}控制协变量的数量{p_end}
{synopt :{opt target}}目标参数； {cmd:rho2_p} 的同义词{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}如果指定，则 {cmd:beta} 列在默认表中取代 {cmd:power} 列。{p_end}


包含 help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power} {cmd:pcorr} 计算部分相关性检验所需的样本大小、功效或目标平方部分相关性。部分相关性检验是一种对平方部分多重相关性进行的 F 检验，用于检验回归模型中一组系数的显著性。默认情况下，{cmd:power pcorr} 在给定功效和平方部分相关性的情况下计算样本大小。或者，它在给定样本大小和平方部分相关性的情况下计算功效，或在给定样本大小和功效的情况下计算平方部分相关性。有关使用假设检验的 {cmd:power} 命令的一般介绍，请参见 {manhelp power PSS-2}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection PSS-2 powerpcorrQuickstart:快速开始}

        {mansection PSS-2 powerpcorrRemarksandexamples:备注和示例}

        {mansection PSS-2 powerpcorrMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:alpha()}、{cmd:power()}、{cmd:beta()}、{cmd:n()}、{cmd:nfractional}；见 {manhelp power##mainopts PSS-2:power}。
{opt nfractional} 选项仅适用于样本大小的确定。

{phang}
{opth ntested(numlist)} 指定被测试协变量的数量。默认值为 {cmd:ntested(1)}。

{phang}
{opth ncontrol(numlist)} 指定控制协变量的数量或减少模型中的协变量数量。默认值为 {cmd:ncontrol(1)}。

{phang}
{cmd:parallel}；见 {manhelp power##mainopts PSS-2:power}。

包含 help pss_taboptsdes

包含 help pss_graphoptsdes
另请参见 {mansection PSS-2 powerpcorrSyntaxcolumn:column} 表中使用的图表符号列表。

{dlgtab:迭代}

{phang}
{opt init(#)} 指定样本大小的初始值，用于样本大小的确定，或指定效应大小的平方部分相关性的初始值。默认值使用二分法搜索方法计算初始值。

包含 help pss_iteroptsdes

{pstd}
以下选项适用于 {cmd:power pcorr}，但未在对话框中显示：

包含 help pss_reportoptsdes


{marker remarks}{...}
{title:备注：使用 power pcorr}

{pstd}
{cmd:power pcorr} 计算多元线性回归中部分相关性检验的样本大小、功效或目标平方部分相关性 {it:rho2_p}。默认情况下，所有计算在显著性水平 0.05 上进行。您可以通过指定 {cmd:alpha()} 选项更改显著性水平。

{pstd}
默认情况下，测试的协变量数量和控制协变量数量均设置为 1。您可以通过 {cmd:ntested()} 和 {cmd:ncontrol()} 选项更改相应的值。

{pstd}
要计算样本大小，您必须指定平方部分相关性 {it:rho2_p} 并可选地指定 {cmd:power()} 选项中的检验功效。默认功效设定为 0.8。

{pstd}
要计算功效，您必须在 {cmd:n()} 选项中指定样本大小和平方部分相关性 {it:rho2_p}。

{pstd}
要计算目标部分相关性和效应大小，您必须在 {cmd:n()} 选项中指定样本大小和在 {cmd:power()} 选项中指定功效。

{pstd}
默认情况下，计算的样本大小会向上舍入。您可以指定 {cmd:nfractional} 选项以查看相应的小数样本大小；有关示例，请参见 {mansection PSS-4 UnbalanceddesignsRemarksandexamplesFractionalsamplesizes:{it:Fractional sample sizes}} 在 {bf:[PSS-4] Unbalanced designs} 中。{cmd:nfractional} 选项仅适用于样本大小的确定。

{pstd}
{cmd:power pcorr} 的样本大小和效应大小计算需要迭代，因为非中心 F 分布的分母自由度取决于样本大小，并且非中心性参数取决于样本大小和效应大小。默认初始值是通过二分法搜索方法获得的。您可以使用 {cmd:init()} 选项指定自己的值。样本大小的初始值必须大于多元回归模型中的参数数量。有关控制迭代过程的其他选项的描述，请参见 {help power_zh:[PSS-2] power}。


{marker examples}{...}
{title:示例}

    {title:示例：计算样本大小}

{pstd}
计算检测平方部分相关性 0.1 所需的样本大小，给定 2 个控制协变量；假设模型中有一个被测试的协变量，显著性水平为 5%，功效为 80%（默认值）{p_end}
{phang2}
{cmd:. power pcorr 0.1, ncontrol(2)}

{pstd}
与上述相同，但假设被测试的协变量数量为 3{p_end}
{phang2}{cmd:. power pcorr 0.1, ncontrol(2) ntested(3)}


    {title:示例：计算功效}

{pstd}
计算显著性水平为 5%、样本大小为 80、控制协变量 2 个和被测试协变量 3 个的检验功效{p_end}
{phang2}{cmd:. power pcorr 0.1, n(80) ncontrol(2) ntested(3)}{p_end}

{pstd}
计算一系列平方部分相关性的功效，并绘制结果{p_end}
{phang2}{cmd:. power pcorr (0.1(0.05)0.3), n(80) ncontrol(2) ntested(3) graph}


    {title:示例：计算目标平方部分相关性}

{pstd}
计算可以在 80 个观测值、80% 的功效和默认的 5% 显著性水平下检测到的平方部分相关性的最小值；假设有 2 个控制协变量和 3 个被测试协变量{p_end}
{phang2}{cmd:. power pcorr, n(80) power(0.8) ncontrol(2) ntested(3)}


{marker stored_results}{...}
{title:存储结果}

{pstd}
{cmd:power pcorr} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd: r(alpha)}}显著性水平{p_end}
{synopt:{cmd: r(power)}}功效{p_end}
{synopt:{cmd: r(beta)}}II型错误的概率{p_end}
{synopt:{cmd: r(delta)}}效应量{p_end}
{synopt:{cmd: r(N)}}样本大小{p_end}
{synopt:{cmd: r(nfractional)}}{cmd:1} 如果指定了 {cmd:nfractional}，否则为 {cmd:0}{p_end}
{synopt:{cmd: r(rho2_p)}}平方部分相关性{p_end}
{synopt:{cmd: r(ntested)}}被测试协变量的数量{p_end}
{synopt:{cmd: r(ncontrol)}}控制协变量的数量{p_end}
包含 help pss_rrestab_sc
{synopt:{cmd: r(init)}}样本大小或平方部分相关性的初始值{p_end}
包含 help pss_rresiter_sc

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:pcorr}{p_end}
包含 help pss_rrestab_mac

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
包含 help pss_rrestab_mat

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_pcorr.sthlp>}