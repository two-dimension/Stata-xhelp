{smcl}
{* *! version 1.2.7  12dec2018}{...}
{viewerdialog meoprobit "dialog meoprobit"}{...}
{viewerdialog "svy: meoprobit" "dialog meoprobit, message(-svy-) name(svy_meoprobit)"}{...}
{vieweralsosee "[ME] meoprobit" "mansection ME meoprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] meoprobit postestimation" "help meoprobit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: meoprobit" "help bayes meoprobit"}{...}
{vieweralsosee "[ME] me" "help me_zh"}{...}
{vieweralsosee "[ME] meologit" "help meologit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[XT] xtoprobit" "help xtoprobit_zh"}{...}
{viewerjumpto "Syntax" "meoprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "meoprobit_zh##menu"}{...}
{viewerjumpto "Description" "meoprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "meoprobit_zh##linkspdf"}{...}
{viewerjumpto "Options" "meoprobit_zh##options"}{...}
{viewerjumpto "Remarks" "meoprobit_zh##remarks"}{...}
{viewerjumpto "Examples" "meoprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "meoprobit_zh##results"}
{help meoprobit:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[ME] meoprobit} {hline 2}}多层混合效应有序Probit回归{p_end}
{p2col:}({mansection ME meoprobit:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:meoprobit} {depvar} {it:fe_equation} [{cmd:||} {it:re_equation}]
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help meoprobit##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法是

{p 12 24 2}
	[{indepvars}] {ifin} [{it:{help meoprobit##weight:权重}}]
	[{cmd:,} {it:{help meoprobit##fe_options:固定效应选项}}]

{p 4 4 2}
    而 {it:re_equation} 的语法是以下之一：

{p 8 18 2}
	用于随机系数和截距

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} [{varlist}]
		[{cmd:,} {it:{help meoprobit##re_options:随机效应选项}}]

{p 8 18 2}
	用于因子变量值之间的随机效应

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} {cmd:R.}{varname}

{p 4 4 2}
    {it:levelvar} 是一个标识随机效应在该水平的组结构的变量，或者是 {cmd:_all} 表示一个包含所有观察值的组。{p_end}

{synoptset 25 tabbed}{...}
{marker fe_options}{...}
{synopthdr :固定效应选项}
{synoptline}
{syntab:模型}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在模型中，并将系数约束为1{p_end}
{synoptline}

{marker re_options}{...}
{synopthdr :随机效应选项}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(meoprobit##vartype:vartype)}}随机效应的方差-协方差结构{p_end}
{synopt :{opt nocons:tant}}在随机效应方程中抑制常数项{p_end}
{synopt :{opth fw:eight(varname)}}高级别的频率权重{p_end}
{synopt :{opth iw:eight(varname)}}高级别的重要性权重{p_end}
{synopt :{opth pw:eight(varname)}}高级别的抽样权重{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab:模型}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误/鲁棒性}
{synopt:{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:oim}、{cmdab:r:obust}，或 {cmdab:cl:uster} {it:clustvar}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{opt notab:le}}抑制系数表{p_end}
{synopt :{opt nohead:er}}抑制输出标题{p_end}
{synopt :{opt nogr:oup}}抑制总结组的表格{p_end}
{synopt :{it:{help meoprobit##display_options:显示选项}}}控制
包含帮助短描述 - displayoptall

{syntab:积分}
{synopt :{opth intm:ethod(meoprobit##intmethod:intmethod)}}积分方法{p_end}
{synopt :{opt intp:oints(#)}}设置所有级别的积分（高斯）点数；默认值为 {cmd:intpoints(7)}{p_end}

{syntab :最大化}
{synopt :{it:{help meoprobit##maximize_options:最大化选项}}}控制
最大化过程；很少使用{p_end}

包含帮助 startval_table
{synopt :{opt dnumerical}}使用数值导数技术{p_end}
{synopt :{opt col:linear}}保留共线性变量{p_end}
包含帮助短描述 - coeflegend
{synoptline}

包含帮助 me_vartype_table

包含帮助 me_intmethod_table

包含帮助 fvvarlist
{p 4 6 2}{it:depvar}、{it:indepvars} 和 {it:varlist} 可以包含时间序列操作符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bayes}、{cmd:by} 和 {cmd:svy} 是允许的；见 {help prefix_zh}。
有关更多详细信息，请参见 {manhelp bayes_meoprobit BAYES:bayes: meoprobit}.{p_end}
{p 4 6 2}
{opt vce()} 和权重不能与 {help svy_zh} 前缀一起使用。{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}s，{cmd:iweight}s 和 {cmd:pweight}s 是允许的； 
见 {help weight_zh}。 只能指定一种类型的权重。
在拉普拉斯近似或交叉模型下不支持权重。{p_end}
{p 4 6 2}
{opt startvalues()}、{opt startgrid}、{opt noestimate}、{opt dnumerical}、
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}请参见 {manhelp meoprobit_postestimation ME:meoprobit postestimation}
以获取估计后的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多层混合效应模型}
     {bf:> 有序Probit回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:meoprobit} 拟合有序响应的混合效应Probit模型。
响应的实际值是无关紧要的，除了假设较大的值对应于"更高"的结果。
给定随机效应的响应的条件分布假设为多项分布，其成功概率由标准正态累积分布函数确定。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ME meoprobitQuickstart:快速入门}

        {mansection ME meoprobitRemarksandexamples:注意事项和示例}

        {mansection ME meoprobitMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth offset(varname)} 指定将 {it:varname} 包含在模型的固定效应部分，且系数约束为1。

包含帮助 me_vartype_opt

{phang}
{opt noconstant} 抑制常数（截距）项；可为任何或所有随机效应方程指定。

包含帮助 me_weight_opt

{phang}
{opt constraints(constraints)};
见 {helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/鲁棒性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括根据渐近理论推导出的类型（{cmd:oim}）、对某些类型的模型误设定鲁棒的类型（{cmd:robust}），以及允许组内相关性的类型（{cmd:cluster} {it:clustvar}）；见 {help vce_option_zh:[R] {it:vce_option}}。 如果指定了 {cmd:vce(robust)}，则稳健方差在多层模型中的最高级别上进行聚类。

{dlgtab:报告}

{phang}
{opt level(#)},
{opt nocnsreport}；见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt notable} 在估计或重复时抑制估计表。

{phang}
{opt noheader} 在估计或重复时抑制输出标题。

{phang}
{opt nogroup} 抑制输出标题中组汇总信息的显示（组数、平均组大小、最小值和最大值）。

包含帮助 displayopts_list

{dlgtab:积分}

包含帮助 me_integration_opt

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
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
{opt from(init_specs)}；
见 {help maximize_zh:[R] 最大化}。
需要特别提及的用于 {cmd:meoprobit} 的选项列在下面。

{pmore}
{opt from()} 接受一个正确标记的初始值向量或一个带有值的系数名称列表。 不允许值列表。

{pstd}
以下选项在 {opt meoprobit} 中可用，但在对话框中不显示：

{phang}
{opt startvalues(svmethod)}、{cmd:startgrid}[{cmd:(}{it:gridspec}{cmd:)}]、
{opt noestimate}和 {opt dnumerical}；见 {helpb meglm##startval:[ME] meglm}。

{phang}
{opt collinear}、{opt coeflegend}；见
{helpb estimation options:[R] 估计选项}。


{marker remarks}{...}
包含帮助 me_weight_remarks


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse tvsfpors} 

{pstd}两层混合效应有序Probit回归{p_end}
{phang2}{cmd:. meoprobit thk prethk cc##tv || school:}{p_end}

{pstd}三层混合效应有序Probit回归{p_end}
{phang2}{cmd:. meoprobit thk prethk cc##tv || school: || class:}{p_end}


{marker results}{...}
{title:已保存结果}

{pstd}
{cmd:meoprobit} 在 {cmd:e()} 中存储以下内容：

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值的数量{p_end}
{synopt:{cmd:e(k)}}参数的数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(k_cat)}}类别的数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)}中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_f)}}固定效应参数的数量{p_end}
{synopt:{cmd:e(k_r)}}随机效应参数的数量{p_end}
{synopt:{cmd:e(k_rs)}}方差的数量{p_end}
{synopt:{cmd:e(k_rc)}}协方差的数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类的数量{p_end}
{synopt:{cmd:e(chi2)}}卡方值{p_end}
{synopt:{cmd:e(p)}}模型检验的p值{p_end}
{synopt:{cmd:e(ll_c)}}比较模型的对数似然{p_end}
{synopt:{cmd:e(chi2_c)}}比较检验的卡方{p_end}
{synopt:{cmd:e(df_c)}}比较检验的自由度{p_end}
{synopt:{cmd:e(p_c)}}比较检验的p值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}如果收敛为 {cmd:1}，否则为 {cmd:0}{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:meglm}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:meoprobit}{p_end}
{synopt:{cmd:e(cmdline)}}按输入命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式（第一层权重）{p_end}
{synopt:{cmd:e(fweight}{it:k}{cmd:)}}{cmd:fweight} 变量，针对指定的第 {it:k} 高级别{p_end}
{synopt:{cmd:e(iweight}{it:k}{cmd:)}}{cmd:iweight} 变量，针对指定的第 {it:k} 高级别{p_end}
{synopt:{cmd:e(pweight}{it:k}{cmd:)}}{cmd:pweight} 变量，针对指定的第 {it:k} 高级别{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(ivars)}}分组变量{p_end}
{synopt:{cmd:e(model)}}{cmd:oprobit}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(link)}}{cmd:probit}{p_end}
{synopt:{cmd:e(family)}}{cmd:ordinal}{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset)}}偏移量{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(n_quad)}}积分点的数量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方的类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器是执行最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(marginswtype)}}{cmd:margins} 的权重类型{p_end}
{synopt:{cmd:e(marginswexp)}}{cmd:margins} 的权重表达式{p_end}
{synopt:{cmd:e(marginsdefault)}}{cmd:margins} 的默认 {opt predict()} 指定{p_end}
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
{synopt:{cmd:e(V_modelbased)}}模型基方差{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meoprobit.sthlp>}