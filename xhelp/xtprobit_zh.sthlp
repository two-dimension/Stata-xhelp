{smcl}
{* *! version 1.3.15  15mar2019}{...}
{viewerdialog xtprobit "dialog xtprobit"}{...}
{vieweralsosee "[XT] xtprobit" "mansection XT xtprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtprobit postestimation" "help xtprobit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[ME] meprobit" "help meprobit_zh"}{...}
{vieweralsosee "[R] probit" "help probit_zh"}{...}
{vieweralsosee "[XT] quadchk" "help quadchk_zh"}{...}
{vieweralsosee "[XT] xtcloglog" "help xtcloglog_zh"}{...}
{vieweralsosee "[XT] xteprobit" "help xteprobit"}{...}
{vieweralsosee "[XT] xtgee" "help xtgee_zh"}{...}
{vieweralsosee "[XT] xtlogit" "help xtlogit_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "xtprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "xtprobit_zh##menu"}{...}
{viewerjumpto "Description" "xtprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtprobit_zh##linkspdf"}{...}
{viewerjumpto "Options for RE model" "xtprobit_zh##options_re"}{...}
{viewerjumpto "Options for PA model" "xtprobit_zh##options_pa"}{...}
{viewerjumpto "Technical note" "xtprobit_zh##technote"}{...}
{viewerjumpto "Examples" "xtprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "xtprobit_zh##results"}
{help xtprobit:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[XT] xtprobit} {hline 2}}随机效应和总体平均 probit 模型{p_end}
{p2col:}({mansection XT xtprobit:查看完整 PDF 手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{phang}
随机效应（RE）模型

{p 8 24 2}
{cmd:xtprobit} {depvar} [{indepvars}] {ifin}
[{it:{help xtprobit##weight:权重}}]
[{cmd:, re} {it:{help xtprobit##reoptions:RE_选项}}]


{phang}
总体平均（PA）模型

{p 8 24 2}
{cmd:xtprobit} {depvar} [{indepvars}] {ifin}
[{it:{help xtprobit##weight:权重}}]
{cmd:, pa} [{it:{help xtprobit##paoptions:PA_选项}}]


{marker reoptions}{...}
{synoptset 27 tabbed}{...}
{synopthdr:RE_选项}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:常数}}抑制常数项{p_end}
{synopt :{opt re}}使用随机效应估计量；默认{p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在模型中，并将系数约束为 1{p_end}
{synopt :{opth const:raints(estimation options##constraints():约束)}}应用指定的线性约束{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt r:obust}、
   {opt cl:uster} {it:clustvar}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opt lrmodel}}执行似然比模型检验，而不是默认的 Wald 检验{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help xtprobit##re_display_options:显示选项}}}控制
包含帮助短描述显示选项

包含帮助 intpts1

{syntab :最大化}
{synopt :{it:{help xtprobit##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
包含帮助短描述系数图例
{synoptline}
{p2colreset}{...}

{marker paoptions}{...}
{synoptset 27 tabbed}{...}
{synopthdr:PA_选项}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:常数}}抑制常数项{p_end}
{synopt :{opt pa}}使用总体平均估计量{p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在模型中，并将系数约束为 1{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}

{syntab :相关性}
{synopt :{cmdab:c:orr(}{it:{help xtprobit##correlation:相关性}}{cmd:)}}面板内相关结构{p_end}
{synopt :{opt force}}即使观察值在时间上不均匀，也要强制估计{p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt conventional}、
          {opt r:obust}、{opt boot:strap} 或 {opt jack:knife}{p_end}
{synopt :{opt nmp}}使用除数 N-P，而不是默认的 N{p_end}
{synopt :{opt s:cale(parm)}}覆盖默认比例参数；{it:parm}
                  可以是 {cmd:x2}、{cmd:dev}、{cmd:phi} 或 {it:#}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{it:{help xtprobit##pa_display_options:显示选项}}}控制
包含帮助短描述显示选项

{syntab :优化}
{synopt :{it:{help xtprobit##optimize_options:优化选项}}}控制优化过程；很少使用{p_end}

包含帮助短描述系数图例
{synoptline}
{p2colreset}{...}

{marker correlation}{...}
{synoptset 23}{...}
{synopthdr :相关性}
{synoptline}
{synopt :{opt exc:hangeable}}可交换的{p_end}
{synopt :{opt ind:ependent}}独立的{p_end}
{synopt :{opt uns:tructured}}非结构化{p_end}
{synopt :{opt fix:ed} {it:matname}}用户指定{p_end}
{synopt :{opt ar} {it:#}}的自回归{it:#}阶{p_end}
{synopt :{opt sta:tionary} {it:#}}的平稳性{it:#}阶{p_end}
{synopt :{opt non:stationary} {it:#}}非平稳性{it:#}阶{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
必须指定面板变量。对于 {cmd:xtprobit, pa}，除了 {cmd:exchangeable} 和 {cmd:independent} 的相关结构外，还需要指定时间变量。使用 {help xtset_zh}。{p_end}
包含帮助 fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列操作符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
允许使用 {opt by}、{opt mi estimate} 和 {opt statsby}；见 {help prefix_zh}。
{opt fp} 对于随机效应模型是允许的。{p_end}
包含帮助 vce_mi
{marker weight}{...}
{p 4 6 2}
{opt iweight}s、{opt fweight}s 和 {opt pweight}s 允许用于总体平均模型，而 {opt iweight}s 允许用于随机效应模型；见 {help weight_zh}。权重必须在面板内保持不变。{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不出现在对话框中。{p_end}
{p 4 6 2}
有关估计后可用功能的更多信息，请参见 {manhelp xtprobit_postestimation XT:xtprobit postestimation}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 二元结果 >}
     {bf:Probit 回归（RE，PA）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtprobit} 为二元因变量拟合随机效应和总体平均 probit 模型。正向结果的概率假定由标准正态累积分布函数决定。  


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtprobitQuickstart:快速入门}

        {mansection XT xtprobitRemarksandexamples:备注和示例}

        {mansection XT xtprobitMethodsandformulas:方法和公式}

{pstd}
上面的部分不包括在此帮助文件中。


{marker options_re}{...}
{title:随机效应模型选项}

{dlgtab:模型}

{phang}
{opt noconstant}；见
 {helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt re} 请求随机效应估计器。 如果未指定 {opt re} 或 {opt pa}，则 {opt re} 为默认值。

{phang}
{opth offset(varname)}，{opt constraints(constraints)}；见 
{helpb estimation options##offset():[R] 估计选项}。

{phang}
{opt asis} 强制保留完美预测变量及其相关的完美预测观察值，可能会在最大化中产生不稳定；见 {manhelp probit R}。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括从渐近理论（{cmd:oim}）派生的类型、
对某些形式的错误规范具有稳健性（{cmd:robust}）的类型、允许组内相关性（{cmd:cluster} {it:clustvar}）的类型，
以及使用引导或刀差方法（{cmd:bootstrap}、{cmd:jackknife）的方法；见 {help xt_vce_options_zh:[XT] {it:vce_options}}。

{pmore}
指定 {cmd:vce(robust)} 等同于指定
{cmd:vce(cluster} {it:panelvar}{cmd:)}；见
{mansection XT xtprobitMethodsandformulasxtprobit,reandtherobustVCEestimator:{it:xtprobit, re 和稳健 VCE 估计器}}于
{it:方法和公式} 的 {bf:[XT] xtprobit}。

{dlgtab:报告}

{phang}
{opt level(#)}、{opt lrmodel}、
{opt nocnsreport}；见
     {helpb estimation options:[R] 估计选项}。

{marker re_display_options}{...}
包含帮助 displayopts_list

包含帮助 intpts4

{dlgtab:最大化}

{phang}
{marker maximize_options}
{it:maximize_options}： {opt dif:ficult}、
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}、 
{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、{opt grad:ient}、 
{opt showstep}、{opt hess:ian}、{opt showtol:erance}、{opt tol:erance(#)}、 
{opt ltol:erance(#)}、{opt nrtol:erance(#)}、 
{opt nonrtol:erance} 和 {opt from(init_specs)}；
见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pstd}
与 {opt xtprobit} 可用，但不在对话框中显示的选项：

{phang}
{opt collinear}、{opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}。


{marker options_pa}{...}
{title:总体平均模型选项}

{dlgtab:模型}

{phang}
{opt noconstant}；见 
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt pa} 请求总体平均估计量。

{phang}
{opth offset(varname)}；见
{helpb estimation options##offset():[R] 估计选项}。

{phang}
{opt asis} 强制保留完美预测变量及其相关的完美预测观察值，可能会在最大化中产生不稳定；见 {manhelp probit R}。

{dlgtab:相关性}

{phang}
{opt corr(correlation)} 指定面板内相关结构；默认对应于均匀相关模型，
{cmd:corr(exchangeable)}。

{pmore}
当您指定需要滞后的相关结构时，可以在结构名称后注明滞后，带空格或不带空格；
例如，{cmd:corr(ar 1)} 或 {cmd:corr(ar1)}。

{pmore}
如果您指定固定相关结构，则在 {cmd:fixed} 之后指定包含假定相关性的矩阵名称，例如，{cmd:corr(fixed myr)}。

{phang}
{opt force} 指定即使时间变量不均匀也要强制估计。这仅与需要知道时间变量的相关结构相关。
这些相关结构要求观察值均匀分布，以使基于滞后的计算对应于恒定的时间变化。如果您指定一个时间变量，表示观察值不均匀，模型将无法拟合（依赖于时间）。
如果您还指定了 {opt force}，则模型将被拟合，并假定基于时间变量排序数据的滞后是适当的。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括：
源于渐近理论的类型（{cmd:conventional}），
对某些错误规格具有稳健性的类型（{cmd:robust}），使用引导或刀差方法（{cmd:bootstrap}、{cmd:jackknife）的方法；见
{help xt_vce_options_zh:[XT] {it:vce_options}}。

{pmore}
{cmd:vce(conventional)} 为默认值，使用常规得出的方差估计器进行广义最小二乘回归。

{phang}
{opt nmp}、{cmd:scale(x2}|{cmd:dev}|{cmd:phi}|{it:#}{cmd:)}；见
{help xt_vce_options_zh:[XT] {it:vce_options}}。

{dlgtab:报告} 

{phang}
{opt level(#)}；见
{helpb estimation options##level():[R] 估计选项}。

{marker pa_display_options}{...}
包含帮助 displayopts_list

{dlgtab:优化}

{phang}
{marker optimize_options}
{it:optimize_options} 控制迭代优化过程。这些选项很少使用。

{pmore}
{opt iter:ate(#)} 指定最大迭代次数。当迭代次数达到 # 时，优化过程停止并呈现当前结果，即使收敛容忍度尚未达到。默认为 
{cmd:iterate(100)}。

{pmore}
{opt tol:erance(#)} 指定系数向量的容忍度。当从一个迭代到下一个的系数向量的相对变化小于或等于 # 时，优化过程停止。  
{cmd:tolerance(1e-6)} 为默认值。

{pmore}
包含帮助 lognolog

{pmore}
{opt tr:ace} 指定在每次迭代时打印当前估计值。

{pstd}
与 {opt xtprobit} 可用，但不在对话框中显示的选项：

{phang}
{opt coeflegend}；见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker technote}{...}
{title:技术说明}

{pstd}
随机效应模型是通过求积计算的，这是一个近似值，其准确性部分取决于使用的积分点数。我们可以使用 {cmd:quadchk} 命令查看更改积分点数是否会影响结果。如果结果发生变化，则表示给定积分点数下的求积近似不准确。尝试使用 {cmd:intpoints()} 选项增加积分点数，并再次运行 {cmd:quadchk}。当 {cmd:quadchk} 报告的系数有显著差异时，请勿尝试解释估计结果。有关详细信息，请参见 {manhelp quadchk XT}，并查看 {bf:[XT] xtprobit} 的 
{mansection XT xtprobitRemarksandexamplestechnote:示例}。

{pstd}
由于 {cmd:xtprobit, re} 似然函数是通过高斯-赫米特求积计算的，对于大型问题，计算速度可能较慢。
计算时间大致与用于求积的点数成正比。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse union}{p_end}

{pstd}随机效应模型{p_end}
{phang2}{cmd:. xtprobit union age grade i.not_smsa south##c.year}

{pstd}均匀相关总体平均模型{p_end}
{phang2}{cmd:. xtprobit union age grade i.not_smsa south##c.year, pa}

{pstd}具有稳健方差的均匀相关总体平均模型{p_end}
{phang2}{cmd:. xtprobit union age grade i.not_smsa south##c.year, pa}
             {cmd:vce(robust)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xtprobit, re} 存储以下内容在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_g)}}组数{p_end}
{synopt:{cmd:e(k)}}参数数{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数数{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数{p_end}
{synopt:{cmd:e(k_dv)}}因变量数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅包含常数模型的对数似然{p_end}
{synopt:{cmd:e(ll_c)}}比较模型的对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(chi2_c)}}比较测试的卡方{p_end}
{synopt:{cmd:e(N_clust)}}聚类数{p_end}
{synopt:{cmd:e(rho)}}rho{p_end}
{synopt:{cmd:e(sigma_u)}}面板级标准差{p_end}
{synopt:{cmd:e(n_quad)}}积分点数{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(rank0)}}仅包含常数模型的 {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtprobit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(model)}}{cmd:re}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(offset)}}线性偏置变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方测试类型{p_end}
{synopt:{cmd:e(chi2_ct)}}{cmd:Wald} 或 {cmd:LR}；对应于 {cmd:e(chi2_c)} 的模型卡方测试类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(distrib)}}{cmd:Gaussian}；随机效应的分布{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器执行最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}类型的 {cmd:ml} 方法{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实施 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsdefault)}} {opt predict()} 的默认指定用于 {cmd:margins}{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-共变矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}模型基础方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}


{pstd}
{cmd:xtprobit, pa} 存储以下内容在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_g)}}组数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(df_pear)}}皮尔逊卡方的自由度{p_end}
{synopt:{cmd:e(chi2_dev)}}偏差的卡方检验{p_end}
{synopt:{cmd:e(chi2_dis)}}偏差分散的卡方检验{p_end}
{synopt:{cmd:e(deviance)}}偏差{p_end}
{synopt:{cmd:e(dispers)}}偏差分散{p_end}
{synopt:{cmd:e(phi)}}比例参数{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(tol)}}目标容忍度{p_end}
{synopt:{cmd:e(dif)}}达到的容忍度{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtgee}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:xtprobit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(tvar)}}表示组内时间的变量{p_end}
{synopt:{cmd:e(model)}}{cmd:pa}{p_end}
{synopt:{cmd:e(family)}}{cmd:binomial}{p_end}
{synopt:{cmd:e(link)}}{cmd:probit}；连接函数{p_end}
{synopt:{cmd:e(corr)}}相关结构{p_end}
{synopt:{cmd:e(scale)}}{cmd:x2}、{cmd:dev}、{cmd:phi} 或 {it:#}；比例参数{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(offset)}}线性偏置变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方测试类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(nmp)}}{cmd:nmp}，如有指定{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实施 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(R)}}估计的工作相关矩阵{p_end}
{synopt:{cmd:e(V)}}估计量的方差-共变矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}模型基础方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtprobit.sthlp>}