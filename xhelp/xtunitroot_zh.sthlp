{smcl}
{* *! version 1.0.24  19oct2017}{...}
{viewerdialog xtunitroot "dialog xtunitroot"}{...}
{vieweralsosee "[XT] xtunitroot" "mansection XT xtunitroot"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] dfgls" "help dfgls_zh"}{...}
{vieweralsosee "[TS] dfuller" "help dfuller_zh"}{...}
{vieweralsosee "[TS] pperron" "help pperron_zh"}{...}
{vieweralsosee "[XT] xtcointtest" "help xtcointtest_zh"}{...}
{viewerjumpto "Syntax" "xtunitroot_zh##syntax"}{...}
{viewerjumpto "Menu" "xtunitroot_zh##menu"}{...}
{viewerjumpto "Description" "xtunitroot_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtunitroot_zh##linkspdf"}{...}
{viewerjumpto "Options" "xtunitroot_zh##options"}{...}
{viewerjumpto "Remarks" "xtunitroot_zh##remarks"}{...}
{viewerjumpto "Examples" "xtunitroot_zh##examples"}{...}
{viewerjumpto "Stored results" "xtunitroot_zh##results"}{...}
{viewerjumpto "References" "xtunitroot_zh##references"}
{help xtunitroot:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[XT] xtunitroot} {hline 2}}面板数据单位根检验{p_end}
{p2col:}({mansection XT xtunitroot:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
Levin-Lin-Chu 检验

{p 8 16 2}
{cmd:xtunitroot llc} {varname} {ifin} [{cmd:,} 
{it:{help xtunitroot##llc_options:LLC_选项}}]


{p 4 8 2}
Harris-Tzavalis 检验

{p 8 16 2}
{cmd:xtunitroot ht} {varname} {ifin} [{cmd:,} 
{it:{help xtunitroot##ht_options:HT_选项}}]


{p 4 8 2}
Breitung 检验

{p 8 16 2}
{cmd:xtunitroot breitung} {varname} {ifin} [{cmd:,}
{it:{help xtunitroot##breitung_options:Breitung_选项}}]


{p 4 8 2}
Im-Pesaran-Shin 检验

{p 8 16 2}
{cmd:xtunitroot ips} {varname} {ifin} [{cmd:,} 
{it:{help xtunitroot##ips_options:IPS_选项}}]


{p 4 8 2}
Fisher 类型检验（组合 p 值）

{p 8 16 2}
{cmd:xtunitroot fisher} {varname} {ifin}{cmd:,}
{c -(}{opt df:uller} {c |} {opt pp:erron}{c )-}
{opt l:ags(#)}
[{it:{help xtunitroot##fisher_options:Fisher_选项}}]


{p 4 8 2}
Hadri 拉格朗日乘数平稳性检验

{p 8 16 2}
{cmd:xtunitroot hadri} {varname} {ifin} [{cmd:,}
{it:{help xtunitroot##hadri_options:Hadri_选项}}]


{marker llc_options}{...}
{synoptset 21}{...}
{synopthdr:LLC_选项}
{synoptline}
{synopt:{opt t:rend}}包含时间趋势{p_end}
{synopt:{opt nocons:tant}}抑制面板特定的均值{p_end}
{synopt:{opt demean}}减去横截面均值{p_end}
{synopt:{opt l:ags(lag_spec)}}指定用于增强的 Dickey-Fuller (ADF) 回归的滞后结构{p_end}
{synopt:{opt ker:nel(kernel_spec)}}指定估计长期方差的方法{p_end}
{synoptline}
{p 4 6 2}{it:lag_spec} 是非负整数或 {opt aic}、{opt bic}、或 {opt hqic} 后接正整数中的一种。{p_end}
{p 4 6 2}{it:kernel_spec} 的形式为 {it:kernel} {it:maxlags}，其中 {it:kernel} 为 {opt ba:rtlett}、{opt pa:rzen} 或 {opt qu:adraticspectral}，{it:maxlags} 为正数或其中之一 {opt nwest} 或 {opt llc}。{p_end}


{marker ht_options}{...}
{synoptset 21}{...}
{synopthdr:HT_选项}
{synoptline}
{synopt:{opt t:rend}}包含时间趋势{p_end}
{synopt:{opt nocons:tant}}抑制面板特定的均值{p_end}
{synopt:{opt demean}}减去横截面均值{p_end}
{synopt:{opt altt}}对 T 进行小样本调整{p_end}
{synoptline}


{marker breitung_options}{...}
{synoptset 21}{...}
{synopthdr:Breitung_选项}
{synoptline}
{synopt:{opt t:rend}}包含时间趋势{p_end}
{synopt:{opt nocons:tant}}抑制面板特定的均值{p_end}
{synopt:{opt demean}}减去横截面均值{p_end}
{synopt:{opt r:obust}}允许横截面依赖{p_end}
{synopt:{opt l:ags(#)}}指定用于预白化的滞后结构{p_end}
{synoptline}


{marker ips_options}{...}
{synoptset 21}{...}
{synopthdr:IPS_选项}
{synoptline}
{synopt:{opt t:rend}}包含时间趋势{p_end}
{synopt:{opt demean}}减去横截面均值{p_end}
{synopt:{opt l:ags(lag_spec)}}指定用于 ADF 回归的滞后结构{p_end}
{synoptline}
{p 4 6 2}{it:lag_spec} 是非负整数或 {opt aic}、{opt bic}、或 {opt hqic} 后接正整数中的一种。{p_end}


{marker fisher_options}{...}
{synoptset 21 tabbed}{...}
{synopthdr:Fisher_选项}
{synoptline}
{p2coldent:* {opt df:uller}}使用 ADF 单位根检验{p_end}
{p2coldent:* {opt pp:erron}}使用 Phillips-Perron 单位根检验{p_end}
{p2coldent:* {opt l:ags(#)}}指定用于预白化的滞后结构{p_end}
{synopt:{opt demean}}减去横截面均值{p_end}
{synopt:{help dfuller_zh:{it:dfuller_opts}}}任何 {cmd:dfuller} 命令允许的选项{p_end}
{synopt:{help pperron_zh:{it:pperron_opts}}}任何 {cmd:pperron} 命令允许的选项{p_end}
{synoptline}
{p 4 6 2}* 必须指定 {opt dfuller} 或 {opt pperron} 中的一个。{p_end}
{p 4 6 2}* 必须指定 {opt lags(#)}。{p_end}


{marker hadri_options}{...}
{synoptset 21}{...}
{synopthdr:Hadri_选项}
{synoptline}
{synopt:{opt t:rend}}包含时间趋势{p_end}
{synopt:{opt demean}}减去横截面均值{p_end}
{synopt:{opt r:obust}}允许横截面依赖{p_end}
{synopt:{opt ker:nel(kernel_spec)}}指定用于估计长期方差的方法{p_end}
{synoptline}
{p 4 6 2}{it:kernel_spec} 形式为 {it:kernel} [{it:#}]，其中 {it:kernel} 为 {opt ba:rtlett}、{opt pa:rzen} 或 {opt qu:adraticspectral}，{it:#} 为正数。{p_end}

{p 4 6 2}
{it:varname} 可以包含时间序列运算符；参见 {help tsvarlist_zh}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 单位根检验}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtunitroot} 在面板数据集中执行多种单位根（或平稳性）检验。
{help xtunitroot##LLC2002:Levin-Lin-Chu (2002)}、{help xtunitroot##HT1999:Harris-Tzavalis (1999)}、Breitung ({help xtunitroot##B2000:2000}; {help xtunitroot##BD2005:Breitung and Das 2005})、{help xtunitroot##IPS2003:Im-Pesaran-Shin (2003)} 和 Fisher 类型（{help xtunitroot##C2001:Choi 2001}）检验的原假设为所有面板都包含单位根。
{help xtunitroot##H2000:Hadri (2000)} 拉格朗日乘数（LM）检验的原假设为所有面板是（趋势）平稳的。每个检验的输出顶部明确说明了原假设和备择假设。
选项允许您在数据生成过程中包含面板特定的均值（固定效应）和时间趋势。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtunitrootQuickstart:快速开始}

        {mansection XT xtunitrootRemarksandexamples:备注和示例}

        {mansection XT xtunitrootMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

    {title:LLC_选项}

{phang}
{opt trend} 在描述生成序列过程的模型中包含线性时间趋势。

{phang}
{opt noconstant} 抑制描述生成序列过程的模型中的面板特定均值项。
指定 {opt noconstant} 强加假设，即序列对于所有面板的均值为零。

{phang}
{opt demean} 请求 {cmd:xtunitroot} 首先从序列中减去横截面均值。
当指定时，对于每个时间段，{cmd:xtunitroot} 计算跨面板的序列均值并从序列中减去该均值。Levin、Lin 和 Chu 建议采用此程序以减轻横截面依赖的影响。

{phang}
{opt lags(lag_spec)} 指定用于计算检验统计量的 ADF 回归的滞后结构。

{pmore}
指定 {opt lags(#)} 请求在 ADF 回归中使用 {it:#} 的滞后。默认值为 {cmd:lags(1)}。

{pmore}
指定 {cmd:lags(aic }{it:#}{cmd:)} 请求选择滞后数目，使得回归的 Akaike 信息准则 (AIC) 最小化。{cmd:xtunitroot llc} 将适合 1 到 {it:#} 个滞后的 ADF 回归，并选择 AIC 最小的回归。此过程是针对每个面板进行的，因此不同面板可以使用不同数量的滞后进行 ADF 回归。

{pmore}
指定 {cmd:lags(bic }{it:#}{cmd:)} 方式与指定 {cmd:lags(aic }{it:#}{cmd:)} 相同，只是使用 Bayesian 信息准则 (BIC) 代替 AIC。

{pmore}
指定 {cmd:lags(hqic }{it:#}{cmd:)} 方式与指定 {cmd:lags(aic }{it:#}{cmd:)} 相同，只是使用 Hannan-Quinn 信息准则代替 AIC。

{phang} 
{opt kernel(kernel_spec)} 指定用于估计每个面板系列长期方差的方法。{it:kernel_spec} 的形式为 {it:kernel} {it:maxlags}。{it:kernel} 为 {cmdab:bartlett}、{cmdab:parzen} 或 {cmdab:quadraticspectral} 中之一。
{it:maxlags} 是一个数，{cmd:nwest} 请求 {help xtunitroot##NW1994:Newey and West (1994)} 的带宽选择算法，或 {cmd:llc} 请求在 {help xtunitroot##LLC2002:Levin, Lin, and Chu (2002)} 中提出的滞后截断选择算法。

{pmore}
例如，指定 {cmd:kernel(bartlett 3)} 请求带有 3 个滞后的 Bartlett 核。

{pmore}
指定 {cmd:kernel(bartlett nwest)} 请求使用 Newey 和 West 带宽选择算法确定的最大滞后数量的 Bartlett 核。

{pmore}
指定 {cmd:kernel(bartlett llc)} 请求使用 Levin、Lin 和 Chu 的 ({help xtunitroot##LLC2002:2002}) 文章中提出的方法确定的最大滞后数：

{pmore2}{it:maxlags} = int(3.21*T^(1/3))

{pmore}
其中 T 是每个面板的观测数量。这是默认设置。

    {title:HT_选项}

{phang}
{opt trend} 在描述生成序列过程的模型中包含线性时间趋势。

{phang}
{opt noconstant} 抑制面板特定均值项在描述生成序列过程的模型中。
指定 {opt noconstant} 强加假设，即序列对于所有面板的均值为零。

{phang}
{opt demean} 请求 {cmd:xtunitroot} 首先从序列中减去横截面均值。
当指定时，对于每个时间段，{cmd:xtunitroot} 计算跨面板的序列均值并从序列中减去该均值。Levin、Lin 和 Chu 建议采用此程序以减轻横截面依赖的影响。

{phang}
{opt altt} 请求 {cmd:xtunitroot} 在原假设下使用 T-1 而不是 T 进行检验统计量的均值和方差的计算。当时间段数 T 较小（小于 10 或 15）时，固定效应或时间趋势的包含严重扭曲了检验的规模；在这些情况下，使用 {opt altt} 结果显著提高了规模特性，但显著降低了检验的功效。

    {title:Breitung_选项}

{phang}
{opt trend} 在描述生成序列过程的模型中包含线性时间趋势。

{phang}
{opt noconstant} 抑制面板特定均值项在描述生成序列过程的模型中。
指定 {opt noconstant} 强加假设，即序列对于所有面板的均值为零。

{phang}
{opt demean} 请求 {cmd:xtunitroot} 首先从序列中减去横截面均值。
当指定时，对于每个时间段，{cmd:xtunitroot} 计算跨面板的序列均值并从序列中减去该均值。Levin、Lin 和 Chu 建议采用此程序以减轻横截面依赖的影响。

{phang}
{opt robust} 请求一个对横截面依赖稳健的检验变体。

{phang}
{opt lags(#)} 指定使用的滞后数量以去除序列的高阶自回归成分。Breitung 检验假设数据由 AR(1) 过程生成；对于高阶过程，差分和滞后水平数据被替换为这两个序列对于差分数据前 {it:#} 个滞后的回归的残差。默认是不执行此预白化步骤。

    {title:IPS_选项}

{phang}
{opt trend} 在描述生成序列过程的模型中包含线性时间趋势。

{phang}
{opt demean} 请求 {cmd:xtunitroot} 首先从序列中减去横截面均值。
当指定时，对于每个时间段，{cmd:xtunitroot} 计算跨面板的序列均值并从序列中减去该均值。Levin、Lin 和 Chu 建议采用此程序以减轻横截面依赖的影响。

{phang}
{opt lags(lag_spec)} 指定用于计算检验统计量的 ADF 回归的滞后结构。
使用此选项时，{cmd:xtunitroot} 报告 Im、Pesaran 和 Shin 的 ({help xtunitroot##IPS2003:2003}) W_t-bar 统计量，该统计量的前提是 T 首先趋于无穷大，然后 N 也趋于无穷大。默认情况下，不包括滞后，{cmd:xtunitroot} 报告 Im、Pesaran 和 Shin 的 t-tilde-bar 和 Z_t-tilde-bar 统计量，假设 T 固定而 N 无穷大，以及 t-bar 统计量和精确临界值，假设 N 和 T 都固定。

{pmore}
指定 {opt lags(#)} 请求在 ADF 回归中使用 {it:#} 个滞后。默认情况下，不包括滞后。

{pmore}
指定 {cmd:lags(aic }{it:#}{cmd:)} 请求选择的滞后数量，使得回归的 AIC 最小化。{cmd:xtunitroot llc} 将适合 1 到 {it:#} 个滞后的 ADF 回归，并选择 AIC 最小的回归。此过程是针对每个面板进行的，因此不同面板可以使用不同数量的滞后进行 ADF 回归。

{pmore}
指定 {cmd:lags(bic }{it:#}{cmd:)} 方式与指定 {cmd:lags(aic }{it:#}{cmd:)} 相同，只是使用 BIC 代替 AIC。

{pmore}
指定 {cmd:lags(hqic }{it:#}{cmd:)} 方式与指定 {cmd:lags(aic }{it:#}{cmd:)} 相同，只是使用 Hannan-Quinn 信息准则代替 AIC。

{pmore}
如果您指定 {cmd:lags(0)}，那么 {cmd:xtunitroot} 报告 W_t-bar 统计量，而不是 Z_t-bar、Z_tilde-t-bar 和 t-bar 统计量。

    {title:Fisher_选项}

{phang}
{opt dfuller} 请求 {cmd:xtunitroot} 对每个面板执行 ADF 单位根检验，使用 {cmd:dfuller} 命令。您必须指定 {opt dfuller} 或 {opt pperron} 中的一个。

{phang}
{opt pperron} 请求 {cmd:xtunitroot} 对每个面板执行 Phillips-Perron 单位根检验，使用 {cmd:pperron} 命令。您必须指定 {opt pperron} 或 {opt dfuller} 中的一个。

{phang}
{opt lags(#)} 指定用于去除序列的高阶自回归成分的滞后数量。Fisher 检验假设数据由 AR(1) 过程生成；对于高阶过程，差分和滞后水平数据被替换为这两个序列对于差分数据前 {it:#} 个滞后的回归的残差。{opt lags(#)} 是必需的。

{phang}
{opt demean} 请求 {cmd:xtunitroot} 首先从序列中减去横截面均值。
当指定时，对于每个时间段，{cmd:xtunitroot} 计算跨面板的序列均值并从序列中减去该均值。Levin、Lin 和 Chu 建议采用此程序以减轻横截面依赖的影响。

{phang}
{it:dfuller_opts} 是 {cmd:dfuller} 命令接受的任何选项，包括 {opt noconstant}、{opt trend}、{opt drift} 和 {opt lags()}。因为 {cmd:xtunitroot} 以 {cmd:quietly} 的方式调用 {help dfuller_zh}，所以 {cmd:dfuller} 选项 {cmd:regress} 无效。

{phang}
{it:pperron_opts} 是 {cmd:pperron} 命令接受的任何选项，包括 {opt noconstant}、{opt trend} 和 {opt lags()}。因为 {cmd:xtunitroot} 以 {cmd:quietly} 的方式调用 {help pperron_zh}，所以 {cmd:pperron} 选项 {cmd:regress} 无效。

    {title:Hadri_选项}

{phang}
{opt trend} 在描述生成序列过程的模型中包含线性时间趋势。

{phang}
{opt demean} 请求 {cmd:xtunitroot} 首先从序列中减去横截面均值。
当指定时，对于每个时间段，{cmd:xtunitroot} 计算跨面板的序列均值并从序列中减去该均值。Levin、Lin 和 Chu 建议采用此程序以减轻横截面依赖的影响。

{phang}
{opt robust} 请求一个对异方差性的检验统计量变体，适用于跨面板。

{phang}
{opt kernel(kernel_spec)} 请求一个对序列相关的误差稳健的检验统计量变体。{it:kernel_spec} 指定用于估计每个面板系列长期方差的方法。{it:kernel_spec} 的形式为 {it:kernel} [{it:#}]。支持三种核：{cmdab:bartlett}、{cmdab:parzen} 和 {cmdab:quadraticspectral}。

{pmore}
例如，指定 {cmd:kernel(bartlett 3)} 请求带有 3 个滞后的 Bartlett 核。

{pmore}
如果未指定 {it:#}，则使用 1 个滞后。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:xtunitroot} 实现了多种单位根（或平稳性）检验在面板数据集中。考虑自回归模型

{pmore}
y_it = a_it + rho_i * y_i,t-1 + e_it

{pstd} 
其中 e_it 是均值为零的回归误差项， 
a_it 表示模型的确定性部分。
i=1, ..., N 索引面板， t=1, ..., T 索引时间。
a_it 可以包括面板特定的截距（固定效应）、面板特定的时间趋势或无内容，此时y_it 假设对所有面板的均值为零。

{pstd}
除了 Hadri LM 检验外，所有检验都检验一般形式的原假设 Ho: rho_i = 1 对备择假设 Ha: rho_i < 1，尽管它们在 Ha 的具体规定上有所不同。
Hadri LM 检验则假设数据是平稳的（rho_i < 1），与包含单位根的数据相对立。

{pstd}
此处我们提供每个检验显著特征的简要概述；需更多信息，请参见 {manlink XT xtunitroot}。

{pstd}
备注在以下标题下呈现：

{pmore}
{help xtunitroot##LLC:Levin-Lin-Chu 检验}{break}
{help xtunitroot##HT:Harris-Tzavalis 检验}{break}
{help xtunitroot##Breitung:Breitung 检验}{break}
{help xtunitroot##IPS:Im-Pesaran-Shin 检验}{break}
{help xtunitroot##Fisher:Fisher 类型检验}{break}
{help xtunitroot##Hadri:Hadri LM 平稳性检验}{break}


{marker LLC}{...}
{title:Levin-Lin-Chu 检验}

{pstd}
Levin-Lin-Chu (LLC) ({help xtunitroot##LLC2002:2002}) 检验假设所有面板具有相同的自回归参数，即，rho_i = rho 对所有 i。因此备择假设仅为 rho < 1。

{pstd}
LLC 检验要求面板是强平衡的。

{pstd}
LLC 检验基于回归 t 统计量，但由于原假设下数据是非平稳的，t 统计量的渐近均值和标准差取决于模型的确定性部分的规定。

{pstd}
Levin、Lin 和 Chu 建议将其程序用于中等规模的面板，可能在 10 到 250 个个体之间，并且每个个体有 25 到 250 个观测值。如果面板的时间维度非常大，则可以对每个面板应用标准的单位根检验，因为聚合带来的收益可能很小。

{pstd}
正式地，如果模型中没有确定性项（a_it = 0），则检验允许时间段数 T 的增长速率低于横截面单位数 N，但 T 必须以足够快的速度趋于无穷大，使得 sqrt(N)/T 趋于 0。如果模型的确定性部分包含固定效应或时间趋势，那么 T 必须以快于 N 的速度趋于无穷大，以使 N/T 趋于 0。


{marker HT}{...}
{title:Harris-Tzavalis 检验}

{pstd}
Harris-Tzavalis (HT) ({help xtunitroot##HT1999:1999}) 检验类似于 LLC 检验，因为它假设所有面板具有相同的自回归参数，因此备择假设仅为 rho < 1。与 LLC 检验不同，HT 检验假设时间段数 T 是固定的。

{pstd}
与 LLC 检验一样，HT 检验要求面板是强平衡的。

{pstd}
{help xtunitroot##B2008:Baltagi (2008, 278)}提到 T 固定是在微面板研究中的典型情况。在这里，您可能会有一个公司的面板数据集，更自然地认为，如果您能够增加数据集的样本大小，那么您会通过收集更多公司的数据来实现，尽管每个公司的时间段数量是固定的。


{marker Breitung}{...}
{title:Breitung 检验}

{pstd}
LLC 和 HT 检验基于随后调整的回归 t 统计量，使其反映在原假设下，t 统计量由于面板特定均值或趋势的包含而具有非零均值。{help xtunitroot##B2000:Breitung (2000)} 检验采取不同的方法，在计算回归之前转换数据，以便可以使用标准 t 统计量。

{pstd}
Breitung 检验要求面板是强平衡的。

{pstd}
当指定 {opt robust} 选项时，报告一个对横截面误差项之间相关性的稳健的 t 统计量版本。这个统计量在 T 首先趋于无穷大，然后 N 也趋于无穷大时呈渐近正态分布。

{pstd}
Breitung 检验假设所有面板具有共同的自回归参数。原假设是所有序列包含单位根。备择假设是 rho < 1，因此序列是平稳的。{help xtunitroot##BD2005:Breitung and Das (2005)} 指出，在每个面板允许有自己的自回归参数的情况下，检验也具有功效，尽管在所有面板具有相同自回归参数的情况下，检验是最优的。

{pstd}
在 {help xtunitroot##B2000:Breitung (2000)} 的蒙特卡洛模拟表明，对于他考虑的中等大小的数据集 (N=20, T=30)，该检验比其他面板单位根检验具有显著更高的功效。


{marker IPS}{...}
{title:Im-Pesaran-Shin 检验}

{pstd}
LLC、HT 和 Breitung 检验的一个主要限制是假设所有面板具有相同的 rho 值。Im-Pesaran-Shin (IPS) ({help xtunitroot##IPS2003:2003}) 检验放松了共同 rho 的假设，允许每个面板具有自己的 rho_i。原假设是所有面板都有单位根 (Ho: rho_i = 0 对于所有 i)。备择假设是平稳面板的比例不为零。具体来说，如果我们让 N_1 表示平稳面板的数量，那么当 N 趋于无穷大时，比例 N_1/N 趋向于非零比例。这允许部分（但不是全部）面板在备择假设下具有单位根。

{pstd}
IPS 检验不要求强平衡数据，但每个个体时间序列不能有缺口。

{pstd}
当假设误差项是序列无关的时，可以通过指定 {cmd:lags(0)} 选项或根本不指定 {opt lag()} 选项，{cmd:xtunitroot ips} 报告 IPS 的 t-bar、t-tilde-bar 和 Z_t-tilde-bar 统计量。这些统计量假设时间段数 T 是固定的。当数据中没有缺口时，{cmd:xtunitroot ips} 报告 t-bar 统计量的确切临界值，这些值是基于面板数量 N 也固定的情况。其他两个统计量假设 N 趋于无穷大。

{pstd} 
为了使 Z_t-tilde-bar 的渐近正态分布成立，当数据是强平衡的且模型的确定性部分仅包含面板特定的均值时，T 必须至少为 5；如果还包括时间趋势，则至少为 6。如果数据不是强平衡的，那么 T 必须至少为 9 才能使渐近分布成立。如果这些 T 的限值未得到满足，则不报告 Z_t-tilde-bar 的 p 值。

{pstd}
当使用 {opt lags()} 选项与 {cmd:xtunitroot ips} 一起使用时，考虑到了误差项的序列相关性，此时报告 IPS 的 W_t-bar 统计量。该统计量在 T 首先趋于无穷大，然后 N 也趋于无穷大时呈渐近正态分布。 


{marker Fisher}{...}
{title:Fisher 类型检验}

{pstd}
Fisher 类型检验从元分析的角度进行面板数据单位根的检验。即，这些检验对每个面板分别进行单位根检验，然后将这些检验的 p 值结合以产生总体检验。 {cmd:xtunitroot fisher} 支持使用 {opt dfuller} 选项的 ADF 检验和使用 {opt pperron} 选项的 Phillips-Perron 检验。 任何 {cmd:dfuller} 或 {cmd:pperron} 所允许的选项均可指定（除了 {cmd:regress} 选项没有效果）。

{pstd}
{cmd:xtunitroot fisher} 不要求强平衡数据，个体序列可以有缺口。

{pstd}
这些检验假设 T 趋于无穷大。如果面板数量 N 固定，则这些检验对至少一个面板平稳的备择假设是一致的。如果允许 N 趋于无穷大，则没有单位根的面板数量必须与 N 持平增长，以使检测一致。

{pstd}
{cmd:xtunitroot fisher} 使用逆卡方、逆正态和逆逻辑变换结合 p 值。此外，报告了 {help xtunitroot##C2001:Choi (2001)} 提出的修改版逆卡方变换，以便在认为 N 趋于无穷大的情况下使用，因为在这种情况下，标准逆卡方检验统计量会趋向于无穷大。


{marker Hadri}{...}
{title:Hadri LM 平稳性检验}

{pstd}
迄今讨论的所有检验的原假设是数据包含单位根。正如 {help xtunitroot##H2000:Hadri (2000)} 所述，经典假设检验需要强有力的证据相反以拒绝原假设。因此，我们可能还希望进行一种假设原假设与备选假设反转的测试，以帮助确认或否定基于原假设为非平稳性的测试得出的结论。

{pstd}
Hadri LM 检验要求面板是强平衡的。

{pstd}
Hadri LM 检验的原假设为所有面板是平稳的，可能围绕线性趋势，如果指定了 {opt trend} 选项。备择假设是至少有一些面板包含一个单位根。该检验假设模型误差项呈正态分布。该检验在 T 趋于无穷大，然后 N 也趋于无穷大时成立。Hadri 声明他的检验适用于 T 较大而 N 适中的面板数据集，例如常用于跨国比较的 Penn World Tables。


{marker examples}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse pennxrate}

{pstd}
LLC 检验，使用 AIC 选择回归的滞后数，并且使用基于 Bartlett 核的 HAC 方差估计量和使用 Newey 和 West 方法选择的滞后数{p_end}
{phang2}{cmd:. xtunitroot llc lnrxrate if oecd, demean lags(aic 10) kernel(bartlett nwest)}{p_end}

{pstd}
HT 检验，从数据中去除横截面均值{p_end}
{phang2}{cmd:. xtunitroot ht lnrxrate, demean}{p_end}

{pstd}
在某些 OECD 国家上进行的 Breitung 检验的稳健版本，使用 3 个滞后进行预白化步骤{p_end}
{phang2}{cmd:. xtunitroot breitung lnrxrate if g7, lags(3) robust}{p_end}

{pstd}
IPS 检验，使用 AIC 选择回归的滞后数{p_end}
{phang2}{cmd:. xtunitroot ips lnrxrate, lags(aic 5)}{p_end}

{pstd}
基于 ADF 检验的 Fisher 类型检验，带有 3 个滞后，允许每个面板中存在漂移项{p_end}
{phang2}{cmd:. xtunitroot fisher lnrxrate, dfuller lags(3) drift}{p_end}

{pstd}
Hadri LM 检验平稳性，使用基于 5 个滞后的 Parzen 核的 HAC 方差估计量{p_end}
{phang2}{cmd:. xtunitroot hadri lnrxrate, kernel(parzen 5)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xtunitroot llc} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观测数量{p_end}
{synopt:{cmd:r(N_g)}}组数{p_end}
{synopt:{cmd:r(N_t)}}时间段数量 {p_end}
{synopt:{cmd:r(sig_adj)}}标准差调整{p_end}
{synopt:{cmd:r(mu_adj)}}均值调整{p_end}
{synopt:{cmd:r(delta)}} delta 的合并估计{p_end}
{synopt:{cmd:r(se_delta)}} delta 的合并标准误{p_end}
{synopt:{cmd:r(Var_ep)}}白化差分序列的方差{p_end}
{synopt:{cmd:r(sbar)}}长期与创新标准偏差之比的均值{p_end}
{synopt:{cmd:r(ttilde)}}滞后和差分后的每面板观测数{p_end}
{synopt:{cmd:r(td)}}未经调整的 t_delta 统计量{p_end}
{synopt:{cmd:r(p_td)}} t_delta 的 p 值{p_end}
{synopt:{cmd:r(tds)}}调整后的 t_delta_star 统计量{p_end}
{synopt:{cmd:r(p_tds)}} t_delta_star 的 p 值{p_end}
{synopt:{cmd:r(hac_lags)}}用于 HAC 方差估计的滞后{p_end}
{synopt:{cmd:r(hac_lagm)}}用于 HAC 方差估计的平均滞后{p_end}
{synopt:{cmd:r(adf_lags)}}用于 ADF 回归的滞后{p_end}
{synopt:{cmd:r(adf_lagm)}}用于 ADF 回归的平均滞后{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(test)}}{cmd:llc}{p_end}
{synopt:{cmd:r(hac_kernel)}}HAC 方差估计中使用的核{p_end}
{synopt:{cmd:r(hac_method)}}HAC 滞后选择算法{p_end}
{synopt:{cmd:r(adf_method)}}ADF 回归滞后选择标准{p_end}
{synopt:{cmd:r(demean)}}{cmd:demean}，如果数据进行了均值调整{p_end}
{synopt:{cmd:r(deterministics)}}{cmd:noconstant}、{cmd:constant} 或 {cmd:trend}{p_end}


{pstd}
{cmd:xtunitroot ht} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观测数量{p_end}
{synopt:{cmd:r(N_g)}}组数{p_end}
{synopt:{cmd:r(N_t)}}时间段数量 {p_end}
{synopt:{cmd:r(rho)}}估计的 rho{p_end}
{synopt:{cmd:r(Var_rho)}}原假设下 rho 的方差{p_end}
{synopt:{cmd:r(mean_rho)}}原假设下 rho 的均值{p_end}
{synopt:{cmd:r(z)}} z 统计量{p_end}
{synopt:{cmd:r(p)}} p 值{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(test)}}{cmd:ht}{p_end}
{synopt:{cmd:r(demean)}}{cmd:demean}，如果数据进行了均值调整{p_end}
{synopt:{cmd:r(deterministics)}}{cmd:noconstant}、{cmd:constant} 或 {cmd:trend}{p_end}
{synopt:{cmd:r(altt)}}{cmd:altt}，如果指定了 {cmd:altt}{p_end}


{pstd}
{cmd:xtunitroot breitung} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观测数量{p_end}
{synopt:{cmd:r(N_g)}}组数{p_end}
{synopt:{cmd:r(N_t)}}时间段数量 {p_end}
{synopt:{cmd:r(lambda)}}检验统计量 lambda{p_end}
{synopt:{cmd:r(lrobust)}}稳健统计量 lambda_R{p_end}
{synopt:{cmd:r(p)}}lambda 的 p 值{p_end}
{synopt:{cmd:r(p_lrobust)}}lambda_R 的 p 值{p_end}
{synopt:{cmd:r(lags)}}用于预白化的滞后数量{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(test)}}{cmd:breitung}{p_end}
{synopt:{cmd:r(demean)}}{cmd:demean}，如果数据进行了均值调整{p_end}
{synopt:{cmd:r(robust)}}{cmd:robust}，如果指定{p_end}
{synopt:{cmd:r(deterministics)}}{cmd:noconstant}、{cmd:constant} 或 {cmd:trend}{p_end}


{pstd}
{cmd:xtunitroot ips} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观测数量{p_end}
{synopt:{cmd:r(N_g)}}组数{p_end}
{synopt:{cmd:r(N_t)}}时间段数量 {p_end}
{synopt:{cmd:r(tbar)}}检验统计量 t-bar{p_end}
{synopt:{cmd:r(cv_10)}}t-bar 的确切 10% 临界值{p_end}
{synopt:{cmd:r(cv_5)}}t-bar 的确切 5% 临界值{p_end}
{synopt:{cmd:r(cv_1)}}t-bar 的确切 1% 临界值{p_end}
{synopt:{cmd:r(zt)}}检验统计量 Z_t-bar{p_end}
{synopt:{cmd:r(ttildebar)}}检验统计量 t-tilde-bar{p_end}
{synopt:{cmd:r(zttildebar)}}检验统计量 Z_t-tilde-bar{p_end}
{synopt:{cmd:r(p_zttildebar)}} Z_t-tilde-bar 的 p 值{p_end}
{synopt:{cmd:r(wtbar)}}检验统计量 W_t-bar{p_end}
{synopt:{cmd:r(p_wtbar)}} W_t-bar 的 p 值 {p_end}
{synopt:{cmd:r(lags)}}用于 ADF 回归的滞后{p_end}
{synopt:{cmd:r(lagm)}}用于 ADF 回归的平均滞后{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(test)}}{cmd:ips}{p_end}
{synopt:{cmd:r(demean)}}{cmd:demean}，如果数据进行了均值调整{p_end}
{synopt:{cmd:r(adf_method)}}ADF 回归滞后选择标准{p_end}
{synopt:{cmd:r(deterministics)}}{cmd:constant} 或 {cmd:trend}{p_end}


{pstd}
{cmd:xtunitroot fisher} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观测数量{p_end}
{synopt:{cmd:r(N_g)}}组数{p_end}
{synopt:{cmd:r(N_t)}}时间段数量 {p_end}
{synopt:{cmd:r(P)}}逆卡方 P 统计量{p_end}
{synopt:{cmd:r(df_P)}}P 统计量的自由度{p_end}
{synopt:{cmd:r(p_P)}}P 统计量的 p 值{p_end}
{synopt:{cmd:r(L)}}逆逻辑 L 统计量{p_end}
{synopt:{cmd:r(df_L)}}L 统计量的自由度{p_end}
{synopt:{cmd:r(p_L)}}L 统计量的 p 值{p_end}
{synopt:{cmd:r(Z)}}逆正态 Z 统计量{p_end}
{synopt:{cmd:r(p_Z)}}Z 统计量的 p 值{p_end}
{synopt:{cmd:r(Pm)}}修改版逆卡方 P_m 统计量{p_end}
{synopt:{cmd:r(p_Pm)}}P_m 统计量的 p 值{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(test)}}{cmd:fisher}{p_end}
{synopt:{cmd:r(urtest)}}{cmd:dfuller} 或 {cmd:pperron}{p_end}
{synopt:{cmd:r(options)}}传递给 {cmd:dfuller} 或 {cmd:pperron} 的选项{p_end}
{synopt:{cmd:r(demean)}}{cmd:demean}，如果数据进行了均值调整{p_end}


{pstd}
{cmd:xtunitroot hadri} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观测数量{p_end}
{synopt:{cmd:r(N_g)}}组数{p_end}
{synopt:{cmd:r(N_t)}}时间段数量 {p_end}
{synopt:{cmd:r(var)}} Ho 下 z 的方差{p_end}
{synopt:{cmd:r(mu)}} Ho 下 z 的均值{p_end}
{synopt:{cmd:r(z)}}检验统计量 z{p_end}
{synopt:{cmd:r(p)}} z 的 p 值{p_end}
{synopt:{cmd:r(lags)}}用于 HAC 方差的滞后{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(test)}}{cmd:hadri}{p_end}
{synopt:{cmd:r(demean)}}{cmd:demean}，如果数据进行了均值调整{p_end}
{synopt:{cmd:r(robust)}}{cmd:robust}，如果指定{p_end}
{synopt:{cmd:r(kernel)}}HAC 方差的核{p_end}
{synopt:{cmd:r(deterministics)}}{cmd:constant} 或 {cmd:trend}{p_end}


{marker references}{...}
{title:参考文献}

{marker B2008}{...}
{phang}
Baltagi, B. H. 2008.
{browse "http://www.stata.com/bookstore/eapd.html":{it:面板数据的计量经济分析}. 第 4 版.}
纽约: Wiley.

{marker B2000}{...}
{phang}
Breitung, J. 2000.
一些面板数据单位根检验的局部功效。
见 {it:计量经济学进展，第 15 卷:}
{it:非平稳面板，面板协整和动态面板},
编辑：B. H. Baltagi，第 161-178 页。阿姆斯特丹: JAI Press.

{marker BD2005}{...}
{phang}
Breitung, J. 和 S. Das. 2005.
在横截面依赖下的面板单位根检验。
{it:Statistica Neerlandica} 59: 414-433.

{marker C2001}{...}
{phang}
Choi, I. 2001.
面板数据的单位根检验。
{it:国际货币与金融杂志} 20: 249-272.

{marker H2000}{...}
{phang}
Hadri, K. 2000.
异质面板数据中的平稳性检验。
{it:计量经济学杂志} 3: 148-161.

{marker HT1999}{...}
{phang}
Harris, R. D. F. 和 E. Tzavalis. 1999.
固定时间维度下动态面板中的单位根推断。
{it:计量经济学杂志} 91: 201-226.

{marker IPS2003}{...}
{phang}
Im, K. S.、M. H. Pesaran 和 Y. Shin. 2003.
异质面板中的单位根检验。
{it:计量经济学杂志} 115: 53-74.

{marker LLC2002}{...}
{phang}
Levin, A.、C.-F. Lin 和 C.-S. J. Chu. 2002.
面板数据中的单位根检验：渐近和有限样本特性。
{it:计量经济学杂志} 108: 1-24。

{marker NW1994}{...}
{phang}
Newey, W. K. 和 K. D. West. 1994.
协方差矩阵估计中的自动滞后选择。
{it:经济研究评论} 61: 631-653。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtunitroot.sthlp>}