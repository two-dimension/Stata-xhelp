{smcl}
{* *! version 1.0.20  12dec2018}{...}
{viewerdialog etpoisson "dialog etpoisson"}{...}
{viewerdialog "svy: etpoisson" "dialog etpoisson, message(-svy-) name(svy_etpoisson)"}{...}
{vieweralsosee "[TE] etpoisson" "mansection TE etpoisson"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] etpoisson postestimation" "help etpoisson postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] heckpoisson" "help heckpoisson_zh"}{...}
{vieweralsosee "[R] poisson" "help poisson_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] etregress" "help etregress_zh"}{...}
{vieweralsosee "[R] ivpoisson" "help ivpoisson_zh"}{...}
{vieweralsosee "[R] ivprobit" "help ivprobit_zh"}{...}
{vieweralsosee "[R] ivregress" "help ivregress_zh"}{...}
{vieweralsosee "[R] ivtobit" "help ivtobit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{viewerjumpto "Syntax" "etpoisson_zh##syntax"}{...}
{viewerjumpto "Menu" "etpoisson_zh##menu"}{...}
{viewerjumpto "Description" "etpoisson_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "etpoisson_zh##linkspdf"}{...}
{viewerjumpto "Options" "etpoisson_zh##options"}{...}
{viewerjumpto "Examples" "etpoisson_zh##examples"}{...}
{viewerjumpto "Stored results" "etpoisson_zh##results"}
{help etpoisson:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[TE] etpoisson} {hline 2}}具有内生处理影响的泊松回归{p_end}
{p2col:}({mansection TE etpoisson:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:etpoisson} {depvar} [{indepvars}] {ifin}
[{it:{help etpoisson##weight:权重}}]{cmd:,}
{opt tr:eat}{cmd:(}{it:{help depvar:因变量_t}} {cmd:=}
{it:{help varlist_zh:自变量_t}}
[{cmd:,} {opt nocons:tant}
{opth off:set(varname:变量名_o)}]{cmd:)} [{it:选项}]

{synoptset 28 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{p2coldent :* {opt tr:eat()}}处理效应的方程{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth exp:osure(varname:变量名_e)}}将 ln({it:变量名_e}) 包含在模型中，系数约束为1{p_end}
{synopt :{opth off:set(varname:变量名_o)}}将 {it:变量名_o} 包含在模型中，系数约束为1{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim},
{opt r:obust}, {opt cl:uster} {it:clustvar}, {opt opg}, {opt boot:strap},
或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设定置信水平，默认值为
{cmd:level(95)}{p_end}
{synopt :{opt ir:r}}报告发生率比{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help etpoisson##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

{syntab :积分}
{synopt :{opt intp:oints(#)}}使用 {it:#} 个高斯-赫尔米特积分点；默认值为 {cmd:intpoints(24)}{p_end}

{syntab :最大化}
{synopt :{it:{help etpoisson##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt :{opt col:linear}}保留共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt treat()} 是必需的。完整规格为{p_end}
{p 10 10 2}
{cmdab:tr:eat(}{it:因变量_t} {cmd:=} {it:自变量_t}
[{cmd:,} {opt nocons:tant} {opt off:set(变量名_o)}]{cmd:)}.
{p_end}

{p 4 6 2}{it:自变量} 和 {it:自变量_t} 可以包含因子变量；见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}{it:因变量}、{it:因变量_t}、{it:自变量} 和 {it:自变量_t} 可以
包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{opt bootstrap}、{opt by}、{opt jackknife}、{opt rolling}、{opt statsby} 和 {opt svy} 允许；见 {help prefix_zh}.{p_end}
{p 4 6 2}权重与 {help bootstrap_zh} 前缀不兼容.{p_end}
{p 4 6 2}{cmd:aweight} 不允许与 {help jackknife_zh} 前缀。
{p_end}
{p 4 6 2}
{opt vce()} 和权重与 {help svy_zh} 前缀不兼容。
{p_end}
{marker weight}{...}
{p 4 6 2}{opt fweight}、{opt aweight}、{opt iweight} 和 {opt pweight} 是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}
参见 {manhelp etpoisson_postestimation TE:etpoisson postestimation} 获取估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 处理效应 > 内生处理 >}
  {bf:最大似然估计量 > 计数结果}


{marker description}{...}
{title:描述}

{pstd}
{cmd:etpoisson} 估计一个泊松回归模型的参数，其中一个自变量是内生二元处理。 通过 {cmd:etpoisson} 可以估计总体处理效应和接受处理的处理效应。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TE etpoissonQuickstart:快速入门}

        {mansection TE etpoissonRemarksandexamples:备注和示例}

        {mansection TE etpoissonMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:treat(}{depvar:_t} {cmd:=} {indepvars:_t}[{cmd:,} {opt noconstant}
{cmd:offset(}{it:{help varname_zh:变量名_o}}{cmd:)}]{cmd:)}
 指定处理方程的变量和选项。这是指定处理效应模型的重要组成部分，且是必需的。

{pmore}
处理的指示量，{it:{help depvar:因变量_t}}，应编码为 0 或 1。

{phang}
{opt noconstant},
{opth "exposure(varname:变量名_e)"},
{opth "offset(varname:变量名_o)"}, 
{opt constraints(约束)}；见 {helpb estimation options:[R] 估计选项}。

{dlgtab:SE/稳健性}

INCLUDE help vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}；见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt irr} 报告转换为发生率比的估计系数，即 exp(b) 而非 b。标准误差和置信区间同样被转换。该选项影响结果的显示方式，而不是估计或存储的方式。{opt irr} 可以在估计时或重放先前估计的结果时指定。

{phang}
{opt nocnsreport}；见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

{marker display_options}{...}
INCLUDE help displayopts_list

{dlgtab:积分}

{phang}
{opt intpoints(#)} 指定用于积分的积分点数量。默认值为 {cmd:intpoints(24)}；
最大值为 {cmd:intpoints(128)}。增加此值将提高准确性，但也会增加计算时间。计算时间大致与其值成正比。

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}: 
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:算法规格)},
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

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会重置默认
{it:vcetype} 为 {cmd:vce(opg)}。

{pstd}
以下选项与 {opt etpoisson} 可用，但在对话框中未显示：

{phang}
{opt collinear}、{opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse trip1}{p_end}

{pstd}拟合具有内生处理的泊松回归{p_end}
{phang2}{cmd:. etpoisson trips cbd ptn worker weekend,}
{cmd:  treat(owncar = cbd ptn worker realinc) vce(robust)}{p_end}

{phang}估计平均处理效应{p_end}
{phang2}{cmd:. margins r.owncar, vce(unconditional)}{p_end}

{phang}估计对处理组的平均处理效应{p_end}
{phang2}{cmd:. margins, predict(cte) vce(unconditional) subpop(owncar)}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:etpoisson} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)} 中方程的数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数的数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}集群的数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(chi2_c)}}比较的卡方，rho=0检验{p_end}
{synopt:{cmd:e(n_quad)}}积分点的数量{p_end}
{synopt:{cmd:e(p)}}模型检验的p值{p_end}
{synopt:{cmd:e(p_c)}}比较检验的p值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:etpoisson}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(title2)}}估计输出中的副标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(offset1)}}回归方程的偏移量{p_end}
{synopt:{cmd:e(offset2)}}处理方程的偏移量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方检验的类型{p_end}
{synopt:{cmd:e(chi2_ct)}}{cmd:Wald}; 比较卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器是否执行
                         最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估器程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多20次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}模型基础方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <etpoisson.sthlp>}