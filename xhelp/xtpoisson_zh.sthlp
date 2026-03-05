{smcl}
{* *! version 1.4.11  12dec2018}{...}
{viewerdialog xtpoisson "dialog xtpoisson"}{...}
{vieweralsosee "[XT] xtpoisson" "mansection XT xtpoisson"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtpoisson postestimation" "help xtpoisson postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[ME] mepoisson" "help mepoisson_zh"}{...}
{vieweralsosee "[R] poisson" "help poisson_zh"}{...}
{vieweralsosee "[XT] quadchk" "help quadchk_zh"}{...}
{vieweralsosee "[XT] xtgee" "help xtgee_zh"}{...}
{vieweralsosee "[XT] xtnbreg" "help xtnbreg_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "xtpoisson_zh##syntax"}{...}
{viewerjumpto "Menu" "xtpoisson_zh##menu"}{...}
{viewerjumpto "Description" "xtpoisson_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtpoisson_zh##linkspdf"}{...}
{viewerjumpto "Options for RE model" "xtpoisson_zh##options_re"}{...}
{viewerjumpto "Options for FE model" "xtpoisson_zh##options_fe"}{...}
{viewerjumpto "Options for PA model" "xtpoisson_zh##options_pa"}{...}
{viewerjumpto "Technical note" "xtpoisson_zh##technote"}{...}
{viewerjumpto "Examples" "xtpoisson_zh##examples"}{...}
{viewerjumpto "Stored results" "xtpoisson_zh##results"}
{help xtpoisson:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[XT] xtpoisson} {hline 2}}固定效应、随机效应和人口平均泊松模型{p_end}
{p2col:}({mansection XT xtpoisson:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
随机效应 (RE) 模型

{p 8 18 2}
{cmd:xtpoisson} {depvar} [{indepvars}] {ifin}
[{it:{help xtpoisson##weight:权重}}]
[{cmd:, re} {it:{help xtpoisson##reoptions:RE选项}}]


{phang}
条件固定效应 (FE) 模型

{p 8 18 2}
{cmd:xtpoisson} {depvar} [{indepvars}] {ifin}
[{it:{help xtpoisson##weight:权重}}]
{cmd:, fe} [{it:{help xtpoisson##feoptions:FE选项}}]


{phang}
人口平均 (PA) 模型

{p 8 18 2}
{cmd:xtpoisson} {depvar} [{indepvars}] {ifin}
[{it:{help xtpoisson##weight:权重}}]
{cmd:, pa} [{it:{help xtpoisson##paoptions:PA选项}}]


{marker reoptions}{...}
{synoptset 27 tabbed}{...}
{synopthdr:RE选项}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:tant}}不显示常数项{p_end}
{synopt :{opt re}}使用随机效应估计；默认选项{p_end}
{synopt :{opth exp:osure(varname)}}将 ln({it:varname}) 包含在模型中，系数约束为 1{p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在模型中，系数约束为 1{p_end}
{synopt :{opt normal}}随机效应使用正态分布，而不是伽玛分布{p_end}
{synopt :{opth const:raints(estimation options##constraints():约束)}}应用指定的线性约束{p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt r:obust}、
   {opt cl:uster} {it:clustvar}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt ir:r}}报告发生率比{p_end}
{synopt :{opt lrmodel}}执行似然比模型检验，而不是默认的 Wald 检验{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help xtpoisson##re_display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

INCLUDE help intpts1

{syntab :最大化}
{synopt :{it:{help xtpoisson##maximize_optionsRE:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{marker feoptions}{...}
{synoptset 27 tabbed}{...}
{synopthdr:FE选项}
{synoptline}
{syntab :模型}
{synopt :{opt fe}}使用固定效应估计{p_end}
{synopt :{opth exp:osure(varname)}}将 ln({it:varname}) 包含在模型中，系数约束为 1{p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在模型中，系数约束为 1{p_end}
{synopt :{opth const:raints(estimation options##constraints():约束)}}应用指定的线性约束{p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt r:obust}、
                    {opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt ir:r}}报告发生率比{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help xtpoisson##fe_display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

{syntab :最大化}
{synopt :{it:{help xtpoisson##maximize_optionsFE:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{marker paoptions}{...}
{synoptset 27 tabbed}{...}
{synopthdr:PA选项}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:tant}}不显示常数项{p_end}
{synopt :{opt pa}}使用人口平均估计{p_end}
{synopt :{opth exp:osure(varname)}}将 ln({it:varname}) 包含在模型中，系数约束为 1{p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在模型中，系数约束为 1{p_end}

{syntab :相关性}
{synopt :{cmdab:c:orr(}{it:{help xtpoisson##correlation:相关性}}{cmd:)}}面板内相关结构{p_end}
{synopt :{opt force}}即使观察值在时间上不均匀，也强制估计{p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt conventional}、{opt r:obust}、
      {opt boot:strap} 或 {opt jack:knife}{p_end}
{synopt :{opt nmp}}使用除数 N-P，而不是默认的 N{p_end}
{synopt :{opt s:cale(parm)}}重写默认的规模参数；{it:parm} 可以是 {cmd:x2}、{cmd:dev}、{cmd:phi} 或 {it:#}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt ir:r}}报告发生率比{p_end}
{synopt :{it:{help xtpoisson##pa_display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

{syntab :优化}
{synopt :{it:{help xtpoisson##optimize_options:优化选项}}}控制迭代优化过程；很少使用{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{marker correlation}{...}
{synoptset 23}{...}
{synopthdr :相关性}
{synoptline}
{synopt :{opt exc:hangeable}}可交换{p_end}
{synopt :{opt ind:ependent}}独立{p_end}
{synopt :{opt uns:tructured}}无结构{p_end}
{synopt :{opt fix:ed} {it:matname}}用户指定{p_end}
{synopt :{opt ar} {it:#}}自回归阶数 {it:#}{p_end}
{synopt :{opt sta:tionary} {it:#}}阶数 {it:#} 的平稳型{p_end}
{synopt :{opt non:stationary} {it:#}}阶数 {it:#} 的非平稳型{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
必须指定一个面板变量。对于 {cmd:xtpoisson, pa}，除 {cmd:exchangeable} 和 {cmd:independent} 以外的相关结构要求也必须指定一个时间变量。使用 {help xtset_zh}. {p_end}
INCLUDE help fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；请参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
允许使用 {opt by}、{opt mi estimate} 和 {opt statsby}；请参见 {help prefix_zh}。
随机效应和固定效应模型允许使用 {opt fp}.{p_end}
INCLUDE help vce_mi
{marker weight}{...}
{p 4 6 2}
{opt iweight}s、{opt fweight}s 和 {opt pweight}s 允许用于人口平均模型，{opt iweight}s 则允许用于随机效应和固定效应模型；请参见 {help weight_zh}。权重必须在面板内是常数。{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不在对话框中显示。{p_end}
{p 4 6 2}
有关估计后的功能，请参见 {manhelp xtpoisson_postestimation XT:xtpoisson 估计后分析}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 横向/面板数据 > 计数结果 >}
      {bf:泊松回归 (FE, RE, PA)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtpoisson} 适用于随机效应、条件固定效应和人口平均泊松模型。这些模型通常用于非负计数的因变量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtpoissonQuickstart:快速入门}

        {mansection XT xtpoissonRemarksandexamples:备注和示例}

        {mansection XT xtpoissonMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在本帮助文件中。


{marker options_re}{...}
{title:RE 模型选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 请参见
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt re}，默认请求随机效应估计器。

{phang}
{opth exposure(varname)}、{opt offset(varname)}；请参见
{helpb estimation options##exposure():[R] 估计选项}。

{phang}
{opt normal} 指定随机效应遵循正态分布，而不是伽玛分布。

{phang}
{opt constraints(constraints)}；请参见
     {helpb estimation options##constraints():[R] 估计选项}。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误的类型，包括基于渐近理论的类型 ({cmd:oim})，对某些类型的误设具有鲁棒性的类型 ({cmd:robust})，允许组内相关性的类型 ({cmd:cluster} {it:clustvar})，以及使用自助法或删失法 ({cmd:bootstrap}、{cmd:jackknife}) 的类型；请参见 {help xt_vce_options_zh:[XT] {it:vce_options}}。

{pmore}
指定 {cmd:vce(robust)} 等同于指定 {cmd:vce(cluster} {it:panelvar}{cmd:)}；请参见
{mansection XT xtpoissonMethodsandformulasxtpoisson,reandtherobustVCEestimator:{it:xtpoisson, re 和稳健 VCE 估计器}} 在
{it:方法和公式} 中的 {bf:[XT] xtpoisson}。

{dlgtab:报告}

{phang}
{opt level(#)}；请参见
     {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt irr} 报告指数化系数 e^b，而不是系数 b。
对于泊松模型，指数化系数解释为发生率比。

{phang}
{opt lrmodel}、{opt nocnsreport}；请参见
     {helpb estimation options:[R] 估计选项}。

{marker re_display_options}{...}
INCLUDE help displayopts_list

INCLUDE help intpts4
{cmd:normal} 也必须指定。

{dlgtab:最大化}

{phang}
{marker maximize_optionsRE}
{it:maximize_options}: {opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}、{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、{opt grad:ient}、{opt showstep}、{opt hess:ian}、{opt showtol:erance}、{opt tol:erance(#)}、{opt ltol:erance(#)}、{opt nrtol:erance(#)}、{opt nonrtol:erance} 和 {opt from(init_specs)}；请参见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pstd}
以下选项可与 {opt xtpoisson} 一起使用，但未在对话框中显示：

{phang}
{opt collinear}、{opt coeflegend}；请参见
     {helpb estimation options:[R] 估计选项}。


{marker options_fe}{...}
{title:FE 模型选项}

{dlgtab:模型}

{phang}
{opt fe} 请求固定效应估计器。

{phang}
{opth exposure(varname)}、{opt offset(varname)}、{opt constraints(constraints)}；
请参见 {helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健性}

INCLUDE help xt_vce_asymptrbj

{pmore}
{bf:vce(robust)} 调用集群稳健的 VCE 估计，其中 ID 变量指定了集群。

{dlgtab:报告}

{phang}
{opt level(#)}；请参见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt irr} 报告指数化系数 e^b，而不是系数 b。
对于泊松模型，指数化系数解释为发生率比。

{phang}
{opt nocnsreport}；请参见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

{marker fe_display_options}{...}
INCLUDE help displayopts_list

{dlgtab:最大化}

{phang}
{marker maximize_optionsFE}
{it:maximize_options}: {opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}、{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、{opt grad:ient}、{opt showstep}、{opt hess:ian}、{opt showtol:erance}、{opt tol:erance(#)}、{opt ltol:erance(#)}、{opt nrtol:erance(#)}、{opt nonrtol:erance} 和 {opt from(init_specs)}；请参见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pstd}
以下选项可与 {opt xtpoisson} 一起使用，但未在对话框中显示：

{phang}
{opt collinear}、{opt coeflegend}；请参见
     {helpb estimation options:[R] 估计选项}。


{marker options_pa}{...}
{title:PA 模型选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 请参见
 {helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt pa} 请求人口平均估计器。

{phang}
{opth exposure(varname)}、{opt offset(varname)}；请参见
 {helpb estimation options##exposure():[R] 估计选项}。

{dlgtab:相关性}

{phang}
{opt corr(correlation)} 指定面板内相关结构；默认值对应于等相关模型，
{cmd:corr(exchangeable)}。

{pmore}
当您指定了需要滞后的相关结构时，您可以在结构名称后指明滞后，可以有空格或无空格；例如，
{cmd:corr(ar 1)} 或 {cmd:corr(ar1)}。

{pmore}
如果您指定固定相关结构，您需要在 {cmd:fixed} 之后指定包含假定相关性的矩阵名称，例如 {cmd:corr(fixed myr)}。

{phang}
{opt force} 指定即使时间变量不均匀，也强制进行估计。 这仅与需要时间变量相关知识的相关结构相关。这些相关结构要求观察值在等距内，以便基于滞后的计算对应于恒定的时间变化。如果您指定了表明观察值不均匀的时间变量，则不会拟合 (时间相关) 模型。如果您同时指定 {opt force}，则将拟合该模型，并假设基于按时间变量排序的数据的滞后是合适的。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误的类型，包括基于渐近理论的类型 ({cmd:conventional})，对某些类型的误设具有鲁棒性的类型 ({cmd:robust})，以及使用自助法或删失法 ({cmd:bootstrap}、{cmd:jackknife}) 的类型；请参见
{help xt_vce_options_zh:[XT] {it:vce_options}}。

{pmore}
{cmd:vce(conventional)}，默认值，使用常规推导的方差估计器进行广义最小二乘回归。

{phang}
{opt nmp}、{cmd:scale(x2}|{cmd:dev}|{cmd:phi}|{it:#}{cmd:)}； 请参见
{help xt_vce_options_zh:[XT] {it:vce_options}}。

{dlgtab:报告}

{phang}
{opt level(#)}；请参见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt irr} 报告指数化系数 e^b，而不是系数 b。
对于泊松模型，指数化系数解释为发生率比。

{marker pa_display_options}{...}
INCLUDE help displayopts_list

{dlgtab:优化}

{phang}
{marker optimize_options}
{it:optimize_options} 控制迭代优化过程。这些选项很少使用。

{pmore}
{opt iter:ate(#)} 指定最大迭代次数。当迭代次数等于 {it:#} 时，优化停止并呈现当前结果，即使未达到收敛容限。默认值为 {cmd:iterate(100)}。

{pmore}
{opt tol:erance(#)} 指定系数向量的容限。当系数向量的相对变化在一次迭代到下一次迭代小于或等于 # 时，优化过程停止。
{cmd:tolerance(1e-6)} 是默认值。

{pmore}
INCLUDE help lognolog

{pmore}
{opt tr:ace} 指定在每次迭代时打印当前估计值。

{pstd}
与 {opt xtpoisson} 一起使用，但未在对话框中显示的选项如下：

{phang}
{opt coeflegend}; 请参见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker technote}{...}
{title:技术说明}

{pstd}
随机效应模型使用求积法计算，求积法是一种近似方法，其准确性部分取决于使用的积分点数量。我们可以使用 {cmd:quadchk} 命令查看更改积分点数量是否会影响结果。如果结果变化，说明给定积分点数量的求积近似不准确。尝试使用 {cmd:intpoints()} 选项增加积分点数量并再次运行 {cmd:quadchk}。请勿尝试解释当 {cmd:quadchk} 报告的系数大相径庭时的估计结果。有关详细信息，请参阅 {manhelp quadchk XT} 和 {bf:[XT] xtprobit} 的 
{mansection XT xtprobitRemarksandexamplestechnote:示例}。

{pstd}
由于 {cmd:xtpoisson, re normal} 的似然函数是通过高斯-赫尔米特求积法计算的，因此在大问题上，计算可能比较慢。计算时间大致与用于求积的点数量成正比。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse ships}{p_end}
{phang2}{cmd:. xtset ship}{p_end}

{pstd}随机效应模型{p_end}
{phang2}{cmd:. xtpoisson accident op_75_79 co_65_69 co_70_74 co_75_79,}
                {cmd:exposure(service) irr}

{pstd}固定效应模型{p_end}
{phang2}{cmd:. xtpoisson accident op_75_79 co_65_69 co_70_74 co_75_79,}
                {cmd:exposure(service) irr fe}

{pstd}随机效应模型，随机效应遵循正态分布{p_end}
{phang2}{cmd:. xtpoisson accident op_75_79 co_65_69 co_70_74 co_75_79,}
              {cmd:exposure(service) irr normal}

{pstd}等相关人口平均模型，具有稳健的方差{p_end}
{phang2}{cmd:. xtpoisson accident op_75_79 co_65_69 co_70_74 co_75_79,}
              {cmd:exposure(service) pa vce(robust) irr}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xtpoisson, re} 存储以下内容在 {cmd:e()}：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_g)}}组的数量{p_end}
{synopt:{cmd:e(k)}}参数的数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数的数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}在总体模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(ll_c)}}比较模型的对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方值{p_end}
{synopt:{cmd:e(chi2_c)}}比较检验的卡方值{p_end}
{synopt:{cmd:e(N_clust)}}集群的数量{p_end}
{synopt:{cmd:e(alpha)}}alpha 的值{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(rank0)}}仅常数模型的 {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtpoisson}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(model)}}{cmd:re}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}集群变量的名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}; 模型卡方检验的类型{p_end}
{synopt:{cmd:e(chi2_ct)}}{cmd:Wald} 或 {cmd:LR}; 与 {cmd:e(chi2_c)} 对应的模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(method)}}请求的估计方法{p_end}
{synopt:{cmd:e(distrib)}}{cmd:Gamma}; 随机效应的分布{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器是否执行极大化或极小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
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
{cmd:xtpoisson, re normal} 存储以下内容在 {cmd:e()}：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_g)}}组的数量{p_end}
{synopt:{cmd:e(k)}}参数的数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数的数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}在总体模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(ll_c)}}比较模型的对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方值{p_end}
{synopt:{cmd:e(chi2_c)}}比较检验的卡方值{p_end}
{synopt:{cmd:e(N_clust)}}集群的数量{p_end}
{synopt:{cmd:e(sigma_u)}}面板级标准差{p_end}
{synopt:{cmd:e(n_quad)}}积分点的数量{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(rank0)}}仅常数模型的 {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtpoisson}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(model)}}{cmd:re}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}集群变量的名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}; 模型卡方检验的类型{p_end}
{synopt:{cmd:e(chi2_ct)}}{cmd:Wald} 或 {cmd:LR}; 与 {cmd:e(chi2_c)} 对应的模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(method)}}请求的估计方法{p_end}
{synopt:{cmd:e(distrib)}}{cmd:Gamma}; 随机效应的分布{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器是否执行极大化或极小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
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
{cmd:xtpoisson, fe} 存储以下内容在 {cmd:e()}：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_g)}}组的数量{p_end}
{synopt:{cmd:e(k)}}参数的数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}在总体模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_c)}}比较模型的对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方值{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtpoisson}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(tvar)}}表示组内时间的变量{p_end}
{synopt:{cmd:e(model)}}{cmd:pa}{p_end}
{synopt:{cmd:e(family)}}{cmd:Poisson}{p_end}
{synopt:{cmd:e(link)}}{cmd:log}; 连接函数{p_end}
{synopt:{cmd:e(corr)}}相关结构{p_end}
{synopt:{cmd:e(scale)}}{cmd:x2}、{cmd:dev}、{cmd:phi} 或 {it:#}; 规模参数{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}协方差估计方法{p_end}
{synopt:{cmd:e(nmp)}}{cmd:nmp}，如果指定{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}合规的预测被 {cmd:margins} 禁止{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(R)}}估计的工作相关矩阵{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtpoisson.sthlp>}