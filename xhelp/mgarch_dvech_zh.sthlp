{smcl}
{* *! version 2.1.9  12dec2018}{...}
{viewerdialog "mgarch dvech" "dialog mgarch"}{...}
{vieweralsosee "[TS] mgarch dvech" "mansection TS mgarchdvech"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] mgarch dvech postestimation" "help mgarch dvech postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arch" "help arch_zh"}{...}
{vieweralsosee "[TS] mgarch" "help mgarch_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] var" "help var_zh"}{...}
{viewerjumpto "Syntax" "mgarch dvech##syntax"}{...}
{viewerjumpto "Menu" "mgarch dvech##menu"}{...}
{viewerjumpto "Description" "mgarch dvech##description"}{...}
{viewerjumpto "Links to PDF documentation" "mgarch_dvech_zh##linkspdf"}{...}
{viewerjumpto "Options" "mgarch dvech##options"}{...}
{viewerjumpto "Examples" "mgarch dvech##examples"}{...}
{viewerjumpto "Stored results" "mgarch dvech##results"}
{help mgarch_dvech:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[TS] mgarch dvech} {hline 2}}对角 vech 多元 GARCH 模型
{p_end}
{p2col:}({mansection TS mgarchdvech:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:mgarch dvech}
{it:eq} [{it:eq} ... {it:eq}] 
{ifin} 
[{cmd:,} {it:选项}]

{pstd}
其中每个 {it:eq} 形式为

{phang2}
          {cmd:(}{depvars} {cmd:=} [{indepvars}]
          [{cmd:,} {opt nocons:tant}]{cmd:)}

{synoptset 29 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opth ar:ch(numlist)}}ARCH 项{p_end}
{synopt :{opth ga:rch(numlist)}}GARCH 项{p_end}
{synopt:{opt dist:ribution(dist [#])}}使用 {it:dist} 分布表示误差
{pstd}（可以是 {cmdab:gau:ssian}（同义词 {cmdab:nor:mal}）或 {cmd:t}；
默认值为 {cmd:gaussian}）{p_end}
{synopt :{opth const:raints(numlist)}}应用线性约束{p_end}

{syntab:标准误/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype}可以是 {opt oim}
或 {opt r:obust}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt nocns:r:eport}}不显示约束{p_end}
{synopt :{it:{help mgarch_dvech##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

{syntab:最大化}
{synopt :{it:{help mgarch_dvech##maximize:maximize_options}}}控制
最大化过程；很少使用{p_end}
{synopt :{opt from(matname)}}系数的初始值；
         很少使用{p_end}
{synopt :{opth svtech:nique(maximize##algorithm_spec:algorithm_spec)}}起始值
           最大化算法{p_end}
{synopt :{opt sviter:ate(#)}}起始值迭代次数；默认值为
          {cmd:sviterate(25)}{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}您必须在使用 {opt mgarch dvech} 之前 {opt tsset} 数据；请参见
         {manhelp tsset TS}.{p_end}
INCLUDE help fvvarlist
{p 4 6 2}{it:depvars} 和 {it:indepvars} 可以包含时间序列算子；
         请参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{opt by}、{opt fp}、{opt rolling} 和 {opt statsby} 是允许的；请参见
         {help prefix_zh}.{p_end}
{p 4 6 2}{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}请参见 {manhelp mgarch_dvech_postestimation TS:mgarch dvech postestimation}
 获取估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > 多元 GARCH}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mgarch dvech} 估计对角 vech（DVECH）多元广义自回归条件异方差
（MGARCH）模型的参数，其中条件相关矩阵的每个元素
被参数化为其自身过去和过去冲击的线性函数。

{pstd}
DVECH MGARCH 模型比在 {helpb mgarch ccc:[TS] mgarch ccc}、
{helpb mgarch dcc:[TS] mgarch dcc} 和 {helpb mgarch vcc:[TS] mgarch vcc} 中讨论的
条件相关模型更少简约，因为 DVECH MGARCH 模型中的参数数量
在建模的序列数量增加时更快速地增长。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS mgarchdvechQuickstart:快速入门}

        {mansection TS mgarchdvechRemarksandexamples:备注和示例}

        {mansection TS mgarchdvechMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant} 抑制常数项。

{phang}
{opth arch(numlist)} 指定模型中的 ARCH 项。
默认情况下，不指定 ARCH 项。

{phang}
{opth garch(numlist)} 指定模型中的 GARCH 项。
默认情况下，不指定 GARCH 项。

{phang}
{cmd:distribution(}{it:dist} [{it:#}]{cmd:)} 指定误差的假定分布。
{it:dist} 可以是 {cmd:gaussian}、{cmd:normal} 或 {cmd:t}。

{phang2}
{opt gaussian} 和 {opt normal} 是同义词；每个选项都导致 {cmd:mgarch dvech} 假设误差来自于多元正态分布。 {it:#} 不能与它们中的任何一个一起指定。

{phang2}
{cmd:t} 导致 {cmd:mgarch dvech} 假设误差服从多元 Student t 分布，且自由度参数与模型的其他参数一起估计。如果指定了 {cmd:distribution(t} {it:#}{cmd:)}，则 {cmd:mgarch dvech} 使用一个具有 {it:#} 自由度的多元 Student t 分布。 {it:#} 必须大于 2。

{phang}
{opth constraints(numlist)} 指定要应用于参数估计的线性约束。

{dlgtab:标准误/稳健}

{phang}
{opt vce(vcetype)} 指定估计量方差-协方差矩阵的估计量。

{phang2}
{cmd:vce(oim)}，默认值，指定使用观察信息矩阵
（OIM）估计量。

{phang2}
{cmd:vce(robust)} 指定使用 Huber/White/三明治估计量。

{dlgtab:报告}

{phang}
{opt level(#)}、{opt nocnsreport}；请参见
{helpb estimation options:[R] 估计选项}。

INCLUDE help displayopts_list

{marker maximize}{...}
{dlgtab:最大化}

{marker maximize_options}{...}
{phang}
{it:maximize_options}：
{opt dif:ficult}、
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}、
{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、 
{opt grad:ient}、{opt showstep}、
{opt hess:ian}、
{opt showtol:erance}、
{opt tol:erance(#)}、
{opt ltol:erance(#)}、{opt nrtol:erance(#)}、
{opt nonrtol:erance} 和
{opt from(matname)}；
请参见 {help maximize_zh:[R] 最大化}，获取除 {opt from()} 之外的所有选项，以及
下面有关 {opt from()} 的信息。 这些选项很少使用。

{phang}
{opt from(matname)} 指定系数的初始值。
{cmd:from(b0)} 使得 {opt mgarch dvech} 从
{opt b0} 中的值开始优化算法。 {opt b0} 必须是一个行向量，且列数必须与模型中的参数数量相等。

{phang}
{opth svtechnique:(maximize##algorithm_spec:algorithm_spec)} 和
{opt sviterate(#)} 指定起始值搜索过程的选项。

{phang2}
{opt svtechnique(algorithm_spec)} 指定用于搜索初始值的算法。
{it:algorithm_spec} 的语法与 {opt technique()} 选项相同；请参见 {help maximize_zh:[R] 最大化}。
{cmd:svtechnique(bhhh 5 nr 16000)} 是默认值。此选项不能与 {cmd:from()} 一起指定。

{phang2}
{opt sviterate(#)} 指定搜索算法可以执行的最大迭代次数。默认值为 {cmd:sviterate(25)}。
此选项不能与 {cmd:from()} 一起指定。

{pstd}
以下选项可与 {cmd:mgarch dvech} 一起使用，但在对话框中未显示：

{phang}
{opt coeflegend}；请参见 
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse irates4}{p_end}

{pstd}拟合 {cmd:bond} 和 {cmd:tbill} 的变化的 VAR(1) 模型，
考虑 ARCH(1) 误差{p_end}
{phang2}{cmd:. mgarch dvech (D.bond D.tbill = LD.bond LD.tbill), arch(1)}{p_end}

{pstd}与上述相同，但将 {cmd:D.bond} 对
{cmd:D.tbill} 的滞后效应约束为零，并抑制常数项{p_end}
{phang2}{cmd:. mgarch dvech (D.bond = LD.bond LD.tbill, noconstant)}
        {cmd:(D.tbill = LD.tbill, noconstant), arch(1)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse acme}{p_end}
{phang2}{cmd:. constraint 1 [L.ARCH]1_1  = [L.ARCH]2_2}{p_end}
{phang2}{cmd:. constraint 2 [L.GARCH]1_1 = [L.GARCH]2_2}{p_end}

{pstd}拟合一个双变量 GARCH 模型，约束两个变量的 ARCH
系数相等，以及它们的 GARCH 系数相等{p_end}
{phang2}{cmd:. mgarch dvech (acme = L.acme) (anvil = L.anvil),}
        {cmd:arch(1) garch(1) constraints(1 2)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse aacmer}{p_end}

{pstd}拟合一个没有回归项或常数项的双变量 GARCH 模型，
包含两个 ARCH 项和一个 GARCH 项{p_end}
{phang2}{cmd:. mgarch dvech (acme anvil = , noconstant), arch(1/2) garch(1)}
{p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mgarch dvech} 将以下信息存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:标量}{p_end}
{synopt:{cmd:e(N)}}观察次数{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_extra)}}添加到 {cmd:_b} 的额外估计数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)} 中方程的数量{p_end}
{synopt:{cmd:e(k_dv)}}依赖变量的数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}显著性{p_end}
{synopt:{cmd:e(estdf)}}{cmd:1} 如果估计了分布参数，{cmd:0} 否则{p_end}
{synopt:{cmd:e(usr)}}用户提供的分布参数{p_end}
{synopt:{cmd:e(tmin)}}样本中的最小时间{p_end}
{synopt:{cmd:e(tmax)}}样本中的最大时间{p_end}
{synopt:{cmd:e(N_gaps)}}缺口数量{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:mgarch}{p_end}
{synopt:{cmd:e(model)}}{cmd:dvech}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}依赖变量名称{p_end}
{synopt:{cmd:e(covariates)}}协变量清单{p_end}
{synopt:{cmd:e(dv_eqs)}}具有均值方程的依赖变量{p_end}
{synopt:{cmd:e(indeps)}}每个方程中的自变量{p_end}
{synopt:{cmd:e(tvar)}}时间变量{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(tmins)}}格式化的最小时间{p_end}
{synopt:{cmd:e(tmaxs)}}格式化的最大时间{p_end}
{synopt:{cmd:e(dist)}}误差项的分布： {cmd:gaussian} 或 {cmd:t}{p_end}
{synopt:{cmd:e(arch)}}指定的 ARCH 项{p_end}
{synopt:{cmd:e(garch)}}指定的 GARCH 项{p_end}
{synopt:{cmd:e(svtechnique)}}用于起始值的最大化技术{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{opt b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}} {cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(marginsdefault)}} {cmd:margins} 的默认 {opt predict()} 规范{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

{p2col 5 20 24 2:矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(hessian)}}Hessian 矩阵{p_end}
{synopt:{cmd:e(A)}} {cmd:A} 矩阵的估计值{p_end}
{synopt:{cmd:e(B)}} {cmd:B} 矩阵的估计值{p_end}
{synopt:{cmd:e(S)}} {cmd:Sigma0} 矩阵的估计值{p_end}
{synopt:{cmd:e(Sigma)}}Sigma 估计值{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}
{synopt:{cmd:e(pinfo)}}参数信息，供 {cmd:predict} 使用{p_end}

{p2col 5 20 24 2:函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mgarch_dvech.sthlp>}