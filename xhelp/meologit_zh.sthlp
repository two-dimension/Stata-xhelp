{smcl}
{* *! version 1.2.7  12dec2018}{...}
{viewerdialog meologit "dialog meologit"}{...}
{viewerdialog "svy: meologit" "dialog meologit, message(-svy-) name(svy_meologit)"}{...}
{vieweralsosee "[ME] meologit" "mansection ME meologit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] meologit postestimation" "help meologit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: meologit" "help bayes meologit"}{...}
{vieweralsosee "[ME] me" "help me_zh"}{...}
{vieweralsosee "[ME] meoprobit" "help meoprobit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[XT] xtologit" "help xtologit_zh"}{...}
{viewerjumpto "Syntax" "meologit_zh##syntax"}{...}
{viewerjumpto "Menu" "meologit_zh##menu"}{...}
{viewerjumpto "Description" "meologit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "meologit_zh##linkspdf"}{...}
{viewerjumpto "Options" "meologit_zh##options"}{...}
{viewerjumpto "Remarks" "meologit_zh##remarks"}{...}
{viewerjumpto "Examples" "meologit_zh##examples"}{...}
{viewerjumpto "Stored results" "meologit_zh##results"}
{help meologit:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[ME] meologit} {hline 2}}多级混合效应有序逻辑回归{p_end}
{p2col:}({mansection ME meologit:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:meologit} {depvar} {it:fe_equation} [{cmd:||} {it:re_equation}]
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help meologit##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法为

{p 12 24 2}
	[{indepvars}] {ifin} [{it:{help meologit##weight:权重}}]
	[{cmd:,} {it:{help meologit##fe_options:固定效应选项}}]

{p 4 4 2}
    {it:re_equation} 的语法如下：

{p 8 18 2}
	对于随机系数和截距

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} [{varlist}]
		[{cmd:,} {it:{help meologit##re_options:随机效应选项}}]

{p 8 18 2}
	对于因子变量值之间的随机效应

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} {cmd:R.}{varname}

{p 4 4 2}
    {it:levelvar} 是标识该层次随机效应组结构的变量，或者是 {cmd:_all} 表示一个包含所有观察的组。{p_end}

{synoptset 25 tabbed}{...}
{marker fe_options}{...}
{synopthdr :固定效应选项}
{synoptline}
{syntab:模型}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在模型中，且系数约束为1{p_end}
{synoptline}

{marker re_options}{...}
{synopthdr :随机效应选项}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(meologit##vartype:vartype)}}随机效应的方差-协方差结构{p_end}
{synopt :{opt nocons:tant}}从随机效应方程中压制常数项{p_end}
{synopt :{opth fw:eight(varname)}}高层次的频率权重{p_end}
{synopt :{opth iw:eight(varname)}}高层次的重要性权重{p_end}
{synopt :{opth pw:eight(varname)}}高层次的抽样权重{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab:模型}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误/稳健性}
{synopt:{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:oim}、{cmdab:r:obust} 或 {cmdab:cl:uster} {it:clustvar}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opt or}}将固定效应系数报告为odds比{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{opt notab:le}}压制系数表{p_end}
{synopt :{opt nohead:er}}压制输出头{p_end}
{synopt :{opt nogr:oup}}压制总结组的表格{p_end}
{synopt :{it:{help meologit##display_options:显示选项}}}控制
包括帮助短描述-显示选项

{syntab:积分}
{synopt :{opth intm:ethod(meologit##intmethod:intmethod)}}积分方法{p_end}
{synopt :{opt intp:oints(#)}}为所有层次设置积分（求积）点的数量；默认是 {cmd:intpoints(7)}{p_end}

{syntab :最大化}
{synopt :{it:{help meologit##maximize_options:最大化选项}}}控制
最大化过程；很少使用{p_end}

包括帮助 startval_table
{synopt :{opt dnumerical}}使用数值导数技术{p_end}
{synopt :{opt col:linear}}保持共线变量{p_end}
包括帮助短描述-系数图例
{synoptline}

包括帮助 me_vartype_table

包括帮助 me_intmethod_table

包括帮助 fvvarlist
{p 4 6 2}{it:depvar}、{it:indepvars} 和 {it:varlist} 可以包含时间序列操作符；请参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bayes}、{cmd:by} 和 {cmd:svy} 是允许的；请参见 {help prefix_zh}。
更多详情，请参见 {manhelp bayes_meologit BAYES:bayes: meologit}.{p_end}
{p 4 6 2}
{opt vce()} 和权重不允许与 {help svy_zh} 前缀一起使用。
{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}、{cmd:iweight} 和 {cmd:pweight} 是允许的； 
请参见 {help weight_zh}。只允许指定一种类型的权重。
在拉普拉斯近似下或交叉模型中不支持权重。{p_end}
{p 4 6 2}
{opt startvalues()}、{opt startgrid}、{opt noestimate}、{opt dnumerical}、
{opt collinear} 和 {opt coeflegend} 不显示在对话框中。{p_end}
{p 4 6 2}请参见 {manhelp meologit_postestimation ME:meologit 后估计}
以获取估计后可用的特性。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多级混合效应模型}
     {bf:> 有序逻辑回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:meologit} 拟合有序响应的混合效应逻辑模型。
响应值的实际取值无关紧要，只假设较大值对应于“更高”结果。
给定随机效应的响应的条件分布假设为多项分布，成功概率由逻辑累积分布函数决定。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ME meologitQuickstart:快速入门}

        {mansection ME meologitRemarksandexamples:备注和示例}

        {mansection ME meologitMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth offset(varname)} 指定将 {it:varname} 包含在模型的固定效应部分，系数约束为1。

包括帮助 me_vartype_opt

{phang}
{opt noconstant} 压制常数项；可指定用于任何或所有随机效应方程。

包括帮助 me_weight_opt

{phang}
{opt constraints(constraints)}；
请参见 {helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括根据渐近理论得出的类型（{cmd:oim}）、对某些形式的误设定稳健的类型（{cmd:robust}）以及允许组内相关性的类型（{cmd:cluster} {it:clustvar}）；请参见
{help vce_option_zh:[R] {it:vce_option}}。如果指定了 {cmd:vce(robust)}，则强健方差在多级模型的最高层次上聚集。

{dlgtab:报告}

{phang}
{opt level(#)}；请参见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt or} 以odds比报告估计的固定效应系数，即 exp(b) 而不是 b。标准误和置信区间也类似地转换。此选项影响结果的显示方式，而不影响它们的估计。 {cmd:or} 可以在估计时或重播时指定。

{phang}
{opt nocnsreport}；请参见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt notable} 在估计或重播时不显示估计表。

{phang}
{opt noheader} 在估计或重播时不显示输出头。

{phang}
{opt nogroup} 在输出头中压制组摘要信息的显示（组数、平均组大小、最小值和最大值）。

包括帮助 displayopts_list

{dlgtab:积分}

包括帮助 me_integration_opt

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:最大化选项}：
{opt dif:ficult}、
{opth tech:nique(maximize##algorithm_spec:算法规格)},
{opt iter:ate(#)}、
[{cmd:no}]{opt log}、
{opt tr:ace}、
{opt grad:ient}、
{opt showstep}、
{opt hess:ian}、
{opt showtol:erance}、
{opt tol:erance(#)}、
{opt ltol:erance(#)}、
{opt nrtol:erance(#)}、
{opt nonrtol:erance}和
{opt from(init_specs)}；
请参见 {help maximize_zh:[R] 最大化}。
对于 {cmd:meologit} 需要特别提及的选项列在下面。

{pmore}
{opt from()} 接受一个适当标记的初始值向量或一个带有值的系数名称列表。不允许使用值列表。

{pstd}
与 {opt meologit} 相关的以下选项不在对话框中显示：

{phang}
{opt startvalues(svmethod)}、{cmd:startgrid}[{cmd:(}{it:gridspec}{cmd:)}]、
{opt noestimate} 和 {opt dnumerical}；请参见 {helpb meglm##startval:[ME] meglm}。

{phang}
{opt collinear}、{opt coeflegend}；请参见
     {helpb estimation options:[R] 估计选项}。


{marker remarks}{...}
包括帮助 me_weight_remarks


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse tvsfpors}{p_end}

{pstd}两层混合效应有序logit回归{p_end}
{phang2}{cmd:. meologit thk prethk cc##tv || school:}{p_end}

{pstd}三层混合效应有序logit回归{p_end}
{phang2}{cmd:. meologit thk prethk cc##tv || school: || class:}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:meologit} 在 {cmd:e()} 中存储以下信息：

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(k_cat)}}类别数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}在整体模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_f)}}固定效应参数数量{p_end}
{synopt:{cmd:e(k_r)}}随机效应参数数量{p_end}
{synopt:{cmd:e(k_rs)}}方差数量{p_end}
{synopt:{cmd:e(k_rc)}}协方差数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}簇数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型检验的p值{p_end}
{synopt:{cmd:e(ll_c)}}对数似然，比较模型{p_end}
{synopt:{cmd:e(chi2_c)}}卡方，比较检验{p_end}
{synopt:{cmd:e(df_c)}}比较检验的自由度{p_end}
{synopt:{cmd:e(p_c)}}比较检验的p值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(ic)}}迭代数量{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:meglm}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:meologit}{p_end}
{synopt:{cmd:e(cmdline)}}命令作为输入{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式（第一层权重）{p_end}
{synopt:{cmd:e(fweight}{it:k}{cmd:)}}{cmd:fweight} 变量，适用于 {it:k} 层次，如果指定{p_end}
{synopt:{cmd:e(iweight}{it:k}{cmd:)}}{cmd:iweight} 变量，适用于 {it:k} 层次，如果指定{p_end}
{synopt:{cmd:e(pweight}{it:k}{cmd:)}}{cmd:pweight} 变量，适用于 {it:k} 层次，如果指定{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(ivars)}}分组变量{p_end}
{synopt:{cmd:e(model)}}{cmd:ologit}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(link)}}{cmd:logit}{p_end}
{synopt:{cmd:e(family)}}{cmd:ordinal}{p_end}
{synopt:{cmd:e(clustvar)}}簇变量名称{p_end}
{synopt:{cmd:e(offset)}}偏移量{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(n_quad)}}积分点数量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是进行
最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 禁止的预测{p_end}
{synopt:{cmd:e(marginswtype)}}用于 {cmd:margins} 的权重类型{p_end}
{synopt:{cmd:e(marginswexp)}}用于 {cmd:margins} 的权重表达式{p_end}
{synopt:{cmd:e(marginsdefault)}} {opt predict()} 对 {cmd:margins} 的默认规范{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多20次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(N_g)}}组计数{p_end}
{synopt:{cmd:e(g_min)}}组大小最小值{p_end}
{synopt:{cmd:e(g_avg)}}组大小平均值{p_end}
{synopt:{cmd:e(g_max)}}组大小最大值{p_end}
{synopt:{cmd:e(cat)}}类别值{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meologit.sthlp>}