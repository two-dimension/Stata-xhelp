{smcl}
{* *! version 1.0.6  21mar2019}{...}
{vieweralsosee "[PSS-4] 不平衡设计" "mansection PSS-4 Unbalanceddesigns"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] 检验能力" "help power_zh"}{...}
{vieweralsosee "[PSS-3] 置信区间宽度" "help ciwidth_zh"}{...}
{vieweralsosee "[PSS-5] 术语表" "help pss_glossary_zh"}{...}
{viewerjumpto "语法" "unbalanced designs##syntax"}{...}
{viewerjumpto "描述" "unbalanced designs##description"}{...}
{viewerjumpto "PDF 文档链接" "unbalanced_designs_zh##linkspdf"}{...}
{viewerjumpto "选项" "unbalanced designs##options"}{...}
{viewerjumpto "示例" "unbalanced designs##examples"}
{help unbalanced_designs:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[PSS-4] 不平衡设计} {hline 2}}不平衡设计的规范{p_end}
{p2col:}({mansection PSS-4 Unbalanceddesigns:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
两个样本，计算不平衡设计的样本大小

{p 6 8 2}
计算总样本大小

{p 8 16 2}
{it:cmdname} ...{cmd:,} {opth nrat:io(numlist)} 
[{opt nfrac:tional}] ...

{p 6 8 2}
给定另一个样本计算一组样本大小

{p 8 16 2}
{it:cmdname} ..., {cmd:n}{it:#}{cmd:(}{it:{help numlist_zh}}{cmd:)} 
{cmd:compute(N1}|{cmd:N2)} 
[{opt nfrac:tional}] ...


{pstd}
两个样本，为不平衡设计指定样本大小

{p 6 8 2}
指定总样本大小和分配比例

{p 8 16 2}
{it:cmdname} ...{cmd:,} {opth n(numlist)} {opth nrat:io(numlist)} 
[{opt nfrac:tional}] ...

{p 6 8 2}
指定其中一个组的样本大小和分配比例

{p 8 16 2}
{it:cmdname} ...{cmd:,} {cmd:n}{it:#}{cmd:(}{it:{help numlist_zh}}{cmd:)} {opth nrat:io(numlist)} 
[{opt nfrac:tional}] ...

{p 6 8 2}
指定总样本大小和其中一个组的样本大小

{p 8 16 2}
{it:cmdname} ...{cmd:,} {opt n(numlist)} {cmd:n}{it:#}{cmd:(}{it:{help numlist_zh}}{cmd:)} ...

{p 6 8 2}
指定组大小

{p 8 16 2}
{it:cmdname} ...{cmd:,} {opth n1(numlist)} {opth n2(numlist)} ...


{phang}
{it:cmdname} 可以是 {cmd:power} 用于功效分析，或 {cmd:ciwidth} 用于精度分析。


{marker twosampopts}{...}
{synoptset 20 tabbed}{...}
{synopthdr :twosampleopts}
{synoptline}
{p2coldent :* {opth n(numlist)}}总样本大小{p_end}
{p2coldent :* {opth n1(numlist)}}对照组样本大小{p_end}
{p2coldent :* {opth n2(numlist)}}实验组样本大小{p_end}
{p2coldent :* {opth nrat:io(numlist)}}样本大小比 {cmd:N2/N1}; 默认值为 {cmd:nratio(1)}，意味着组大小相等{p_end}
{synopt: {cmd:compute(N1}|{cmd:N2)}}给定 {cmd:N2} 计算 {cmd:N1} 或给定 {cmd:N1} 计算 {cmd:N2}{p_end}
{synopt: {cmdab:nfrac:tional}}允许小数样本大小{p_end}
{synoptline}
{p2colreset}{...}
包含 help pss_numlist


{marker description}{...}
{title:描述}

{pstd}
此条目描述了用于两样本研究的不平衡设计的规范，包括对两样本假设检验的功效和样本大小分析，以及对两样本置信区间的精度和样本大小分析。请参阅 {manhelp power PSS-2} 以获取 {cmd:power} 命令在功效分析中的一般介绍，以及 {manhelp ciwidth PSS-3} 以获取 {cmd:ciwidth} 命令在精度分析中的一般介绍。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection PSS-4 UnbalanceddesignsRemarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{marker mainopts}{...}
{dlgtab:主要}

{* 包含 help pss_twosamplesdes *}
{phang}
{opth n(numlist)} 指定研究中的受试者总数。

{pmore}
在与 {cmd:power} 一起使用时，此样本大小用于功效或效应大小的确定。如果指定了 {cmd:n()}，则计算功效。如果同时指定了 {cmd:n()} 和 {cmd:power()} 或 {cmd:beta()}，则计算在研究中可能检测到的最小效应大小。

{pmore}
在与 {cmd:ciwidth} 一起使用时，此样本大小用于计算置信区间宽度和置信区间宽度的概率。

{phang}
{opth n1(numlist)} 指定对照组中的受试者数量。

{pmore}
在与 {cmd:power} 一起使用时，此样本大小用于功效或效应大小的确定。

{pmore}
在与 {cmd:ciwidth} 一起使用时，此样本大小用于计算置信区间宽度和置信区间宽度的概率。

{phang}
{opth n2(numlist)} 指定实验组中的受试者数量。用于与以上提到的 {opt n1(numlist)} 相同的计算。

{phang}
{opth nratio(numlist)} 指定实验组相对于对照组的样本大小比 {cmd:N2/N1}。默认值为 {cmd:nratio(1)}，意味着两个组之间的均等分配。

{pmore}
在与 {cmd:power} 一起使用时，此比率用于两样本检验的功效和效应大小的确定。

{pmore}
在与 {cmd:ciwidth} 一起使用时，此比率用于计算两样本置信区间的宽度和置信区间宽度的概率。

{phang}
{cmd:compute(N1}{c |}{cmd:N2)} 请求在给定另一个组的情况下计算其中一个组的样本大小，而不是总样本大小。要计算对照组的样本大小，必须指定 {cmd:compute(N1)} 并在 {cmd:n2()} 中指定实验组样本大小。或者，要计算实验组的样本大小，必须指定 {cmd:compute(N2)} 并在 {cmd:n1()} 中指定对照组样本大小。

{phang}
{opt nfractional} 指定允许小数样本大小。当指定此选项时，在中间计算中使用小数样本大小，并在输出中也显示小数样本大小。


{marker examples}{...}
{title:示例}

{pstd}
   计算不平衡设计所需的样本大小
    假设对照组均值为 0，实验组均值为 1，
    显著性水平为 5%，所需功效为 80%；假设
    实验组的大小是对照组的两倍{p_end}
{phang2}{cmd:. power twomeans 0 1, nratio(2)}

{pstd}
   计算上一个示例中测试的功效，假设样本大小为 30{p_end}
{phang2}{cmd:. power twomeans 0 1, n(30) nratio(2)}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <unbalanced_designs.sthlp>}