{smcl}
{* *! version 1.0.19  19sep2018}{...}
{viewerdialog "tsfilter cf" "dialog tsfilter, message(-cf-)"}{...}
{vieweralsosee "[TS] tsfilter cf" "mansection TS tsfiltercf"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsfilter" "help tsfilter_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] format" "help format_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] tssmooth" "help tssmooth_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "tsfilter cf##syntax"}{...}
{viewerjumpto "Menu" "tsfilter cf##menu"}{...}
{viewerjumpto "Description" "tsfilter cf##description"}{...}
{viewerjumpto "Links to PDF documentation" "tsfilter_cf_zh##linkspdf"}{...}
{viewerjumpto "Options" "tsfilter cf##options"}{...}
{viewerjumpto "Example" "tsfilter cf##example"}{...}
{viewerjumpto "Stored results" "tsfilter cf##results"}{...}
{viewerjumpto "Reference" "tsfilter cf##reference"}
{help tsfilter_cf:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[TS] tsfilter cf} {hline 2}}Christiano-Fitzgerald 
    时间序列滤波器{p_end}
{p2col:}({mansection TS tsfiltercf:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
滤波一个变量

{p 8 18 2}
{cmd:tsfilter cf}
{dtype}
{newvar} {cmd:=} {help varname_zh:{it:varname}}
{ifin} [{cmd:,} {it:options}]


{pstd}
滤波多个变量，唯一名称

{p 8 18 2}
{cmd:tsfilter cf}
{dtype}
{help newvarlist_zh:{it:newvarlist}} {cmd:=} {help varlist_zh:{it:varlist}}
{ifin} [{cmd:,} {it:options}]


{pstd}
滤波多个变量，共享名称前缀

{p 8 18 2}
{cmd:tsfilter cf}
{dtype}
{it:{help newvarlist##stub*:stub}}{cmd:*} {cmd:=} {help varlist_zh:{it:varlist}}
{ifin} [{cmd:,} {it:options}]
{p_end}


{synoptset 25 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{synopt:{opt min:period(#)}}滤除小于 {it:#} 的随机周期
    {p_end}
{synopt:{opt max:period(#)}}滤除大于 {it:#} 的随机周期
    {p_end}
{synopt:{opt sma:order(#)}}每个滤波值贡献的观测数量{p_end}
{synopt:{opt stat:ionary}}使用适用于平稳时间序列的计算{p_end}
{synopt:{opt d:rift}}从时间序列中去除漂移{p_end}

{syntab:趋势}
{p2col 7 32 32 2:{cmdab:t:rend(}{newvar} | {it:{help newvarlist_zh}} | {it:{help newvarlist##stub*:stub}}{cmd:*)}}{break}将趋势成分保存到新变量{p_end}

{syntab:增益}
{synopt:{opt g:ain(gainvar anglevar)}}保存增益和角频率{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
您必须先 {opt tsset} 或 {opt xtset} 数据，然后才能使用 {opt tsfilter}；
请参见 {manhelp tsset TS} 和 {manhelp xtset XT}.{p_end}
{p 4 6 2}
{it:varname} 和 {it:varlist} 可以包含时间序列运算符； 请参见 {help tsvarlist_zh}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 周期成分滤波 >}
    {bf:Christiano-Fitzgerald}
{p_end}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tsfilter cf} 使用
{help tsfilter_cf##CF2003:Christiano 和 Fitzgerald (2003)} 的带通滤波器将时间序列分离为趋势和周期成分。趋势成分可以包含确定性或随机趋势。平稳的周期成分由在指定周期内的随机周期驱动。

{pstd}
请参见 {manlink TS tsfilter}，以了解 {cmd:tsfilter cf} 中实现的方法介绍。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS tsfiltercfQuickstart:快速入门}

        {mansection TS tsfiltercfRemarksandexamples:备注和示例}

        {mansection TS tsfiltercfMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt minperiod(#)} 滤除小于 {it:#} 的随机周期，其中 {it:#} 必须至少为 2 且小于 {opt maxperiod()}。 默认情况下，如果时间变量的单位设置为每日、每周、每月、每季度或每半年，则 {it:#} 设置为相当于 1.5 年的周期数； 每年数据使用 {cmd:minperiod(2)}； 否则，默认值为 {cmd:minperiod(6)}。

{phang}
{opt maxperiod(#)} 滤除大于 {it:#} 的随机周期，其中 {it:#} 必须大于 {opt minperiod()}。 默认情况下，如果时间变量的单位设置为每日、每周、每月、每季度、每半年或每年，则 {it:#} 设置为相当于 8 年的周期数； 否则，默认值为 {cmd:maxperiod(32)}。

{phang}
{opt smaorder(#)} 设置对称移动平均的阶数，用 q 表示。 默认情况下，{opt smaorder()} 未设置，这将调用 Christiano-Fitzgerald 滤波器的非对称计算。 阶数为一个整数，指定用于计算周期成分的对称移动平均估计的每个方向上的观测数量。 这个数字必须是一个大于零的整数，且小于 (T-1)/2。 {it:t} 时刻的周期成分估计 y_t 基于 2q+1 个值 y_{t-q}, y_{t-q+1}, ..., y_t, y_{t+1}, ..., y_{t+q}。

{phang}
{opt stationary} 将滤波计算修改为适用于平稳序列。 默认情况下，假设序列为非平稳。

{phang}
{opt drift} 使用 {help tsfilter cf##CF2003:Christiano 和 Fitzgerald (2003)} 中描述的方法去除漂移。 默认情况下，不去除漂移。

{dlgtab:趋势}

{phang}
{cmd:trend(}{newvar} | {it:{help newvarlist_zh}} | {it:{help newvarlist##stub*:stub}}{cmd:*)} 将趋势成分保存在由 {it:newvar}、 {it:newvarlist} 或 {it:stub}{cmd:*} 指定的新变量中。

{dlgtab:增益}

{phang}
{opt gain(gainvar anglevar)} 将增益保存在 {it:gainvar} 中，并将相应的角频率保存在 {it:anglevar} 中。 在 N 个角频率下计算增益，这些频率均匀划分了区间 (0, pi]，其中 N 为样本大小。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gdp2}{p_end}

{pstd}使用 Christiano-Fitzgerald 滤波器估计季度美国 GDP 的对数周期成分{p_end}
{phang2}{cmd:. tsfilter cf gdp_cf = gdp_ln}{p_end}

{pstd}绘制周期成分{p_end}
{phang2}{cmd:. tsline gdp_cf}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:tsfilter cf} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(smaorder)}} 如果指定，代表对称移动平均的阶数{p_end}
{synopt:{cmd:r(minperiod)}} 随机周期的最小周期{p_end}
{synopt:{cmd:r(maxperiod)}} 随机周期的最大周期{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(varlist)}} 原时间序列变量{p_end}
{synopt:{cmd:r(filterlist)}} 包含周期成分估计的变量{p_end}
{synopt:{cmd:r(trendlist)}} 包含趋势成分估计的变量，如果指定了 {cmd:trend()}{p_end}
{synopt:{cmd:r(method)}}{cmd:Christiano-Fitzgerald}{p_end}
{synopt:{cmd:r(symmetric)}}{cmd:yes} 或 {cmd:no}，指示是否使用了滤波器的对称版本{p_end}
{synopt:{cmd:r(drift)}}{cmd:yes} 或 {cmd:no}，指示在滤波之前是否去除了漂移{p_end}
{synopt:{cmd:r(stationary)}}{cmd:yes} 或 {cmd:no}，指示计算是否假设序列为平稳或非平稳{p_end}
{synopt:{cmd:r(unit)}} 使用 {cmd:tsset} 或 {cmd:xtset} 设置的时间变量单位{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(filter)}}(q+1) x 1 矩阵的滤波权重，其中 q 为对称移动平均的阶数，权重为 Christiano-Fitzgerald 系数； 仅在使用 {cmd:smaorder()} 设置 q 时返回{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考文献}

{marker CF2003}{...}
{phang}
Christiano, L. J. 和 T. J. Fitzgerald. 2003. 带通滤波器。
{it:国际经济评论} 44: 435-465。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tsfilter_cf.sthlp>}