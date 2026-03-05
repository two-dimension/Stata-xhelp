{smcl}
{* *! version 1.0.9  12dec2018}{...}
{viewerdialog mswitch "dialog mswitch"}{...}
{vieweralsosee "[TS] mswitch" "mansection TS mswitch"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] mswitch postestimation" "help mswitch postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arima" "help arima_zh"}{...}
{vieweralsosee "[TS] sspace" "help sspace_zh"}{...}
{vieweralsosee "[TS] threshold" "help threshold_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] ucm" "help ucm_zh"}{...}
{viewerjumpto "Syntax" "mswitch_zh##syntax"}{...}
{viewerjumpto "Menu" "mswitch_zh##menu"}{...}
{viewerjumpto "Description" "mswitch_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mswitch_zh##linkspdf"}{...}
{viewerjumpto "Options" "mswitch_zh##options"}{...}
{viewerjumpto "Examples" "mswitch_zh##examples"}{...}
{viewerjumpto "Video example" "mswitch_zh##video"}{...}
{viewerjumpto "Stored results" "mswitch_zh##results"}
{help mswitch:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[TS] mswitch} {hline 2}}马尔可夫切换回归模型{p_end}
{p2col:}({mansection TS mswitch:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
马尔可夫切换动态回归

{p 8 16 2}{cmd:mswitch}
{cmd:dr}
{depvar} [{it:nonswitch_varlist}]
{ifin}
[{cmd:,} {help mswitch##mswitch_options:{it:选项}}]


{phang}
马尔可夫切换自回归 (AR)

{p 8 16 2}{cmd:mswitch}
{cmd:ar}
{depvar} [{it:nonswitch_varlist}]{cmd:,} {opth ar(numlist)}
[{help mswitch##msar_options:{it:msar_options}}
{help mswitch##mswitch_options:{it:选项}}]


{phang}
{it:nonswitch_varlist} 是具有状态不变系数的变量列表。

{marker mswitch_options}{...}
{synoptset 32 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{synopt :{opt states(#)}}指定状态的数量；默认值为
{cmd:states(2)}{p_end}
{synopt :{cmd:switch(}[{it:varlist}][{cmd:,} {opt nocons:tant}]{cmd:)}}指定具有切换系数的变量；默认情况下，常数项是状态依赖的，除非指定了 {cmd:switch(, noconstant)}{p_end}
{synopt :{opt con:stant}}允许状态不变的常数项；只能与 {cmd:switch(, noconstant)} 一起指定{p_end}
{synopt :{opt varsw:itch}}指定状态依赖的方差参数；默认情况下，方差参数在所有状态中是常量{p_end}
{synopt :{opt p0(type)}}指定初始无条件概率，其中 {it:type} 为 {cmdab:tr:ansition}、{cmdab:fi:xed} 或 {cmdab:sm:oothed}之一；默认值为 {cmd:p0(transition)}{p_end}
{synopt :{opth const:raints(numlist)}}应用指定的线性约束{p_end}

{syntab:SE/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim} 或 {opt r:obust}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help mswitch##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab:EM 选项}
{synopt :{opt emiter:ate(#)}}指定期望最大化（EM）迭代的数量；默认值为 {cmd:emiterate(10)}{p_end}
{synopt :{opt emlog}}显示 EM 迭代日志{p_end}
{synopt :{opt emdot:s}}以点的形式显示 EM 迭代{p_end}

{syntab:最大化}
{synopt :{it:{help mswitch##maximize_options:maximize_options}}}控制最大化过程{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{marker msar_options}{...}
{synoptset 25 tabbed}{...}
{synopthdr:msar_options}
{synoptline}
{syntab:模型}
{p2coldent:* {opth ar(numlist)}}指定 AR 项的数量{p_end}
{synopt :{cmdab:arsw:itch}}指定状态依赖的 AR 系数{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt ar(numlist)} 是必需的。

{p 4 6 2}
在使用 {opt mswitch} 之前，您必须 {opt tsset} 数据；请参阅 {manhelp tsset TS}.{p_end}
{p 4 6 2}{it:varlist} 和 {it:nonswitch_varlist} 可以包含因子变量；请参阅 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar}、{it:nonswitch_varlist} 和 {it:varlist} 可以包含时间序列运算符；请参阅 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
允许使用 {opt by}、{opt rolling} 和 {opt statsby}；请参阅 {help prefix_zh}。
{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
有关估计后可用功能的详细信息，请参见 {manhelp mswitch_postestimation TS:mswitch 后估计}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 马尔可夫切换模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mswitch} 拟合动态回归模型，这些模型在未观察到的状态之间展现出不同的动态，使用状态依赖参数以适应结构性断裂或其他多状态现象。这些模型被称为马尔可夫切换模型，因为未观察到的状态之间的转变遵循马尔可夫链。

{pstd}
提供两种模型：马尔可夫切换动态回归模型，允许在过程状态变化后快速调整，和马尔可夫切换自回归模型，允许更渐进的调整。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS mswitchQuickstart:快速入门}

        {mansection TS mswitchRemarksandexamples:备注和示例}

        {mansection TS mswitchMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth ar(numlist)} 指定 AR 项的数量。此选项只能与命令 {cmd:mswitch ar} 一起指定。{cmd:ar()} 是必需的，以拟合 AR 模型。

{phang}
{cmd:arswitch} 指定 AR 系数在各状态间变化。
{cmd:arswitch} 只能与选项 {cmd:ar()} 一起指定。

{dlgtab:主要}

{phang}
{opt states(#)} 指定状态的数量。默认值为
{cmd:states(2)}。

{phang}
{cmd:switch(}[{varlist}][{cmd:, noconstant}]{cmd:)} 指定系数在各状态中变化的变量。默认情况下，常数项是状态依赖的，并且包含在回归模型中。您可以通过指定 {cmd:switch(, noconstant)} 来抑制常数项。

{phang}
{cmd:constant} 指定包含状态不变的常数项。此选项只能与 
{cmd:switch(, noconstant)} 一起指定。

{phang}
{cmd:varswitch} 指定方差参数是状态依赖的。默认情况下，方差在所有状态中是常量。

{phang}
{opt p0(type)} 很少使用。此选项指定获取无条件转移概率值的方法。{it:type} 为 {cmd:transition}、{cmd:fixed} 或 {cmd:smoothed} 之一。默认值为 {cmd:p0(transition)}，这指定使用条件转移概率矩阵计算值。类型 {cmd:fixed} 规定每个无条件概率为 1/k，其中 k 为状态的数量。类型 {cmd:smoothed} 指定无条件概率作为模型额外参数的估计。 

{phang}
{opth constraints(numlist)} 指定应用于参数估计的线性约束。

{dlgtab:SE/稳健}

{phang}
{opt vce(vcetype)} 指定报告的标准误的类型，包括源自渐近理论的类型（{cmd:oim}）和对某些类型的错误规范稳健的类型（{cmd:robust}）；请参阅 {help vce_option_zh:[R] {it:vce_option}}。

{dlgtab:报告}

{phang}
{opt level(#)}、{cmd:nocnsreport}; 见 
{helpb estimation options##level():[R] 估计选项}。

INCLUDE help displayopts_list

{dlgtab:EM 选项}

{phang}
{opt emiterate(#)}、{cmd:emlog} 和 {cmd:emdots} 控制在估计切换到准牛顿法之前进行的 EM 迭代。EM 用于获取起始值。

{phang2}
{opt emiterate(#)} 指定 EM 迭代的数量；默认值为 {cmd:emiterate(10)}。

{phang2}
{cmd:emlog} 指定显示 EM 迭代日志。默认是不显示 EM 迭代日志。

{phang2}
{cmd:emdots} 指定以点的形式显示 EM 迭代。默认是不显示点。

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}:
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)},
{opt iter:ate(#)},
[{cmd:no}]{opt log},
{opt tr:ace}, 
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)},
{opt nonrtol:erance}, 和
{opt from(matname)};
请参阅 {help maximize_zh:[R] 最大化}，了解除 {opt from()} 以外的所有选项，下面的内容是有关 {opt from()} 的信息。

{phang2}
{opt from(matname)} 指定最大化过程的初始值。如果指定了 {cmd:from()}，则在 EM 步骤中使用初始值以改善似然性，除非也指定了 {cmd:emiterate(0)}。EM 迭代结束时获得的系数作为准牛顿法的初始值。

{pmore2}
{it:matname} 必须是一行向量。列数必须等于模型中的参数数量，且值的顺序必须与 {cmd:e(b)} 中的参数顺序相同。

{pstd}
以下选项可与 {cmd:mswitch} 一起使用，但不会在对话框中显示：

{phang}
{cmd:coeflegend}; 见
{helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}
设置
{p_end}
{phang2}{cmd:. webuse usmacro}

{pstd}
估计马尔可夫切换动态回归模型的参数{p_end}
{phang2}{cmd:. mswitch dr fedfunds}

{pstd}
通过包括 {cmd:switch()} 选项来估计切换系数{p_end}
{phang2}{cmd:. mswitch dr fedfunds, switch(L.fedfunds)}

    {hline}
{pstd}
设置
{p_end}
{phang2}{cmd:. webuse rgnp}

{pstd}
拟合具有两个滞后和状态依赖自回归系数的马尔可夫切换自回归模型{p_end}
{phang2}{cmd:. mswitch ar rgnp, ar(1/2) arswitch}

    {hline}


{marker video}{...}
{title:视频示例}

{phang2}{browse "https://www.youtube.com/watch?v=Vex5VEtVcsw":Stata中的马尔可夫切换模型}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mswitch} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_gaps)}}缺口数{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中方程数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数数量{p_end}
{synopt:{cmd:e(states)}}状态数{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(aic)}}Akaike 信息准则{p_end}
{synopt:{cmd:e(hqic)}}Hannan-Quinn 信息准则{p_end}
{synopt:{cmd:e(sbic)}}Schwarz-Bayesian 信息准则{p_end}
{synopt:{cmd:e(tmin)}}最小时间{p_end}
{synopt:{cmd:e(tmax)}}最大时间{p_end}
{synopt:{cmd:e(emiter)}} EM 迭代数量{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:mswitch}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(eqnames)}}方程名称{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(switchvars)}}切换变量列表{p_end}
{synopt:{cmd:e(nonswitchvars)}}非切换变量列表{p_end}
{synopt:{cmd:e(model)}}{cmd:dr} 或 {cmd:ar}{p_end}
{synopt:{cmd:e(title)}}估计输出的标题{p_end}
{synopt:{cmd:e(tsfmt)}}当前时间变量的格式{p_end}
{synopt:{cmd:e(timevar)}}在 {cmd:tsset} 中指定的时间变量{p_end}
{synopt:{cmd:e(tmins)}}格式的最小时间{p_end}
{synopt:{cmd:e(tmaxs)}}格式的最大时间{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(p0)}}无条件概率{p_end}
{synopt:{cmd:e(varswitch)}}如果指定，{cmd:varswitch}{p_end}
{synopt:{cmd:e(arswitch)}}如果指定，{cmd:arswitch}{p_end}
{synopt:{cmd:e(ar)}}如果指定 {cmd:ar()} 列出 AR 滞后{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}被 {cmd:margins} 禁止的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}
{synopt:{cmd:e(initvals)}}初始值矩阵{p_end}
{synopt:{cmd:e(uncprob)}}无条件概率矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mswitch.sthlp>}