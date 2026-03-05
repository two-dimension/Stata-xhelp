{smcl}
{* *! version 1.3.7  12dec2018}{...}
{viewerdialog xtfrontier "dialog xtfrontier"}{...}
{vieweralsosee "[XT] xtfrontier" "mansection XT xtfrontier"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtfrontier postestimation" "help xtfrontier postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] frontier" "help frontier_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "xtfrontier_zh##syntax"}{...}
{viewerjumpto "Menu" "xtfrontier_zh##menu"}{...}
{viewerjumpto "Description" "xtfrontier_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtfrontier_zh##linkspdf"}{...}
{viewerjumpto "Options for time-invariant model" "xtfrontier_zh##options_ti"}{...}
{viewerjumpto "Options for time-varying decay model" "xtfrontier_zh##options_tv"}{...}
{viewerjumpto "Examples" "xtfrontier_zh##examples"}{...}
{viewerjumpto "Stored results" "xtfrontier_zh##results"}
{help xtfrontier:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[XT] xtfrontier} {hline 2}}面板数据的随机前沿模型{p_end}
{p2col:}({mansection XT xtfrontier:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
时间不变模型

{p 8 19 2}{cmd:xtfrontier}
{depvar}
[{indepvars}] {ifin}
[{it:{help xtfrontier##weight:权重}}]
{cmd:,} {cmd:ti}
[{it:{help xtfrontier##tioptions:时间不变选项}}]


{phang}
时间可变衰减模型

{p 8 19 2}{cmd:xtfrontier}
{depvar}
[{indepvars}] {ifin}
[{it:{help xtfrontier##weight:权重}}]
{cmd:,} {cmd:tvd}
[{it:{help xtfrontier##tvdoptions:时间可变衰减选项}}]


{marker tioptions}{...}
{synoptset 28 tabbed}{...}
{synopthdr :时间不变选项}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:常数项}}抑制常数项{p_end}
{synopt :{opt ti}}使用时间不变模型{p_end}
{synopt :{opt cost}}拟合成本前沿模型{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}, {opt boot:strap},
    或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help xtfrontier##ti_display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

{syntab:最大化}
{synopt :{it:{help xtfrontier##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{marker tvdoptions}{...}
{synoptset 28 tabbed}{...}
{synopthdr :时间可变衰减选项}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:常数项}}抑制常数项{p_end}
{synopt :{opt tvd}}使用时间可变衰减模型{p_end}
{synopt :{opt cost}}拟合成本前沿模型{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim},
       {opt boot:strap}, 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help xtfrontier##tvd_display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

{syntab:最大化}
{synopt :{it:{help xtfrontier##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{p 4 6 2}
必须指定面板变量。对于 {cmd:xtfrontier, tvd}，还必须指定时间变量。使用 {help xtset_zh}.{p_end}
INCLUDE help fvvarlist
{p 4 6 2}
{it:depvars} 和 {it:indepvars} 可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
{opt by}, {opt fp}, 和 {opt statsby} 是允许的；见 {help prefix_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {opt fweight}s 和 {opt iweight}s；见 {help weight_zh}。
权重在面板内必须是恒定的。{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
有关估计后可用的功能，请参见 {manhelp xtfrontier_postestimation XT:xtfrontier postestimation}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 前沿模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtfrontier} 为面板数据拟合随机生产或成本前沿模型，其干扰项是无效率项和特异性误差的混合。 {cmd:xtfrontier} 可以拟合时间不变模型，其中假设无效率项具有截断正态分布，或者拟合时间可变衰减模型，其中无效率项被建模为乘以时间函数的截断正态随机变量。

{pstd}
{cmd:xtfrontier} 期望因变量和自变量在自然对数尺度上；此变换必须在进行估计之前进行。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection XT xtfrontierQuickstart:快速入门}

        {mansection XT xtfrontierRemarksandexamples:备注和示例}

        {mansection XT xtfrontierMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在本帮助文件中。


{marker options_ti}{...}
{title:时间不变模型选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 见
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt ti} 指定估计时间不变技术无效率模型的参数。

{phang}
{opt cost} 指定前沿模型根据成本函数拟合，而不是生产函数。默认情况下，{cmd:xtfrontier} 拟合生产前沿模型。

{phang}
{opt constraints(constraints)}；
见 {helpb estimation options##constraints():[R] 估计选项}。

{dlgtab:标准误}

INCLUDE help xt_vce_asymptbj

{dlgtab:报告}

{phang}
{opt level(#)}；见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt nocnsreport}; 见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

{marker ti_display_options}{...}
INCLUDE help displayopts_list

{dlgtab:最大化}

{phang}
{marker maximize_options}
{it:maximize_options}: {opt dif:ficult},
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
{opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pstd}
在 {opt xtfrontier} 中可用的以下选项未在对话框中显示：

{phang}
{opt collinear}, {opt coeflegend}; 见
     {helpb estimation options:[R] 估计选项}。


{marker options_tv}{...}
{title:时间可变衰减模型选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 见
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt tvd} 指定估计时间可变衰减模型的参数。

{phang}
{opt cost} 指定前沿模型根据成本函数拟合，而不是生产函数。默认情况下，{cmd:xtfrontier} 拟合生产前沿模型。

{phang}
{opt constraints(constraints)}；
见 {helpb estimation options##constraints():[R] 估计选项}。

{dlgtab:标准误}

INCLUDE help xt_vce_asymptbj

{dlgtab:报告}

{phang}
{opt level(#)}；见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt nocnsreport}; 见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

{marker tvd_display_options}{...}
INCLUDE help displayopts_list

{dlgtab:最大化}

{phang}
{it:maximize_options}: {opt dif:ficult},
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
{opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pstd}
在 {opt xtfrontier} 中可用的以下选项未在对话框中显示：

{phang}
{opt collinear}, {opt coeflegend}; 见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse xtfrontier1}{p_end}

{pstd}时间不变模型{p_end}
{phang2}{cmd:. xtfrontier lnwidgets lnmachines lnworkers, ti}

{pstd}时间可变衰减模型{p_end}
{phang2}{cmd:. xtfrontier lnwidgets lnmachines lnworkers, tvd}

{pstd}带约束的时间可变衰减模型{p_end}
{phang2}{cmd:. constraint 1 [eta]_cons = 0}{p_end}
{phang2}{cmd:. xtfrontier lnwidgets lnmachines lnworkers, tvd constraints(1)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xtfrontier} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_g)}}组数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(g_min)}}每组的最小观察数量{p_end}
{synopt:{cmd:e(g_avg)}}每组的平均观察数量{p_end}
{synopt:{cmd:e(g_max)}}每组的最大观察数量{p_end}
{synopt:{cmd:e(sigma2)}}sigma2{p_end}
{synopt:{cmd:e(gamma)}}gamma{p_end}
{synopt:{cmd:e(Tcon)}}{cmd:1} 如果面板平衡，{cmd:0} 否则{p_end}
{synopt:{cmd:e(sigma_u)}}技术无效率的标准差{p_end}
{synopt:{cmd:e(sigma_v)}}随机误差的标准差{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的p值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtfrontier}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(tvar)}}表示组内时间的变量{p_end}
{synopt:{cmd:e(function)}}{cmd:生产} 或 {cmd:成本}{p_end}
{synopt:{cmd:e(model)}}{cmd:ti}，在时间不变模型后；{cmd:tvd}，在时间可变衰减模型后{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器是否执行
                         最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多20次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计值的方差-协方差矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtfrontier.sthlp>}