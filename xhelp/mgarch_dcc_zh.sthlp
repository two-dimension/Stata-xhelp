{smcl}
{* *! version 1.1.9  25mar2019}{...}
{viewerdialog "mgarch dcc" "dialog mgarch"}{...}
{vieweralsosee "[TS] mgarch dcc" "mansection TS mgarchdcc"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] mgarch dcc postestimation" "help mgarch dcc postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arch" "help arch_zh"}{...}
{vieweralsosee "[TS] mgarch" "help mgarch_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] var" "help var_zh"}{...}
{viewerjumpto "Syntax" "mgarch dcc##syntax"}{...}
{viewerjumpto "Menu" "mgarch dcc##menu"}{...}
{viewerjumpto "Description" "mgarch dcc##description"}{...}
{viewerjumpto "Links to PDF documentation" "mgarch_dcc_zh##linkspdf"}{...}
{viewerjumpto "Options" "mgarch dcc##options"}{...}
{viewerjumpto "Eqoptions" "mgarch dcc##eqoptions"}{...}
{viewerjumpto "Examples" "mgarch dcc##examples"}{...}
{viewerjumpto "Stored results" "mgarch dcc##results"}{...}
{viewerjumpto "Reference" "mgarch dcc##reference"}
{help mgarch_dcc:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[TS] mgarch dcc} {hline 2}}动态条件相关的多元GARCH模型{p_end}
{p2col:}({mansection TS mgarchdcc:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:mgarch dcc}
{it:eq} [{it:eq} ... {it:eq}] 
{ifin} 
[{cmd:,} {it:options}]

{pstd}
其中每个 {it:eq} 的形式为

{phang2}
          {cmd:(}{depvars} {cmd:=} [{indepvars}]
          [{cmd:,} {it:{help mgarch_dcc##eqoptions_tbl:eqoptions}}]{cmd:)}

{synoptset 25 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opth ar:ch(numlist)}}所有方程的ARCH项{p_end}
{synopt :{opth ga:rch(numlist)}}所有方程的GARCH项{p_end}
{synopt :{opth het(varlist)}}在所有方程的条件方差的规范中包含 {it:varlist}{p_end}
{synopt:{opt dist:ribution(dist [#])}}使用 {it:dist} 分布作为误差的分布
[可以是 {cmdab:gau:ssian}（同义词 {cmdab:nor:mal}）或 {cmd:t}；
默认是 {cmd:gaussian}]{p_end}
{synopt :{opth const:raints(numlist)}}施加线性约束{p_end}

{syntab:SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}
	或 {opt r:obust}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help mgarch_dcc##display_options:display_options}}}控制
包含帮助短描述显示所有选项

{syntab:最大化}
{synopt :{it:{help mgarch_dcc##maximize:maximize_options}}}控制
	最大化过程；很少使用{p_end}
{synopt :{opt from(matname)}}系数的初始值；
         很少使用{p_end}

包含帮助短描述coeflegend
{synoptline}
{p2colreset}{...}

{marker eqoptions_tbl}{...}
{synoptset 25 tabbed}{...}
{synopthdr:eqoptions}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}在均值方程中抑制常数项{p_end}
{synopt :{opth ar:ch(numlist)}}ARCH项{p_end}
{synopt :{opth ga:rch(numlist)}}GARCH项{p_end}
{synopt :{opth het(varlist)}}在条件方差的规范中包含 {it:varlist}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}在使用 {opt mgarch dcc} 之前，您必须 {opt tsset} 您的数据；请参阅
         {manhelp tsset TS}.{p_end}
{p 4 6 2}{it:indepvars} 和 {it:varlist} 可以包含因子变量；
	请参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}{it:depvars}、{it:indepvars} 和 {it:varlist} 可以包含时间序列
	运算符；请参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{opt by}、{opt fp}、{opt rolling} 和 {opt statsby} 被允许；请参见
         {help prefix_zh}.{p_end}
{p 4 6 2}{opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}有关估计后可用的特性，请参阅 {manhelp mgarch_dcc_postestimation TS:mgarch dcc postestimation}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > 多元 GARCH}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mgarch dcc} 估计动态条件相关性 (DCC) 多元广义自回归条件异方差 (MGARCH) 模型的参数，其中条件方差被建模为单变量广义自回归条件异方差 (GARCH) 模型，条件协方差被建模为条件方差的非线性函数。权重非线性组合的条件准相关参数遵循在 {help mgarch dcc##E2002:Engle (2002)} 中指定的类似 GARCH 的过程。

{pstd}
DCC MGARCH 模型与密切相关的可变条件相关性 MGARCH 模型 (见 {helpb mgarch vcc:[TS] mgarch vcc}) 一样灵活，比条件相关性 MGARCH 模型 (见 {helpb mgarch ccc:[TS] mgarch ccc}) 更加灵活，并且比对角 vech MGARCH 模型 (见 {helpb mgarch dvech:[TS] mgarch dvech}) 更加简约。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS mgarchdccQuickstart:快速启动}

        {mansection TS mgarchdccRemarksandexamples:备注和示例}

        {mansection TS mgarchdccMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth arch(numlist)} 指定模型中所有方程的 ARCH 项。
默认情况下，没有指定 ARCH 项。

{phang}
{opth garch(numlist)} 指定模型中所有方程的 GARCH 项。
默认情况下，没有指定 GARCH 项。

{phang}
{opth het(varlist)} 指定在所有方程的条件方差中包含 {it:varlist}。
此变量列表以乘法异方差的形式进入方差规范。

{phang}
{cmd:distribution(}{it:dist} [{it:#}]{cmd:)} 指定假定的误差分布。
{it:dist} 可以是 {cmd:gaussian}、{cmd:normal} 或 {cmd:t}。

{phang2}
{opt gaussian} 和 {opt normal} 是同义词；每个都会导致 {cmd:mgarch dcc} 假定误差来自多元正态分布。 {it:#} 不能与它们一起指定。

{phang2}
{cmd:t} 使得 {cmd:mgarch dcc} 假定误差遵循多元学生 t 分布，并且自由度参数与模型的其他参数一起估计。如果指定了 {cmd:distribution(t} {it:#}{cmd:)}，那么 {cmd:mgarch dcc} 使用具有 {it:#} 自由度的多元学生 t 分布。 {it:#} 必须大于 2。

{phang}
{opt constraints(numlist)} 指定对参数估计施加线性约束。

{dlgtab:SE/稳健性}

{phang}
{opt vce(vcetype)} 指定估计量的方差-协方差矩阵的估计器。

{phang2}
{cmd:vce(oim)}，默认情况下，指定使用观测信息矩阵 (OIM) 估计器。

{phang2}
{cmd:vce(robust)} 指定使用 Huber/White/三明治估计器。

{dlgtab:报告}

{phang}
{opt level(#)}，{opt nocnsreport}；见
{helpb estimation options:[R] 估计选项}。

包含帮助显示选项列表

{marker maximize}{...}
{dlgtab:最大化}

{marker maximize_options}{...}
{phang}
{it:maximize_options}：
{opt dif:ficult}，
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}，
{opt iter:ate(#)}， [{cmd:no}]{opt log}， {opt tr:ace}， 
{opt grad:ient}， {opt showstep}，
{opt hess:ian}，
{opt showtol:erance}，
{opt tol:erance(#)}，
{opt ltol:erance(#)}， {opt nrtol:erance(#)}，
{opt nonrtol:erance}，以及
{opt from(matname)}；
见 {help maximize_zh:[R] 最大化} 除了 {opt from()} 的所有选项，并见下方有关 {opt from()} 的信息。 这些选项很少使用。

{phang}
{opt from(matname)} 指定系数的初始值。
{cmd:from(b0)} 导致 {opt mgarch dcc} 从 {opt b0} 中的值开始优化算法。 {opt b0} 必须是行向量，列数必须等于模型中的参数数量。

{pstd}
以下选项可用于 {cmd:mgarch dcc} 但未在对话框中显示：

{phang}
{opt coeflegend}；见 
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker eqoptions}{...}
{title:Eqoptions}

{phang}
{opt noconstant} 在均值方程中抑制常数项。

{phang}
{opth arch(numlist)} 指定方程中的 ARCH 项。 默认情况下，没有指定 ARCH 项。 此选项不能与模型级别的 {bf:arch()} 一起指定。

{phang}
{opth garch(numlist)} 指定方程中的 GARCH 项。 默认情况下，没有指定 GARCH 项。 此选项不能与模型级别的 {bf:garch()} 一起指定。

{phang}
{opth het(varlist)} 指定在条件方差的规范中包含 {it:varlist}。 此变量列表以乘法异方差的形式进入方差规范。 此选项不能与模型级别的 {bf:het()} 一起指定。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse stocks}{p_end}

{pstd}拟合 {cmd:toyota}、{cmd:nissan} 和 {cmd:honda} 的股票收益的 VAR(1) 模型，允许 ARCH(1) 和 GARCH(1) 误差{p_end}
{phang2}{cmd:. mgarch dcc (toyota nissan honda = L.toyota L.nissan L.honda,}
        {cmd:noconstant), arch(1) garch(1)}

{pstd}从上述模型中删除无效项并重新估计模型{p_end}
{phang2}{cmd:. mgarch dcc (toyota nissan = , noconstant)}
        {cmd:(honda = L.nissan, noconstant), arch(1) garch(1)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. constraint 1 _b[ARCH_toyota:L.arch] = _b[ARCH_nissan:L.arch]}{p_end}
{phang2}{cmd:. constraint 2 _b[ARCH_toyota:L.garch] = _b[ARCH_nissan:L.garch]}{p_end}

{pstd}拟合一个关于 {cmd:toyota} 和 {cmd:nissan} 的双变量 GARCH 模型，约束这两个变量的 ARCH 系数相等，以及它们的 GARCH 系数相等{p_end}

{phang2}{cmd:. mgarch dcc (toyota nissan = , noconstant), arch(1) garch(1)}
    {cmd:constraints(1 2)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse acmeh}{p_end}

{pstd}拟合一个双变量 GARCH 模型，其中 {cmd:acme} 和 {cmd:anvil} 的方差方程遵循不同的过程{p_end}
{phang2}{cmd:. mgarch dcc (acme = afrelated, noconstant arch(1) garch(1))}
	{cmd:(anvil = afinputs, arch(1/2) het(L.apex))}

    {hline}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:mgarch dcc} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:标量}{p_end}
{synopt:{cmd:e(N)}}观察值的数量{p_end}
{synopt:{cmd:e(k)}}参数的数量{p_end}
{synopt:{cmd:e(k_extra)}}添加到 {cmd:_b} 的额外估计的数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}显著性{p_end}
{synopt:{cmd:e(estdf)}}{cmd:1} 如果分布参数被估计，则为 {cmd:0} 否则{p_end}
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
{synopt:{cmd:e(model)}}{cmd:dcc}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(dv_eqs)}}具有均值方程的因变量{p_end}
{synopt:{cmd:e(indeps)}}每个方程中的自变量{p_end}
{synopt:{cmd:e(tvar)}}时间变量{p_end}
{synopt:{cmd:e(hetvars)}}包含在条件方差方程中的变量{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(tmins)}}格式化的最小时间{p_end}
{synopt:{cmd:e(tmaxs)}}格式化的最大时间{p_end}
{synopt:{cmd:e(dist)}}误差项的分布： {cmd:gaussian} 或 {cmd:t}{p_end}
{synopt:{cmd:e(arch)}}指定的 ARCH 项{p_end}
{synopt:{cmd:e(garch)}}指定的 GARCH 项{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{opt b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}} {cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(marginsdefault)}} {cmd:margins} 的默认 {opt predict()} 规范{p_end}
{synopt:{cmd:e(asbalanced)}}因变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

{p2col 5 20 24 2:矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(hessian)}}Hessian 矩阵{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}
{synopt:{cmd:e(pinfo)}}参数信息，用于 {cmd:predict}{p_end}

{p2col 5 20 24 2:函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}


{marker reference}{...}
{title:参考文献}

{marker E2002}{...}
{phang}
Engle, R. 2002.
动态条件相关性：一类简单的多元广义自回归条件异方差模型。
{it:商业与经济统计杂志} 20: 339-350.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mgarch_dcc.sthlp>}