{smcl}
{* *! version 1.1.9  19oct2017}{...}
{viewerdialog centile "dialog centile"}{...}
{vieweralsosee "[R] centile" "mansection R centile"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ci" "help ci_zh"}{...}
{vieweralsosee "[D] pctile" "help pctile_zh"}{...}
{vieweralsosee "[R] summarize" "help summarize_zh"}{...}
{viewerjumpto "Syntax" "centile_zh##syntax"}{...}
{viewerjumpto "Menu" "centile_zh##menu"}{...}
{viewerjumpto "Description" "centile_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "centile_zh##linkspdf"}{...}
{viewerjumpto "Options" "centile_zh##options"}{...}
{viewerjumpto "Examples" "centile_zh##examples"}{...}
{viewerjumpto "Stored results" "centile_zh##results"}{...}
{viewerjumpto "Reference" "centile_zh##reference"}
{help centile:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] centile} {hline 2}}报告分位数和置信区间{p_end}
{p2col:}({mansection R centile:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:centile} [{varlist}] {ifin}
[{cmd:,}
{it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{opth c:entile(numlist)}}报告指定的分位数; 默认是 {cmd:centile(50)}{p_end}

{syntab:选项}
{synopt :{opt cc:i}}二项精确；保守置信区间{p_end}
{synopt :{opt n:ormal}}正态分布，基于观察到的分位数{p_end}
{synopt :{opt m:eansd}}正态分布，基于均值和标准差{p_end}
{synopt :{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt by} 和 {opt statsby} 是允许的；见 {help prefix_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 概要、表格和测试 >}
    {bf:摘要与描述统计 > 带置信区间的分位数}


{marker description}{...}
{title:描述}

{pstd}
{cmd:centile} 估计指定的分位数并计算置信区间。如果没有指定 {varlist}，{cmd:centile} 将为数据集中所有变量计算分位数。如果未指定分位数，则报告中位数。

{pstd}
默认情况下，{cmd:centile} 使用一种二项方法来获得置信区间，该方法不对变量的潜在分布作出假设。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R centile快速入门:快速入门}

        {mansection R centile备注和示例:备注和示例}

        {mansection R centile方法和公式:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth centile(numlist)} 指定要报告的分位数。默认是显示第50分位数。指定 {cmd:centile(5)} 请求报告第五分位数。指定 {cmd:centile(5 50 95)} 请求报告第5，第50和第95分位数。指定 {cmd:centile(10(10)90)} 请求报告第10，第20，...,第90分位数。

{dlgtab:选项}

{phang}
{opt cci} （保守置信区间）强制置信区间的上下限恰好落在样本值上。使用 {opt cci} 选项显示的置信区间稍微宽于使用默认值（{opt nocci}）的置信区间。

{phang}
{opt normal} 导致使用正常分布分位数的标准误差公式来计算置信区间，公式由 {help centile##KS1969:Kendall 和 Stuart (1969, 237)} 提供。{opt normal} 选项在您希望获得经验分位数时非常有用——即基于样本秩统计量而不是均值和标准差的分位数，并且愿意假设正态性。

{phang}
{opt meansd} 导致根据样本均值和标准差计算分位数和置信区间，并假设正态性。

{phang}
{opt level(#)} 指定置信区间的置信水平，以百分比表示。默认是 {cmd:level(95)} 或由 {helpb set level} 设置的值。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}计算数据集中所有变量的第50分位数{p_end}
{phang2}{cmd:. centile}{p_end}

{pstd}计算 {cmd:price} 的第50分位数{p_end}
{phang2}{cmd:. centile price}{p_end}

{pstd}计算 {cmd:price} 的第50分位数，显示99%置信区间{p_end}
{phang2}{cmd:. centile price, level(99)}{p_end}

{pstd}计算 {cmd:price} 的第5，第50和第95分位数{p_end}
{phang2}{cmd:. centile price, centile(5 50 95)}{p_end}

{pstd}计算 {cmd:price} 的第10，第20，第30，...,第90分位数{p_end}
{phang2}{cmd:. centile price, centile(10(10)90)}{p_end}

{pstd}计算 {cmd:price} 的第10分位数，假设正态性{p_end}
{phang2}{cmd:. centile price, centile(10) normal}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:centile} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数{p_end}
{synopt:{cmd:r(n_cent)}}请求的分位数数量{p_end}
{synopt:{cmd:r(c_}{it:#}{cmd:)}}第 {it:#} 个分位数的值{p_end}
{synopt:{cmd:r(lb_}{it:#}{cmd:)}}第 {it:#} 个请求的分位数的下置信区间{p_end}
{synopt:{cmd:r(ub_}{it:#}{cmd:)}}第 {it:#} 个请求的分位数的上置信区间{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(centiles)}}请求的分位数{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考}

{marker KS1969}{...}
{phang}
Kendall, M. G., 和 A. Stuart. 1969.
{it:统计学高级理论，卷 1：分布理论}. 第3版.
伦敦：Griffin.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <centile.sthlp>}