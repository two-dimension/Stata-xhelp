{smcl}
{* *! version 1.3.3  19jun2019}{...}
{viewerdialog poisson "dialog poisson"}{...}
{viewerdialog "svy: poisson" "dialog poisson, message(-svy-) name(svy_poisson)"}{...}
{vieweralsosee "[R] poisson" "mansection R poisson"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] poisson postestimation" "help poisson postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: poisson" "help bayes poisson"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[FMM] fmm: poisson" "help fmm poisson"}{...}
{vieweralsosee "[R] glm" "help glm_zh"}{...}
{vieweralsosee "[R] heckpoisson" "help heckpoisson_zh"}{...}
{vieweralsosee "[LASSO] Lasso intro" "help lasso intro"}{...}
{vieweralsosee "[ME] mepoisson" "help mepoisson_zh"}{...}
{vieweralsosee "[R] nbreg" "help nbreg_zh"}{...}
{vieweralsosee "[R] npregress kernel" "help npregress kernel"}{...}
{vieweralsosee "[R] npregress series" "help npregress series"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[R] tpoisson" "help tpoisson_zh"}{...}
{vieweralsosee "[XT] xtpoisson" "help xtpoisson_zh"}{...}
{vieweralsosee "[R] zip" "help zip_zh"}{...}
{viewerjumpto "Syntax" "poisson_zh##syntax"}{...}
{viewerjumpto "Menu" "poisson_zh##menu"}{...}
{viewerjumpto "Description" "poisson_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "poisson_zh##linkspdf"}{...}
{viewerjumpto "Options" "poisson_zh##options"}{...}
{viewerjumpto "Examples" "poisson_zh##examples"}{...}
{viewerjumpto "Stored results" "poisson_zh##results"}
{help poisson:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] poisson} {hline 2}}Poisson 回归{p_end}
{p2col:}({mansection R poisson:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:poisson} {depvar} [{indepvars}] {ifin}
[{it:{help poisson##weight:权重}}]
[{cmd:,}
{it:选项}] 

{synoptset 28 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:不常数}}抑制常数项{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}将 ln({it:varname_e}) 包含在模型中，且系数受限为 1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包含 {it:varname_o}，且系数受限为 1{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可选值为 {opt oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt opg}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置信赖区间的置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt ir:r}}报告发生率比{p_end}
{synopt :{opt nocns:r:eport}}不显示约束{p_end}
{synopt :{it:{help poisson##display_options:显示选项}}}控制
包括帮助短描述显示选项

{syntab :最大化}
{synopt :{it:{help poisson##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线性变量{p_end}
包含帮助短描述系数图例
{synoptline}
{p2colreset}{...}
包含帮助 fvvarlist
{p 4 6 2}{it:depvar}、{it:indepvars}、{it:varname_e} 和 {it:varname_o} 可以包含时间序列运算符；见 {help tsvarlist_zh}。{p_end}
{p 4 6 2}{opt bayes}、{opt bootstrap}、{opt by}、{opt fmm}、{opt fp}、{opt jackknife}、{opt mfp}、{opt mi estimate}、{opt nestreg}、{opt rolling}、{opt statsby}、{opt stepwise} 和 {opt svy} 是允许的；详见 {help prefix_zh}。
更多细节，见 {manhelp bayes_poisson BAYES:bayes: poisson} 和 {manhelp fmm_poisson FMM:fmm: poisson}。{p_end}
包含帮助 vce_mi
{p 4 6 2}与 {help bootstrap_zh} 前缀不允许权重。{p_end}
{p 4 6 2}
{opt vce()} 和权重与 {help svy_zh} 前缀不允许。
{p_end}
{marker weight}{...}
{p 4 6 2}{opt fweight}、{opt iweight} 和 {opt pweight} 是允许的；见 {help weight_zh}。{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
见 {manhelp poisson_postestimation R:poisson postestimation} 获取估计后可用的特性。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 计数结果 > Poisson 回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:poisson} 适配 {depvar} 与 {indepvars} 的 Poisson 回归，其中 {it:depvar} 是一个非负计数变量。

{pstd}
如果您使用面板数据，请参见 {manhelp xtpoisson XT}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R poissonQuickstart:快速入门}

        {mansection R poissonRemarksandexamples:备注和示例}

        {mansection R poissonMethodsandformulas:方法和公式}

{pstd}
以上部分并未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}、 
{opth "exposure(varname:varname_e)"}, 
{opt offset(varname_o)}， 
{opt constraints(constraints)}；见 {helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健性}

包含帮助 vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt irr} 报告转化为发生率比的估计系数，即 exp(b) 而不是 b。标准误和置信区间也是相应转化。此选项影响结果的显示方式，而非估计或存储方式。{opt irr} 可在估计时或重新显示之前估计的结果时指定。

{phang}
{opt nocnsreport}；见 {helpb estimation options##nocnsreport:[R] 估计选项}。

包含帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}、 
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}、 
{opt iter:ate(#)}、 
[{cmd:no}]{opt log}、 
{opt tr:ace}、 
{opt grad:ient}、 
{opt showstep}、 
{opt hess:ian}、 
{opt showtol:erance}、 
{opt tol:erance(#)}、 {opt ltol:erance(#)}， 
{opt nrtol:erance(#)}、 {opt nonrtol:erance} 和 
{opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会将默认的 {it:vcetype} 重置为 {cmd:vce(opg)}。

{pstd}
以下选项可与 {opt poisson} 一起使用，但不在对话框中显示：

{phang}
{opt collinear}、 {opt coeflegend}；见 {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}准备{p_end}
{phang2}{cmd:. webuse dollhill3}{p_end}

{pstd}适配 Poisson 回归{p_end}
{phang2}{cmd:. poisson deaths smokes i.agecat, exposure(pyears)}{p_end}

{phang}获取发生率比{p_end}
{phang2}{cmd:. poisson deaths smokes i.agecat, exposure(pyears)}{cmd:irr}{p_end}

{phang}重新显示结果，但使用 99% 的置信区间{p_end}
{phang2}{cmd:. poisson, level(99) irr}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:poisson} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}总模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(r2_p)}}伪 R-squared{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(chi2)}}卡方值{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示已收敛，{cmd:0} 表示未收敛{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:poisson}{p_end}
{synopt:{cmd:e(cmdline)}}按键入命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方类型
测试{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}标签用于标记标准误差{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；指示优化器执行
最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <poisson.sthlp>}