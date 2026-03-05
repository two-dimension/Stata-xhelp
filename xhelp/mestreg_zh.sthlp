{smcl}
{* *! version 1.1.8  18feb2019}{...}
{viewerdialog mestreg "dialog mestreg"}{...}
{viewerdialog "svy: mestreg" "dialog mestreg, message(-svy-) name(svy_mestreg)"}{...}
{vieweralsosee "[ME] mestreg" "mansection ME mestreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] mestreg postestimation" "help mestreg postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: mestreg" "help bayes mestreg"}{...}
{vieweralsosee "[ME] me" "help me_zh"}{...}
{vieweralsosee "[ST] Glossary" "help st glossary"}{...}
{vieweralsosee "[ST] streg" "help streg_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{vieweralsosee "[XT] xtstreg" "help xtstreg_zh"}{...}
{viewerjumpto "Syntax" "mestreg_zh##syntax"}{...}
{viewerjumpto "Menu" "mestreg_zh##menu"}{...}
{viewerjumpto "Description" "mestreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mestreg_zh##linkspdf"}{...}
{viewerjumpto "Options" "mestreg_zh##options"}{...}
{viewerjumpto "Examples" "mestreg_zh##examples"}{...}
{viewerjumpto "Stored results" "mestreg_zh##results"}
{help mestreg:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[ME] mestreg} {hline 2}}多层次混合效应参数生存模型{p_end}
{p2col:}({mansection ME mestreg:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:mestreg} {it:fe_equation} [{cmd:||} {it:re_equation}]
	[{cmd:||} {it:re_equation} ...]{cmd:,}
	{opth dist:ribution(mestreg##distname:distname)}
	[{it:{help mestreg##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法为

{p 12 24 2}
	[{indepvars}] {ifin} [{it:{help mestreg##weight:权重}}]
	[{cmd:,} {it:{help mestreg##fe_options:固定效应选项}}]

{p 4 4 2}
    而 {it:re_equation} 的语法为以下之一：

{p 8 18 2}
	针对随机系数和截距

{p 12 24 2}
	{it:levelvar}{cmd::} [{varlist}]
		[{cmd:,} {it:{help melogit##re_options:随机效应选项}}]

{p 8 18 2}
	针对因子变量值的随机效应

{p 12 24 2}
	{it:levelvar}{cmd::} {cmd:R.}{varname}

{p 4 4 2}
    {it:levelvar} 是一个变量，用于识别该层次的随机效应的组结构，或者是 {cmd:_all} 表示一个包含所有观察值的组。{p_end}

{synoptset 25 tabbed}{...}
{marker fe_options}{...}
{synopthdr :固定效应选项}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}从固定效应方程中去除常数项{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，并将系数约束为 1{p_end}
{synoptline}

{marker re_options}{...}
{synopthdr :随机效应选项}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(melogit##vartype:vartype)}}随机效应的方差-协方差结构{p_end}
{synopt :{opt nocons:tant}}从随机效应方程中去除常数项{p_end}
{synopt :{opth fw:eight(varname)}}较高层次下的频率权重{p_end}
{synopt :{opth iw:eight(varname)}}较高层次下的重要性权重{p_end}
{synopt :{opth pw:eight(varname)}}较高层次下的抽样权重{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent :* {cmdab:dist:ribution(}{it:{help mestreg##distname:distname}}{cmd:)}}指定生存分布{p_end}
{synopt :{opt time}}使用加速失效时间度量{p_end}
{synopt :{cmdab:const:raints:(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt r:obust} 或 {opt cl:uster} {it:clustvar}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设定置信水平；默认为 {cmd:level(95)}{p_end}
{synopt :{opt nohr}}不报告风险比{p_end}
{synopt :{opt tr:atio}}报告时间比{p_end}
{synopt :{opt nos:how}}不显示 st 设置信息{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{opt notab:le}}去除系数表{p_end}
{synopt :{opt nohead:er}}去除输出头{p_end}
{synopt :{opt nogr:oup}}去除总结组的信息表{p_end}
{synopt :{it:{help mestreg##display_options:显示选项}}}控制
包含帮助短描述显示选项

{syntab:积分}
{synopt :{opth intm:ethod(mestreg##intmethod:intmethod)}}积分方法{p_end}
{synopt :{opt intp:oints(#)}}为所有层次设置积分（求积）点的数量；默认为 {cmd:intpoints(7)}{p_end}

{syntab :最大化}
{synopt :{it:{help mestreg##maximize_options:最大化选项}}}控制
最大化过程；不常使用{p_end}

包含帮助 startval_table
{synopt :{opt dnumerical}}使用数值导数技术{p_end}
{synopt:{opt col:linear}}保留共线变量{p_end}
包含帮助短描述 coeflegend
{synoptline}
{p 4 6 2}
* {opt distribution(distname)} 是必需的。{p_end}

包含帮助 me_vartype_table

{marker distname}{...}
{synoptset 25}{...}
{synopthdr:distname}
{synoptline}
{synopt:{cmdab:e:xponential}}指数生存分布{p_end}
{synopt:{cmdab:logl:ogistic}}对数逻辑生存分布{p_end}
{synopt:{cmdab:ll:ogistic}}对 {cmd:loglogistic} 的同义词{p_end}
{synopt:{cmdab:w:eibull}}威布尔生存分布{p_end}
{synopt:{cmdab:logn:ormal}}对数正态生存分布{p_end}
{synopt:{cmdab:ln:ormal}}对 {cmd:lognormal} 的同义词{p_end}
{synopt:{cmdab:gam:ma}}伽玛生存分布{p_end}
{synoptline}
{p2colreset}{...}

包含帮助 me_intmethod_table

{p 4 6 2}
在使用 {cmd:mestreg} 之前，您必须 {cmd:stset} 您的数据；见 {manhelp stset ST}。{p_end}
包含帮助 fvvarlist
{p 4 6 2}
{cmd:bayes}、{cmd:by} 和 {cmd:svy} 是允许的；见 {help prefix_zh}。
有关更多细节，请参阅 {manhelp bayes_mestreg BAYES:bayes: mestreg}。{p_end}
{p 4 6 2}
在 {help svy_zh} 前缀下不允许使用 {opt vce()} 和权重。{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}、{opt iweight} 和 {opt pweight} 是允许的；
见 {help weight_zh}。只能指定一种权重类型。
在拉普拉斯近似或交叉模型下不支持权重。{p_end}
{p 4 6 2}
{opt startvalues()}、{opt startgrid}、{opt noestimate}、{opt dnumerical}、
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}有关估计后可用特性的更多信息，请参见 {manhelp mestreg_postestimation ME:mestreg postestimation}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多层次混合效应模型 >}
    {bf:参数生存回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mestreg} 拟合一个混合效应参数生存时间模型。给定随机效应的响应的条件分布假定为指数、威布尔、对数正态、对数逻辑或伽玛分布。
{cmd:mestreg} 可以与单记录或多记录 st 数据一起使用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ME mestregQuickstart:快速入门}

        {mansection ME mestregRemarksandexamples:备注和示例}

        {mansection ME mestregMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant} 去除常数（截距）项可
针对固定效应方程和任何或所有随机效应方程进行指定。

{phang}
{opth offset(varname)} 指定 {it:varname} 应该包含在
模型的固定效应部分中，并将其系数约束为 1。

包含帮助 me_vartype_opt

包含帮助 me_weight_opt

{phang}
{opt distribution(distname)} 指定要拟合的生存模型。
{it:distname} 为以下之一：{opt exponential}、{opt loglogistic}、{opt llogistic}、{opt weibull}、{opt lognormal}、{opt lnormal} 或 {opt gamma}。
此选项是必需的。

{phang}
{cmd:time} 指定模型应以加速失效时间度量拟合，而不是以对数相对风险度量拟合。该选项仅对指数和威布尔模型有效，因为这些模型是唯一具有比例风险和加速失效时间参数化的模型。无论何种度量，似然函数都是相同的，模型在任一度量下均适用；这只是改变解释的问题。

{pmore}
{cmd:time} 必须在估计时指定。

{phang}
{opt constraints(constraints)};
见 {helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括一些由渐近理论得出的类型（{cmd:oim}）、对某些类型的失配具有稳健性的类型（{cmd:robust}）以及允许组内相关性的类型（{cmd:cluster} {it:clustvar}）；见 {help vce_option_zh:[R] {it:vce_option}}。
如果指定了 {cmd:vce(robust)}，则稳健方差将在多层次模型的最高层次聚类。

{dlgtab:报告}

{phang}
{opt level(#)}; 见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt nohr}，该选项可以在估计或重新显示结果时指定，指示显示系数而不是指数化的系数，亦即，显示系数而不是风险比。此选项仅影响系数的显示方式，而不影响其估计方式。

{pmore}
该选项仅对指数和威布尔模型有效，因为它们具有自然的比例风险参数化。
这两个模型默认为报告风险比（指数化的系数）。

{phang}
{opt tratio} 指定显示指数化的系数，这些系数解释为时间比。 {opt tratio} 仅适用于对数逻辑、对数正态和伽玛模型；或在加速失效时间度量下拟合的指数和威布尔模型。

{pmore}
{cmd:tratio} 可在估计或重放时指定。

{phang}
{opt noshow} 阻止 {opt mestreg} 显示关键 st 变量。此选项很少使用，因为大多数用户键入 {opt stset}、{opt show} 或 {opt stset, noshow} 来一次性设置他们希望在每个 st 命令的输出顶部看到这些变量的显示；见 {manhelp stset ST}。

{phang}
{opt nocnsreport}; 见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

{phang}
{opt notable} 从估计表中去除，或在估计或重放时。

{phang}
{opt noheader} 在估计或重放时去除输出头。

{phang}
{opt nogroup} 阻止显示组摘要信息（组数、平均组大小、最小值和最大值）从输出头中。

包含帮助 displayopts_list

{dlgtab:积分}

包含帮助 me_integration_opt

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}、{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、{opt grad:ient}、{opt showstep}、{opt hess:ian}、{opt showtol:erance}、{opt tol:erance(#)}、{opt ltol:erance(#)}、{opt nrtol:erance(#)}、{opt nonrtol:erance} 和 {opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。
需要特别提到的选项在此列出。

{pmore}
{opt from()} 接受标记正确的初始值向量或系数名称和相应值的列表。 不允许只列出值。

{pstd}
对于 {opt mestreg}，以下选项可用但未显示在对话框中：

{phang}
{opt startvalues(svmethod)}、{cmd:startgrid}[{cmd:(}{it:gridspec}{cmd:)}]、{opt noestimate} 和 {opt dnumerical}；见 {helpb meglm##startval:[ME] meglm}。

{phang}
{opt collinear}、{opt coeflegend}; 见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse catheter}

{pstd}双层随机截距威布尔生存模型，类似于 {cmd:xtstreg}{p_end}
{phang2}{cmd:. mestreg age female || patient:, distribution(weibull)}

{pstd}在加速失效时间度量下的双层随机截距威布尔生存模型{p_end}
{phang2}{cmd:. mestreg age female || patient:, distribution(weibull) time}

{pstd}双层随机截距伽玛生存模型{p_end}
{phang2}{cmd:. mestreg age female || patient:, distribution(gamma)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse jobhistory}{p_end}
{phang2}{cmd:. stset tend, origin(tstart) fail(failure)}

{pstd}三层随机截距对数正态生存模型{p_end}
{phang2}{cmd:. mestreg education njobs prestige i.female || birthyear: || id:, distribution(lognormal)}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mestreg} 将以下内容存储在 {cmd:e()} 中：

{synoptset 24 tabbed}{...}
{p2col 5 24 26 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(k_f)}}固定效应参数数量{p_end}
{synopt:{cmd:e(k_r)}}随机效应参数数量{p_end}
{synopt:{cmd:e(k_rs)}}方差数量{p_end}
{synopt:{cmd:e(k_rc)}}协方差数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(ll_c)}}比较模型的对数似然{p_end}
{synopt:{cmd:e(chi2_c)}}比较测试的卡方{p_end}
{synopt:{cmd:e(df_c)}}比较测试的自由度{p_end}
{synopt:{cmd:e(p_c)}}比较测试的 p 值{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，否则为 {cmd:0}{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 24 26 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:gsem}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:mestreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式（第一层权重）{p_end}
{synopt:{cmd:e(fweight}{it:k}{cmd:)}}{cmd:fweight} 变量用于 {it:k} 层次的最高值，如果指定{p_end}
{synopt:{cmd:e(iweight}{it:k}{cmd:)}}{cmd:iweight} 变量用于 {it:k} 层次的最高值，如果指定{p_end}
{synopt:{cmd:e(pweight}{it:k}{cmd:)}}{cmd:pweight} 变量用于 {it:k} 层次的最高值，如果指定{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(ivars)}}分组变量{p_end}
{synopt:{cmd:e(model)}}模型名称{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(distribution)}}分布{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(offset)}}偏移量{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(n_quad)}}积分点的数量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方的类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(frm2)}}{cmd:hazard} 或 {cmd:time}{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器执行最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(marginswtype)}} {cmd:margins} 的权重类型{p_end}
{synopt:{cmd:e(marginswexp)}} {cmd:margins} 的权重表达式{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 24 26 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(N_g)}}组计数{p_end}
{synopt:{cmd:e(g_min)}}组大小最小值{p_end}
{synopt:{cmd:e(g_avg)}}组大小平均值{p_end}
{synopt:{cmd:e(g_max)}}组大小最大值{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mestreg.sthlp>}