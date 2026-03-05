{smcl}
{* *! version 1.2.6  12dec2018}{...}
{viewerdialog mecloglog "dialog mecloglog"}{...}
{viewerdialog "svy: mecloglog" "dialog mecloglog, message(-svy-) name(svy_mecloglog)"}{...}
{vieweralsosee "[ME] mecloglog" "mansection ME mecloglog"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] mecloglog postestimation" "help mecloglog postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: mecloglog" "help bayes mecloglog"}{...}
{vieweralsosee "[ME] me" "help me_zh"}{...}
{vieweralsosee "[ME] melogit" "help melogit_zh"}{...}
{vieweralsosee "[ME] meprobit" "help meprobit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[XT] xtcloglog" "help xtcloglog_zh"}{...}
{viewerjumpto "Syntax" "mecloglog_zh##syntax"}{...}
{viewerjumpto "Menu" "mecloglog_zh##menu"}{...}
{viewerjumpto "Description" "mecloglog_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mecloglog_zh##linkspdf"}{...}
{viewerjumpto "Options" "mecloglog_zh##options"}{...}
{viewerjumpto "Remarks" "mecloglog_zh##remarks"}{...}
{viewerjumpto "Examples" "mecloglog_zh##examples"}{...}
{viewerjumpto "Stored results" "mecloglog_zh##results"}
{help mecloglog:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[ME] mecloglog} {hline 2}}多层混合效应互补对数对数回归{p_end}
{p2col:}({mansection ME mecloglog:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:mecloglog} {depvar} {it:fe_equation} [{cmd:||} {it:re_equation}]
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help mecloglog##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法为

{p 12 24 2}
	[{indepvars}] {ifin} [{it:{help mecloglog##weight:权重}}]
	[{cmd:,} {it:{help mecloglog##fe_options:固定效应选项}}]

{p 4 4 2}
    {it:re_equation} 的语法为以下之一：

{p 8 18 2}
	用于随机系数和截距

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} [{varlist}]
		[{cmd:,} {it:{help mecloglog##re_options:随机效应选项}}]

{p 8 18 2}
	用于因子变量的随机效应值

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} {cmd:R.}{varname}

{p 4 4 2}
    {it:levelvar} 是标识该层随机效应组结构的变量，或者是 {cmd:_all}，表示所有观察值组成一组。{p_end}

{synoptset 25 tabbed}{...}
{marker fe_options}{...}
{synopthdr :固定效应选项}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}从固定效应方程中抑制常数项{p_end}
{synopt :{opth off:set(varname)}}包含{it:varname}于模型中，系数被限制为 1{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}
{synoptline}

{marker re_options}{...}
{synopthdr :随机效应选项}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(mecloglog##vartype:vartype)}}随机效应的方差-协方差结构{p_end}
{synopt :{opt nocons:tant}}从随机效应方程中抑制常数项{p_end}
{synopt :{opth fw:eight(varname)}}在较高层次的频率权重{p_end}
{synopt :{opth iw:eight(varname)}}在较高层次的重要性权重{p_end}
{synopt :{opth pw:eight(varname)}}在较高层次的采样权重{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab:模型}
{synopt :{opt bin:omial}{cmd:(}{it:{help varname_zh:varname}}|{it:#}{cmd:)}}如果数据为二项式形式则设置二项试验{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误/稳健性}
{synopt:{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:oim}、{cmdab:r:obust} 或
{cmdab:cl:uster} {it:clustvar}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opt eform}}报告指数化系数{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{opt notab:le}}抑制系数表{p_end}
{synopt :{opt nohead:er}}抑制输出标题{p_end}
{synopt :{opt nogr:oup}}抑制总结组信息表{p_end}
{synopt :{it:{help mecloglog##display_options:显示选项}}}控制
包含帮助 短描述-显示选项

{syntab:积分}
{synopt :{opth intm:ethod(mecloglog##intmethod:intmethod)}}积分方法{p_end}
{synopt :{opt intp:oints(#)}}设置所有层次的积分（求积）点数；默认是 {cmd:intpoints(7)}{p_end}

{syntab:最大化}
{synopt :{it:{help mecloglog##maximize_options:最大化选项}}}控制最大化过程；少用{p_end}

包含帮助 startval_table
{synopt :{opt dnumerical}}使用数值导数技术{p_end}
{synopt :{opt col:linear}}保留共线变量{p_end}
包含帮助 shortdes-coeflegend
{synoptline}

包含帮助 me_vartype_table

包含帮助 me_intmethod_table

包含帮助 fvvarlist
{p 4 6 2}{it:depvar}、{it:indepvars}和{it:varlist}可以包含时间序列运算符；参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bayes}、{cmd:by}和{cmd:svy}是允许的；参见 {help prefix_zh}。
更多详情，请参见 {manhelp bayes_mecloglog BAYES:bayes: mecloglog}.{p_end}
{p 4 6 2}
{opt vce()} 和权重在 {help svy_zh} 前缀下不被允许。
{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}s、{cmd:iweight}s 和 {cmd:pweight}s 是允许的； 
参见 {help weight_zh}。只能指定一种类型的权重。
在拉普拉斯近似或交叉模型下不支持权重。
{p_end}
{p 4 6 2}
{opt startvalues()}、{opt startgrid}、{opt noestimate}、{opt dnumerical}、
{opt collinear} 和 {opt coeflegend} 不显示在对话框中。{p_end}
{p 4 6 2}请参见 {manhelp mecloglog_postestimation ME:mecloglog 后估计}
了解估计后可用的特性。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多层混合效应模型}
     {bf:> 互补对数对数回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mecloglog} 拟合用于二元或二项响应的混合效应模型。
响应在给定随机效应时的条件分布假设为伯努利，成功概率由逆互补对数对数函数决定。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ME mecloglogQuickstart:快速开始}

        {mansection ME mecloglogRemarksandexamples:备注和示例}

        {mansection ME mecloglogMethodsandformulas:方法与公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant} 抑制常数（截距）项，可为固定效应方程和任何或所有随机效应方程指定。

{phang}
{opth offset(varname)} 指定 {it:varname} 在模型的固定效应部分中，系数被限制为 1。

{phang}
{opt asis} 强制保留完美预测变量及其相关的、完美预测的观测值，可能会导致最大化的不稳定性；参见 {manhelp probit R}。

包含帮助 me_vartype_opt

包含帮助 me_weight_opt

{phang}{cmd:binomial(}{help varname_zh:{it:varname}}|{it:#}{cmd:)} 指定数据为二项形式；也就是说，{depvar} 记录来自一系列二项随机试验的成功次数。这个试验次数要么由 {it:varname} 给出，允许这个数量在观察中变化，要么由常数 {it:#} 给出。如果没有指定 {opt binomial()}（默认为），{it:depvar} 被视为伯努利，任何非零、非缺失值表示正响应。

{phang}
{opt constraints(constraints)}；参见 {helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括基于渐近理论的类型 ({cmd:oim})、可以对某种类型的模型错误进行稳健处理的类型 ({cmd:robust})、以及允许组内相关性的类型({cmd:cluster} {it:clustvar})；见 {help vce_option_zh:[R] {it:vce_option}}。如果指定 {cmd:vce(robust)}，则稳健方差在多级模型中的最高层被聚类。

{dlgtab:报告}

{phang}
{opt level(#)}；参见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt eform} 报告指数化系数及相应的标准误和置信区间。此选项可以在估计时或重放时指定。

{phang}
{opt nocnsreport}；参见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt notable} 抑制估计表，无论是在估计时还是重放时。

{phang}
{opt noheader} 在估计时或重放时抑制输出头。

{phang}
{opt nogroup} 抑制显示组摘要信息（组数、平均组大小、最小值和最大值），从输出头中去掉。

包含帮助 displayopts_list

{dlgtab:积分}

包含帮助 me_integration_opt

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:算法_spec)}、
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
{opt nonrtol:erance} 和
{opt from(init_specs)}；
见 {help maximize_zh:[R] 最大化}。
对于 {cmd:mecloglog} 的特殊提及选项如下。

{pmore}
{opt from()} 接受一个适当标记的初始值向量或带有值的系数名称列表。不允许值列表。

{pstd}
以下选项适用于 {opt mecloglog} 但在对话框中未显示：

{phang}
{opt startvalues(svmethod)}、{cmd:startgrid}[{cmd:(}{it:gridspec}{cmd:)}]、{opt noestimate} 和 {opt dnumerical}；见 {helpb meglm##startval:[ME] meglm}。

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

{pstd}两级随机截距模型，类似于 {cmd:xtcloglog}{p_end}
{phang2}{cmd:. mecloglog c_use urban age child* || district:}{p_end}

{pstd}两级随机截距和随机系数模型{p_end}
{phang2}{cmd:. mecloglog c_use urban age child* || district: urban}{p_end}

{pstd}两级随机截距和随机系数模型，相关随机效应{p_end}
{phang2}{cmd:. mecloglog c_use urban age child* || district: urban,}
       {cmd:cov(unstruct)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse towerlondon}{p_end}

{pstd}三级嵌套模型，{cmd:subject} 嵌套在 {cmd:family} 中{p_end}
{phang2}{cmd:. mecloglog dtlm difficulty i.group || family: || subject:}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse fifeschool}{p_end}
{phang2}{cmd:. gen byte attain_gt_6 = attain > 6}{p_end}

{pstd}双向交叉随机效应{p_end}
{phang2}{cmd:. mecloglog attain_gt_6 sex || _all:R.sid || pid:}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mecloglog} 在 {cmd:e()} 中存储以下结果：

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值的数量{p_end}
{synopt:{cmd:e(k)}}参数的数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_f)}}固定效应参数的数量{p_end}
{synopt:{cmd:e(k_r)}}随机效应参数的数量{p_end}
{synopt:{cmd:e(k_rs)}}方差的数量{p_end}
{synopt:{cmd:e(k_rc)}}协方差的数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类的数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(ll_c)}}对数似然，比较模型{p_end}
{synopt:{cmd:e(chi2_c)}}卡方，比较检验{p_end}
{synopt:{cmd:e(df_c)}}比较检验的自由度{p_end}
{synopt:{cmd:e(p_c)}}比较检验的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示收敛，{cmd:0} 否则{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:meglm}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:mecloglog}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式（第一层权重）{p_end}
{synopt:{cmd:e(fweight}{it:k}{cmd:)}}{cmd:fweight} 变量，用于第 {it:k} 高层，如果指定{p_end}
{synopt:{cmd:e(iweight}{it:k}{cmd:)}}{cmd:iweight} 变量，用于第 {it:k} 高层，如果指定{p_end}
{synopt:{cmd:e(pweight}{it:k}{cmd:)}}{cmd:pweight} 变量，用于第 {it:k} 高层，如果指定{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(ivars)}}分组变量{p_end}
{synopt:{cmd:e(model)}}{cmd:cloglog}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(link)}}{cmd:cloglog}{p_end}
{synopt:{cmd:e(family)}}{cmd:bernoulli} 或 {cmd:binomial}{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset)}}偏移量{p_end}
{synopt:{cmd:e(binomial)}}二项试验的数量{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(n_quad)}}积分点数{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
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
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(marginswtype)}}{cmd:margins} 的权重类型{p_end}
{synopt:{cmd:e(marginswexp)}}{cmd:margins} 的权重表达式{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
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

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mecloglog.sthlp>}