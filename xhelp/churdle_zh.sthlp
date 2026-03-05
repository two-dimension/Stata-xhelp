{smcl}
{* *! version 1.0.10  01may2019}{...}
{viewerdialog churdle "dialog churdle"}{...}
{viewerdialog "svy: churdle" "dialog churdle, message(-svy-) name(svy_churdle)"}{...}
{vieweralsosee "[R] churdle" "mansection R churdle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] churdle postestimation" "help churdle postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] intreg" "help intreg_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{vieweralsosee "[R] tobit" "help tobit_zh"}{...}
{viewerjumpto "Syntax" "churdle_zh##syntax"}{...}
{viewerjumpto "Menu" "churdle_zh##menu"}{...}
{viewerjumpto "Description" "churdle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "churdle_zh##linkspdf"}{...}
{viewerjumpto "Options" "churdle_zh##options"}{...}
{viewerjumpto "Examples" "churdle_zh##examples"}{...}
{viewerjumpto "Stored results" "churdle_zh##results"}
{help churdle:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] churdle} {hline 2}}Cragg hurdle 回归{p_end}
{p2col:}({mansection R churdle:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
基本语法

{p 8 16 2}{cmd:churdle}
{cmdab:lin:ear}
{depvar}{cmd:,}
  {cmdab:sel:ect(}{it:{help varlist_zh:varlist_s}}{cmd:)}
  {c -(}{cmd:ll(}...{cmd:)} | {cmd:ul(}...{cmd:)}{c )-}

{p 8 16 2}{cmd:churdle}
{cmdab:exp:onential}
{depvar}{cmd:,}
{cmdab:sel:ect(}{it:{help varlist_zh:varlist_s}}{cmd:)}
{cmd:ll(}...{cmd:)}


{phang}
churdle 线性回归的完整语法

{p 8 16 2}{cmd:churdle}
{cmdab:lin:ear}
{depvar} [{indepvars}] {ifin}
[{it:{help churdle##weight:weight}}]{cmd:,}
  {cmdab:sel:ect(}{it:{help varlist_zh:varlist_s}}[{cmd:,}
  {cmdab:nocons:tant}
  {cmd:het(}{it:{help varlist_zh:varlist_o}}{cmd:)}]{cmd:)}
  {c -(}{cmd:ll(}{it:#}|{varname}{cmd:)} | {cmd:ul(}{it:#}|{varname}{cmd:)}{c )-}
   [{it:options}]


{phang}
churdle 指数模型的完整语法

{p 8 16 2}{cmd:churdle}
{cmdab:exp:onential}
{depvar} [{indepvars}] {ifin}
[{it:{help churdle##weight:weight}}]{cmd:,} 
{cmdab:sel:ect(}{it:{help varlist_zh:varlist_s}}[{cmd:,}
{cmdab:nocons:tant}
{opth het:(varlist:varlist_o)}]{cmd:)} {cmd:ll(}{it:#}|{varname}{cmd:)}
[{it:options}]


{synoptset 25 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent:* {cmdab:sel:ect()}}指定选择模型的自变量和选项 {p_end}
{p2coldent:+ {cmd:ll(}{it:#}|{varname}{cmd:)}}下限 {p_end}
{p2coldent:+ {cmd:ul}({it:#}|{varname}{cmd:)}}上限 {p_end}
{synopt :{cmdab:nocons:tant}}抑制常数项 {p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():constraints}}{cmd:)}}应用指定的线性约束 {p_end}
{synopt :{opth het(varlist)}}指定用于建模方差的变量 {p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:oim}、{cmdab:r:obust}、{cmdab:cl:uster} {it:clustvar}、{opt boot:strap} 或 {cmdab:jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{cmdab:nocns:r:eport}}不显示约束 {p_end}
{synopt :{it:{help churdle##display_options:display_options}}}控制
包含帮助简短描述-显示选项

{syntab:最大化}
{synopt :{it:{help churdle##maximize_options:maximize_options}}}控制最大化过程；很少使用 {p_end}

包含帮助简短描述-系数图例
{synoptline}
{p 4 6 2}* {cmd:select()} 是必需的。
完整规范是 {p_end}
{p 10 10 2}
{cmdab:sel:ect(}{it:varlist_s}[{cmd:,} {cmdab:nocons:tant} {opt het(varlist_o)}]{cmd:)}{p_end}
{p 6 6 2}{cmd:noconstant} 指定常数从选择模型中排除。 {opt het(varlist_o)} 指定选择模型的误差方差函数中的变量。{p_end}
{p 4 6 2}+ 必须至少指定 {cmd:ul(}{it:#}|{it:varname}{cmd:)} 或 {cmd:ll(}{it:#}|{it:varname}{cmd:)} 的一个用于线性模型，并且必须为指数模型指定 {cmd:ll(}{it:#}|{it:varname}{cmd:)}。{p_end}
{p 4 6 2}
{it:indepvars}、{it:varlist_s} 和 {it:varlist_o} 可以包含因子变量；见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{cmd:bootstrap}、{cmd:by}、{cmd:fp}、{cmd:jackknife}、{cmd:rolling}、{cmd:statsby} 和 {cmd:svy} 被允许；见 {help prefix_zh}。
{p_end}
{p 4 6 2}不允许使用权重与 {help bootstrap_zh} 前缀。{p_end}
{p 4 6 2}不允许使用 {opt vce()} 和权重与 {help svy_zh} 前缀。{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}、{cmd:iweight} 和 {cmd:pweight} 是被允许的；见 {help weight_zh}。{p_end}
{p 4 6 2}
{cmd:coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
见 {manhelp churdle_postestimation R:churdle postestimation} 获取估计后的可用功能。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型与相关 > 碰撞回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:churdle} 适用于有界因变量的线性或指数障碍模型。障碍模型结合了选择模型，该模型确定因变量的边界点，以及结果模型，该模型确定其非有界值。每个模型允许不同的自变量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R churdleQuickstart:快速开始}

        {mansection R churdleRemarksandexamples:备注与示例}

        {mansection R churdleMethodsandformulas:方法与公式}

{pstd}
上述各部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:select(}{it:{help varlist_zh:varlist_s}}[{cmd:, noconstant} 
{opth het:(varlist:varlist_o)}]{cmd:)} 指定选择模型的变量和选项。 {cmd:select()} 是必需的。

{phang}
{cmd:ll(}{it:#}|{varname}{cmd:)} 和
{cmd:ul(}{it:#}|{varname}{cmd:)} 分别表示因变量的下限和上限。 线性模型必须指定一个或两个，而指数模型必须指定下限。具有 {depvar} <= {cmd:ll()} 的观测值具有下限；具有 {it:depvar} >= {cmd:ul()} 的观测值具有上限；其余观测值位于连续区域内。

{phang}
{cmd:noconstant}、{opt constraints(constraints)}；见 
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opth het(varlist)} 指定结果模型的误差方差函数中的变量。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误的类型，包括根据渐近理论推导的类型（{cmd:oim}）、对某些类型错误规格稳健的类型（{cmd:robust}）、允许组内相关性的类型（{cmd:cluster}、{it:clustvar}），以及使用自助法或留一法的方法（{cmd:bootstrap}、{cmd:jackknife}）；见 
{help vce_option_zh:[R] {it:vce_option}}。

{dlgtab:报告}

{phang}
{opt level(#)}、{cmd:nocnsreport}；
见 {helpb estimation options##nocnsreport:[R] 估计选项}。

包含帮助显示选项列表

{dlgtab:最大化}

{marker maximize_options}{...}
{phang}
{it:maximize_options}：
{cmdab:dif:ficult}、{opt tech:nique(algorithm_spec)}、{opt iter:ate(#)}、[{cmd:no}]{cmd:log}、{cmdab:tr:ace}、{cmdab:grad:ient}、{cmd:showstep}、{cmdab:hess:ian}、{cmdab:showtol:erance}、{opt tol:erance(#)}、{opt ltol:erance(#)}、{opt nrtol:erance(#)}、{cmdab:nonrtol:erance} 和 {opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。这些选项很少使用。

{pstd}
以下选项可与 {cmd:churdle} 一起使用，但不在对话框中显示：

{phang}
{cmd:coeflegend}；见 
{helpb estimation options##level():[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse fitness}{p_end}

{pstd}Cragg 障碍线性回归{p_end}
{phang2}{cmd:. churdle linear hours age i.smoke distance i.single, select(commute whours age) ll(0)}{p_end}

{pstd}自变量 {cmd:age} 的平均边际效应{p_end}
{phang2}{cmd:. margins, dydx(age)}{p_end}

{pstd}带方差模型的 Cragg 障碍线性回归{p_end}
{phang2}{cmd:. churdle linear hours age i.smoke distance i.single, select(commute whours age, het(age single)) ll(0)}{p_end}

{pstd}Cragg 障碍指数回归{p_end}
{phang2}{cmd:. churdle exponential hours age i.smoke distance i.single, select(commute whours age) ll(0) nolog}{p_end}

{pstd}自变量 {cmd:age} 的平均边际效应{p_end}
{phang2}{cmd:. margins, dydx(age)}{p_end}


{marker results}{...}
{title:储存的结果}

{pstd}
{cmd:churdle} 在 {cmd:e()} 中存储以下结果：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测值数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(r2_p)}}伪 R 方{p_end}
{synopt:{cmd:e(chi2)}}卡方值{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(v)} 的秩{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示已收敛，{cmd:0} 否则 {p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:churdle}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(estimator)}}{cmd:linear} 或 {cmd:exponential}{p_end}
{synopt:{cmd:e(model)}}{cmd:Linear} 或 {cmd:Exponential}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；指示优化器执行最大化或最小化{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}被 {cmd:margins} 禁止的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 视为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 视为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <churdle.sthlp>}