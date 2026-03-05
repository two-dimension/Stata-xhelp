{smcl}
{* *! version 1.0.15  19sep2018}{...}
{viewerdialog "tsfilter bw" "dialog tsfilter, message(-bw-)"}{...}
{vieweralsosee "[TS] tsfilter bw" "mansection TS tsfilterbw"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsfilter" "help tsfilter_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] format" "help format_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] tssmooth" "help tssmooth_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "语法" "tsfilter bw##syntax"}{...}
{viewerjumpto "菜单" "tsfilter bw##menu"}{...}
{viewerjumpto "描述" "tsfilter bw##description"}{...}
{viewerjumpto "PDF 文档链接" "tsfilter_bw_zh##linkspdf"}{...}
{viewerjumpto "选项" "tsfilter bw##options"}{...}
{viewerjumpto "示例" "tsfilter bw##examples"}{...}
{viewerjumpto "存储结果" "tsfilter bw##results"}
{help tsfilter_bw:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[TS] tsfilter bw} {hline 2}}巴特沃斯时间序列滤波器{p_end}
{p2col:}({mansection TS tsfilterbw:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
滤波一个变量

{p 8 18 2}
{cmd:tsfilter bw}
{dtype}
{newvar} {cmd:=} {help varname_zh:{it:varname}}
{ifin} [{cmd:,} {it:options}]


{pstd}
滤波多个变量，使用唯一名称

{p 8 18 2}
{cmd:tsfilter bw}
{dtype}
{help newvarlist_zh:{it:newvarlist}} {cmd:=} {help varlist_zh:{it:varlist}}
{ifin} [{cmd:,} {it:options}]


{pstd}
滤波多个变量，使用公共名称前缀

{p 8 18 2}
{cmd:tsfilter bw}
{dtype}
{it:{help newvarlist##stub*:stub}}{cmd:*} {cmd:=} {help varlist_zh:{it:varlist}}
{ifin} [{cmd:,} {it:options}]
{p_end}


{synoptset 25 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{synopt:{opt max:period(#)}}滤除周期大于 {it:#} 的随机周期{p_end}
{synopt:{opt or:der(#)}}设置滤波器的阶数；默认是
   {cmd:order(2)}{p_end}

{syntab:趋势}
{p2col 7 32 32 2:{cmdab:t:rend(}{newvar} | {it:{help newvarlist_zh}} | {it:{help newvarlist##stub*:stub}}{cmd:*)}}{break}将趋势成分保存到新变量中{p_end}

{syntab:增益}
{synopt:{opt g:ain(gainvar anglevar)}}保存增益和角频率{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
您必须在使用 {opt tsfilter} 之前对数据进行 {opt tsset} 或 {opt xtset}；
请参阅 {manhelp tsset TS} 和 {manhelp xtset XT}.{p_end}
{p 4 6 2}
{it:varname} 和 {it:varlist} 可以包含时间序列运算符；请参阅
{help tsvarlist_zh}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 周期成分滤波器 >}
    {bf:巴特沃斯}
{p_end}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tsfilter bw} 使用巴特沃斯高通滤波器将时间序列分离为趋势和周期成分。趋势成分可能包含确定性或随机趋势。平稳的周期成分由指定周期的随机周期驱动。

{pstd}
请参阅 {manlink TS tsfilter} 以了解在 {cmd:tsfilter bw} 中实现的方法介绍。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS tsfilterbwQuickstart:快速开始}

        {mansection TS tsfilterbwRemarksandexamples:备注和示例}

        {mansection TS tsfilterbwMethodsandformulas:方法与公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt maxperiod(#)} 滤除大于 {it:#} 的随机周期，其中
{it:#} 必须大于 2。默认情况下，如果时间变量的单位设置为每日、每周、每月、每季度、每半年或每年，则 {it:#} 设置为相当于 8 年的期间数；否则，默认值为 {cmd:maxperiod(32)}。

{phang}
{opt order(#)} 设置巴特沃斯滤波器的阶数，必须为整数。默认值为 {cmd:order(2)}。

{dlgtab:趋势}

{phang}
{cmd:trend(}{newvar} | {it:{help newvarlist_zh}} | {it:{help newvarlist##stub*:stub}}{cmd:*)} 将趋势成分保存到由 {it:newvar}、{it:newvarlist} 或 {it:stub}{cmd:*} 指定的新变量中。

{dlgtab:增益}

{phang}
{opt gain(gainvar anglevar)} 将增益保存到 {it:gainvar} 中及其相关的角频率保存到 {it:anglevar} 中。增益是在均匀划分区间 (0, pi] 的 N 个角频率下计算的，其中 N 是样本大小。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gdp2}{p_end}

{pstd}使用巴特沃斯滤波器估计由随机周期驱动的季度美国 GDP 的对数成分，周期少于默认的 32 个{p_end}
{phang2}{cmd:. tsfilter bw gdp_bw = gdp_ln}{p_end}

{pstd}绘制周期成分{p_end}
{phang2}{cmd:. tsline gdp_bw}{p_end}

{pstd}指定最大周期为 6{p_end}
{phang2}{cmd:. tsfilter bw gdp_bwb = gdp_ln, maxperiod(6)}{p_end}

{pstd}指定阶数为 8 并保存趋势成分{p_end}
{phang2}{cmd:. tsfilter bw gdp_bw8 = gdp_ln, order(8) trend(gdp_bwc8)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:tsfilter bw} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(order)}}滤波器的阶数{p_end}
{synopt:{cmd:r(maxperiod)}}随机周期的最大周期{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(varlist)}}原始时间序列变量{p_end}
{synopt:{cmd:r(filterlist)}}包含周期成分估计的变量{p_end}
{synopt:{cmd:r(trendlist)}}包含趋势成分估计的变量（如果指定了 {cmd:trend()}）{p_end}
{synopt:{cmd:r(method)}}{cmd:Butterworth}{p_end}
{synopt:{cmd:r(unit)}}使用 {cmd:tsset} 或 {cmd:xtset} 设置的时间变量单位{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tsfilter_bw.sthlp>}