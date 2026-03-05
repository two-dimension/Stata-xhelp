{smcl}
{* *! version 1.0.11  12dec2018}{...}
{viewerdialog stintreg "dialog stintreg"}{...}
{viewerdialog "svy: stintreg" "dialog stintreg, message(-svy-) name(svy_stintreg)"}{...}
{vieweralsosee "[ST] stintreg" "mansection ST stintreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stintreg postestimation" "help stintreg postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] intreg" "help intreg_zh"}{...}
{vieweralsosee "[ME] meintreg" "help meintreg_zh"}{...}
{vieweralsosee "[ST] stcox" "help stcox_zh"}{...}
{vieweralsosee "[ST] stcurve" "help stcurve_zh"}{...}
{vieweralsosee "[ST] streg" "help streg_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{vieweralsosee "[XT] xtintreg" "help xtintreg_zh"}{...}
{viewerjumpto "语法" "stintreg_zh##syntax"}{...}
{viewerjumpto "菜单" "stintreg_zh##menu"}{...}
{viewerjumpto "描述" "stintreg_zh##description"}{...}
{viewerjumpto "PDF文档链接" "stintreg_zh##linkspdf"}{...}
{viewerjumpto "选项" "stintreg_zh##options"}{...}
{viewerjumpto "示例" "stintreg_zh##examples"}{...}
{viewerjumpto "存储结果" "stintreg_zh##results"}
{help stintreg:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[ST] stintreg} {hline 2}}用于区间右删失生存时间数据的参数模型{p_end}
{p2col:}({mansection ST stintreg:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:stintreg}
[{indepvars}] {ifin} [{it:{help stintreg##weight:weight}}]{cmd:,} 
{opth int:erval(stintreg##timevars:t_l t_u)} {opth dist:ribution(stintreg##distname:distname)}
[{it:options}]

{marker options_table}{...}
{synoptset 27 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent :* {opth int:erval(stintreg##timevars:t_l t_u)}}删失区间的上下端点{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{p2coldent:* {opth dist:ribution(stintreg##distname:distname)}}指定生存分布{p_end}
{synopt :{opt time}}使用加速失效时间度量{p_end}

{syntab:模型2}
{synopt :{opth st:rata(varname)}}分层ID变量{p_end}
{synopt :{opth off:set(varname)}}将{it:varname}包含在模型中，系数约束为1{p_end}
{synopt :{opth anc:illary(varlist)}}使用{it:varlist}来建模第一个附加参数{p_end}
{synopt :{opth anc2(varlist)}}使用{it:varlist}来建模第二个附加参数{p_end}
{synopt :{cmdab:const:raints:(}{it:{help estimation options##constraints():constraints}}{cmd:)}}应用指定的线性约束{p_end}
{synopt:{opt eps:ilon(#)}}将观测值视为未删失的容忍度；默认值为{cmd:epsilon(1e-6)}{p_end}

{syntab:SE/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype}可以是 {opt oim}、 {opt r:obust}、 {opt cl:uster} {it:clustvar}、 {opt opg}、 {opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为{cmd:level(95)}{p_end}
{synopt :{opt nohr}}不报告风险比{p_end}
{synopt :{opt tr:atio}}报告时间比{p_end}
{synopt :{opt nohead:er}}抑制系数表的表头{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help stintreg##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab:最大化}
{synopt :{it:{help stintreg##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p 4 6 2}
* {opt interval(t_l t_u)} 和 {opt distribution(distname)} 是必需的。

{marker distname}{...}
{synoptset 27}{...}
{synopthdr:distname}
{synoptline}
{synopt :{opt e:xponential}}指数生存分布{p_end}
{synopt :{opt gom:pertz}}Gompertz生存分布{p_end}
{synopt :{opt logl:ogistic}}对数逻辑生存分布{p_end}
{synopt :{opt ll:ogistic}}{cmd:loglogistic}的同义词{p_end}
{synopt :{opt w:eibull}}韦布尔生存分布{p_end}
{synopt :{opt logn:ormal}}对数正态生存分布{p_end}
{synopt :{opt ln:ormal}}{cmd:lognormal}的同义词{p_end}
{synopt :{opt ggam:ma}}广义伽马生存分布{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
{it:varlist} 可以包含因子变量；见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
允许使用 {opt bootstrap}、{opt by}、{opt fp}、{opt jackknife}、{opt nestreg}、{opt statsby}、{opt stepwise} 和 {opt svy}；见 {help prefix_zh}。
{p_end}
{p 4 6 2}在 {help bootstrap_zh} 前缀下不允许使用权重。{p_end}
{p 4 6 2}
{opt vce()} 和 {cmd:noheader} 在 {help svy_zh} 前缀下不被允许。
{p_end}
{marker weight}{...}
{p 4 6 2}
可以指定 {opt fweight}s、 {opt iweight}s 和 {opt pweight}s.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}见 {manhelp stintreg_postestimation ST:stintreg postestimation} 获取评估后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 回归模型 >}
    {bf:区间右删失参数生存模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:stintreg} 为可以是不删失的、右删失的、左删失的或区间删失的生存时间数据拟合参数模型。这些模型是通过{help streg_zh}拟合的模型的一种推广，以支持区间删失数据。支持的生存模型有指数、韦布尔、Gompertz、对数正态、对数逻辑和广义伽马。提供比例风险（PH）和加速失效时间（AFT）的参数化。

{pstd}
对于区间删失数据，生存时间变量通过{cmd:stintreg}命令指定，而不是使用{help stset_zh}。{cmd:st}设置将被{cmd:stintreg}忽略。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ST stintregQuickstart:快速开始}

        {mansection ST stintregRemarksandexamples:备注和示例}

        {mansection ST stintregMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt interval(t_l t_u)} 指定两个时间变量，这些变量包含删失区间的端点。{it:t_l}表示下限，{it:t_u}表示上限。{opt interval()}是必需的。

{marker timevars}{...}
{pmore}
区间时间变量 {it:t_l} 和 {it:t_u} 应具有以下形式：

             数据类型{space 24}{it:t_l}{space 4}{it:t_u}
             {hline 50}
             不删失数据{space 9}{it:a} = [{it:a},{it:a}]{space 4}{it:a}{space 6}{it:a} 
             区间删失数据{space 6}({it:a},{it:b}]{space 4}{it:a}{space 6}{it:b}
             左删失数据{space 10}(0,{it:b}]{space 4}{cmd:.}{space 6}{it:b}
             左删失数据{space 10}(0,{it:b}]{space 4}0{space 6}{it:b}
             右删失数据{space 6}[{it:a},+inf){space 4}{it:a}{space 6}{cmd:.} 
	     缺失{space 30}{cmd:.}{space 6}{cmd:.}
	     缺失{space 30}0{space 6}{cmd:.}
             {hline 50}
	     
{phang}
{opt noconstant}; 见
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opth distribution:(stintreg##distname:distname)} 指定要拟合的生存模型。{opt distribution()} 是必需的。

{phang}
{cmd:time}指定模型以加速失效时间度量拟合，而不是以对数相对风险度量或比例风险度量。此选项仅对指数和韦布尔模型有效，因为这两种模型是唯一同时具有比例风险和加速失效时间参数化的模型。无论采用何种度量，似然函数都是相同的，模型在两种度量下都是同样合适的；这仅仅是换个解释的问题。

{dlgtab:模型2}

{phang}
{opth strata(varname)} 指定分层ID变量。观测值具有相同的变量值被视为在相同分层中。然后获得分层估计（在不同层之间系数相同，但截距和附加参数是每个层唯一的）。{it:varname} 可以是因子变量；见 {help fvvarlist_zh}。

{phang}
{opth offset(varname)}；见
      {helpb estimation options##offset():[R] 估计选项}。

{phang}
{opth ancillary(varlist)} 指定对于韦布尔、对数正态、Gompertz 和对数逻辑分布的附加参数，以及广义对数伽马分布的第一个附加参数（sigma）作为{it:varlist}的线性组合进行估计。

{pmore}
当附加参数被约束为严格为正时，附加参数的对数作为{it:varlist}的线性组合进行建模。

{phang}
{opth anc2(varlist)} 指定对于广义对数伽马分布的第二个附加参数（kappa）作为{it:varlist}的线性组合进行估计。

{phang}
{opt constraints(constraints)}；见
       {helpb estimation options##constraints():[R] 估计选项}。

{phang}
{opt epsilon(#)} 指定{it:t_u} - {it:t_l} < {it:#}的观测值被视为未删失。默认为{cmd:epsilon(1e-6)}。

{dlgtab:SE/稳健}

INCLUDE help vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}；见
       {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt nohr}，可在估计时或重新显示结果时指定，指定显示系数而不是指数系数，即显示系数而不是风险比。此选项仅影响如何显示系数，而不影响其估计方式。

{pmore}
此选项仅适用于具有自然比例风险参数化的模型：指数、韦布尔和Gompertz。这三种模型默认报告风险比（指数系数）。

{phang}
{opt tratio} 指定显示指数系数，这些系数被解释为时间比。{opt tratio} 仅适用于对数逻辑、对数正态和广义伽马模型，或者是当以加速失效时间度量拟合的指数和韦布尔模型。

{pmore}
{opt tratio} 可在估计时或重放时指定。

{phang}
{opt noheader} 抑制输出标题，无论是在估计时还是在重放时。

{phang}
{opt nocnsreport}；见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

INCLUDE help displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}
 
{phang}
{it:maximize_options}: {opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}, 
{opt iter:ate(#)}, [{cmd:no}]{opt log}, {opt tr:ace}, {opt grad:ient}, 
{opt showstep}, {opt hess:ian}, {opt showtol:erance}, {opt tol:erance(#)}, 
{opt ltol:erance(#)}, {opt nrtol:erance(#)}, 
{opt nonrtol:erance}, and {opt from(init_specs)}; 见
{help maximize_zh:[R] 最大化}. 这些选项通常很少使用。

{pmore}
将优化类型设置为{cmd:technique(bhhh)}将默认{it:vcetype}重置为{cmd:vce(opg)}。

{pstd}
对于{opt stintreg}可用的以下选项，但在对话框中未显示：

{phang}
{opt collinear}、{opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse aids}{p_end}

{pstd}拟合韦布尔生存模型{p_end}
{phang2}{cmd:. stintreg i.stage, interval(ltime rtime) distribution(weibull)}

{pstd}重放结果，但显示系数而不是风险比{p_end}
{phang2}{cmd:. stintreg, nohr}

{pstd}在加速失效时间度量中拟合韦布尔生存模型{p_end}
{phang2}{cmd:. stintreg i.stage, interval(ltime rtime) distribution(weibull) time}

{pstd}拟合韦布尔生存模型，使用 {cmd:dose} 来建模附加参数{p_end}
{phang2}{cmd:. stintreg i.stage, interval(ltime rtime) distribution(weibull) ancillary(i.dose)}

{pstd}拟合分层韦布尔生存模型{p_end}
{phang2}{cmd:. stintreg i.stage, interval(ltime rtime) distribution(weibull) strata(dose)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:stintreg} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测值数量{p_end}
{synopt:{cmd:e(N_unc)}}未删失观测值数量{p_end}
{synopt:{cmd:e(N_lc)}}左删失观测值数量{p_end}
{synopt:{cmd:e(N_rc)}}右删失观测值数量{p_end}
{synopt:{cmd:e(N_int)}}区间删失观测值数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}总模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_aux)}}附加参数数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}常数-only模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(aux_p)}}附加参数（{cmd:weibull}）{p_end}
{synopt:{cmd:e(gamma)}}附加参数（{cmd:gompertz, loglogistic}）{p_end}
{synopt:{cmd:e(sigma)}}附加参数（{cmd:ggamma, lnormal}）{p_end}
{synopt:{cmd:e(kappa)}}附加参数（{cmd:ggamma}）{p_end}
{synopt:{cmd:e(epsilon)}}未删失观测值的容忍度{p_end}
{synopt:{cmd:e(p)}}模型测试的p值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(rank0)}}{cmd:e(V)}的秩，常数-only模型{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}如果收敛则为{cmd:1}，否则为{cmd:0}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}模型或回归名称{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:stintreg}{p_end}
{synopt:{cmd:e(cmdline)}}按输入的命令{p_end}
{synopt:{cmd:e(depvar)}}在 {cmd:interval()} 中指定的时间区间变量的名称{p_end}
{synopt:{cmd:e(distribution)}}分布{p_end}
{synopt:{cmd:e(strata)}}层变量{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(frm2)}}{cmd:hazard}或 {cmd:time}{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}或 {cmd:LR}；模型卡方
测试的类型{p_end}
{synopt:{cmd:e(offset1)}}主方程的偏移量{p_end}
{synopt:{cmd:e(opt)}}优化的类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max}或{cmd:min}；指示优化器进行
                         最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml}方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(predict_sub)}}{cmd:predict} 子程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins}允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins}不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多20次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stintreg.sthlp>}