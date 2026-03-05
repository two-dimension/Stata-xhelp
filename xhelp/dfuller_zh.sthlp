{smcl}
{* *! version 1.1.7  30oct2017}{...}
{viewerdialog dfuller "dialog dfuller"}{...}
{vieweralsosee "[TS] dfuller" "mansection TS dfuller"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] dfgls" "help dfgls_zh"}{...}
{vieweralsosee "[TS] pperron" "help pperron_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[XT] xtunitroot" "help xtunitroot_zh"}{...}
{viewerjumpto "Syntax" "dfuller_zh##syntax"}{...}
{viewerjumpto "Menu" "dfuller_zh##menu"}{...}
{viewerjumpto "Description" "dfuller_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "dfuller_zh##linkspdf"}{...}
{viewerjumpto "Options" "dfuller_zh##options"}{...}
{viewerjumpto "Examples" "dfuller_zh##examples"}{...}
{viewerjumpto "Stored results" "dfuller_zh##results"}
{help dfuller:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[TS] dfuller} {hline 2}}增强的迪基-福勒单位根检验{p_end}
{p2col:}({mansection TS dfuller:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:dfuller}
{varname}
{ifin}
[{cmd:,} {it:选项}]

{synoptset 14 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opt nocons:tant}}在回归中抑制常数项{p_end}
{synopt:{opt tr:end}}在回归中包含趋势项{p_end}
{synopt:{opt dr:ift}}在回归中包含漂移项{p_end}
{synopt:{opt reg:ress}}显示回归表{p_end}
{synopt:{opt l:ags(#)}}包含{it:#} 个滞后差分{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
在使用 {opt dfuller} 之前，您必须 {opt tsset} 数据；请参阅 {manhelp tsset TS}。
{p_end}
{p 4 6 2}
{it:varname} 可以包含时间序列运算符；请参阅 {help tsvarlist_zh}。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 检验 > 增强的迪基-福勒单位根检验}


{marker description}{...}
{title:描述}

{pstd}
{opt dfuller} 执行增强的迪基-福勒检验，以判断变量是否符合单位根过程。  
原假设是该变量包含单位根，而备择假设是该变量由平稳过程生成。
您可以选择性地排除常数项、包含趋势项，并在回归中包含变量的滞后差分值。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS dfullerQuickstart:快速入门}

        {mansection TS dfullerRemarksandexamples:备注和示例}

        {mansection TS dfullerMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt noconstant} 抑制模型中的常数项（截距），并表明原假设下的过程是随机游走且没有漂移。 {opt noconstant} 不能与 {opt trend} 或 {opt drift} 选项同时使用。

{phang}
{opt trend} 指定在关联回归中包含趋势项，并且原假设下的过程是随机游走，
可能带有漂移。此选项不能与 {opt noconstant} 或 {opt drift} 选项同时使用。

{phang}
{opt drift} 表明原假设下的过程是带有非零漂移的随机游走。此选项不能与 {opt noconstant} 或 {opt trend} 选项同时使用。

{phang}
{opt regress} 指定在输出中显示关联回归表。默认情况下，不生成回归表。

{phang}
{opt lags(#)} 指定要在协变量列表中包含的滞后差分项的数量。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse air2}

{pstd}检验 {cmd:air} 是否符合单位根过程{p_end}
{phang2}{cmd:. dfuller air}

{pstd}与上述相同，但包含 3 个滞后差分和一个趋势项{p_end}
{phang2}{cmd:. dfuller air, lags(3) trend}

{pstd}与上述相同，但还显示回归表{p_end}
{phang2}{cmd:. dfuller air, lags(3) trend regress}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:dfuller} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察值数量{p_end}
{synopt:{cmd:r(lags)}}滞后差分的数量{p_end}
{synopt:{cmd:r(Zt)}}迪基-福勒检验统计量{p_end}
{synopt:{cmd:r(cv1)}}1% 临界值{p_end}
{synopt:{cmd:r(cv5)}}5% 临界值{p_end}
{synopt:{cmd:r(cv10)}}10% 临界值{p_end}
{synopt:{cmd:r(p)}}麦金农近似 p 值（如果关联回归中包含常数或趋势）{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dfuller.sthlp>}