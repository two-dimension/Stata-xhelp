{smcl}
{* *! version 1.0.25  22mar2019}{...}
{viewerdialog sspace "dialog sspace"}{...}
{vieweralsosee "[TS] sspace" "mansection TS sspace"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] sspace postestimation" "help sspace postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arima" "help arima_zh"}{...}
{vieweralsosee "[TS] dfactor" "help dfactor_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] ucm" "help ucm_zh"}{...}
{vieweralsosee "[TS] var" "help var_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[DSGE]" "mansection DSGE dsge"}{...}
{viewerjumpto "Syntax" "sspace_zh##syntax"}{...}
{viewerjumpto "Menu" "sspace_zh##menu"}{...}
{viewerjumpto "Description" "sspace_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sspace_zh##linkspdf"}{...}
{viewerjumpto "Options" "sspace_zh##options"}{...}
{viewerjumpto "Examples" "sspace_zh##examples"}{...}
{viewerjumpto "Stored results" "sspace_zh##results"}{...}
{viewerjumpto "References" "sspace_zh##references"}
{help sspace:English Version}
{hline}{...}
{p2colset 1 16 20 2}{...}
{p2col:{bf:[TS] sspace} {hline 2}}状态空间模型{p_end}
{p2col:}({mansection TS sspace:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
协方差形式语法

{p 8 15 2}
{cmd:sspace}
{it:state_ceq}
[{it:state_ceq} ... {it:state_ceq}]
{it:obs_ceq} [{it:obs_ceq} ... {it:obs_ceq}]
{ifin} 
[{cmd:,} {it:{help sspace##options_table:选项}}]

{pstd}
其中每个 {it:state_ceq} 的形式为

{phang2}
{cmd:(}{it:statevar} 
	[{it:lagged_statevars}] [{indepvars}]{cmd:, state}
        [{opt noerr:or} {opt nocons:tant}]{cmd:)}

{pstd}
而每个 {it:obs_ceq} 的形式为

{phang2}
{cmd:(}{depvar}
        [{it:statevars}] [{indepvars}]
	[{cmd:,} {opt noerr:or} {opt nocons:tant}]{cmd:)}


{pstd}
误差形式语法

{p 8 15 2}
{cmd:sspace}
{it:state_efeq} [{it:state_efeq} ... {it:state_efeq}]
{it:obs_efeq} [{it:obs_efeq} ... {it:obs_efeq}]
{ifin}
[{cmd:,} {it:{help sspace##options_table:选项}}]

{pstd}
其中每个 {it:state_efeq} 的形式为

{phang2}
     {cmd:(}{it:statevar} 
     [{it:lagged_statevars}] [{indepvars}]
     [{it:state_errors}]{cmd:,} {cmd:state}
	[{opt nocons:tant}]{cmd:)}

{pstd}
而每个 {it:obs_efeq} 的形式为

{phang2}
      {cmd:(}{depvar} 
      [{it:statevars}] [{indepvars}]
      [{it:obs_errors}]
      [{cmd:,} {opt nocons:tant}]{cmd:)}

{phang}
{it:statevar} 是未观察状态的名称，而不是变量。如果恰好有一个同名的变量，该变量将被忽略，并且在估计中没有作用。

{phang}
{it:lagged_statevars} 是滞后 {it:statevar} 的列表。仅允许第一次滞后。

{phang}
{it:state_errors} 是进入状态方程的状态方程误差的列表。每个状态误差的形式为 {cmd:e.}{it:statevar}，其中 {it:statevar} 是模型中的状态名称。

{phang}
{it:obs_errors} 是进入观测变量方程的观测方程误差的列表。每个误差的形式为 {cmd:e.}{depvar}，其中 {it:depvar} 是模型中的观察到的因变量。

{synoptset 26 tabbed}{...}
{synopthdr :方程级选项}
{synoptline}
{syntab:模型}
{synopt :{opt state}}指定该方程为状态方程{p_end}
{synopt :{opt noerr:or}}指定该方程中没有误差项{p_end}
{synopt :{opt nocons:tant}}从方程中去掉常数项{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opth covst:ate(sspace##covform:covform)}}指定状态变量误差的协方差结构{p_end}
{synopt :{opth covob:served(sspace##covform:covform)}}指定观察到的因变量的误差协方差结构{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可能是 {opt oim}
	或 {opt r:obust}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置信任水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help sspace##display_options:显示选项}}}控制
包含帮助简短描述显示选项

{syntab:最大化}
{synopt :{it:{help sspace##maximize_options:最大化选项}}}控制
           最大化过程；很少使用{p_end}

{syntab:高级}
{synopt :{opth meth:od(sspace##method:方法)}}指定计算对数似然的方法；很少使用{p_end}

包含帮助简短描述系数图例
{synoptline}
{p2colreset}{...}

{marker covform}{...}
{synoptset 26 }{...}
{synopthdr:协方差形式}
{synoptline}
{synopt: {opt id:entity}}单位矩阵；误差形式的默认值{p_end}
{synopt: {opt ds:calar}}对角线标量矩阵{p_end}
{synopt: {opt di:agonal}}对角矩阵；协方差形式的默认值{p_end}
{synopt: {opt un:structured}}对称的正定矩阵；不能用于误差形式{p_end}
{synoptline}

{marker method}{...}
{synopthdr:方法}
{synoptline}
{synopt:{opt hyb:rid}}使用平稳卡尔曼滤波器和De Jong扩散卡尔曼滤波器；默认值{p_end}
{synopt: {opt dej:ong}}使用平稳的De Jong卡尔曼滤波器和扩散卡尔曼滤波器{p_end}
{synopt: {opt kdif:fuse}}使用平稳卡尔曼滤波器和非平稳的大卡帕扩散卡尔曼滤波器；很少使用{p_end}
{synoptline}

{p 4 6 2}在使用 {opt sspace} 之前，您必须 {opt tsset} 数据；见
{manhelp tsset TS}.{p_end}
{p 4 6 2}{it:indepvars} 可能包含因子变量；见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}{it:indepvars} 和 {it:depvar} 可能包含时间序列操作符；
      见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:by}、{cmd:rolling} 和 {cmd:statsby} 是允许的；见
      {help prefix_zh}.{p_end}
{p 4 6 2}{opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}请参见 {manhelp sspace_postestimation TS:sspace postestimation} 以获取估计后可用的功能.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > 状态空间模型}


{marker description}{...}
{title:描述}

{pstd}
{opt sspace} 通过最大似然估计线性状态空间模型的参数。线性状态空间模型非常灵活，许多线性时间序列模型可以写成线性状态空间模型。

{pstd}
{opt sspace} 使用两种形式的卡尔曼滤波器递归地获得未观察状态和测量的因变量的条件均值和方差，这些用于计算似然。

{pstd}
{opt sspace} 的协方差形式语法和误差形式语法反映了研究人员指定状态空间模型的两种不同形式。选择对您来说更容易的语法；这两种形式是同构的。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection TS sspaceQuickstart:快速入门}

        {mansection TS sspaceRemarksandexamples:备注和示例}

        {mansection TS sspaceMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

    {title:方程级选项}

{dlgtab:模型}

{phang}
{opt state} 指定该方程为状态方程。

{phang}
{opt noerror} 指定该方程中没有误差项。 {opt noerror} 不能在误差形式语法中指定。

{phang}
{opt noconstant} 从方程中去掉常数项。

    {title:选项}

{dlgtab:模型}

{phang}
{opt covstate(covform)} 指定状态误差的协方差结构。

{phang2}
{cmd:covstate(identity)} 指定协方差矩阵等于单位矩阵，并且这是误差形式的默认值。

{phang2}
{cmd:covstate(dscalar)} 指定协方差矩阵等于 sigma_{state}^2 乘以单位矩阵。

{phang2}
{cmd:covstate(diagonal)} 指定对角线协方差矩阵，并且这是协方差形式的默认值。

{phang2}
{cmd:covstate(unstructured)} 指定一个对称的正定协方差矩阵，具有所有方差和协方差的参数。
{cmd:covstate(unstructured)} 不能与误差形式一起指定。

{phang}
{opt covobserved(covform)} 指定观察误差的协方差结构。

{phang2}
{cmd:covobserved(identity)} 指定协方差矩阵等于单位矩阵，并且这是误差形式的默认值。

{phang2}
{cmd:covobserved(dscalar)} 指定协方差矩阵等于 sigma_{observed}^2 乘以单位矩阵。

{phang2}
{cmd:covobserved(diagonal)} 指定对角线协方差矩阵，并且这是协方差形式的默认值。

{phang2}
{cmd:covobserved(unstructured)} 指定一个对称的正定协方差矩阵，具有所有方差和协方差的参数。
{cmd:covobserved(unstructured)} 不能与误差形式一起指定。

{phang}
{opt constraints(constraints)}；见 
{helpb estimation options##constraints():[R] 估计选项}。

{dlgtab:标准误/稳健}

{phang}
{opt vce(vcetype)} 指定估计量的方差-协方差矩阵的估计量。

{phang2}
{cmd:vce(oim)}，默认情况下，使得 {cmd:sspace} 使用观察信息矩阵估计。

{phang2}
{cmd:vce(robust)} 导致 {cmd:sspace} 使用 Huber/White/三明治估计量。

{dlgtab:报告}

{phang}
{opt level(#)}, {opt nocnsreport}；见
{helpb estimation options##level():[R] 估计选项}。

包含帮助显示选项列表

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
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
{opt nrtol:erance(#)}，以及
{opt from(matname)}； 
见 {help maximize_zh:[R] 最大化}，有关所有选项（除 {opt from()} 外的信息），以及下面的 {opt from()} 的信息。这些选项很少使用。

{phang2}
{opt from(matname)} 指定最大化过程的初始值。 {cmd:from(b0)} 导致 {cmd:sspace} 从 {cmd:b0} 中的值开始最大化算法。 {cmd:b0} 必须是一个行向量；列数必须等于模型中的参数数量；并且 {cmd:b0} 中的值必须与 {cmd:e(b)} 中的参数顺序相同。

{dlgtab:高级}

{phang}
{opt method(method)} 指定如何计算对数似然。该选项很少使用。

{phang2}
{cmd:method(hybrid)} ，默认情况下，使用卡尔曼滤波器并在模型平稳时使用基于模型的状态初始值，在模型非平稳时使用 De Jong（{help sspace##D1988:1988}，{help sspace##D1991:1991}）扩散卡尔曼滤波器。

{phang2}
{cmd:method(dejong)} 在模型平稳时使用卡尔曼滤波器和 {help sspace##D1988:De Jong (1988)} 方法估计状态的初始值，在模型非平稳时使用 De Jong（{help sspace##D1988:1988}，{help sspace##D1991:1991}）扩散卡尔曼滤波器。

{phang2}
{cmd:method(kdiffuse)} 是一种很少使用的方法，在模型平稳时使用卡尔曼滤波器并采用基于模型的状态初始值，在模型非平稳时使用大卡帕扩散卡尔曼滤波器。

{pstd}
以下选项可用于 {cmd:sspace} 但不显示在对话框中：

{phang}
{opt coeflegend}；见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse manufac}{p_end}
{phang2}{cmd:. constraint 1 [D.lncaputil]u = 1}{p_end}

{pstd}为 {cmd:lncaputil} 拟合 AR(1) 模型{p_end}
{phang2}{cmd:. sspace  (u L.u, state noconstant) (D.lncaputil u,  noerror), constraints(1)}{p_end}

{pstd}设置{p_end}
{phang2}{cmd:. constraint 2 [u1]L.u2 = 1}{p_end}
{phang2}{cmd:. constraint 3 [u1]e.u1 = 1}{p_end}
{phang2}{cmd:. constraint 4 [D.lncaputil]u1 = 1}{p_end}

{pstd}为 {cmd:lncaputil} 拟合 ARMA(1,1) 模型{p_end}
{phang2}{cmd:. sspace (u1 L.u1 L.u2 e.u1, state noconstant)}
 {cmd:(u2 e.u1, state noconstant)}
 {cmd:(D.lncaputil u1, noconstant), constraints(2/4) covstate(diagonal)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:sspace} 在 {cmd:e()} 中存储以下内容：

{synoptset 23 tabbed}{...}
{p2col 5 23 27 2: 标量}{p_end}
{synopt :{cmd:e(N)}}观察数量{p_end}
{synopt :{cmd:e(k)}}参数数量{p_end}
{synopt :{cmd:e(k_eq)}}{cmd:e(b)} 中方程的数量{p_end}
{synopt :{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt :{cmd:e(k_obser)}}观察方程的数量{p_end}
{synopt :{cmd:e(k_state)}}状态方程的数量{p_end}
{synopt :{cmd:e(k_obser_err)}}观察误差项的数量{p_end}
{synopt :{cmd:e(k_state_err)}}状态误差项的数量{p_end}
{synopt :{cmd:e(df_m)}}模型自由度{p_end}
{synopt :{cmd:e(ll)}}对数似然{p_end}
{synopt :{cmd:e(chi2)}}卡方值{p_end}
{synopt :{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt :{cmd:e(tmin)}}样本中的最小时间{p_end}
{synopt :{cmd:e(tmax)}}样本中的最大时间{p_end}
{synopt :{cmd:e(stationary)}}{cmd:1} 如果估计参数表示模型为平稳，{cmd:0} 否则{p_end}
{synopt :{cmd:e(rank)}}VCE的秩{p_end}
{synopt :{cmd:e(ic)}}迭代次数{p_end}
{synopt :{cmd:e(rc)}}返回代码{p_end}
{synopt :{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{p2col 5 23 27 2:宏}{p_end}
{synopt :{cmd:e(cmd)}}{opt sspace}{p_end}
{synopt :{cmd:e(cmdline)}}输入的命令{p_end}
{synopt :{cmd:e(depvar)}}观察方程中因变量的未操作名称{p_end}
{synopt :{cmd:e(obser_deps)}}观察方程中因变量的名称{p_end}
{synopt :{cmd:e(state_deps)}}状态方程中因变量的名称{p_end}
{synopt :{cmd:e(covariates)}}协变量列表{p_end}
{synopt :{cmd:e(tvar)}}表示组内时间的变量{p_end}
{synopt :{cmd:e(eqnames)}}方程名称{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(tmins)}}格式化的最小时间{p_end}
{synopt :{cmd:e(tmaxs)}}格式化的最大时间{p_end}
{synopt :{cmd:e(R_structure)}}观察变量误差协方差矩阵的结构{p_end}
{synopt :{cmd:e(Q_structure)}}状态误差协方差矩阵的结构{p_end}
{synopt :{cmd:e(chi2type)}}{opt Wald};模型卡方检验的类型{p_end}
{synopt :{cmd:e(vce)}}{it:vcetype} 在 {opt vce()} 中指定{p_end}
{synopt :{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt :{cmd:e(opt)}}优化类型{p_end}
{synopt :{cmd:e(method)}}似然方法{p_end}
{synopt :{cmd:e(initial_values)}}初始值类型{p_end}
{synopt :{cmd:e(technique)}}最大化技术{p_end}
{synopt :{cmd:e(tech_steps)}}在最大化技术中进行的迭代{p_end}
{synopt :{cmd:e(datasignature)}}校验和{p_end}
{synopt :{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt :{cmd:e(properties)}}{opt b V}{p_end}
{synopt :{cmd:e(estat_cmd)}}实现 {opt estat} 的程序{p_end}
{synopt :{cmd:e(predict)}}实现 {opt predict} 的程序{p_end}
{synopt :{cmd:e(marginsnotok)}}被 {opt margins} 禁止的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 23 27 2:矩阵}{p_end}
{synopt :{cmd:e(b)}}参数向量{p_end}
{synopt :{cmd:e(Cns)}}约束矩阵{p_end}
{synopt :{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt :{cmd:e(gradient)}}梯度向量{p_end}
{synopt :{cmd:e(gamma)}}从参数向量到状态空间矩阵的映射{p_end}
{synopt :{cmd:e(A)}}估计的 {cmd:A} 矩阵{p_end}
{synopt :{cmd:e(B)}}估计的 {cmd:B} 矩阵{p_end}
{synopt :{cmd:e(C)}}估计的 {cmd:C} 矩阵{p_end}
{synopt :{cmd:e(D)}}估计的 {cmd:D} 矩阵{p_end}
{synopt :{cmd:e(F)}}估计的 {cmd:F} 矩阵{p_end}
{synopt :{cmd:e(G)}}估计的 {cmd:G} 矩阵{p_end}
{synopt :{cmd:e(chol_R)}}估计的 {cmd:R} 矩阵的 Cholesky 因子{p_end}
{synopt :{cmd:e(chol_Q)}}估计的 {cmd:Q} 矩阵的 Cholesky 因子{p_end}
{synopt :{cmd:e(chol_Sz0)}}初始状态协方差矩阵的 Cholesky 因子{p_end}
{synopt :{cmd:e(z0)}}初始状态向量，附加包含不平稳成分的矩阵{p_end}
{synopt :{cmd:e(d)}}在非平稳模型中，扩散初始状态向量中的附加项{p_end}
{synopt :{cmd:e(T)}}部分不平稳模型中初始状态协方差的二次型内部分{p_end}
{synopt :{cmd:e(M)}}部分不平稳模型中初始状态协方差的二次型外部分{p_end}
{synopt :{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt :{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{p2col 5 23 27 2:函数}{p_end}
{synopt :{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker D1988}{...}
{phang}
De Jong, P.  1988.  状态空间模型的似然。
{it:Biometrika} 75: 165-169.

{marker D1991}{...}
{phang}
------.  1991.  扩散卡尔曼滤波器。
{it:Annals of Statistics} 19: 1073-1083.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sspace.sthlp>}