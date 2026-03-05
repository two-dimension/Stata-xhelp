{smcl}
{* *! version 1.1.15  12dec2018}{...}
{viewerdialog "tssmooth hwinters"  "dialog tssmooth_hwinters"}{...}
{vieweralsosee "[TS] tssmooth hwinters" "mansection TS tssmoothhwinters"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] tssmooth" "help tssmooth_zh"}{...}
{viewerjumpto "语法" "tssmooth hwinters##syntax"}{...}
{viewerjumpto "菜单" "tssmooth hwinters##menu"}{...}
{viewerjumpto "描述" "tssmooth hwinters##description"}{...}
{viewerjumpto "PDF 文档链接" "tssmooth_hwinters_zh##linkspdf"}{...}
{viewerjumpto "选项" "tssmooth hwinters##options"}{...}
{viewerjumpto "示例" "tssmooth hwinters##examples"}{...}
{viewerjumpto "存储结果" "tssmooth hwinters##results"}
{help tssmooth_hwinters:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[TS] tssmooth hwinters} {hline 2}}霍尔特-温特斯非季节平滑{p_end}
{p2col:}({mansection TS tssmoothhwinters:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 27 2}
{cmd:tssmooth} {opt h:winters} {dtype} {newvar} {cmd:=} {it:{help exp_zh}} 
   {ifin} [{cmd:,} {it:options}]

{synoptset tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{cmd:replace}}如果 {newvar} 已经存在，则替换之{p_end}
{synopt :{opt p:arms(#a #b)}}使用 {it:#a} 和 {it:#b} 作为平滑参数{p_end}
{synopt :{opt sa:mp0(#)}}使用 {it:#} 个观测值来获得递归的初始值{p_end}
{synopt :{cmd:s0(}{it:#}cons {it:#}lt{cmd:)}}使用 {it:#}cons 和 {it:#}lt 作为递归的初始值{p_end}
{synopt :{opt f:orecast(#)}}用于样本外预测的期间数{p_end}

{syntab:选项}
{synopt :{opt d:iff}}替代的初始值规格；见 {it:{help tssmooth hwinters##diff:选项}}{p_end}

{syntab:最大化}
{synopt :{it:{help tssmooth hwinters##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}
{synopt :{opt fr:om(#a #b)}}使用 {it:#a} 和 {it:#b} 作为参数的起始值{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}在使用 {cmd:tssmooth hwinters} 之前，您必须 {cmd:tsset} 数据； {help tsset_zh:[TS] tsset}.{p_end}
{p 4 6 2}{it:exp} 可以包含时间序列操作符；见 {help tsvarlist_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 平滑器/单变量预测器 >}
     {bf:霍尔特-温特斯非季节平滑}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tssmooth hwinters} 用于平滑或预测可以建模为线性趋势的系列，其中截距和时间的系数随时间变化。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS tssmoothhwintersQuickstart:快速开始}

        {mansection TS tssmoothhwintersRemarksandexamples:备注和示例}

        {mansection TS tssmoothhwintersMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt replace} 如果 {newvar} 已经存在，则替换之。

{phang}
{opt parms(#a #b)}, {cmd:0} {ul:<} {it:#a} {ul:<} {cmd:1} 和 
{bind:{cmd:0} {ul:<} {it:#b} {ul:<} {cmd:1}} 指定参数。 如果
{opt parms()} 未指定，值将通过迭代过程选择，以最小化样本内平方预测误差的总和。

{pmore}
如果您经历收敛困难（许多迭代和“不凹”消息），请尝试使用 {opt from()} 提供更好的起始值。

{phang}
{opt samp0(#)} 和 {cmd:s0(}{it:#}cons {it:#}lt{cmd:)} 指定如何获得递归的初始值 {it:#}cons 和 {it:#}lt。

{pmore}
默认情况下，初始值是通过对数据集中前半部分的观测值进行线性回归拟合并且包含时间趋势获得的。

{pmore}
{opt samp0(#)} 指定在该回归中使用前 {it:#} 个观测值。

{pmore}
{cmd:s0(}{it:#}cons {it:#}lt{cmd:)} 指定使用 {it:#}cons 和 {it:#}lt 作为初始值。

{phang}
{opt forecast(#)} 指定样本外预测的期间数；{bind:{cmd:0} {ul:<} {it:#} {ul:<} {cmd:500}}。 默认值是 {cmd:forecast(0)}，相当于不执行样本外预测。


{dlgtab:选项}

{phang}
{marker diff}{...}
{opt diff} 指定线性项是通过平均 {it:exp_t} 的一阶差异获得，截距则为第一观察值的 {it:exp} 和 {opt D}.{it:exp_t} 的均值之差。

{pmore}
如果未指定 {opt diff} 选项，则拟合 {it:exp_t} 在常数和 {it:t} 上的线性回归。

{dlgtab:最大化}

{phang}
{marker maximize_options}{...}
{it:maximize_options} 控制在未指定 {opt parms()} 时求解最佳 alpha 和 beta 的过程。

{pmore}
{it:maximize_options}： {opt nodif:ficult},
{opth tech:nique(maximize##algorithm_spec:算法规格)},
{opt iter:ate(#)}, [{cmd:no}]{opt log}, {opt tr:ace},
{opt grad:ient}, {opt showstep}, {opt hess:ian}, {opt showtol:erance},
{opt tol:erance(#)}, {opt ltol:erance(#)}, 
{opt nrtol:erance(#)} 和 {opt nonrtol:erance}；
见 {help maximize_zh:[R] Maximize}。这些选项很少使用。

{phang}
{opt from(#a #b)}, {cmd:0} < {it:#a} < {cmd:1} 和 {cmd:0} < {it:#b} < {cmd:1}，
指定从中获得 alpha 和 beta 的最佳值的起始值。如果未指定 {opt from()}，则使用 {cmd:from(.5 .5)}。

{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse bsales}

{pstd}对 {cmd:sales} 执行霍尔特-温特斯非季节平滑{p_end}
{phang2}{cmd:. tssmooth hwinters hw1=sales}

{pstd}与上述相同，但使用 .7 和 .3 作为平滑参数{p_end}
{phang2}{cmd:. tssmooth hwinters hw2=sales, parms(.7 .3)}

{pstd}与上述相同，但使用 3 个期间进行样本外预测{p_end}
{phang2}{cmd:. tssmooth hwinters hw3=sales, parms(.7 .3) forecast(3)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:tssmooth hwinters} 将以下结果存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观测值的数量{p_end}
{synopt:{cmd:r(alpha)}}alpha 平滑参数{p_end}
{synopt:{cmd:r(beta)}}beta 平滑参数{p_end}
{synopt:{cmd:r(rss)}}平方误差和{p_end}
{synopt:{cmd:r(prss)}}惩罚后的平方误差和，若未指定 {cmd:parms()}{p_end}
{synopt:{cmd:r(rmse)}}均方根误差{p_end}
{synopt:{cmd:r(N_pre)}}用于计算起始值的观测值数量{p_end}
{synopt:{cmd:r(s2_0)}}线性项的初始值{p_end}
{synopt:{cmd:r(s1_0)}}常数项的初始值{p_end}
{synopt:{cmd:r(linear)}}线性项的最终值{p_end}
{synopt:{cmd:r(constant)}}常数项的最终值{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(method)}}平滑方法{p_end}
{synopt:{cmd:r(exp)}}指定的表达式{p_end}
{synopt:{cmd:r(timevar)}}在 {cmd:tsset} 中指定的时间变量{p_end}
{synopt:{cmd:r(panelvar)}}在 {cmd:tsset} 中指定的面板变量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tssmooth_hwinters.sthlp>}