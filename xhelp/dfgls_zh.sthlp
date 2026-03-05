{smcl}
{* *! version 1.1.12  19oct2017}{...}
{viewerdialog dfgls "dialog dfgls"}{...}
{vieweralsosee "[TS] dfgls" "mansection TS dfgls"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] dfuller" "help dfuller_zh"}{...}
{vieweralsosee "[TS] pperron" "help pperron_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[XT] xtunitroot" "help xtunitroot_zh"}{...}
{viewerjumpto "Syntax" "dfgls_zh##syntax"}{...}
{viewerjumpto "Menu" "dfgls_zh##menu"}{...}
{viewerjumpto "Description" "dfgls_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "dfgls_zh##linkspdf"}{...}
{viewerjumpto "Options" "dfgls_zh##options"}{...}
{viewerjumpto "Examples" "dfgls_zh##examples"}{...}
{viewerjumpto "Stored results" "dfgls_zh##results"}{...}
{viewerjumpto "References" "dfgls_zh##references"}
{help dfgls:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[TS] dfgls} {hline 2}}DF-GLS 单根检验{p_end}
{p2col:}({mansection TS dfgls:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:dfgls}
{varname}
{ifin}
[{cmd:,}
{it:options}]

{synoptset 13 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opt m:axlag(#)}}使用 {it:#} 作为 Dickey-Fuller GLS 回归的最高滞后阶数 {p_end}
{synopt:{opt not:rend}}序列是围绕均值平稳，而不是围绕线性时间趋势 {p_end}
{synopt:{opt ers}}提供从 {help dfgls##ERS1996:Elliott, Rothenberg, and Stock (1996)} 获取的插值临界值 {p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
在使用 {opt dfgls} 之前，您必须 {opt tsset} 数据；参见 {manhelp tsset TS}。
{p_end}
{p 4 6 2}
{it:varname} 可以包含时间序列运算符；参见 {help tsvarlist_zh}。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 检验 > DF-GLS 单根检验}



{marker description}{...}
{title:描述}

{pstd}
{opt dfgls} 执行一个修改过的 Dickey-Fuller t 检验，以检测序列中的单根，该序列经过广义最小二乘回归转换。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS dfglsQuickstart:快速入门}

        {mansection TS dfglsRemarksandexamples:备注和示例}

        {mansection TS dfglsMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt maxlag(#)} 设置 k 的值，即 Dickey-Fuller 回归中一阶差分去趋势变量的最高滞后阶数。默认情况下，{opt dfgls} 根据 {help dfgls##S1989:Schwert (1989)} 提出的方式设置 k；即 {opt dfgls} 设置 k_max=floor[12{(T+1)/100}^(0.25)]。

{phang}
{opt notrend} 指定备择假设为序列围绕均值平稳，而不是围绕线性时间趋势。默认情况下，包含一个趋势。

{phang}
{opt ers} 指定 {opt dfgls} 应展示从 {help dfgls##ERS1996:Elliott, Rothenberg, and Stock (1996)} 的表格中获得的插值临界值，这些临界值是通过模拟获得的。详细信息请参阅 {it:{mansection TS dfglsMethodsandformulascritvalues:临界值}} 在 {it:方法和公式} 下 {bind:{bf:[TS] dfgls}}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lutkepohl2}

{pstd}检验 {cmd:ln_inv} 是否存在单根{p_end}
{phang2}{cmd:. dfgls ln_inv}{p_end}

{pstd}与上述相同，但使用 8 作为 Dickey-Fuller GLS 回归的最高滞后阶数{p_end}
{phang2}{cmd:. dfgls ln_inv, maxlag(8)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
如果指定了 {cmd:maxlag(0)}，则 {cmd:dfgls} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(rmse0)}}均方根误差 {p_end}
{synopt:{cmd:r(dft0)}}DF-GLS 统计量 {p_end}

{pstd}
否则，{cmd:dfgls} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(maxlag)}}最高滞后阶数 k {p_end}
{synopt:{cmd:r(N)}}观测值数量 {p_end}
{synopt:{cmd:r(sclag)}}根据 Schwarz 标准选择的滞后 {p_end}
{synopt:{cmd:r(maiclag)}}根据修改过的 AIC 方法选择的滞后 {p_end}
{synopt:{cmd:r(optlag)}}根据顺序-t 方法选择的滞后 {p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(results)}}k，MAIC，SIC，均方根误差和 DF-GLS 统计量 {p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker ERS1996}{...}
{phang}
Elliott, G., T. J. Rothenberg, and J. H. Stock. 1996. Efficient tests for an
autoregressive unit root. {it:Econometrica} 64: 813-836.

{marker S1989}{...}
{phang}
Schwert, G. W. 1989. Tests for unit roots: A Monte Carlo investigation.
{it:Journal of Business and Economic Statistics} 2: 147-159.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dfgls.sthlp>}