{smcl}
{* *! version 1.0.8  12dec2018}{...}
{viewerdialog meintreg "dialog meintreg"}{...}
{viewerdialog "svy: meintreg" "dialog meintreg, message(-svy-) name(svy_meintreg)"}{...}
{vieweralsosee "[ME] meintreg" "mansection ME meintreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] meintreg postestimation" "help meintreg postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: meintreg" "help bayes meintreg"}{...}
{vieweralsosee "[R] intreg" "help intreg_zh"}{...}
{vieweralsosee "[ME] me" "help me_zh"}{...}
{vieweralsosee "[ME] metobit" "help metobit_zh"}{...}
{vieweralsosee "[ST] stintreg" "help stintreg_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[XT] xtintreg" "help xtintreg_zh"}{...}
{viewerjumpto "Syntax" "meintreg_zh##syntax"}{...}
{viewerjumpto "Menu" "meintreg_zh##menu"}{...}
{viewerjumpto "Description" "meintreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "meintreg_zh##linkspdf"}{...}
{viewerjumpto "Options" "meintreg_zh##options"}{...}
{viewerjumpto "Remarks" "meintreg_zh##remarks"}{...}
{viewerjumpto "Examples" "meintreg_zh##examples"}{...}
{viewerjumpto "Stored results" "meintreg_zh##results"}
{help meintreg:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[ME] meintreg} {hline 2}}多层次混合效应区间回归
{p_end}
{p2col:}({mansection ME meintreg:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:meintreg}
	{depvar}_lower {depvar}_upper
        {it:fe_equation} [{cmd:||} {it:re_equation}]
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help meintreg##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法为

{p 12 24 2}
	[{indepvars}] {ifin} [{it:{help meintreg##weight:权重}}]
	[{cmd:,} {it:{help meintreg##fe_options:固定效应选项}}]

{p 4 4 2}
    而 {it:re_equation} 的语法为以下之一：

{p 8 18 2}
    对于随机系数和截距

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} [{varlist}]
		[{cmd:,} {it:{help meintreg##re_options:随机效应选项}}]

{p 8 18 2}
    对于因子变量值中的随机效应

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} {cmd:R.}{varname}

{pstd}
在 {it:depvar}_lower 和 {it:depvar}_upper 中的值应具有以下形式：

        数据类型                         {it:depvar}_lower  {it:depvar}_upper
	{hline 62}
	点数据              a = [a,a]         a             a
	区间数据               [a,b]         a             b
	左截断数据  (-infinity,b]         {cmd:.}             b
	右截断数据 [a,+infinity)         a             {cmd:.}
	缺失                                   {cmd:.}             {cmd:.}
        {hline 62}

{p 4 4 2}
    {it:levelvar} 是一个识别随机效应所在层次的组结构的变量，或者是 {cmd:_all} ，表示一个包含所有观测值的组。{p_end}

{synoptset 25 tabbed}{...}
{marker fe_options}{...}
{synopthdr :固定效应选项}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}从固定效应方程中抑制常数项{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname} ，系数约束为1{p_end}
{synoptline}

{marker re_options}{...}
{synopthdr :随机效应选项}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(meintreg##vartype:vartype)}}随机效应的方差-协方差结构{p_end}
{synopt :{opt nocons:tant}}从随机效应方程中抑制常数项{p_end}
{synopt :{opth fw:eight(varname)}}在更高层次的频率权重{p_end}
{synopt :{opth iw:eight(varname)}}在更高层次的重要性权重{p_end}
{synopt :{opth pw:eight(varname)}}在更高层次的采样权重{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab:模型}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误/鲁棒性}
{synopt:{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:oim}，{cmdab:r:obust}，或 {cmdab:cl:uster} {it:clustvar}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{opt notab:le}}抑制系数表{p_end}
{synopt :{opt nohead:er}}抑制输出头部{p_end}
{synopt :{opt nogr:oup}}抑制总结组的表格{p_end}
{synopt :{it:{help meintreg##display_options:显示选项}}}控制
包含帮助短描述-显示选项

{syntab:积分}
{synopt :{opth intm:ethod(meintreg##intmethod:intmethod)}}积分方法{p_end}
{synopt :{opt intp:oints(#)}}设置所有层次的积分（四分法）点的数量；默认值为 {cmd:intpoints(7)}{p_end}

{syntab :最大化}
{synopt :{it:{help meintreg##maximize_options:最大化选项}}}控制
最大化过程；很少使用{p_end}

包含帮助开始值表
{synopt :{opt dnumerical}}使用数值导数技术{p_end}
{synopt :{opt col:linear}}保留共线变量{p_end}
包含帮助短描述-系数图例
{synoptline}

包含帮助 me_vartype_table

包含帮助 me_intmethod_table

包含帮助 fvvarlist
{p 4 6 2}{it:depvar}_lower, {it:depvar}_upper, {it:indepvars}, 和 {it:varlist}
可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bayes}, {cmd:by}, 和 {cmd:svy} 是允许的；见 {help prefix_zh}。
更多细节，请参见 {manhelp bayes_meintreg BAYES:bayes: meintreg}.{p_end}
{p 4 6 2}
{opt vce()} 和权重与 {help svy_zh} 前缀不兼容。
{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}s, {cmd:iweight}s, 和 {cmd:pweight}s 是允许的； 
见 {help weight_zh}。只允许指定一种权重类型。
在拉普拉斯近似或交叉模型下不支持权重。{p_end}
{p 4 6 2}
{opt startvalues()}, {opt startgrid}, {opt noestimate}, {opt dnumerical},
{opt collinear}, 和 {opt coeflegend} 不在对话框中显示。{p_end}
{p 4 6 2}有关估计后可用的功能，请参见 {manhelp meintreg_postestimation ME:meintreg postestimation}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多层次混合效应模型 > 区间回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:meintreg} 拟合适用于连续响应的混合效应模型，其中因变量可以被测量为点数据、区间截断数据、左截断数据或右截断数据。因此，它是以 {cmd:metobit} 拟合的模型的一种推广。因变量必须使用两个变量来指定，指示其测量方法。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection ME meintregQuickstart:快速入门}

        {mansection ME meintregRemarksandexamples:备注和示例}

        {mansection ME meintregMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant} 抑制常数（截距）项，适用于固定效应方程以及任意的或所有的随机效应方程。

{phang}
{opth offset(varname)} 指定将 {it:varname} 包含在模型的固定效应部分，系数约束为1。

包含帮助 me_vartype_opt

包含帮助 me_weight_opt

{phang}
{opt constraints(constraints)}；
见 {helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/鲁棒性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括从渐近理论得出的类型 ({cmd:oim})，对某些类型的误指定稳健的标准误 ({cmd:robust})，以及允许组内相关性 ({cmd:cluster} {it:clustvar})；见 {help vce_option_zh:[R] {it:vce_option}}。如果指定{cmd:vce(robust)}，则在多层模型中，稳健方差在最高层聚类。

{dlgtab:报告}

{phang}
{opt level(#)}, {opt nocnsreport}；
见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt notable} 在估计或重放时抑制估计表。

{phang}
{opt noheader} 在估计或重放时抑制输出头部。

{phang}
{opt nogroup} 从输出头部中抑制显示组摘要信息（组的数量，平均组大小，最小值和最大值）。

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
对于 {cmd:meintreg} 需要特别提及的选项如下。

{pmore}
{opt from()} 接受一个正确标记的初始值向量或包含系数名称及其值的列表。不允许列出值的列表。

{pstd}
以下选项可与 {opt meintreg} 一起使用，但在对话框中未显示：

{phang}
{opt startvalues(svmethod)}, {cmd:startgrid}[{cmd:(}{it:gridspec}{cmd:)}],
{opt noestimate}, 和 {opt dnumerical}；见 {helpb meglm##startval:[ME] meglm}。

{phang}
{opt collinear}, {opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}。


{marker remarks}{...}
包含帮助 me_weight_remarks


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse mastitis}{p_end}
{phang2}{cmd:. generate lnleft = ln(left)}{p_end}
{phang2}{cmd:. generate lnright = ln(right)}{p_end}

{pstd}多层次随机截距模型{p_end}
{phang2}{cmd:. meintreg lnleft lnright i.multiparous || farm: || cow:}{p_end}

{pstd}多层次随机截距模型，相关的随机效应{p_end}
{phang2}{cmd:. meintreg lnleft lnright i.multiparous || farm: ||}
       {cmd:cow: multiparous, covariance(unstructured)}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:meintreg} 在 {cmd:e()} 中存储以下内容：

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测值数量{p_end}
{synopt:{cmd:e(N_unc)}}未截断观测值数量{p_end}
{synopt:{cmd:e(N_lc)}}左截断观测值数量{p_end}
{synopt:{cmd:e(N_rc)}}右截断观测值数量{p_end}
{synopt:{cmd:e(N_int)}}区间截断观测值数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}总体模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_f)}}固定效应参数数量{p_end}
{synopt:{cmd:e(k_r)}}随机效应参数数量{p_end}
{synopt:{cmd:e(k_rs)}}方差数量{p_end}
{synopt:{cmd:e(k_rc)}}协方差数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(ll_c)}}对数似然，比较模型{p_end}
{synopt:{cmd:e(chi2_c)}}卡方，比较检验{p_end}
{synopt:{cmd:e(df_c)}}比较检验的自由度{p_end}
{synopt:{cmd:e(p_c)}}比较检验的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，则为 {cmd:0} 否则{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:meglm}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:meintreg}{p_end}
{synopt:{cmd:e(cmdline)}}命令按原样输入{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式（第一层权重）{p_end}
{synopt:{cmd:e(fweight}{it:k}{cmd:)}}第 {it:k} 高级别的 {cmd:fweight} 变量，如果已指定{p_end}
{synopt:{cmd:e(iweight}{it:k}{cmd:)}}第 {it:k} 高级别的 {cmd:iweight} 变量，如果已指定{p_end}
{synopt:{cmd:e(pweight}{it:k}{cmd:)}}第 {it:k} 高级别的 {cmd:pweight} 变量，如果已指定{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(ivars)}}分组变量{p_end}
{synopt:{cmd:e(model)}}{cmd:interval}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(link)}}{cmd:identity}{p_end}
{synopt:{cmd:e(family)}}{cmd:gaussian}{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset)}}偏移量{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(n_quad)}}积分点的数量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是执行
最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(marginswtype)}} {cmd:margins} 的权重类型{p_end}
{synopt:{cmd:e(marginswexp)}} {cmd:margins} 的权重表达式{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多20次迭代）{p_end}
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
{center:翻译自Stata官方帮助文档 <meintreg.sthlp>}