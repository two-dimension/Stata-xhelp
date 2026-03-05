{smcl}
{* *! version 1.1.8  19oct2017}{...}
{viewerdialog wntestq "dialog wntestq"}{...}
{vieweralsosee "[TS] wntestq" "mansection TS wntestq"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] corrgram" "help corrgram_zh"}{...}
{vieweralsosee "[TS] cumsp" "help cumsp_zh"}{...}
{vieweralsosee "[TS] pergram" "help pergram_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] wntestb" "help wntestb_zh"}{...}
{viewerjumpto "Syntax" "wntestq_zh##syntax"}{...}
{viewerjumpto "Menu" "wntestq_zh##menu"}{...}
{viewerjumpto "Description" "wntestq_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "wntestq_zh##linkspdf"}{...}
{viewerjumpto "Option" "wntestq_zh##option"}{...}
{viewerjumpto "Examples" "wntestq_zh##examples"}{...}
{viewerjumpto "Stored results" "wntestq_zh##results"}
{help wntestq:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[TS] wntestq} {hline 2}}Portmanteau（Q）白噪声检验{p_end}
{p2col:}({mansection TS wntestq:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}{cmd:wntestq} {varname} {ifin} [{cmd:,} {opt l:ags(#)}]

{p 4 6 2}您必须在使用 {cmd:wntestq} 之前 {cmd:tsset} 您的数据；请参见
{help tsset_zh:[TS] tsset}。
同时，在指定的样本中，时间序列必须密集（时间变量中无缺失且无间隔）。{p_end}
{p 4 6 2}{it:varname} 可以包含时间序列运算符；请参见 {help tsvarlist_zh}。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 检验 > Portmanteau白噪声检验}


{marker description}{...}
{title:描述}

{pstd}
{cmd:wntestq} 进行 Portmanteau（或 Q）白噪声检验。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS wntestqQuickstart:快速开始}

        {mansection TS wntestqRemarksandexamples:备注和示例}

        {mansection TS wntestqMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt lags(#)} 指定要计算的自相关数。默认使用 min{floor(n/2) - 2, 40}，其中 floor(n/2) 为小于或等于 n/2 的最大整数。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. drop _all}{p_end}
{phang2}{cmd:. set obs 100}{p_end}
{phang2}{cmd:. generate x1 = rnormal()}{p_end}
{phang2}{cmd:. generate time = _n}{p_end}
{phang2}{cmd:. tsset time}{p_end}

{pstd}对序列 {cmd:x1} 进行 Portmanteau（或 Q）白噪声检验{p_end}
{phang2}{cmd:. wntestq x1}{p_end}

{pstd}与上面相同，但计算 50 个自相关{p_end}
{phang2}{cmd:. wntestq x1, lags(50)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:wntestq} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(stat)}}Q统计量{p_end}
{synopt:{cmd:r(df)}}自由度{p_end}
{synopt:{cmd:r(p)}}概率值{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <wntestq.sthlp>}