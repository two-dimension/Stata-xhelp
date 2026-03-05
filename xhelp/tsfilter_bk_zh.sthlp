{smcl}
{* *! version 1.0.16  19sep2018}{...}
{viewerdialog "tsfilter bk" "dialog tsfilter, message(-bk-)"}{...}
{vieweralsosee "[TS] tsfilter bk" "mansection TS tsfilterbk"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsfilter" "help tsfilter_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] format" "help format_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] tssmooth" "help tssmooth_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "语法" "tsfilter bk##syntax"}{...}
{viewerjumpto "菜单" "tsfilter bk##menu"}{...}
{viewerjumpto "描述" "tsfilter bk##description"}{...}
{viewerjumpto "PDF 文档链接" "tsfilter_bk_zh##linkspdf"}{...}
{viewerjumpto "选项" "tsfilter bk##options"}{...}
{viewerjumpto "示例" "tsfilter bk##examples"}{...}
{viewerjumpto "存储结果" "tsfilter bk##results"}{...}
{viewerjumpto "参考" "tsfilter bk##reference"}
{help tsfilter_bk:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[TS] tsfilter bk} {hline 2}}巴克斯特-金时序滤波器{p_end}
{p2col:}({mansection TS tsfilterbk:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
滤波一个变量

{p 8 18 2}
{cmd:tsfilter bk}
{dtype}
{newvar} {cmd:=} {help varname_zh:{it:varname}}
{ifin} [{cmd:,} {it:options}]


{pstd}
滤波多个变量，唯一名称

{p 8 18 2}
{cmd:tsfilter bk}
{dtype}
{help newvarlist_zh:{it:newvarlist}} {cmd:=} {help varlist_zh:{it:varlist}}
{ifin} [{cmd:,} {it:options}]


{pstd}
滤波多个变量，共用名称前缀

{p 8 18 2}
{cmd:tsfilter bk}
{dtype}
{it:{help newvarlist##stub*:stub}}{cmd:*} {cmd:=} {help varlist_zh:{it:varlist}}
{ifin} [{cmd:,} {it:options}]
{p_end}


{synoptset 25 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{synopt:{opt min:period(#)}}滤除周期小于 {it:#} 的随机周期{p_end}
{synopt:{opt max:period(#)}}滤除周期大于 {it:#} 的随机周期{p_end}
{synopt:{opt sma:order(#)}}影响每个滤波值的观测数量{p_end}
{synopt:{opt stat:ionary}}使用适用于平稳时间序列的计算{p_end}

{syntab:趋势}
{p2col 7 32 32 2:{cmdab:t:rend(}{newvar} | {it:{help newvarlist_zh}} | {it:{help newvarlist##stub*:stub}}{cmd:*)}}{break}将趋势成分保存在新变量中{p_end}

{syntab:增益}
{synopt:{opt g:ain(gainvar anglevar)}}保存增益和角频率{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
在使用 {opt tsfilter} 之前，必须先 {opt tsset} 或 {opt xtset} 数据；见 {manhelp tsset TS} 和 {manhelp xtset XT}。{p_end}
{p 4 6 2}
{it:varname} 和 {it:varlist} 可以包含时间序列操作符；见 {help tsvarlist_zh}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 周期成分滤波 >}
    {bf:巴克斯特-金}
{p_end}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tsfilter bk} 使用 {help tsfilter_bk##BK1999:巴克斯特和金 (1999)} 的带通滤波器将时间序列分解为趋势和周期成分。
趋势成分可以包含确定性或随机趋势。平稳的周期成分由特定周期的随机周期驱动。

{pstd}
见 {manlink TS tsfilter} 了解 {cmd:tsfilter bk} 中实现的方法介绍。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS tsfilterbkQuickstart:快速入门}

        {mansection TS tsfilterbkRemarksandexamples:备注和示例}

        {mansection TS tsfilterbkMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt minperiod(#)} 滤除周期小于 {it:#} 的随机周期，{it:#} 必须至少为 2 且小于 {opt maxperiod()}。默认情况下，如果时间变量的单位设置为每日、每周、每月、每季度或半年，则将 {it:#} 设置为相当于 1.5 年的周期数；按年数据使用 {cmd:minperiod(2)}；否则，默认值为 {cmd:minperiod(6)}。

{phang}
{opt maxperiod(#)} 滤除周期大于 {it:#} 的随机周期，{it:#} 必须大于 {opt minperiod()}。默认情况下，如果时间变量的单位设置为每日、每周、每月、每季度、半年或年度，则将 {it:#} 设置为相当于 8 年的周期数；否则，默认值为 {cmd:maxperiod(32)}。

{phang}
{opt smaorder(#)} 设置对称移动平均的阶数，表示为 q。阶数是指定用于计算周期成分的对称移动平均估计的观测数量的整数。此数字必须大于零且小于 (T-1)/2。第 {it:t} 个观测值 y_t 的周期成分估计基于 2q+1 个值 y_{t-q}, y_{t-q+1}, ..., y_t, y_{t+1}, ..., y_{t+q}。默认情况下，如果时间变量的单位设置为每日、每周、每月、每季度、半年或年度，则将 {it:#} 设置为相当于 3 年的周期数；否则，默认值为 {cmd:smaorder(12)}。

{phang}
{opt stationary} 修改滤波计算，以适用于平稳序列。默认情况下，假定序列为非平稳。

{dlgtab:趋势}

{phang}
{cmd:trend(}{newvar} | {it:{help newvarlist_zh}} | {it:{help newvarlist##stub*:stub}}{cmd:*)} 将趋势成分保存在指定的新变量 {it:newvar}、{it:newvarlist} 或 {it:stub}{cmd:*} 中。

{dlgtab:增益}

{phang}
{opt gain(gainvar anglevar)} 将增益保存在 {it:gainvar} 中，并将其相关角频率保存在 {it:anglevar} 中。增益在 Angular frequencies N 上进行计算，N 是均匀划分 (0, pi] 区间的样本大小。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gdp2}{p_end}

{pstd}使用巴克斯特-金滤波器估计美国季度 GDP 对数的周期成分{p_end}

{phang2}{cmd:. tsfilter bk gdp_bk = gdp_ln}{p_end}

{pstd}绘制周期成分{p_end}
{phang2}{cmd:. tsline gdp_bk}{p_end}

{pstd}指定阶数为 20 的对称移动平均{p_end}
{phang2}{cmd:. tsfilter bk gdp_bk20 = gdp_ln, smaorder(20)}{p_end}

{pstd}保存增益和角频率{p_end}
{phang2}{cmd:. tsfilter bk gdp_bkb = gdp_ln, gain(g a)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:tsfilter bk} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(smaorder)}}对称移动平均的阶数{p_end}
{synopt:{cmd:r(minperiod)}}随机周期的最小周期{p_end}
{synopt:{cmd:r(maxperiod)}}随机周期的最大周期{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(varlist)}}原始时间序列变量{p_end}
{synopt:{cmd:r(filterlist)}}包含周期成分估计的变量{p_end}
{synopt:{cmd:r(trendlist)}}包含趋势成分估计的变量（如果指定了 {cmd:trend()}）{p_end}
{synopt:{cmd:r(method)}}{cmd:Baxter-King}{p_end}
{synopt:{cmd:r(stationary)}}{cmd:yes} 或 {cmd:no}，指示计算是假设系列为平稳还是非平稳{p_end}
{synopt:{cmd:r(unit)}}使用 {cmd:tsset} 或 {cmd:xtset} 设置的时间变量单位{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(filter)}}(q+1) x 1 的滤波权重矩阵，其中 q 是对称移动平均的阶数{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考}

{marker BK1999}{...}
{phang}
Baxter, M., and R. G. King. 1999. Measuring business cycles: Approximate
band-pass filters for economic time series.
{it:经济学与统计评论} 81: 575-593.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tsfilter_bk.sthlp>}