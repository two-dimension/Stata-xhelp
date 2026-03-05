{smcl}
{* *! version 1.2.7  12dec2018}{...}
{viewerdialog menbreg "dialog menbreg"}{...}
{viewerdialog "svy: menbreg" "dialog menbreg, message(-svy-) name(svy_menbreg)"}{...}
{vieweralsosee "[ME] menbreg" "mansection ME menbreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] menbreg postestimation" "help menbreg postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: menbreg" "help bayes menbreg"}{...}
{vieweralsosee "[ME] me" "help me_zh"}{...}
{vieweralsosee "[ME] mepoisson" "help mepoisson_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[XT] xtnbreg" "help xtnbreg_zh"}{...}
{viewerjumpto "Syntax" "menbreg_zh##syntax"}{...}
{viewerjumpto "Menu" "menbreg_zh##menu"}{...}
{viewerjumpto "Description" "menbreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "menbreg_zh##linkspdf"}{...}
{viewerjumpto "Options" "menbreg_zh##options"}{...}
{viewerjumpto "Remarks" "menbreg_zh##remarks"}{...}
{viewerjumpto "Examples" "menbreg_zh##examples"}{...}
{viewerjumpto "Stored results" "menbreg_zh##results"}
{help menbreg:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[ME] menbreg} {hline 2}}多层混合效应负二项回归{p_end}
{p2col:}({mansection ME menbreg:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:menbreg} {depvar} {it:fe_equation} [{cmd:||} {it:re_equation}]
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help menbreg##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法为

{p 12 24 2}
	[{indepvars}] {ifin} [{it:{help menbreg##weight:权重}}]
	[{cmd:,} {it:{help menbreg##fe_options:固定效应选项}}]

{p 4 4 2}
    而 {it:re_equation} 的语法是以下之一：

{p 8 18 2}
	用于随机系数和截距

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} [{varlist}]
		[{cmd:,} {it:{help menbreg##re_options:随机效应选项}}]

{p 8 18 2}
	用于因子变量的随机效应

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} {cmd:R.}{varname}

{p 4 4 2}
    {it:levelvar} 是用于识别该层级随机效应的组结构的变量，或者是 {cmd:_all} 代表一个包含所有观察值的组。{p_end}

{synoptset 25 tabbed}{...}
{marker fe_options}{...}
{synopthdr :fe_options}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:常数}}从固定效应方程中抑制常数项{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包含 ln({it:varname_e})，并将系数约束为1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包含 {it:varname_o}，并将系数约束为1{p_end}
{synoptline}

{marker re_options}{...}
{synopthdr :re_options}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(menbreg##vartype:vartype)}}随机效应的方差-协方差结构{p_end}
{synopt :{opt nocons:常数}}从随机效应方程中抑制常数项{p_end}
{synopt :{opth fw:eight(varname)}}在更高层次上的频率权重{p_end}
{synopt :{opth iw:eight(varname)}}在更高层次上的重要性权重{p_end}
{synopt :{opth pw:eight(varname)}}在更高层次上的抽样权重{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab:模型}
{synopt :{opt d:ispersion(dispersion)}}条件过分散的参数化； {it:dispersion} 可以是 {cmd:mean}（默认）或 {cmd:constant}{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误/稳健性}
{synopt:{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:oim}、 {cmdab:r:obust} 或 {cmdab:cl:uster} {it:clustvar}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opt irr}}将固定效应系数报告为发生率比，即 exp(b) 而不是 b。标准误和置信区间也同样转换。此选项影响结果的显示方式，而不影响结果的估计或存储。{cmd:irr} 可以在估计时或重放时指定。

{phang}
{opt nocnsr:eport}; 参见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt notable} 抑制估计表，无论是在估计时还是重放时。

{phang}
{opt noheader} 抑制输出标题，无论是在估计时还是重放时。

{phang}
{opt nogroup} 抑制输出标题中的组摘要信息（组的数量、平均组大小、最小和最大值）。

INCLUDE help displayopts_list

{dlgtab:积分}

INCLUDE help me_integration_opt

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}:
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)},
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
{opt from(init_specs)};
参见 {help maximize_zh:[R] 最大化}。
需要特别提及的适用于 {cmd:menbreg} 的选项如下。

{pmore}
{opt from()} 接受一个合理标记的初始值向量或一个系数名称及其值的列表。不允许单纯的值列表。

{pstd}
以下选项适用于 {opt menbreg}，但在对话框中不显示：

{phang}
{opt startvalues(svmethod)}, {cmd:startgrid}[{cmd:(}{it:gridspec}{cmd:)}],
{opt noestimate}, 和 {opt dnumerical}; 参见 {helpb meglm##startval:[ME] meglm}。

{phang}
{opt collinear}, {opt coeflegend}; 参见
     {helpb estimation options:[R] 估计选项}。


{marker remarks}{...}
INCLUDE help me_weight_remarks


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse melanoma}{p_end}

{pstd}三层随机截距模型{p_end}
{phang2}{cmd:. menbreg deaths c.uv##c.uv, exposure(expected) || nation: || region:}{p_end}

{pstd}与上述相同，但将系数报告为发生率{p_end}
{phang2}{cmd:. menbreg, irr}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:menbreg} 将以下内容存储在 {cmd:e()}：

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值的数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中方程的数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_f)}}固定效应参数的数量{p_end}
{synopt:{cmd:e(k_r)}}随机效应参数的数量{p_end}
{synopt:{cmd:e(k_rs)}}方差的数量{p_end}
{synopt:{cmd:e(k_rc)}}协方差的数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数{p_end}
{synopt:{cmd:e(chi2)}}卡方值{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(ll_c)}}比较模型的对数似然{p_end}
{synopt:{cmd:e(chi2_c)}}比较检验的卡方值{p_end}
{synopt:{cmd:e(df_c)}}比较检验的自由度{p_end}
{synopt:{cmd:e(p_c)}}比较检验的 p 值{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示收敛，{cmd:0} 否则{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:meglm}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:menbreg}{p_end}
{synopt:{cmd:e(cmdline)}}命令如输入{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式（第一层权重）{p_end}
{synopt:{cmd:e(fweight}{it:k}{cmd:)}}{cmd:fweight} 变量，针对 {it:k} 层级（如果指定）{p_end}
{synopt:{cmd:e(iweight}{it:k}{cmd:)}}{cmd:iweight} 变量，针对 {it:k} 层级（如果指定）{p_end}
{synopt:{cmd:e(pweight}{it:k}{cmd:)}}{cmd:pweight} 变量，针对 {it:k} 层级（如果指定）{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(ivars)}}分组变量{p_end}
{synopt:{cmd:e(model)}}{cmd:nbreg}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(link)}}{cmd:log}{p_end}
{synopt:{cmd:e(family)}}{cmd:nbinomial}{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(dispersion)}}{cmd:mean} 或 {cmd:constant}{p_end}
{synopt:{cmd:e(offset)}}偏移量{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(n_quad)}}积分点的数量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型的卡方类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化的类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器是执行最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}所使用的 {cmd:ml} 方法的类型{p_end}
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
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <menbreg.sthlp>}