{smcl}
{* *! version 1.0.10  12dec2018}{...}
{viewerdialog metobit "dialog metobit"}{...}
{viewerdialog "svy: metobit" "dialog metobit, message(-svy-) name(svy_metobit)"}{...}
{vieweralsosee "[ME] metobit" "mansection ME metobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] metobit postestimation" "help metobit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: metobit" "help bayes metobit"}{...}
{vieweralsosee "[ME] me" "help me_zh"}{...}
{vieweralsosee "[ME] meintreg" "help meintreg_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[R] tobit" "help tobit_zh"}{...}
{vieweralsosee "[XT] xttobit" "help xttobit_zh"}{...}
{viewerjumpto "Syntax" "metobit_zh##syntax"}{...}
{viewerjumpto "Menu" "metobit_zh##menu"}{...}
{viewerjumpto "Description" "metobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "metobit_zh##linkspdf"}{...}
{viewerjumpto "Options" "metobit_zh##options"}{...}
{viewerjumpto "Remarks" "metobit_zh##remarks"}{...}
{viewerjumpto "Examples" "metobit_zh##examples"}{...}
{viewerjumpto "Stored results" "metobit_zh##results"}
{help metobit:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[ME] metobit} {hline 2}}多级混合效应Tobit回归{p_end}
{p2col:}({mansection ME metobit:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:metobit} {depvar} {it:fe_equation} [{cmd:||} {it:re_equation}]
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help metobit##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法是

{p 12 24 2}
	[{indepvars}] {ifin} [{it:{help metobit##weight:权重}}]
	[{cmd:,} {it:{help metobit##fe_options:固定效应选项}}]

{p 4 4 2}
    而 {it:re_equation} 的语法为以下之一：

{p 8 18 2}
	用于随机系数和截距

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} [{varlist}]
		[{cmd:,} {it:{help metobit##re_options:随机效应选项}}]

{p 8 18 2}
	用于因子变量值之间的随机效应

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} {cmd:R.}{varname}

{p 4 4 2}
    {it:levelvar} 是识别该层随机效应组结构的变量，或是 {cmd:_all} 表示一个包含所有观测值的组。{p_end}

{synoptset 25 tabbed}{...}
{marker fe_options}{...}
{synopthdr :固定效应选项}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}从固定效应方程中删除常数项{p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在模型中，其系数限制为 1{p_end}
{synoptline}

{marker re_options}{...}
{synopthdr :随机效应选项}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(metobit##vartype:vartype)}}随机效应的方差-协方差结构{p_end}
{synopt :{opt nocons:tant}}从随机效应方程中删除常数项{p_end}
{synopt :{opth fw:eight(varname)}}在更高层次上的频率权重{p_end}
{synopt :{opth iw:eight(varname)}}在更高层次上的重要性权重{p_end}
{synopt :{opth pw:eight(varname)}}在更高层次上的抽样权重{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab:模型}
{synopt :{cmd:ll}[{cmd:(}{varname}|{it:#}{cmd:)}]}左截断变量或限制{p_end}
{synopt :{cmd:ul}[{cmd:(}{varname}|{it:#}{cmd:)}]}右截断变量或限制{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误/鲁棒性}
{synopt:{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:oim}、{cmdab:r:obust} 或 {cmdab:cl:uster} {it:clustvar}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt nocns:r:eport}}不显示约束{p_end}
{synopt :{opt notab:le}}抑制系数表{p_end}
{synopt :{opt nohead:er}}抑制输出头{p_end}
{synopt :{opt nogr:oup}}抑制汇总组的表{p_end}
{synopt :{it:{help metobit##display_options:显示选项}}}控制
包含帮助简述-显示选项

{syntab:积分}
{synopt :{opth intm:ethod(metobit##intmethod:intmethod)}}积分方法{p_end}
{synopt :{opt intp:oints(#)}}为所有层级设置积分（求积）点的数量；默认值为 {cmd:intpoints(7)}{p_end}

{syntab :最大化}
{synopt :{it:{help metobit##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

包含帮助开始值表
{synopt :{opt dnumerical}}使用数值导数技术{p_end}
{synopt :{opt col:linear}}保留共线变量{p_end}
包含帮助简述-coeflegend
{synoptline}

包含帮助 me_vartype_table

包含帮助 me_intmethod_table

包含帮助 fvvarlist
{p 4 6 2}{it:depvar}、{it:indepvars} 和 {it:varlist}
可以包含时间序列操作符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bayes}、{cmd:by} 和 {cmd:svy} 是允许的；见 {help prefix_zh}。
更多细节，请见 {manhelp bayes_metobit BAYES:bayes: metobit}.{p_end}
{p 4 6 2}
{opt vce()} 和权重在使用 {help svy_zh} 前缀时不允许。
{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}s、{cmd:iweight}s 和 {cmd:pweight}s 是允许的； 
见 {help weight_zh}。只能指定一种类型的权重。
在拉普拉斯近似或交叉模型下不支持权重。{p_end}
{p 4 6 2}
{opt startvalues()}、{opt startgrid}、{opt noestimate}、{opt dnumerical}、
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}有关估计后可用的功能，请参见 {manhelp metobit_postestimation ME:metobit 后估计}{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多级混合效应模型 > Tobit 回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:metobit} 适用于因截断而受限的连续响应的混合效应模型。截断限制可以是所有观察值的固定值或在观察值之间变化。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ME metobitQuickstart:快速入门}

        {mansection ME metobitRemarksandexamples:备注和示例}

        {mansection ME metobitMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}删除常数（截距）项，可以
为固定效应方程和任何或所有的随机效应方程指定。

{phang}
{cmd:ll}[{cmd:(}{varname}|{it:#}{cmd:)}] 和 
{cmd:ul}[{cmd:(}{varname}|{it:#}{cmd:)}]
   分别指示截断的下限和上限。
   具有 {depvar} {ul:<} {opt ll()} 的观察值是左截断的；具有 {it:depvar} {ul:>} {opt ul()} 的观察值是右截断的；其余观察值则不被截断。您无需指定截断值。如果您指定了 {opt ll}，则下限为 {it:depvar} 的最小值。如果您指定了 {opt ul}，则上限为 {it:depvar} 的最大值。

{phang}
{opth offset(varname)}指定 {it:varname} 包含在
模型的固定效应部分，并且系数限制为 1。

包含帮助 me_vartype_opt

包含帮助 me_weight_opt

{phang}
{opt constraints(constraints)}；见 {helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/鲁棒性}

{phang}
{opt vce(vcetype)}指定报告的标准误类型，包括由渐近理论衍生的类型（{cmd:oim}）、对某些类型的错误设定具有鲁棒性的类型（{cmd:robust}）以及允许组内相关性的类型（{cmd:cluster} {it:clustvar}）；见 {help vce_option_zh:[R] {it:vce_option}}。如果指定了 {cmd:vce(robust)}，则在多级模型中，鲁棒方差在最高层次聚类。

{dlgtab:报告}

{phang}
{opt level(#)}、{opt nocnsreport}；
见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt notable}抑制估计表，无论是在估计时还是重新回放时。

{phang}
{opt noheader}抑制输出头，无论是在估计时还是重新回放时。

{phang}
{opt nogroup}抑制从输出头中显示组汇总信息（组的数量、平均组大小、最小值和最大值）。

包含帮助 displayopts_list

{dlgtab:积分}

包含帮助 me_integration_opt

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}，
{opth tech:nique(maximize##algorithm_spec:算法规范)}，
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
对于 {cmd:metobit} 特别提到的选项列在下面。

{pmore}
{opt from()} 接受一组适当标记的初始值向量或具有值的系数名称列表。不允许值列表。

{pstd}
以下选项可与 {opt metobit} 一起使用，但未显示在对话框中：

{phang}
{opt startvalues(svmethod)}，{cmd:startgrid}[{cmd:(}{it:gridspec}{cmd:)}]，
{opt noestimate} 和 {opt dnumerical}；见 {helpb meglm##startval:[ME] meglm}。

{phang}
{opt collinear}、{opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}。


{marker remarks}{...}
包含帮助 me_weight_remarks


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse nlswork}{p_end}

{pstd}多级随机截距模型，施加人工上限 1.96{p_end}
{phang2}{cmd:. metobit ln_wage i.union age south##c.grade || idcode:,}
       {cmd:ul(1.96)}{p_end}

{pstd}多级随机截距模型，相关的随机效应{p_end}
{phang2}{cmd:. metobit ln_wage i.union age south##c.grade || idcode:,}
       {cmd:covariance(unstructured)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:metobit} 将以下内容存储在 {cmd:e()} 中：

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值数量{p_end}
{synopt:{cmd:e(N_unc)}}未截断观察值数量{p_end}
{synopt:{cmd:e(N_lc)}}左截断观察值数量{p_end}
{synopt:{cmd:e(N_rc)}}右截断观察值数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
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
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:meglm}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:metobit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(llopt)}}{it:depvar} 的最小值或 {cmd:ll()} 的内容{p_end}
{synopt:{cmd:e(ulopt)}}{it:depvar} 的最大值或 {cmd:ul()} 的内容{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式（第一层权重）{p_end}
{synopt:{cmd:e(fweight}{it:k}{cmd:)}}{cmd:fweight} 变量的 {it:k}th 最高水平，如果指定{p_end}
{synopt:{cmd:e(iweight}{it:k}{cmd:)}}{cmd:iweight} 变量的 {it:k}th 最高水平，如果指定{p_end}
{synopt:{cmd:e(pweight}{it:k}{cmd:)}}{cmd:pweight} 变量的 {it:k}th 最高水平，如果指定{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(ivars)}}分组变量{p_end}
{synopt:{cmd:e(model)}}{cmd:tobit}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(link)}}{cmd:identity}{p_end}
{synopt:{cmd:e(family)}}{cmd:gaussian}{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset)}}偏移量{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(n_quad)}}积分点数量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是否执行
最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}被 {cmd:margins} 禁止的预测{p_end}
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
{synopt:{cmd:e(V_modelbased)}}模型基础方差{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <metobit.sthlp>}