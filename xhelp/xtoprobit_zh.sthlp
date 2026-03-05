{smcl}
{* *! version 1.0.22  15mar2019}{...}
{viewerdialog xtoprobit "dialog xtoprobit"}{...}
{vieweralsosee "[XT] xtoprobit" "mansection XT xtoprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtoprobit postestimation" "help xtoprobit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] meoprobit" "help meoprobit_zh"}{...}
{vieweralsosee "[R] probit" "help xtoprobit_zh"}{...}
{vieweralsosee "[XT] quadchk" "help quadchk_zh"}{...}
{vieweralsosee "[XT] xtologit" "help xtologit_zh"}{...}
{vieweralsosee "[XT] xteoprobit" "help xteoprobit"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "xtoprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "xtoprobit_zh##menu"}{...}
{viewerjumpto "Description" "xtoprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtoprobit_zh##linkspdf"}{...}
{viewerjumpto "Options" "xtoprobit_zh##options"}{...}
{viewerjumpto "Technical note" "xtoprobit_zh##technote"}{...}
{viewerjumpto "Example" "xtoprobit_zh##example"}{...}
{viewerjumpto "Video example" "xtoprobit_zh##video"}{...}
{viewerjumpto "Stored results" "xtoprobit_zh##results"}
{help xtoprobit:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[XT] xtoprobit} {hline 2}}随机效应有序probit模型{p_end}
{p2col:}({mansection XT xtoprobit:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:xtoprobit} {depvar} [{indepvars}] {ifin}
[{it:{help xtoprobit##weight:weight}}]
[{cmd:,} {it:options}]

{synoptset 27 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab :模型}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，其系数约束为1{p_end}
{synopt :{opth const:raints(estimation options##constraints():constraints)}}应用指定的线性约束{p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}} {it:vcetype} 可以为 {opt oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信级别；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt lrmodel}}执行似然比模型检验，而不是默认的Wald检验{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help xtoprobit##display_options:display_options}}}控制
包含帮助简短描述-显示选项

包含帮助 intpts1
 
{syntab :最大化}
{synopt :{it:{help xtoprobit##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt :{opth startg:rid(numlist)}}通过执行网格搜索来改善随机截距参数的起始值{p_end}
{synopt:{opt nodis:play}}抑制标题和系数的显示{p_end}
{synopt:{opt col:linear}}保持共线变量{p_end}
包含帮助简短描述-系数图例
{synoptline}
{p2colreset}{...}
{p 4 6 2}
必须指定一个面板变量；见 {help xtset_zh}。{p_end}
包含帮助 fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列操作符；见 {help tsvarlist_zh}。{p_end}
{p 4 6 2}
允许使用 {opt by}、{opt fp} 和 {opt statsby}；见 {help prefix_zh}。{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}、{cmd:iweight} 和 {cmd:pweight} 被允许；
见 {help weight_zh}。{p_end}
{p 4 6 2}
{opt startgrid()}、{opt nodisplay}、{opt collinear} 和 {opt coeflegend}
不会出现在对话框中。{p_end}
{p 4 6 2}
有关估计后可用功能，请参阅 {manhelp xtoprobit_postestimation XT:xtoprobit postestimation}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 有序结果 >}
    {bf:Probit回归（随机效应）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtoprobit} 拟合随机效应有序probit模型。因变量的实际值并不重要，尽管较大的值假定对应于“更高”的结果。给定随机效应，因变量的条件分布被假定为多项式，其成功概率由标准正态累积分布函数决定。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection XT xtoprobitQuickstart:快速开始}

        {mansection XT xtoprobitRemarksandexamples:评论与示例}

        {mansection XT xtoprobitMethodsandformulas:方法与公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth offset(varname)}、{opt constraints(constraints)}；见 
{helpb estimation options##offset():[R] 估计选项}。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括基于渐进理论的类型（{cmd:oim}），对某些类型的错误规范是稳健的（{cmd:robust}），允许组内相关性（{cmd:cluster} {it:clustvar}）和使用自助或插值法（{cmd:bootstrap}、{cmd:jackknife}）；见 {help xt_vce_options_zh:[XT] {it:vce_options}}。

{pmore}
指定 {cmd:vce(robust)} 相当于指定 {cmd:vce(cluster} {it:panelvar}{cmd:)}；见
{mansection XT xtoprobitMethodsandformulasxtoprobitandtherobustVCEestimator:{it:xtoprobit 和稳健VCE估计器}}在
{it:方法与公式}的 {bf:[XT] xtoprobit}。

{dlgtab:报告}

{phang}
{opt level(#)}；见
{helpb estimation options##level():[R] 估计选项}。 

{phang}
{opt lrmodel}、{opt nocnsreport}；见
     {helpb estimation options:[R] 估计选项}。

{marker display_options}{...}
包含帮助 displayopts_list

包含帮助 intpts4

{dlgtab:最大化}

{phang}
{marker maximize_options}
{it:maximize_options}: {opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}、{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、{opt grad:ient}、{opt showstep}、{opt hess:ian}、{opt showtol:erance}、{opt tol:erance(#)}、{opt ltol:erance(#)}、{opt nrtol:erance(#)}、{opt nonrtol:erance} 和 {opt from(init_specs)}；
见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pstd}
以下选项可与 {cmd:xtoprobit} 一起使用，但不会在对话框中显示：

{phang}
{opth startgrid(numlist)} 进行网格搜索以改善随机截距参数的起始值。 默认情况下不执行网格搜索，除非发现起始值不可行；在这种情况下，
{cmd:xtologit} 运行 {cmd:startgrid(0.1 1 10)} 并选择最佳值。您可能已经在不知情的情况下使用了 {cmd:startgrid()} 的默认形式。如果您在迭代日志中看到 {cmd:xtologit} 显示网格节点1、网格节点2等跟随网格节点0，这就是 {cmd:xtologit} 由于原始起始值不可行而进行默认搜索的结果。

{phang}
{opt nodisplay} 是为程序员准备的。它将抑制标题和系数的显示。

{phang}
{opt collinear}、{opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}。


{marker technote}{...}
{title:技术说明}

{pstd}
随机效应probit模型是利用积分计算的，积分的准确性部分取决于使用的积分点数量。我们可以使用 {cmd:quadchk} 命令查看改变积分点数量是否影响结果。如果结果发生变化，基于积分的近似不准确。尝试使用 {cmd:intpoints()} 选项增加积分点数量，然后再次运行 {cmd:quadchk}。当 {cmd:quadchk} 报告的系数差异显著时，不要试图解释估计结果。有关详细信息，请参见 {manhelp quadchk XT} 和 {bf:[XT] xtprobit} 的 
{mansection XT xtoprobitRemarksandexamplestechnote:示例}。

{pstd}
由于 {cmd:xtoprobit} 似然函数是通过高斯-赫尔米特积分计算的，在大型问题上，计算可能会很慢。计算时间与用于积分的点数大致成正比。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse tvsfpors}{p_end}
{phang2}{cmd:. xtset school}{p_end}

{pstd}随机效应有序probit回归{p_end}
{phang2}{cmd:. xtoprobit thk prethk cc##tv}{p_end}


{marker video}{...}
{title:视频示例}

{phang2}{browse "https://www.youtube.com/watch?v=O_8DgkBEFMo":面板数据的有序逻辑和probit回归}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xtoprobit} 将以下信息存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_g)}}组的数量{p_end}
{synopt:{cmd:e(k)}}参数的数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(k_cat)}}类别数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(ll_c)}}比较模型的对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(chi2_c)}}比较检验的卡方{p_end}
{synopt:{cmd:e(N_clust)}}集群数{p_end}
{synopt:{cmd:e(sigma_u)}}面板级标准差{p_end}
{synopt:{cmd:e(n_quad)}}积分点数量{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(p)}}模型测试的p值{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(rank0)}}仅常数模型的 {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}如果收敛则为 {cmd:1}，否则为 {cmd:0}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:meglm}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:xtoprobit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}集群变量名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移量变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}或{cmd:LR}；模型卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(distrib)}}{cmd:Gaussian}；随机效应的分布{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max}或{cmd:min}；是否要执行最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}} {cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginswtype)}}{cmd:margins} 的权重类型{p_end}
{synopt:{cmd:e(marginswexp)}}{cmd:margins} 的权重表达式{p_end}
{synopt:{cmd:e(marginsdefault)}} {cmd:margins} 的默认 {opt predict()} 规范{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 被视为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 被视为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(cat)}}类别值{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtoprobit.sthlp>}