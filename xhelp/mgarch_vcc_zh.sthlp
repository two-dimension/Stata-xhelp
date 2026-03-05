{smcl}
{* *! version 1.1.9  25mar2019}{...}
{viewerdialog "mgarch vcc" "dialog mgarch"}{...}
{vieweralsosee "[TS] mgarch vcc" "mansection TS mgarchvcc"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] mgarch vcc postestimation" "help mgarch vcc postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arch" "help arch_zh"}{...}
{vieweralsosee "[TS] mgarch" "help mgarch_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] var" "help var_zh"}{...}
{viewerjumpto "语法" "mgarch vcc##syntax"}{...}
{viewerjumpto "菜单" "mgarch vcc##menu"}{...}
{viewerjumpto "描述" "mgarch vcc##description"}{...}
{viewerjumpto "PDF 文档链接" "mgarch_vcc_zh##linkspdf"}{...}
{viewerjumpto "选项" "mgarch vcc##options"}{...}
{viewerjumpto "等式选项" "mgarch vcc##eqoptions"}{...}
{viewerjumpto "示例" "mgarch vcc##examples"}{...}
{viewerjumpto "存储结果" "mgarch vcc##results"}{...}
{viewerjumpto "参考文献" "mgarch vcc##reference"}
{help mgarch_vcc:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[TS] mgarch vcc} {hline 2}}变化的条件相关性多元 GARCH 模型{p_end}
{p2col:}({mansection TS mgarchvcc:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:mgarch vcc}
{it:eq} [{it:eq} ... {it:eq}] 
{ifin} 
[{cmd:,} {it:options}]

{pstd}
其中每个 {it:eq} 的形式为

{phang2}
          {cmd:(}{depvars} {cmd:=} [{indepvars}]
          [{cmd:,} {it:{help mgarch_vcc##eqoptions_tbl:eqoptions}}]{cmd:)}

{synoptset 25 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opth ar:ch(numlist)}}所有方程的 ARCH 项{p_end}
{synopt :{opth ga:rch(numlist)}}所有方程的 GARCH 项{p_end}
{synopt :{opth het(varlist)}}在所有方程的条件方差中包含 {it:varlist}{p_end}
{synopt:{opt dist:ribution(dist [#])}}使用 {it:dist} 作为误差的分布
[可为 {cmdab:gau:ssian}（同义词 {cmdab:nor:mal}）或 {cmd:t}；默认为 {cmd:gaussian}]{p_end}
{synopt :{opth const:raints(numlist)}}应用线性约束{p_end}

{syntab:标准误/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以为 {opt oim}
或 {opt r:obust}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置信心水平；默认为 {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help mgarch_vcc##display_options:display_options}}}控制
包含帮助短描述-显示选项

{syntab:最大化}
{synopt :{it:{help mgarch_vcc##maximize:maximize_options}}}控制优化过程；很少使用{p_end}
{synopt :{opt from(matname)}}系数的初始值；
         很少使用{p_end}

包含帮助短描述-系数图例
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
{synopt :{opth het(varlist)}}在条件方差的规范中包含 {it:varlist}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}在使用 {opt mgarch vcc} 之前，必须 {opt tsset} 数据；参见
         {manhelp tsset TS}.{p_end}
{p 4 6 2}{it:indepvars} 和 {it:varlist} 可能包含因子变量；请参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}{it:depvars}、{it:indepvars} 和 {it:varlist} 可能包含时间序列运算符；请参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{opt by}、{opt fp}、{opt rolling} 和 {opt statsby} 被允许；请参见
         {help prefix_zh}.{p_end}
{p 4 6 2}{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}有关估计后可用功能，参见 {manhelp mgarch_vcc_postestimation TS:mgarch vcc 后估计}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > 多元 GARCH}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mgarch vcc} 估计变化的条件相关性 (VCC) 多元广义自回归条件异方差 (MGARCH) 模型的参数，其中条件方差建模为单变量广义自回归条件异方差 (GARCH) 模型，而条件协方差建模为条件方差的非线性函数。权重非线性组合的条件相关参数遵循 {help mgarch vcc##TT2002:Tse 和 Tsui (2002)} 中指定的类似 GARCH 的过程。

{pstd}
VCC MGARCH 模型的灵活性与紧密相关的动态条件相关性 MGARCH 模型（参见 {helpb mgarch dcc:[TS] mgarch dcc}）大致相当，比条件相关性 MGARCH 模型（参见 {helpb mgarch ccc:[TS] mgarch ccc}）更灵活，并且比对角 vech 模型（参见 {helpb mgarch dvech:[TS] mgarch dvech}）更简约。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS mgarchvccQuickstart:快速开始}

        {mansection TS mgarchvccRemarksandexamples:备注和示例}

        {mansection TS mgarchvccMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth arch(numlist)} 指定模型中所有方程的 ARCH 项。默认情况下，未指定任何 ARCH 项。

{phang}
{opth garch(numlist)} 指定模型中所有方程的 GARCH 项。默认情况下，未指定任何 GARCH 项。

{phang}
{opth het(varlist)} 指定 {it:varlist} 在所有方程的条件方差规范中。此变量列表作为乘性异方差共同进入方差规范。

{phang}
{cmd:distribution(}{it:dist} [{it:#}]{cmd:)} 指定误差的假定分布。 {it:dist} 可以是 {cmd:gaussian}、{cmd:normal} 或 {cmd:t}。

{phang2}
{opt gaussian} 和 {opt normal} 是同义词；每次都会使 {cmd:mgarch vcc} 假定误差来自多元正态分布。 {it:#} 不能与它们中的任何一个一起指定。

{phang2}
{cmd:t} 使 {cmd:mgarch vcc} 假定误差 follows a multivariate Student t 分布，且自由度参数与模型的其他参数一起估计。如果使用 {cmd:distribution(t} {it:#}{cmd:)}，则 {cmd:mgarch vcc} 使用自由度为 {it:#} 的多元 Student t 分布。 {it:#} 必须大于 2。

{phang}
{opth constraints(numlist)} 指定应应用于参数估计的线性约束。

{dlgtab:标准误/稳健}

{phang}
{opt vce(vcetype)} 指定估计量的方差-协方差矩阵的估计量。

{phang2}
{cmd:vce(oim)}，默认情况下，指定使用观察信息矩阵 (OIM) 估计量。

{phang2}
{cmd:vce(robust)} 指定使用 Huber/White/sandwich 估计量。

{dlgtab:报告}

{phang}
{opt level(#)}、{opt nocnsreport}；参见
{helpb estimation options:[R] 估计选项}。

包含帮助显示选项列表

{marker maximize}{...}
{dlgtab:最大化}

{marker maximize_options}{...}
{phang}
{it:maximize_options}：
{opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}、{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、 
{opt grad:ient}、{opt showstep}、 
{opt hess:ian}、{opt showtol:erance}、 
{opt tol:erance(#)}、{opt ltol:erance(#)}、{opt nrtol:erance(#)}、 
{opt nonrtol:erance} 和 {opt from(matname)}；
请参见 {help maximize_zh:[R] 最大化} 的所有选项，但请参见下面有关 {opt from()} 的信息。这些选项很少使用。

{phang}
{opt from(matname)} 指定系数的初始值。
{cmd:from(b0)} 使 {opt mgarch vcc} 以 {opt b0} 中的值开始优化算法。 {opt b0} 必须为行向量，并且列数必须等于模型中的参数数量。

{pstd}
以下选项在使用 {cmd:mgarch vcc} 时可用，但未在对话框中显示：

{phang}
{opt coeflegend}；参见 
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker eqoptions}{...}
{title:等式选项}

{phang}
{opt noconstant} 抑制均值方程中的常数项。

{phang}
{opth arch(numlist)} 指定方程中的 ARCH 项。默认情况下，未指定任何 ARCH 项。此选项不能与模型级别的 {bf:arch()} 一起指定。

{phang}
{opth garch(numlist)} 指定方程中的 GARCH 项。默认情况下，未指定任何 GARCH 项。此选项不能与模型级别的 {bf:garch()} 一起指定。

{phang}
{opth het(varlist)} 指定 {it:varlist} 在条件方差的规范中。此变量列表作为乘性异方差共同进入方差规范。此选项不能与模型级别的 {bf:het()} 一起指定。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse stocks}{p_end}

{pstd}拟合 {cmd:toyota}、{cmd:nissan} 和 {cmd:honda} 股票收益的 VAR(1) 模型，允许 ARCH(1) 和 GARCH(1) 误差{p_end}
{phang2}{cmd:. mgarch vcc (toyota nissan honda = L.toyota L.nissan L.honda,}
        {cmd:noconstant), arch(1) garch(1)}

{pstd}从上述模型中删除不显著的项并重新估计模型{p_end}
{phang2}{cmd:. mgarch vcc (toyota nissan = , noconstant)}
        {cmd:(honda = L.nissan, noconstant), arch(1) garch(1)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. constraint 1 _b[ARCH_toyota:L.arch] = _b[ARCH_nissan:L.arch]}{p_end}
{phang2}{cmd:. constraint 2 _b[ARCH_toyota:L.garch] = _b[ARCH_nissan:L.garch]}{p_end}

{pstd}拟合 {cmd:toyota} 和 {cmd:nissan} 股票收益的双变量 GARCH 模型，约束两个变量的 ARCH 系数相等，以及它们的 GARCH 系数相等{p_end}

{phang2}{cmd:. mgarch vcc (toyota nissan = , noconstant), arch(1) garch(1)}
    {cmd:constraints(1 2)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse acmeh}{p_end}

{pstd}拟合一个双变量 GARCH 模型，其中 {cmd:acme} 和 {cmd:anvil} 的方差方程遵循不同的过程{p_end}
{phang2}{cmd:. mgarch vcc (acme = afrelated, noconstant arch(1) garch(1))}
	{cmd:(anvil = afinputs, arch(1/2) het(L.apex))}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mgarch vcc} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:标量}{p_end}
{synopt:{cmd:e(N)}}观测值数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_extra)}}添加到 {cmd:_b} 的额外估计数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}显著性{p_end}
{synopt:{cmd:e(estdf)}}{cmd:1} 如果分布参数被估计，{cmd:0} 否则{p_end}
{synopt:{cmd:e(usr)}}用户提供的分布参数{p_end}
{synopt:{cmd:e(tmin)}}样本中最小时间{p_end}
{synopt:{cmd:e(tmax)}}样本中最大时间{p_end}
{synopt:{cmd:e(N_gaps)}}缺口数量{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果已收敛，{cmd:0} 不然{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:mgarch}{p_end}
{synopt:{cmd:e(model)}}{cmd:vcc}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(dv_eqs)}}具有均值方程的因变量{p_end}
{synopt:{cmd:e(indeps)}}每个方程中的自变量{p_end}
{synopt:{cmd:e(tvar)}}时间变量{p_end}
{synopt:{cmd:e(hetvars)}}包含在条件方差方程中的变量{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
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
{synopt:{cmd:e(hessian)}}海森矩阵{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}
{synopt:{cmd:e(pinfo)}}参数信息，{cmd:predict} 使用{p_end}

{p2col 5 20 24 2:函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}


{marker reference}{...}
{title:参考文献}

{marker TT2002}{...}
{phang}
Tse, Y. K., 和 A. K. C. Tsui. 2002.
具有时间变化相关性的多元广义自回归条件异方差模型。
{it:商业与经济统计学杂志} 20: 351-362。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mgarch_vcc.sthlp>}