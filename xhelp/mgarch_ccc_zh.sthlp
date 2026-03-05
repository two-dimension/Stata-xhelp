{smcl}
{* *! version 1.1.10  25mar2019}{...}
{viewerdialog "mgarch ccc" "dialog mgarch"}{...}
{vieweralsosee "[TS] mgarch ccc" "mansection TS mgarchccc"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] mgarch ccc postestimation" "help mgarch ccc postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arch" "help arch_zh"}{...}
{vieweralsosee "[TS] mgarch" "help mgarch_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] var" "help var_zh"}{...}
{viewerjumpto "语法" "mgarch ccc##syntax"}{...}
{viewerjumpto "菜单" "mgarch ccc##menu"}{...}
{viewerjumpto "描述" "mgarch ccc##description"}{...}
{viewerjumpto "PDF 文档链接" "mgarch_ccc_zh##linkspdf"}{...}
{viewerjumpto "选项" "mgarch ccc##options"}{...}
{viewerjumpto "方程选项" "mgarch ccc##eqoptions"}{...}
{viewerjumpto "示例" "mgarch ccc##examples"}{...}
{viewerjumpto "存储结果" "mgarch ccc##results"}
{help mgarch_ccc:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[TS] mgarch ccc} {hline 2}}常数条件相关的多元 GARCH 模型{p_end}
{p2col:}({mansection TS mgarchccc:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:mgarch ccc}
{it:eq} [{it:eq} ... {it:eq}] 
{ifin} 
[{cmd:,} {it:options}]

{pstd}
其中每个 {it:eq} 形式为

{phang2}
          {cmd:(}{depvars} {cmd:=} [{indepvars}]
          [{cmd:,} {it:{help mgarch_ccc##eqoptions_tbl:eqoptions}}]{cmd:)}

{synoptset 25 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opth ar:ch(numlist)}}所有方程的 ARCH 项{p_end}
{synopt :{opth ga:rch(numlist)}}所有方程的 GARCH 项{p_end}
{synopt :{opth het(varlist)}}在所有方程的条件方差规范中包括 {it:varlist}{p_end}
{synopt:{opt dist:ribution(dist [#])}}使用 {it:dist} 分布来表示误差
[可能是 {cmdab:gau:ssian}（同义词 {cmdab:nor:mal}）或 {cmd:t}；
默认为 {cmd:gaussian}]{p_end}
{synopt :{opt un:concentrated}}对非集中化的对数似然进行优化{p_end}
{synopt :{opth const:raints(numlist)}}应用线性约束{p_end}

{syntab:标准误/鲁棒性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}
或者 {opt r:obust}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help mgarch_ccc##display_options:display_options}}}控制
在帮助中包括帮助短描述-显示所有选项

{syntab:最大化}
{synopt :{it:{help mgarch_ccc##maximize:maximize_options}}}控制最大化过程；很少使用{p_end}
{synopt :{opt from(matname)}}系数的初始值；
         很少使用{p_end}

包括帮助短描述-系数图例
{synoptline}
{p2colreset}{...}

{marker eqoptions_tbl}{...}
{synoptset 25 tabbed}{...}
{synopthdr:eqoptions}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}在均值方程中抑制常数项{p_end}
{synopt :{opth ar:ch(numlist)}}ARCH 项{p_end}
{synopt :{opth ga:rch(numlist)}}GARCH 项{p_end}
{synopt :{opth het(varlist)}}在条件方差的规范中包括 {it:varlist}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}您必须首先 {opt tsset} 数据，然后才能使用 {opt mgarch ccc}；请参阅
         {manhelp tsset TS}.{p_end}
{p 4 6 2}{it:indepvars} 和 {it:varlist} 可以包含因子变量；
	请参阅 {help fvvarlist_zh}.{p_end}
{p 4 6 2}{it:depvars}、{it:indepvars} 和 {it:varlist} 可以包含时间序列
	运算符；请参阅 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{opt by}、{opt fp}、{opt rolling} 和 {opt statsby} 被允许；请参阅
         {help prefix_zh}.{p_end}
{p 4 6 2}{opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}请参见 {manhelp mgarch_ccc_postestimation TS:mgarch ccc postestimation}
	获取估计后可用的特性.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > 多元 GARCH}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mgarch ccc} 估计常数条件相关（CCC）多元广义自回归条件异方差（MGARCH）模型的参数，其中条件方差建模为单变量广义自回归条件异方差（GARCH）模型，条件协方差建模为条件方差的非线性函数。权重的条件相关参数在 CCC MGARCH 模型中保持不变。

{pstd}
CCC MGARCH 模型的灵活性低于动态条件相关 MGARCH 模型（见 {helpb mgarch dcc:[TS] mgarch dcc}）和变化条件相关 MGARCH 模型（见 {helpb mgarch vcc:[TS] mgarch vcc}），这些模型为条件相关性指定了类似 GARCH 的过程。条件相关 MGARCH 模型比对角 vech MGARCH 模型（见 {helpb mgarch dvech:[TS] mgarch dvech}）更为简约。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS mgarchcccQuickstart:快速入门}

        {mansection TS mgarchcccRemarksandexamples:备注和示例}

        {mansection TS mgarchcccMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth arch(numlist)} 指定模型中所有方程的 ARCH 项。
默认情况下，不指定 ARCH 项。

{phang}
{opth garch(numlist)} 指定模型中所有方程的 GARCH 项。
默认情况下，不指定 GARCH 项。

{phang}
{opth het(varlist)} 指定在所有方程的条件方差规范中包括 {it:varlist}。这个 varlist
作为乘法异方差性集体进入方差规范。

{phang}
{cmd:distribution(}{it:dist} [{it:#}]{cmd:)} 指定误差的假定分布。 {it:dist} 可以是 {cmd:gaussian}、{cmd:normal}，
或 {cmd:t}。

{phang2}
{opt gaussian} 和 {opt normal} 是同义词；每一个都会使得 {cmd:mgarch ccc} 假定误差来自一个多元正态分布。 {it:#} 不能与它们中的任何一个一起指定。

{phang2}
{cmd:t} 使得 {cmd:mgarch ccc} 假定误差遵循多元学生 t 分布，而且自由度参数与模型的其他参数一并估计。如果指定了 {cmd:distribution(t} {it:#}{cmd:)}，则 {cmd:mgarch ccc} 使用具有 {it:#} 自由度的多元学生 t 分布。 {it:#} 必须大于 2。

{phang}
{opt unconcentrated} 指定在非集中化的对数似然上进行优化。默认是从集中化的
对数似然开始。

{phang}
{opth constraints(numlist)} 指定要应用于参数估计的线性约束。

{dlgtab:标准误/鲁棒性}

{phang}
{opt vce(vcetype)} 指定估计量的方差-协方差矩阵的估计器。

{phang2}
{cmd:vce(oim)}，默认值，指定使用观察信息矩阵（OIM）估计。

{phang2}
{cmd:vce(robust)} 指定使用 Huber/White/三明治估计器。

{dlgtab:报告}

{phang}
{opt level(#)}、{opt nocnsreport}；请参见
{helpb estimation options:[R] 估计选项}。

包括帮助 显示选项 - 列表

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
{opt ltol:erance(#)}、
{opt nrtol:erance(#)}、
{opt nonrtol:erance}，和
{opt from(matname)}；
请参阅 {help maximize_zh:[R] 最大化} 以获取所有选项，除了 {opt from()}，并查看下面关于 {opt from()} 的信息。这些选项很少使用。

{phang}
{opt from(matname)} 指定系数的初始值。
{cmd:from(b0)} 使得 {opt mgarch ccc} 使用 {opt b0} 中的值开始优化算法。{opt b0} 必须是行向量，且列数必须等于模型中的参数数量。

{pstd}
以下选项可与 {cmd:mgarch ccc} 一起使用，但不会显示在对话框中：

{phang}
{opt coeflegend}；请参见 
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker eqoptions}{...}
{title:方程选项}

{phang}
{opt noconstant} 抑制均值方程中的常数项。

{phang}
{opth arch(numlist)} 指定方程中的 ARCH 项。默认情况下，
不指定 ARCH 项。此选项不能与模型级的 
{bf:arch()} 一起指定。

{phang}
{opth garch(numlist)} 指定方程中的 GARCH 项。默认情况下，
不指定 GARCH 项。此选项不能与模型级的 
{bf:garch()} 一起指定。

{phang}
{opth het(varlist)} 指定条件方差的规范中包含 {it:varlist}。这个 varlist
作为乘法异方差性集体进入方差规范。此选项不能与模型级的 
{bf:het()} 一起指定。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse stocks}{p_end}

{pstd}拟合 {cmd:toyota}、 {cmd:nissan} 和 {cmd:honda} 的股票收益
的 VAR(1) 模型，允许 ARCH(1) 和 GARCH(1) 误差{p_end}
{phang2}{cmd:. mgarch ccc (toyota nissan honda = L.toyota L.nissan L.honda,}
        {cmd:noconstant), arch(1) garch(1)}

{pstd}删除上述模型中不显著的项并重新估计模型{p_end}
{phang2}{cmd:. mgarch ccc (toyota nissan = , noconstant)}
        {cmd:(honda = L.nissan, noconstant), arch(1) garch(1)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. constraint 1 _b[ARCH_toyota:L.arch] = _b[ARCH_nissan:L.arch]}{p_end}
{phang2}{cmd:. constraint 2 _b[ARCH_toyota:L.garch] = _b[ARCH_nissan:L.garch]}{p_end}

{pstd}拟合 {cmd:toyota} 和 {cmd:nissan} 的股票收益的二元 GARCH 模型，约束
两个变量的 ARCH 系数相等，以及它们的 GARCH 系数相等{p_end}

{phang2}{cmd:. mgarch ccc (toyota nissan = , noconstant), arch(1) garch(1)}
    {cmd:constraints(1 2)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse acmeh}{p_end}

{pstd}拟合 {cmd:acme} 和 {cmd:anvil} 的二元 GARCH 模型，其中
条件方程的方差遵循不同的过程{p_end}
{phang2}{cmd:. mgarch ccc (acme = afrelated, noconstant arch(1) garch(1))}
	{cmd:(anvil = afinputs, arch(1/2) het(L.apex))}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mgarch ccc} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_extra)}}添加到 {cmd:_b} 的额外估计数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(estdf)}}{cmd:1} 如果估计了分布参数，{cmd:0} 否则{p_end}
{synopt:{cmd:e(usr)}}用户提供的分布参数{p_end}
{synopt:{cmd:e(tmin)}}样本中的最小时间{p_end}
{synopt:{cmd:e(tmax)}}样本中的最大时间{p_end}
{synopt:{cmd:e(N_gaps)}}缺失值的数量{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:mgarch}{p_end}
{synopt:{cmd:e(model)}}{cmd:ccc}{p_end}
{synopt:{cmd:e(cmdline)}}键入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(dv_eqs)}}具有均值方程的因变量{p_end}
{synopt:{cmd:e(indeps)}}每个方程中的自变量{p_end}
{synopt:{cmd:e(tvar)}}时间变量{p_end}
{synopt:{cmd:e(hetvars)}}包含在条件方差方程中的变量{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(tmins)}}格式化的最小时间{p_end}
{synopt:{cmd:e(tmaxs)}}格式化的最大时间{p_end}
{synopt:{cmd:e(dist)}}误差项的分布： {cmd:gaussian} 或 {cmd:t}{p_end}
{synopt:{cmd:e(arch)}}指定的 ARCH 项{p_end}
{synopt:{cmd:e(garch)}}指定的 GARCH 项{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{opt b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(marginsdefault)}}{cmd:margins} 的默认 {opt predict()} 规范{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 20 24 2:矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(hessian)}}海森矩阵{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}
{synopt:{cmd:e(pinfo)}}参数信息，用于 {cmd:predict}{p_end}

{p2col 5 20 24 2:函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mgarch_ccc.sthlp>}