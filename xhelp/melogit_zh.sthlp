{smcl}
{* *! version 1.2.7  12dec2018}{...}
{viewerdialog melogit "dialog melogit"}{...}
{viewerdialog "svy: melogit" "dialog melogit, message(-svy-) name(svy_melogit)"}{...}
{vieweralsosee "[ME] melogit" "mansection ME melogit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] melogit postestimation" "help melogit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: melogit" "help bayes melogit"}{...}
{vieweralsosee "[ME] me" "help me_zh"}{...}
{vieweralsosee "[ME] mecloglog" "help mecloglog_zh"}{...}
{vieweralsosee "[ME] meprobit" "help meprobit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[XT] xtlogit" "help xtlogit_zh"}{...}
{viewerjumpto "Syntax" "melogit_zh##syntax"}{...}
{viewerjumpto "Menu" "melogit_zh##menu"}{...}
{viewerjumpto "Description" "melogit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "melogit_zh##linkspdf"}{...}
{viewerjumpto "Options" "melogit_zh##options"}{...}
{viewerjumpto "Remarks" "melogit_zh##remarks"}{...}
{viewerjumpto "Examples" "melogit_zh##examples"}{...}
{viewerjumpto "Stored results" "melogit_zh##results"}
{help melogit:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[ME] melogit} {hline 2}}多级混合效应逻辑回归
{p_end}
{p2col:}({mansection ME melogit:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:melogit} {depvar} {it:fe_equation} [{cmd:||} {it:re_equation}]
    [{cmd:||} {it:re_equation} ...] 
    [{cmd:,} {it:{help melogit##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法为

{p 12 24 2}
    [{indepvars}] {ifin} [{it:{help melogit##weight:权重}}]
    [{cmd:,} {it:{help melogit##fe_options:固态选项}}]

{p 4 4 2}
    而 {it:re_equation} 的语法为以下之一：

{p 8 18 2}
    对于随机系数和截距

{p 12 24 2}
    {it:{help varname_zh:levelvar}}{cmd::} [{varlist}]
        [{cmd:,} {it:{help melogit##re_options:随机选项}}]

{p 8 18 2}
    对于因子变量的值之间的随机效应

{p 12 24 2}
    {it:{help varname_zh:levelvar}}{cmd::} {cmd:R.}{varname}

{p 4 4 2}
    {it:levelvar} 是一个变量，用于识别该层次随机效应的组结构，或者是 {cmd:_all}，表示由所有观察组成的一个组。{p_end}

{synoptset 25 tabbed}{...}
{marker fe_options}{...}
{synopthdr :固态选项}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制固定效应方程的常数项{p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在模型中，并将系数约束为 1{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}
{synoptline}

{marker re_options}{...}
{synopthdr :随机选项}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(melogit##vartype:vartype)}}随机效应的方差-协方差结构{p_end}
{synopt :{opt nocons:tant}}抑制随机效应方程的常数项{p_end}
{synopt :{opth fw:eight(varname)}}在较高层次的频率权重{p_end}
{synopt :{opth iw:eight(varname)}}在较高层次的重要性权重{p_end}
{synopt :{opth pw:eight(varname)}}在较高层次的抽样权重{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab:模型}
{synopt :{opt bin:omial}{cmd:(}{it:{help varname_zh:varname}}|{it:#}{cmd:)}}如果数据为二项形式，则设置二项试验{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误/稳健}
{synopt:{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:oim}、{cmdab:r:obust}，或 {cmdab:cl:uster} {it:clustvar}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值是 {cmd:level(95)}{p_end}
{synopt :{opt or}}将固定效应系数报告为比率比{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{opt notab:le}}抑制系数表{p_end}
{synopt :{opt nohead:er}}抑制输出标题{p_end}
{synopt :{opt nogr:oup}}抑制输出标题中总结组的信息{p_end}
{synopt :{it:{help melogit##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

{syntab:积分}
{synopt :{opth intm:ethod(melogit##intmethod:intmethod)}}积分方法{p_end}
{synopt :{opt intp:oints(#)}}设置所有层次的积分（四分之一）点数；默认值为 {cmd:intpoints(7)}{p_end}

{syntab :最大化}
{synopt :{it:{help melogit##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

INCLUDE help startval_table
{synopt :{opt dnumerical}}使用数值导数技术{p_end}
{synopt :{opt col:linear}}保留共线性变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}

INCLUDE help me_vartype_table

INCLUDE help me_intmethod_table

INCLUDE help fvvarlist
{p 4 6 2}{it:depvar}、{it:indepvars} 和 {it:varlist} 可以包含时间序列操作符；参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bayes}、{cmd:by} 和 {cmd:svy} 是允许的；参见 {help prefix_zh}。
更多详细信息，请参见 {manhelp bayes_melogit BAYES:bayes: melogit}.{p_end}
{p 4 6 2}
{opt vce()} 和权重不允许与 {help svy_zh} 前缀一起使用。
{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}s、{cmd:iweight}s 和 {cmd:pweight}s 是允许的；
参见 {help weight_zh}。仅可指定一种权重类型。
在拉普拉斯近似或交叉模型下不支持权重。{p_end}
{p 4 6 2}
{opt startvalues()}、{opt startgrid}、{opt noestimate}、{opt dnumerical}、{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}有关在估计后可用的功能，请参见 {manhelp melogit_postestimation ME:melogit 后估计}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多级混合效应模型 > 逻辑回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:melogit} 拟合二元和二项响应的混合效应模型。
给定随机效应的响应的条件分布被假定为伯努利分布，其成功概率由逻辑累积分布函数决定。


{marker linkspdf}{...}
{title:PDF 文档链接}

    {mansection ME melogitQuickstart:快速开始}

    {mansection ME melogitRemarksandexamples:备注和示例}

    {mansection ME melogitMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant} 压制常数（截距）项，可以为固定效应方程和任何或所有随机效应方程指定。

{phang}
{opth offset(varname)} 指定将 {it:varname} 包含在模型的固定效应部分，系数约束为 1。

{phang}
{opt asis} 强制保留完美预测变量及其相关的完美预测观察，并可能在最大化中产生不稳定性；参见 {manhelp probit R}。

INCLUDE help me_vartype_opt

INCLUDE help me_weight_opt

{phang}{cmd:binomial(}{help varname_zh:{it:varname}}|{it:#}{cmd:)} 指定数据为二项形式；即 {depvar} 记录来自一系列二项试验的成功次数。
该试验的次数要么由 {it:varname} 给出，允许该次数在观察之间变化；要么作为常数 {it:#}。如果未指定 {opt binomial()}（默认），则 {it:depvar} 将视为伯努利分布，任何非零、非缺失值表示正响应。

{phang}
{opt constraints(constraints)}；
参见 {helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括由渐近理论导出的类型（{cmd:oim}）、对于某些类型的错误规范是稳健的（{cmd:robust}），以及允许组内相关性（{cmd:cluster} {it:clustvar}）；参见 {help vce_option_zh:[R] {it:vce_option}}。如果指定 {cmd:vce(robust)}，则稳健方差在多级模型中聚类在最高层次。

{dlgtab:报告}

{phang}
{opt level(#)}；参见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt or} 将估计的固定效应系数转换为比率比报告，即 exp(b) 而不是 b。标准误和置信区间类似地被转换。此选项影响结果的显示方式，而不是估计方式。{cmd:or} 可以在估计时或重新播放时指定。

{phang}
{opt nocnsreport}；参见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt notable} 抑制估计表，无论是在估计时还是在重新播放时。

{phang}
{opt noheader} 抑制输出标题，无论是在估计时还是在重新播放时。

{phang}
{opt nogroup} 抑制输出标题中组汇总信息的显示（组数、平均组大小、最小值和最大值）。

INCLUDE help displayopts_list

{dlgtab:积分}

INCLUDE help me_integration_opt

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
{opt nonrtol:erance}， 和
{opt from(init_specs)}；
参见 {help maximize_zh:[R] 最大化}。
对于 {cmd:melogit} 需要特别说明的选项列在下面。

{pmore}
{opt from()} 接受一个适当标记的初始值向量或一个系数名称及其值的列表。值的列表是不允许的。

{pstd}
以下选项在 {opt melogit} 中可用，但未显示在对话框中：

{phang}
{opt startvalues(svmethod)}，{cmd:startgrid}[{cmd:(}{it:gridspec}{cmd:)}]，
{opt noestimate} 和 {opt dnumerical}；参见 {helpb meglm##startval:[ME] meglm}。

{phang}
{opt collinear}、{opt coeflegend}；参见
     {helpb estimation options:[R] 估计选项}。


{marker remarks}{...}
INCLUDE help me_weight_remarks


{marker examples}{...}
{title:示例}

    {hline}
{pstd}准备{p_end}
{phang2}{cmd:. webuse bangladesh}{p_end}

{pstd}两级随机截距模型，类似于 {cmd:xtlogit}{p_end}
{phang2}{cmd:. melogit c_use urban age child* || district:}{p_end}

{pstd}两级随机截距和随机系数模型{p_end}
{phang2}{cmd:. melogit c_use urban age child* || district: urban}{p_end}

{pstd}两级随机截距和随机系数模型，相关随机效应{p_end}
{phang2}{cmd:. melogit c_use urban age child* || district: urban,}
       {cmd:cov(unstruct)}{p_end}

    {hline}
{pstd}准备{p_end}
{phang2}{cmd:. webuse towerlondon}{p_end}

{pstd}三级嵌套模型，{cmd:subject} 嵌套在 {cmd:family} 之内{p_end}
{phang2}{cmd:. melogit dtlm difficulty i.group || family: || subject:}{p_end}

    {hline}
{pstd}准备{p_end}
{phang2}{cmd:. webuse fifeschool}{p_end}
{phang2}{cmd:. gen byte attain_gt_6 = attain > 6}{p_end}

{pstd}双向交叉随机效应{p_end}
{phang2}{cmd:. melogit attain_gt_6 sex || _all:R.sid || pid:}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:melogit} 在 {cmd:e()} 中存储以下内容：

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_f)}}固定效应参数数量{p_end}
{synopt:{cmd:e(k_r)}}随机效应参数数量{p_end}
{synopt:{cmd:e(k_rs)}}方差数量{p_end}
{synopt:{cmd:e(k_rc)}}协方差数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的p值{p_end}
{synopt:{cmd:e(ll_c)}}对数似然，比较模型{p_end}
{synopt:{cmd:e(chi2_c)}}卡方，比较测试{p_end}
{synopt:{cmd:e(df_c)}}比较测试的自由度{p_end}
{synopt:{cmd:e(p_c)}}比较测试的p值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:meglm}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:melogit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式（第一层权重）{p_end}
{synopt:{cmd:e(fweight}{it:k}{cmd:)}}指定的第 {it:k} 个最高层的 {cmd:fweight} 变量{p_end}
{synopt:{cmd:e(iweight}{it:k}{cmd:)}}指定的第 {it:k} 个最高层的 {cmd:iweight} 变量{p_end}
{synopt:{cmd:e(pweight}{it:k}{cmd:)}}指定的第 {it:k} 个最高层的 {cmd:pweight} 变量{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(ivars)}}分组变量{p_end}
{synopt:{cmd:e(model)}}{cmd:logistic}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(link)}}{cmd:logit}{p_end}
{synopt:{cmd:e(family)}}{cmd:bernoulli} 或 {cmd:binomial}{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset)}}偏移量{p_end}
{synopt:{cmd:e(binomial)}}二项试验的次数{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(n_quad)}}积分点的数量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方的类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是否执行最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
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
{center:翻译自Stata官方帮助文档 <melogit.sthlp>}