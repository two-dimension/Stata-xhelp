{smcl}
{* *! version 1.1.9  19oct2017}{...}
{viewerdialog pperron "dialog pperron"}{...}
{vieweralsosee "[TS] pperron" "mansection TS pperron"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] dfgls" "help dfgls_zh"}{...}
{vieweralsosee "[TS] dfuller" "help dfuller_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[XT] xtunitroot" "help xtunitroot_zh"}{...}
{viewerjumpto "Syntax" "pperron_zh##syntax"}{...}
{viewerjumpto "Menu" "pperron_zh##menu"}{...}
{viewerjumpto "Description" "pperron_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "pperron_zh##linkspdf"}{...}
{viewerjumpto "Options" "pperron_zh##options"}{...}
{viewerjumpto "Examples" "pperron_zh##examples"}{...}
{viewerjumpto "Stored results" "pperron_zh##results"}
{help pperron:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[TS] pperron} {hline 2}}Phillips-Perron 单根检验{p_end}
{p2col:}({mansection TS pperron:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:pperron}
{varname}
{ifin}
[{cmd:,} {it:options}]

{synoptset 14 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opt nocons:tant}}抑制常数项 {p_end}
{synopt:{opt tr:end}}在回归中包含趋势项 {p_end}
{synopt:{opt reg:ress}}显示回归表 {p_end}
{synopt:{opt l:ags(#)}}使用 {it:#} 个 Newey-West 滞后 {p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
在使用 {opt pperron} 前，您必须 {cmd:tsset} 数据；见 {help tsset_zh:[TS] tsset}.{p_end}
{p 4 6 2}
{it:varname} 可以包含时间序列运算符；见 {help tsvarlist_zh}。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 检验 > Phillips-Perron 单根检验}


{marker description}{...}
{title:描述}

{pstd}
{opt pperron} 执行 Phillips-Perron 测试以检验变量是否具有单根。零假设是变量包含单根，而备择假设是该变量是由平稳过程生成的。
{opt pperron} 使用 Newey-West 标准误差来考虑序列相关性，而在 {help dfuller_zh} 中实现的扩展 Dickey-Fuller 测试则使用一阶差分变量的额外滞后项。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS pperronQuickstart:快速入门}

        {mansection TS pperronRemarksandexamples:备注和示例}

        {mansection TS pperronMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt noconstant} 在模型中抑制常数项（截距）。

{phang}
{opt trend} 指定在相关回归中包含趋势项。如果指定了 {opt noconstant}，则不能指定此选项。

{phang}
{opt regress} 指定输出中显示相关的回归表。默认情况下，不会生成回归表。

{phang}
{opt lags(#)} 指定用于计算标准误差的 Newey-West 滞后数量。默认使用 int{4(T/100)^(2/9)} 个滞后。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse air2}

{pstd}检验 air 是否具有单根{p_end}
{phang2}{cmd:. pperron air}

{pstd}与上述相同，但使用四个 Newey-West 滞后计算标准误差{p_end}
{phang2}{cmd:. pperron air, lags(4)}

{pstd}与上述相同，但在相关回归中包括趋势项{p_end}
{phang2}{cmd:. pperron air, lags(4) trend}

{pstd}与上述相同，但在输出中显示相关回归表{p_end}
{phang2}{cmd:. pperron air, lags(4) trend regress}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:pperron} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观测值数量{p_end}
{synopt:{cmd:r(lags)}}使用的滞后差分数量{p_end}
{synopt:{cmd:r(pval)}}MacKinnon 近似 p 值（如果指定了 {cmd:noconstant} 则不包含）{p_end}
{synopt:{cmd:r(Zt)}}Phillips-Perron tau 测试统计量{p_end}
{synopt:{cmd:r(Zrho)}}Phillips-Perron rho 测试统计量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <pperron.sthlp>}