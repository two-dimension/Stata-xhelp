{smcl}
{* *! version 1.2.6  12dec2018}{...}
{viewerdialog meprobit "dialog meprobit"}{...}
{viewerdialog "svy: meprobit" "dialog meprobit, message(-svy-) name(svy_meprobit)"}{...}
{vieweralsosee "[ME] meprobit" "mansection ME meprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] meprobit postestimation" "help meprobit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: meprobit" "help bayes meprobit"}{...}
{vieweralsosee "[ME] me" "help me_zh"}{...}
{vieweralsosee "[ME] mecloglog" "help mecloglog_zh"}{...}
{vieweralsosee "[ME] melogit" "help melogit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[XT] xtprobit" "help xtprobit_zh"}{...}
{viewerjumpto "Syntax" "meprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "meprobit_zh##menu"}{...}
{viewerjumpto "Description" "meprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "meprobit_zh##linkspdf"}{...}
{viewerjumpto "Options" "meprobit_zh##options"}{...}
{viewerjumpto "Remarks" "meprobit_zh##remarks"}{...}
{viewerjumpto "Examples" "meprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "meprobit_zh##results"}
{help meprobit:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[ME] meprobit} {hline 2}}多层混合效应概率回归
{p_end}
{p2col:}({mansection ME meprobit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:meprobit} {depvar} {it:fe_equation} [{cmd:||} {it:re_equation}]
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help meprobit##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法为

{p 12 24 2}
	[{indepvars}] {ifin} [{it:{help meprobit##weight:权重}}]
	[{cmd:,} {it:{help meprobit##fe_options:固定效应选项}}]

{p 4 4 2}
    而 {it:re_equation} 的语法为以下之一：

{p 8 18 2}
    随机系数和截距

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} [{varlist}]
		[{cmd:,} {it:{help meprobit##re_options:随机效应选项}}]

{p 8 18 2}
    在因子变量值之间的随机效应

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} {cmd:R.}{varname}

{p 4 4 2}
    {it:levelvar} 是识别随机效应在该层次的组结构的变量，或是表示所有观察值组成一个组的 {cmd:_all}。{p_end}

{synoptset 25 tabbed}{...}
{marker fe_options}{...}
{synopthdr :固定效应选项}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}从固定效应方程中抑制常数项{p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包括在模型中，系数限制为1{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}
{synoptline}

{marker re_options}{...}
{synopthdr :随机效应选项}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(meprobit##vartype:vartype)}}随机效应的方差-协方差结构{p_end}
{synopt :{opt nocons:tant}}从随机效应方程中抑制常数项{p_end}
{synopt :{opth fw:eight(varname)}}在更高层次的频率权重{p_end}
{synopt :{opth iw:eight(varname)}}在更高层次的重要性权重{p_end}
{synopt :{opth pw:eight(varname)}}在更高层次的抽样权重{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab:模型}
{synopt :{opt bin:omial}{cmd:(}{it:{help varname_zh:varname}}|{it:#}{cmd:)}}如果数据呈二项形式则设置二项试验{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误/稳健性}
{synopt:{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:oim}、{cmdab:r:obust} 或
{cmdab:cl:uster} {it:clustvar}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt nocns:r:eport}}不显示约束{p_end}
{synopt :{opt notab:le}}抑制系数表{p_end}
{synopt :{opt nohead:er}}抑制输出头部{p_end}
{synopt :{opt nogr:oup}}抑制显示汇总组的信息{p_end}
{synopt :{it:{help meprobit##display_options:显示选项}}}控制
包含帮助简短描述-显示所有选项

{syntab:积分}
{synopt :{opth intm:ethod(meprobit##intmethod:intmethod)}}积分方法{p_end}
{synopt :{opt intp:oints(#)}}设置所有层次的积分（求积）点数；默认值为 {cmd:intpoints(7)}{p_end}

{syntab:最大化}
{synopt :{it:{help meprobit##maximize_options:最大化选项}}}控制
最大化过程；很少使用{p_end}

包含帮助 startval_table
{synopt :{opt dnumerical}}使用数值导数技术{p_end}
{synopt :{opt col:linear}}保留共线变量{p_end}
包含帮助短描述-coeflegend
{synoptline}

包含帮助 me_vartype_table

包含帮助 me_intmethod_table

包含帮助 fvvarlist
{p 4 6 2}{it:depvar}、{it:indepvars} 和 {it:varlist} 可以包含时间序列
操作符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bayes}、{cmd:by} 和 {cmd:svy} 被允许；见 {help prefix_zh}。
更多细节见 {manhelp bayes_meprobit BAYES:bayes: meprobit}.{p_end}
{p 4 6 2}
{opt vce()} 和权重与 {help svy_zh} 前缀不允许使用。
{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}s、{cmd:iweight}s 和 {cmd:pweight}s 被允许； 
见 {help weight_zh}。只能指定一种类型的权重。
在拉普拉斯近似法或交叉模型中不支持权重。{p_end}
{p 4 6 2}
{opt startvalues()}、{opt startgrid}、{opt noestimate}、{opt dnumerical}、
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}参见 {manhelp meprobit_postestimation ME:meprobit postestimation}
以获取估计后可用的功能.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多层混合效应模型 > 概率回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:meprobit} 拟合用于二元或二项反应的混合效应模型。
响应的条件分布在给定随机效应的情况下假定为 Bernoulli，成功概率由标准正态累积分布函数决定。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ME meprobitQuickstart:快速开始}

        {mansection ME meprobitRemarksandexamples:备注和示例}

        {mansection ME meprobitMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant} 抑制常数（截距）项，并可
在固定效应方程以及任何或所有随机效应方程中指定。

{phang}
{opth offset(varname)} 指定在模型的固定效应部分包含 {it:varname}，其系数限制为1.

{phang}
{opt asis} 强制保留完美预测变量及其
相关的完全预测观察值，可能会在
最大化中产生不稳定性；见 {manhelp probit R}。

包含帮助 me_vartype_opt

包含帮助 me_weight_opt

{phang}{cmd:binomial(}{help varname_zh:{it:varname}}|{it:#}{cmd:)} 指定数据为二项形式；即 {depvar} 记录来自一系列二项试验的成功次数。试验次数可以
用 {it:varname} 给出，允许该次数在
观察值之间变化，或者用
常数 {it:#} 给出。如果未指定 {opt binomial()} 
（默认），则 {it:depvar} 被视为 Bernoulli，任何非零、非缺失的值表示正响应。

{phang}
{opt constraints(constraints)};
见 {helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括基于渐近理论的类型（{cmd:oim}）、
对某些类型的欠规格稳健的类型（{cmd:robust}），和允许组内相关性的类型（{cmd:cluster} {it:clustvar}）；见
{help vce_option_zh:[R] {it:vce_option}}。如果指定了 {cmd:vce(robust)}，则稳健方差在多层模型中设为在最高层聚合。

{dlgtab:报告}

{phang}
{opt level(#)},
{opt nocnsreport}; 见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt notable} 在估计或重新播放时抑制估计表。

{phang}
{opt noheader} 在估计或重新播放时抑制输出头。

{phang}
{opt nogroup} 在输出头中抑制汇总组信息（组数、平均组大小、最小值和最大值）的显示。

包含帮助 displayopts_list

{dlgtab:积分}

包含帮助 me_integration_opt

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:算法规范)},
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
{opt nonrtol:erance}，和
{opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。
在 {cmd:meprobit} 中需要特别提及的有以下内容。

{pmore}
{opt from()} 接受一个正确标记的初始值向量或系数名称及值的列表。不允许值的列表。

{pstd}
以下选项可与 {opt meprobit} 一起使用，但在对话框中不显示：

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
{phang2}{cmd:. webuse bangladesh}{p_end}

{pstd}两级随机截距模型，类似于 {cmd:xtprobit}{p_end}
{phang2}{cmd:. meprobit c_use urban age child* || district:}{p_end}

{pstd}两级随机截距和随机系数模型{p_end}
{phang2}{cmd:. meprobit c_use urban age child* || district: urban}{p_end}

{pstd}两级随机截距和随机系数模型，相关的随机效应{p_end}
{phang2}{cmd:. meprobit c_use urban age child* || district: urban,}
       {cmd:cov(unstruct)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse towerlondon}{p_end}

{pstd}三级嵌套模型，{cmd:subject} 嵌套在 {cmd:family} 中{p_end}
{phang2}{cmd:. meprobit dtlm difficulty i.group || family: || subject:}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse fifeschool}{p_end}
{phang2}{cmd:. gen byte attain_gt_6 = attain > 6}{p_end}

{pstd}双向交叉随机效应{p_end}
{phang2}{cmd:. meprobit attain_gt_6 sex || _all:R.sid || pid:}{p_end}
    {hline}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:meprobit} 在 {cmd:e()} 中存储以下内容：

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中方程的数量{p_end}
{synopt:{cmd:e(k_eq_model)}}在整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_f)}}固定效应参数数量{p_end}
{synopt:{cmd:e(k_r)}}随机效应参数数量{p_end}
{synopt:{cmd:e(k_rs)}}方差数量{p_end}
{synopt:{cmd:e(k_rc)}}协方差数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(ll_c)}}对数似然，比较模型{p_end}
{synopt:{cmd:e(chi2_c)}}卡方，比较测试{p_end}
{synopt:{cmd:e(df_c)}}比较测试的自由度{p_end}
{synopt:{cmd:e(p_c)}}比较测试的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0}否则{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:meglm}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:meprobit}{p_end}
{synopt:{cmd:e(cmdline)}}命令输入内容{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式（第一层权重）{p_end}
{synopt:{cmd:e(fweight}{it:k}{cmd:)}}{cmd:fweight} 变量用于 {it:k} 层次，如果指定{p_end}
{synopt:{cmd:e(iweight}{it:k}{cmd:)}}{cmd:iweight} 变量用于 {it:k} 层次，如果指定{p_end}
{synopt:{cmd:e(pweight}{it:k}{cmd:)}}{cmd:pweight} 变量用于 {it:k} 层次，如果指定{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(ivars)}}分组变量{p_end}
{synopt:{cmd:e(model)}}{cmd:probit}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(link)}}{cmd:probit}{p_end}
{synopt:{cmd:e(family)}}{cmd:bernoulli} 或 {cmd:binomial}{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset)}}偏移量{p_end}
{synopt:{cmd:e(binomial)}}二项试验的次数{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(n_quad)}}积分点数{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald};模型卡方的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化程序是否执行
最大化或最小化{p_end}
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
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

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
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meprobit.sthlp>}