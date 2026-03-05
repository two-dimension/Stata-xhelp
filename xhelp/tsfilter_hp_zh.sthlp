{smcl}
{* *! version 1.0.15  19sep2018}{...}
{viewerdialog "tsfilter hp" "dialog tsfilter, message(-hp-)"}{...}
{vieweralsosee "[TS] tsfilter hp" "mansection TS tsfilterhp"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsfilter" "help tsfilter_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] format" "help format_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] tssmooth" "help tssmooth_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{vieweralsosee "" "--"}{...}
{viewerjumpto "Syntax" "tsfilter hp##syntax"}{...}
{viewerjumpto "Menu" "tsfilter hp##menu"}{...}
{viewerjumpto "Description" "tsfilter hp##description"}{...}
{viewerjumpto "Links to PDF documentation" "tsfilter_hp_zh##linkspdf"}{...}
{viewerjumpto "Options" "tsfilter hp##options"}{...}
{viewerjumpto "Example" "tsfilter hp##example"}{...}
{viewerjumpto "Stored results" "tsfilter hp##results"}
{help tsfilter_hp:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[TS] tsfilter hp} {hline 2}}霍德里克-普雷斯科特时间序列滤波器{p_end}
{p2col:}({mansection TS tsfilterhp:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
滤波一个变量

{p 8 18 2}
{cmd:tsfilter hp}
{dtype}
{newvar} {cmd:=} {help varname_zh:{it:varname}}
{ifin} [{cmd:,} {it:options}]


{pstd}
滤波多个变量，使用唯一变量名

{p 8 18 2}
{cmd:tsfilter hp}
{dtype}
{help newvarlist_zh:{it:newvarlist}} {cmd:=} {help varlist_zh:{it:varlist}}
{ifin} [{cmd:,} {it:options}]


{pstd}
滤波多个变量，使用公共名称前缀

{p 8 18 2}
{cmd:tsfilter hp}
{dtype}
{it:{help newvarlist##stub*:stub}}{cmd:*} {cmd:=} {help varlist_zh:{it:varlist}}
{ifin} [{cmd:,} {it:options}]
{p_end}


{synoptset 25 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主}
{synopt:{opt s:mooth(#)}}霍德里克-普雷斯科特滤波器的平滑参数{p_end}

{syntab:趋势}
{p2col 7 32 32 2:{cmdab:t:rend(}{newvar} | {it:{help newvarlist_zh}} | {it:{help newvarlist##stub*:stub}}{cmd:*)}}{break}将趋势成分保存到新变量中{p_end}

{syntab:增益}
{synopt:{opt g:ain(gainvar anglevar)}}保存增益和角频率{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
您必须 {opt tsset} 或 {opt xtset} 数据才能使用 {opt tsfilter}；
请参见 {manhelp tsset TS} 和 {manhelp xtset XT}.{p_end}
{p 4 6 2}
{it:varname} 和 {it:varlist} 可以包含时间序列运算符；请参见 {help tsvarlist_zh}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 循环成分过滤器 >}
    {bf:霍德里克-普雷斯科特}
{p_end}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tsfilter hp} 使用霍德里克-普雷斯科特高通滤波器将时间序列分离为趋势和循环成分。趋势成分可以包含确定性趋势或随机趋势。平滑参数决定了驱动平稳循环成分的随机周期。

{pstd}
请参见 {manlink TS tsfilter} 了解在 {cmd:tsfilter hp} 中实现的方法简介。


{marker linkspdf}{...}
{title:与 PDF 文档的链接}

        {mansection TS tsfilterhpQuickstart:快速入门}

        {mansection TS tsfilterhpRemarksandexamples:备注和示例}

        {mansection TS tsfilterhpMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{opt smooth(#)} 设置霍德里克-普雷斯科特滤波器的平滑参数。默认情况下，如果时间变量的单位设置为日、周、月、季度、半年或年，则使用 Ravn-Uhlig 规则来设置平滑参数；否则，默认值为 {cmd:smooth(1600)}。 Ravn-Uhlig 规则将 {it:#} 设置为 1600p^4，其中 p 为每季度的周期数。平滑参数必须大于 0。

{dlgtab:趋势}

{phang}
{cmd:trend(}{newvar} | {it:{help newvarlist_zh}} | {it:{help newvarlist##stub*:stub}}{cmd:*)} 将趋势成分保存到指定的新变量 {it:newvar}、{it:newvarlist} 或 {it:stub}{cmd:*} 中。

{dlgtab:增益}

{phang}
{opt gain(gainvar anglevar)} 将增益保存到 {it:gainvar} 中，并将其相关角频率保存到 {it:anglevar} 中。增益是在 N 个角频率下计算的，这些角频率均匀划分区间 (0, pi]，其中 N 是样本大小。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gdp2}{p_end}

{pstd}使用霍德里克-普雷斯科特高通滤波器估计美国季度 GDP 对数的循环成分{p_end}
{phang2}{cmd:. tsfilter hp gdp_hp = gdp_ln}{p_end}

{pstd}绘制循环成分{p_end}
{phang2}{cmd:. tsline gdp_hp}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:tsfilter hp} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(smooth)}}平滑参数 lambda{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(varlist)}}原始时间序列变量{p_end}
{synopt:{cmd:r(filterlist)}}包含循环成分估计的变量{p_end}
{synopt:{cmd:r(trendlist)}}包含趋势成分估计的变量，如果指定了 {cmd:trend()}{p_end}
{synopt:{cmd:r(method)}}{cmd:Hodrick-Prescott}{p_end}
{synopt:{cmd:r(unit)}}使用 {cmd:tsset} 或 {cmd:xtset} 设置的时间变量单位{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tsfilter_hp.sthlp>}