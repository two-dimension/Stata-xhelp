{smcl}
{* *! version 1.3.14  12dec2018}{...}
{viewerdialog xtcloglog "dialog xtcloglog"}{...}
{vieweralsosee "[XT] xtcloglog" "mansection XT xtcloglog"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtcloglog postestimation" "help xtcloglog postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] cloglog" "help cloglog_zh"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[ME] mecloglog" "help mecloglog_zh"}{...}
{vieweralsosee "[XT] quadchk" "help quadchk_zh"}{...}
{vieweralsosee "[XT] xtgee" "help xtgee_zh"}{...}
{vieweralsosee "[XT] xtlogit" "help xtlogit_zh"}{...}
{vieweralsosee "[XT] xtprobit" "help xtprobit_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "xtcloglog_zh##syntax"}{...}
{viewerjumpto "Menu" "xtcloglog_zh##menu"}{...}
{viewerjumpto "Description" "xtcloglog_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtcloglog_zh##linkspdf"}{...}
{viewerjumpto "Options for RE model" "xtcloglog_zh##options_re"}{...}
{viewerjumpto "Options for PA model" "xtcloglog_zh##options_pa"}{...}
{viewerjumpto "Technical note" "xtcloglog_zh##technote"}{...}
{viewerjumpto "Examples" "xtcloglog_zh##examples"}{...}
{viewerjumpto "Stored results" "xtcloglog_zh##results"}
{help xtcloglog:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[XT] xtcloglog} {hline 2}}随机效应和总体平均的 cloglog 模型{p_end}
{p2col:}({mansection XT xtcloglog:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
随机效应（RE）模型

{p 8 18 2}
{cmd:xtcloglog} {depvar} [{indepvars}] {ifin}
[{it:{help xtcloglog##weight:权重}}]
[{cmd:, re}
{it:{help xtcloglog##randomeffects:RE 选项}}]


{phang}
总体平均（PA）模型

{p 8 18 2}
{cmd:xtcloglog} {depvar} [{indepvars}] {ifin}
[{it:{help xtcloglog##weight:权重}}]{cmd:, pa}
[{it:{help xtcloglog##popaveraged:PA 选项}}]


{marker randomeffects}{...}
{synoptset 26 tabbed}{...}
{synopthdr :RE_options}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:不计算}}抑制常数项{p_end}
{synopt :{opt re}}使用随机效应估计量；默认为此选项{p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在模型中，其系数限制为 1{p_end}
{synopt:{cmdab:const:raints(}{it:{help estimation options##constraints():约束条件}}{cmd:)}}应用指定的线性约束{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}

{syntab:SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt r:obst}、
   {opt cl:uster} {it:clustvar}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt lrmodel}}执行似然比模型检验，而不是默认的 Wald 检验{p_end}
{synopt :{opt ef:orm}}报告指数化系数{p_end}
{synopt :{opt nocnsr:eport}}不显示约束条件{p_end}
{synopt :{it:{help xtcloglog##re_display_options:显示选项}}}控制
包含帮助短标识-显示选项

包含帮助 intpts1

{syntab:最大化}
{synopt :{it:{help xtcloglog##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linearity}}保留高度相关的变量{p_end}
包含帮助短标识-系数图例
{synoptline}
{p2colreset}{...}

{marker popaveraged}{...}
{synoptset 26 tabbed}{...}
{synopthdr :PA_options}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:不计算}}抑制常数项{p_end}
{synopt :{opt pa}}使用总体平均估计量{p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在模型中，其系数限制为 1{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}

{syntab:相关性}
{synopt :{cmdab:c:orr(}{it:{help xtcloglog##correlation:相关性}}{cmd:)}}小组内相关性结构{p_end}
{synopt :{opt force}}即使观测值在时间上不均匀，也强制估计{p_end}

{syntab:SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt conventional}、
     {opt r:obst}、{opt boot:strap} 或 {opt jack:knife}{p_end}
{synopt :{opt nmp}}使用除数 N - P，而不是默认的 N{p_end}
{synopt :{opt s:cale(parm)}}覆盖默认的缩放参数； {it:parm} 可以是 {cmd:x2}、{cmd:dev}、{cmd:phi} 或 {it:#}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt ef:orm}}报告指数化系数{p_end}
{synopt :{it:{help xtcloglog##pa_display_options:显示选项}}}控制
包含帮助短标识-显示选项

{syntab:优化}
{synopt :{it:{help xtcloglog##optimize_options:优化选项}}}控制迭代优化过程；很少使用{p_end}

包含帮助短标识-系数图例
{synoptline}
{p2colreset}{...}

{marker correlation}{...}
{synoptset 19}{...}
{synopthdr :相关性}
{synoptline}
{synopt :{opt exc:hangeable}}可交换的；默认值{p_end}
{synopt :{opt ind:ependent}}独立的{p_end}
{synopt :{opt uns:tructured}}非结构化的{p_end}
{synopt :{opt fix:ed} {it:matname}}用户指定{p_end}
{synopt :{opt ar} {it:#}}自回归阶数 {it:#}{p_end}
{synopt :{opt sta:tionary} {it:#}}平稳阶数 {it:#}{p_end}
{synopt :{opt non:stationary} {it:#}}非平稳阶数 {it:#}{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
必须指定一个面板变量。对于 {cmd:xtcloglog, pa}，除 {cmd:exchangeable} 和 {cmd:independent} 的相关性结构需同时指定时间变量。使用 {help xtset_zh}.{p_end}
包含帮助 fvvarlist
{p 4 6 2}
{opt by}、{opt mi estimate} 和 {opt statsby} 被允许；见 {help prefix_zh}。
{opt fp} 在随机效应模型中被允许。{p_end}
包含帮助 vce_mi
{marker weight}{...}
{p 4 6 2}
允许在总体平均模型中使用 {opt iweight}、{opt fweight} 和 {opt pweight}，在随机效应模型中允许使用 {opt iweight}；见 {help weight_zh}。权重必须在面板内保持不变。{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
有关估计后可用功能，请参见 {manhelp xtcloglog_postestimation XT:xtcloglog postestimation}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 横向/面板数据 > 二元结果 >}
    {bf:互补对数-对数回归（随机效应、总体平均）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtcloglog} 为二元因变量拟合总体平均和随机效应互补对数-对数（cloglog）模型。当某个结果相对于其他结果较为稀有时，通常使用互补对数-对数模型。 


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtcloglogQuickstart:快速入门}

        {mansection XT xtcloglogRemarksandexamples:备注和示例}

        {mansection XT xtcloglogMethodsandformulas:方法与公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options_re}{...}
{title:随机效应模型选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 见 
 {helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt re} 请求随机效应估计量，默认为此选项。

{phang}
{opth offset(varname)}、{opt constraints(constraints)}；见 
{helpb estimation options##offset():[R] 估计选项}。

{phang}
{opt asis} 强制保留完美预测变量及其相关的完美预测观测，可能会在最大化中产生不稳定性；见 {manhelp probit R}。

{dlgtab:SE/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括源自渐近理论的类型 ({cmd:oim})、对某些误设稳健的类型 ({cmd:robust})、允许组内相关的类型 ({cmd:cluster} {it:clustvar})，以及使用自举或杰克刀法的类型 ({cmd:bootstrap}、{cmd:jackknife})；见 {help xt_vce_options_zh:[XT] {it:vce_options}}。

{pmore}
指定 {cmd:vce(robust)} 等同于指定 {cmd:vce(cluster} {it:panelvar}{cmd:)}；见
{mansection XT xtcloglogMethodsandformulasxtcloglog,reandtherobustVCEestimator:{it:xtcloglog, re 和稳健 VCE 估计量}}，在
{it:方法与公式} 的 {bf:[XT] xtcloglog} 中。

{dlgtab:报告}

{phang}
{opt level(#)}、{opt lrmodel}; 见
 {helpb estimation options:[R] 估计选项}。 

{phang}
{opt eform} 显示指数化系数及相应的标准误和置信区间。

{phang}
{opt nocnsreport}; 见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

{marker re_display_options}{...}
包含帮助 displayopts_list

包含帮助 intpts4

{dlgtab:最大化}

{phang}
{marker maximize_options}
{it:maximize_options}: {opt dif:ficult}、
{opth tech:nique(maximize##algorithm_spec:算法说明)}、 
{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、{opt grad:ient}、 
{opt showstep}、{opt hess:ian}、{opt showtol:erance}、{opt tol:erance(#)}、 
{opt ltol:erance(#)}、{opt nrtol:erance(#)}、 
{opt nonrtol:erance} 和 {opt from(init_specs)}；
见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pstd}
以下选项在 {opt xtcloglog} 中可用，但未显示在对话框中：

{phang}
{opt collinear}、{opt coeflegend}; 见
     {helpb estimation options:[R] 估计选项}。


{marker options_pa}{...}
{title:总体平均模型选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 见
   {helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt pa} 请求总体平均估计量。

{phang}
{opth offset(varname)}; 见
{helpb estimation options##offset():[R] 估计选项}。

{phang}
{opt asis} 强制保留完美预测变量及其相关的完美预测观测，可能会在最大化中产生不稳定性；见 {manhelp probit R}。

{dlgtab:相关性}

{phang}
{opt corr(correlation)} 指定小组内相关性结构；默认值对应于均匀相关模型，
{cmd:corr(exchangeable)}。

{pmore}
当您指定需要滞后的相关性结构时，可以在结构名称后面加上滞后期（带或不带空格）；
例如，{cmd:corr(ar 1)} 或 {cmd:corr(ar1)}。

{pmore}
如果您指定了固定相关性结构，则需要在单词 {cmd:fixed} 后面指定包含假定相关性的矩阵名称，例如，{cmd:corr(fixed myr)}。

{phang}
{opt force} 指定即使时间变量不均匀间隔也强制进行估计。这仅与需要知道时间变量的相关性结构相关。这些相关性结构要求观测值均匀间隔，以使基于滞后的计算对应于常量时间变化。如果您指定了一个时间变量，表明观测值间隔不均匀，则不会拟合（时间相关）模型。如果您还指定了 {opt force}，则将进行模型拟合，并假定基于时间变量排序的数据的滞后是合适的。

{dlgtab:SE/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括源自渐近理论的类型 ({cmd:conventional})、对某些误设稳健的类型 ({cmd:robust})，以及使用自举或杰克刀法的类型 ({cmd:bootstrap}、{cmd:jackknife})；见
{help xt_vce_options_zh:[XT] {it:vce_options}}。

{pmore}
{cmd:vce(conventional)}，默认情况下，使用常规推导的方差估计器进行广义最小二乘回归。

{phang}
{opt nmp}、{cmd:scale(x2}|{cmd:dev}|{cmd:phi}|{it:#}{cmd:)}；见
{help xt_vce_options_zh:[XT] {it:vce_options}}。

{dlgtab:报告}

{phang}
{opt level(#)}; 见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt eform} 显示指数化系数及相应的标准误和置信区间。

{marker pa_display_options}{...}
包含帮助 displayopts_list

{dlgtab:优化}

{phang}
{marker optimize_options}
{it:optimize_options} 控制迭代优化过程。这些选项很少使用。

{pmore}
{opt iter:ate(#)} 指定最大迭代次数。当迭代次数达到 # 时，优化停止并呈现当前结果，即使没有达到收敛。默认值为 
{cmd:iterate(100)}。

{pmore}
{opt tol:erance(#)} 指定系数向量的公差。当从一次迭代到下一个迭代系数向量的相对变化小于或等于 # 时，优化过程停止。 
{cmd:tolerance(1e-6)} 是默认值。

{pmore}
包含帮助 lognolog

{pmore}
{opt tr:ace} 指定在每次迭代时打印当前估计值。

{pstd}
以下选项在 {opt xtcloglog} 中可用，但未显示在对话框中：

{phang}
{opt coeflegend}; 见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker technote}{...}
{title:技术说明}

{pstd}
随机效应模型使用数值积分法进行计算，该方法的精确性部分取决于所使用的积分点数量。我们可以使用 {cmd:quadchk} 命令查看更改积分点的数量是否会影响结果。如果结果有所变化，则说明由于积分点数量，数值积分近似不准确。尝试使用 {cmd:intpoints()} 选项增加积分点的数量，并再次运行 {cmd:quadchk}。如果 {cmd:quadchk} 报告的系数存在显著差异，请不要尝试解释估计结果。有关详细信息，请参见 {manhelp quadchk XT} 以及 {bf:[XT] xtprobit} 的
{mansection XT xtprobitRemarksandexamplestechnote:示例}。

{pstd}
由于 {cmd:xtcloglog} 的似然函数是通过高斯-赫尔米特数值积分法计算的，对大规模问题而言，计算可能很慢。计算时间大致与用于数值积分的点数成正比。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse union}{p_end}

{pstd}随机效应模型{p_end}
{phang2}{cmd:. xtcloglog union age grade south##c.year}{p_end}

{pstd}总体平均模型{p_end}
{phang2}{cmd:. xtcloglog union age grade south##c.year, pa}
{p_end}

{pstd}具有稳健方差的总体平均模型{p_end}
{phang2}{cmd:. xtcloglog union age grade south##c.year, pa vce(robust)}
{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xtcloglog, re} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测值数量{p_end}
{synopt:{cmd:e(N_g)}}组数{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数数{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}在整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅包含常数模型的对数似然{p_end}
{synopt:{cmd:e(ll_c)}}比较模型的对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(chi2_c)}}比较测试的卡方{p_end}
{synopt:{cmd:e(N_clust)}}集群数量{p_end}
{synopt:{cmd:e(rho)}}rho{p_end}
{synopt:{cmd:e(sigma_u)}}面板级标准差{p_end}
{synopt:{cmd:e(n_quad)}}积分点的数量{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(rank0)}}仅包含常数模型的 {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示收敛，{cmd:0} 表示没有收敛{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtcloglog}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(model)}}{cmd:re}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}集群变量名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方类型
 测试{p_end}
{synopt:{cmd:e(chi2_ct)}}{cmd:Wald} 或 {cmd:LR}；对应于 {cmd:e(chi2_c)} 的模型卡方
 测试类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定的{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(distrib)}}{cmd:高斯}；随机效应的分布{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器执行
                         最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsdefault)}}{opt predict()} 的默认规格
用于 {cmd:margins}{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}

{pstd}
{cmd:xtcloglog, pa} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测值数量{p_end}
{synopt:{cmd:e(N_g)}}组数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(df_pear)}}皮尔逊卡方的自由度{p_end}
{synopt:{cmd:e(chi2_dev)}}偏差的卡方检验{p_end}
{synopt:{cmd:e(chi2_dis)}}偏差离散的卡方检验{p_end}
{synopt:{cmd:e(deviance)}}偏差{p_end}
{synopt:{cmd:e(dispers)}}偏差离散{p_end}
{synopt:{cmd:e(phi)}}缩放参数{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(tol)}}目标公差{p_end}
{synopt:{cmd:e(dif)}}实现的公差{p_end}
{synopt:{cmd:e(rc)}}返回码{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtgee}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:xtcloglog}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(tvar)}}表示时间的变量{p_end}
{synopt:{cmd:e(model)}}{cmd:pa}{p_end}
{synopt:{cmd:e(family)}}{cmd:binomial}{p_end}
{synopt:{cmd:e(link)}}{cmd:cloglog}; 链接函数{p_end}
{synopt:{cmd:e(corr)}}相关性结构{p_end}
{synopt:{cmd:e(scale)}}{cmd:x2}、{cmd:dev}、{cmd:phi} 或 {it:#}; 缩放参数{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方类型的测试{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定的{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(nmp)}}{cmd:nmp}，如果指定{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 禁止的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(R)}}估计的工作相关性矩阵{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtcloglog.sthlp>}