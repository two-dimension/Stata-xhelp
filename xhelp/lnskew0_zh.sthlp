{smcl}
{* *! version 1.1.11  19oct2017}{...}
{viewerdialog lnskew0 "dialog lnskew0"}{...}
{viewerdialog bcskew0 "dialog bcskew0"}{...}
{vieweralsosee "[R] lnskew0" "mansection R lnskew0"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] boxcox" "help boxcox_zh"}{...}
{vieweralsosee "[R] ladder" "help ladder_zh"}{...}
{vieweralsosee "[R] swilk" "help swilk_zh"}{...}
{viewerjumpto "Syntax" "lnskew0_zh##syntax"}{...}
{viewerjumpto "Menu" "lnskew0_zh##menu"}{...}
{viewerjumpto "Description" "lnskew0_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "lnskew0_zh##linkspdf"}{...}
{viewerjumpto "Options" "lnskew0_zh##options"}{...}
{viewerjumpto "Examples" "lnskew0_zh##examples"}{...}
{viewerjumpto "Stored results" "lnskew0_zh##results"}{...}
{viewerjumpto "Reference" "lnskew0_zh##reference"}
{help lnskew0:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] lnskew0} {hline 2}}查找零偏态的对数或Box-Cox变换{p_end}
{p2col:}({mansection R lnskew0:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
零偏态对数变换

{p 8 17 2}
{cmd:lnskew0} {newvar} {cmd:=} {it:{help exp_zh}} {ifin} [{cmd:,} {it:options}]


{phang}
零偏态Box-Cox变换

{p 8 17 2}
{cmd:bcskew0} {newvar} {cmd:=} {it:{help exp_zh}} {ifin} [{cmd:,} {it:options}] 


{synoptset 12 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主选项}
{synopt :{opt d:elta(#)}}偏态函数导数的增量；默认值为 {cmd:delta(0.02)} 用于 {opt lnskew0} 和 {cmd:delta(0.01)} 用于 {opt bcskew0}{p_end}
{synopt :{opt z:ero(#)}}用于确定收敛的值；默认值为 {cmd:zero(0.001)}{p_end}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

    {title:lnskew0}

{phang2}
{bf:数据 > 创建或更改数据 > 其他变量创建命令 >}
      {bf:零偏态对数变换}

    {title:bcskew0}

{phang2}
{bf:数据 > 创建或更改数据 > 其他变量创建命令 >}
       {bf:Box-Cox变换}


{marker description}{...}
{title:描述}

{pstd}
{cmd:lnskew0} 创建 {newvar} = ln(+/-{it:{help exp_zh}} - k)，选择 k 和 {it:exp} 的符号，使得 {it:newvar} 的偏态为零。

{pstd}
{cmd:bcskew0} 创建 {it:newvar} = ({it:exp}^lambda - 1)/lambda，即Box-Cox幂变换（{help lnskew0##BC1964:Box和Cox 1964），选择 lambda，使得 {it:newvar} 的偏态为零。 {it:exp} 必须严格为正。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R lnskew0Quickstart:快速入门}

        {mansection R lnskew0Remarksandexamples:备注和示例}

        {mansection R lnskew0Methodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主选项}

{phang}
{opt delta(#)} 指定计算偏态函数对 k ({cmd:lnskew0}) 或 lambda ({cmd:bcskew0}) 的导数时使用的增量。默认值分别为 {cmd:lnskew0} 的 0.02 和 {cmd:bcskew0} 的 0.01。

{phang}
{opt zero(#)} 指定一个用于偏态以确定收敛的小得可视为零的值，默认值为 0.001。

{phang}
{opt level(#)} 指定置信区间的置信水平，用于 k ({cmd:lnskew0}) 或 lambda ({cmd:bcskew0})。只有在指定了 {opt level()} 时，才会计算置信区间。{it:#} 被指定为整数；95 意味着 95% 的置信区间。仅当观测数超过 7 时，{opt level()} 选项才会被遵循。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}创建 {cmd:lnmpg} 包含 ln({cmd:mpg}-k) 并且偏态为 0{p_end}
{phang2}{cmd:. lnskew0 lnmpg = mpg}{p_end}

{pstd}与上面相同，并报告 k 的 95% 置信区间{p_end}
{phang2}{cmd:. lnskew0 lnmpg2 = mpg, level(95)}{p_end}

{pstd}创建 {cmd:bcmpg} 包含 ({cmd:mpg}^lambda-1)/lambda 并且偏态为 0{p_end}
{phang2}{cmd:. bcskew0 bcmpg = mpg}{p_end}

{pstd}与上面相同，并报告 lambda 的 90% 置信区间{p_end}
{phang2}{cmd:. bcskew0 bcmpg2 = mpg, level(90)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:lnskew0} 和 {cmd:bcskew0} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:标量}{p_end}
{synopt:{cmd:r(gamma)}}k ({cmd:lnskew0}){p_end}
{synopt:{cmd:r(lambda)}}lambda ({cmd:bcskew0}){p_end}
{synopt:{cmd:r(lb)}}置信区间的下界{p_end}
{synopt:{cmd:r(ub)}}置信区间的上界{p_end}
{synopt:{cmd:r(skewness)}}变换变量的结果偏态{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考文献}

{marker BC1964}{...}
{phang}
Box, G. E. P., 和 D. R. Cox. 1964. 变换分析。
{it:皇家统计学会杂志，B系列} 26: 211-252。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lnskew0.sthlp>}