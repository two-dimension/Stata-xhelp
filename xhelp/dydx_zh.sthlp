{smcl}
{* *! version 1.1.11  19oct2017}{...}
{viewerdialog dydx "dialog dydx"}{...}
{viewerdialog integ "dialog integ"}{...}
{vieweralsosee "[R] dydx" "mansection R dydx"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] obs" "help obs_zh"}{...}
{vieweralsosee "[D] range" "help range_zh"}{...}
{viewerjumpto "Syntax" "dydx_zh##syntax"}{...}
{viewerjumpto "Menu" "dydx_zh##menu"}{...}
{viewerjumpto "Description" "dydx_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "dydx_zh##linkspdf"}{...}
{viewerjumpto "Options" "dydx_zh##options"}{...}
{viewerjumpto "Examples" "dydx_zh##examples"}{...}
{viewerjumpto "Stored results" "dydx_zh##results"}
{help dydx:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[R] dydx} {hline 2}}计算数值导数和积分{p_end}
{p2col:}({mansection R dydx:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
数值函数的导数

{p 8 13 2}
{cmd:dydx} {it:yvar} {it:xvar} {ifin} {cmd:,}
 {opth g:enerate(newvar)} [{it:{help dydx##dydx_options:dydx_options}}]


{phang}
数值函数的积分

{p 8 15 2}
{cmd:integ} {it:yvar} {it:xvar} {ifin} [{cmd:,} 
{it:{help dydx##integ_options:integ_options}}]


{synoptset 20 tabbed}{...}
{marker dydx_options}{...}
{synopthdr :dydx_options}
{synoptline}
{syntab :主}
{p2coldent :* {opth g:enerate(newvar)}}创建名为 {it:newvar} 的变量{p_end}
{synopt :{opt replace}}覆盖现有变量{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* {opt generate(newvar)} 是必需的。

{synoptset 20 tabbed}{...}
{marker integ_options}{...}
{synopthdr :integ_options}
{synoptline}
{syntab :主}
{synopt :{opth g:enerate(newvar)}}创建名为 {it:newvar} 的变量{p_end}
{synopt :{opt t:rapezoid}}使用梯形规则计算积分；默认值为立方样条{p_end}
{synopt :{opt i:nitial(#)}}积分的初始值；默认值为 {cmd:initial(0)}{p_end}
{synopt :{opt replace}}覆盖现有变量{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
{opt by} 可以与 {cmd:dydx} 和 {cmd:integ} 一起使用；详见 {manhelp by D}。


{marker menu}{...}
{title:菜单}

    {title:dydx}

{phang2}
{bf:数据 > 创建或更改数据 > 其他变量创建命令 >}
     {bf:计算数值导数}

    {title:integ}

{phang2}
{bf:数据 > 创建或更改数据 > 其他变量创建命令 >}
     {bf:计算数值积分}


{marker description}{...}
{title:描述}

{pstd}
{cmd:dydx} 和 {cmd:integ} 计算数值“函数”的导数和积分。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R dydxQuickstart:快速入门}

        {mansection R dydxRemarksandexamples:备注和示例}

        {mansection R dydxMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{opth generate(newvar)} 指定要创建的新变量的名称。
必须与 {cmd:dydx} 一起指定。

{phang}
{opt trapezoid} 请求使用梯形规则（(x[i] - x[i-1])(y[i] + y[i-1])/2 的总和）来计算积分。默认值为立方样条，这对大多数光滑函数的结果更优；对于不规则函数，{opt trapezoid} 可能会给出更好的结果。

{phang}
{opt initial(#)} 指定计算定积分的初始条件；详见 {mansection R dydxMethodsandformulas:{it:方法和公式}}。
默认值为 {cmd:initial(0)}。

{phang}
{opt replace} 指定如果为 {opt generate()} 指定了现有变量，则应覆盖该变量。


{marker examples}{...}
{title:示例}

    {cmd:. range x 0 12.56 100}            (在 {cmd:x} 上创建 100 个观测值，从 0 到 4π)
    {cmd:. generate y = exp(-x/6)*sin(x)}  (生成 {cmd:y} = f(x))
    {cmd:. dydx y x, gen(yprime)}          (创建函数的导数)
    {cmd:. line y yprime x}                (绘制函数和导数)
    {cmd:. integ y x, gen(Sy)}             (创建函数的积分)
    {cmd:. line y Sy x}                    (绘制函数和积分)


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:dydx} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(y)}}{it:yvar} 的名称{p_end}
{p2colreset}{...}

{pstd}
{cmd:integ} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N_points)}}唯一 x 点的数量{p_end}
{synopt:{cmd:r(integral)}}积分的估计值{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dydx.sthlp>}