{smcl}
{* *! version 1.2.8  12dec2018}{...}
{viewerdialog mepoisson "dialog mepoisson"}{...}
{viewerdialog "svy: mepoisson" "dialog mepoisson, message(-svy-) name(svy_mepoisson)"}{...}
{vieweralsosee "[ME] mepoisson" "mansection ME mepoisson"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] mepoisson postestimation" "help mepoisson postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: mepoisson" "help bayes mepoisson"}{...}
{vieweralsosee "[ME] me" "help me_zh"}{...}
{vieweralsosee "[ME] menbreg" "help menbreg_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[XT] xtpoisson" "help xtpoisson_zh"}{...}
{viewerjumpto "语法" "mepoisson_zh##syntax"}{...}
{viewerjumpto "菜单" "mepoisson_zh##menu"}{...}
{viewerjumpto "描述" "mepoisson_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mepoisson_zh##linkspdf"}{...}
{viewerjumpto "选项" "mepoisson_zh##options"}{...}
{viewerjumpto "备注" "mepoisson_zh##remarks"}{...}
{viewerjumpto "示例" "mepoisson_zh##examples"}{...}
{viewerjumpto "存储结果" "mepoisson_zh##results"}
{help mepoisson:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[ME] mepoisson} {hline 2}}多级混合效应泊松回归{p_end}
{p2col:}({mansection ME mepoisson:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:mepoisson} {depvar} {it:fe_equation} [{cmd:||} {it:re_equation}]
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help mepoisson##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法为

{p 12 24 2}
	[{indepvars}] {ifin} [{it:{help mepoisson##weight:权重}}]
	[{cmd:,} {it:{help mepoisson##fe_options:fe选项}}]

{p 4 4 2}
    而 {it:re_equation} 的语法为以下之一：

{p 8 18 2}
	对于随机系数和截距

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} [{varlist}]
		[{cmd:,} {it:{help mepoisson##re_options:re选项}}]

{p 8 18 2}
	对于因子变量值的随机效应

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} {cmd:R.}{varname}

{p 4 4 2}
    {it:levelvar} 是标识随机效应在该层次的组结构的变量，或是表示所有观测值组成一个组的 {cmd:_all}。{p_end}

{synoptset 25 tabbed}{...}
{marker fe_options}{...}
{synopthdr :fe选项}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}从固定效应方程中抑制常数项{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包括 ln({it:varname_e})，系数约束为 1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包括 {it:varname_o}，系数约束为 1{p_end}
{synoptline}

{marker re_options}{...}
{synopthdr :re选项}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(mepoisson##vartype:vartype)}}随机效应的方差-协方差结构{p_end}
{synopt :{opt nocons:tant}}从随机效应方程中抑制常数项{p_end}
{synopt :{opth fw:eight(varname)}}在较高层次的频率权重{p_end}
{synopt :{opth iw:eight(varname)}}在较高层次的重要性权重{p_end}
{synopt :{opth pw:eight(varname)}}在较高层次的采样权重{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab:模型}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:SE/稳健}
{synopt:{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:oim}、{cmdab:r:obust} 或 {cmdab:cl:uster} {it:clustvar}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt irr}}将固定效应系数报告为发生率比，即 exp(b) 而不是 b。标准误和置信区间也相应转换。此选项会影响结果的显示方式，而不是估计或存储方式。{cmd:irr} 可以在估计或重播时指定。

{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{opt notab:le}}抑制系数表{p_end}
{synopt :{opt nohead:er}}抑制输出头部{p_end}
{synopt :{opt nogr:oup}}抑制总结组的表格{p_end}
{synopt :{it:{help mepoisson##display_options:显示选项}}}控制
包括帮助短描述-显示选项

{syntab:积分}
{synopt :{opth intm:ethod(mepoisson##intmethod:intmethod)}}积分方法{p_end}
{synopt :{opt intp:oints(#)}}设置所有层次的积分（求积）点数；默认值为 {cmd:intpoints(7)}{p_end}

{syntab :最大化}
{synopt :{it:{help mepoisson##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

包含帮助 startval_table
{synopt :{opt dnumerical}}使用数值导数技术{p_end}
{synopt :{opt col:linear}}保留共线变量{p_end}
包含帮助 shortdes-coeflegend
{synoptline}

包含帮助 me_vartype_table

包含帮助 me_intmethod_table

包含帮助 fvvarlist
{p 4 6 2}{it:depvar}、{it:indepvars} 和 {it:varlist} 可以包含时间序列操作符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bayes}、{cmd:by} 和 {cmd:svy} 是允许的；见 {help prefix_zh}。
有关更多详细信息，见 {manhelp bayes_mepoisson BAYES:bayes: mepoisson}.{p_end}
{p 4 6 2}
{opt vce()} 和权重不允许与 {help svy_zh} 前缀一起使用。{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}s、{cmd:iweight}s 和 {cmd:pweight}s 是允许的； 
见 {help weight_zh}。只能指定一种权重类型。
在拉普拉斯近似或交叉模型下不支持权重。{p_end}
{p 4 6 2}
{opt startvalues()}、{opt startgrid}、{opt noestimate}、{opt dnumerical}、
{opt collinear} 和 {opt coeflegend} 不显示在对话框中。{p_end}
{p 4 6 2}请参见 {manhelp mepoisson_postestimation ME:mepoisson postestimation}
以获取估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多级混合效应模型 > 泊松回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mepoisson} 适合计数响应的混合效应模型。
假设在给定随机效应的情况下，响应的条件分布为泊松分布。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ME mepoissonQuickstart:快速入门}

        {mansection ME mepoissonRemarksandexamples:备注和示例}

        {mansection ME mepoissonMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant} 抑制常数（截距）项，可以为固定效应方程和任何随机效应方程指定。

{phang}
{opth exposure:(varname:varname_e)} 指定一个反映在每个观测中观察到的 {depvar} 事件的暴露量的变量；ln({it:varname_e}) 被包含在模型的固定效应部分，系数约束为 1。

{phang}
{opth offset:(varname:varname_o)} 指定将 {it:varname_o} 包含在模型的固定效应部分，系数约束为 1。

包含帮助 me_vartype_opt

包含帮助 me_weight_opt

{phang}
{opt constraints(constraints)}；见 {helpb estimation options:[R] 估计选项}。

{dlgtab:SE/稳健}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括从渐近理论导致的类型 ({cmd:oim})、对某些类型的错误规制稳健的类型 ({cmd:robust})，以及允许组内相关的类型 ({cmd:cluster} {it:clustvar})；见 {help vce_option_zh:[R] {it:vce_option}}。如果指定 {cmd:vce(robust)}，则稳健方差在多级模型中在最高层次上聚类。

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt irr} 报告转换为发生率比的估计固定效应系数，即 exp(b) 而不是 b。标准误和置信区间也相应转换。此选项影响结果的显示方式，而不是估计或存储方式。{cmd:irr} 可以在估计或重播时指定。

{phang}
{opt nocnsreport}；见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt notable} 抑制估计表，无论是在估计时还是在重播时。

{phang}
{opt noheader} 抑制输出头部，无论是在估计时还是在重播时。

{phang}
{opt nogroup} 抑制输出头部中组摘要信息（组数、平均组大小、最小值和最大值）的显示。

包含帮助 displayopts_list

{dlgtab:积分}

包含帮助 me_integration_opt

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}，
{opth tech:nique(maximize##algorithm_spec:算法规格)}，
{opt iter:ate(#)}，
[{cmd:no}]{opt log}，
{opt tr:ace}，
{opt grad:ient}，
{opt showstep}，
{opt hess:ian}，
{opt showtol:erance}，
{opt tol:erance(#)}，
{opt ltol:erance(#)}，
{opt nrtol:erance(#)}，
{opt nonrtol:erance}，和
{opt from(init_specs)}；
见 {help maximize_zh:[R] 最大化}。
对于 {cmd:mepoisson} 需要特别提及的如下所示。

{pmore}
{opt from()} 接受适当标签的初始值向量或系数名称列表。值的列表不被允许。

{pstd}
以下选项可以与 {opt mepoisson} 一起使用，但不在对话框中显示：

{phang}
{opt startvalues(svmethod)}、{cmd:startgrid}[{cmd:(}{it:gridspec}{cmd:)}]、
{opt noestimate} 和 {opt dnumerical}；见 {helpb meglm##startval:[ME] meglm}。

{phang}
{opt collinear}、{opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}。


{marker remarks}{...}
包含帮助 me_weight_remarks


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse epilepsy}{p_end}

{pstd}两级随机截距模型，类似于 {cmd:xtpoisson}{p_end}
{phang2}{cmd:. mepoisson seizures treat lbas lbas_trt lage v4 || subject:}{p_end}

{pstd}两级随机截距和随机系数模型{p_end}
{phang2}{cmd:. mepoisson seizures treat lbas lbas_trt lage visit || subject: visit}{p_end}

{pstd}两级随机截距和随机系数模型，相关随机效应{p_end}
{phang2}{cmd:. mepoisson seizures treat lbas lbas_trt lage visit || subject: visit, cov(unstructured) intpoints(9)}{p_end}

{pstd}使用发生率比重播结果{p_end}
{phang2}{cmd:. mepoisson, irr}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse melanoma}{p_end}

{pstd}三级嵌套模型，{cmd:region} 嵌套在 {cmd:nation} 中{p_end}
{phang2}{cmd:. mepoisson deaths uv c.uv#c.uv, exposure(expected) || nation: || region:}{p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mepoisson} 将以下内容存储在 {cmd:e()} 中：

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}在整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_f)}}固定效应参数数量{p_end}
{synopt:{cmd:e(k_r)}}随机效应参数数量{p_end}
{synopt:{cmd:e(k_rs)}}方差数量{p_end}
{synopt:{cmd:e(k_rc)}}协方差数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}集群数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(ll_c)}}对数似然，比较模型{p_end}
{synopt:{cmd:e(chi2_c)}}卡方，比较测试{p_end}
{synopt:{cmd:e(df_c)}}比较测试的自由度{p_end}
{synopt:{cmd:e(p_c)}}比较测试的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示收敛，{cmd:0} 表示没有收敛{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:meglm}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:mepoisson}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式（第一层权重）{p_end}
{synopt:{cmd:e(fweight}{it:k}{cmd:)}}{cmd:fweight} 变量，表示第 {it:k} 高层次，如果指定{p_end}
{synopt:{cmd:e(iweight}{it:k}{cmd:)}}{cmd:iweight} 变量，表示第 {it:k} 高层次，如果指定{p_end}
{synopt:{cmd:e(pweight}{it:k}{cmd:)}}{cmd:pweight} 变量，表示第 {it:k} 高层次，如果指定{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(ivars)}}分组变量{p_end}
{synopt:{cmd:e(model)}}{cmd:poisson}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(link)}}{cmd:log}{p_end}
{synopt:{cmd:e(family)}}{cmd:poisson}{p_end}
{synopt:{cmd:e(clustvar)}}集群变量名称{p_end}
{synopt:{cmd:e(offset)}}偏移量{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(n_quad)}}积分点数量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器执行最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}由 {cmd:margins} 禁止的预测{p_end}
{synopt:{cmd:e(marginswtype)}}{cmd:margins} 的权重类型{p_end}
{synopt:{cmd:e(marginswexp)}}{cmd:margins} 的权重表达式{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(N_g)}}组计数{p_end}
{synopt:{cmd:e(g_min)}}组大小的最小值{p_end}
{synopt:{cmd:e(g_avg)}}组大小的平均值{p_end}
{synopt:{cmd:e(g_max)}}组大小的最大值{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mepoisson.sthlp>}