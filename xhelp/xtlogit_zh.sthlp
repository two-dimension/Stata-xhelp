{smcl}
{* *! version 1.4.13  12dec2018}{...}
{viewerdialog xtlogit "dialog xtlogit"}{...}
{vieweralsosee "[XT] xtlogit" "mansection XT xtlogit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtlogit postestimation" "help xtlogit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] clogit" "help clogit_zh"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[R] logit" "help logit_zh"}{...}
{vieweralsosee "[ME] melogit" "help melogit_zh"}{...}
{vieweralsosee "[XT] quadchk" "help quadchk_zh"}{...}
{vieweralsosee "[XT] xtcloglog" "help xtcloglog_zh"}{...}
{vieweralsosee "[XT] xtgee" "help xtgee_zh"}{...}
{vieweralsosee "[XT] xtprobit" "help xtprobit_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "xtlogit_zh##syntax"}{...}
{viewerjumpto "Menu" "xtlogit_zh##menu"}{...}
{viewerjumpto "Description" "xtlogit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtlogit_zh##linkspdf"}{...}
{viewerjumpto "Options for RE model" "xtlogit_zh##options_re"}{...}
{viewerjumpto "Options for FE model" "xtlogit_zh##options_fe"}{...}
{viewerjumpto "Options for PA model" "xtlogit_zh##options_pa"}{...}
{viewerjumpto "Technical note" "xtlogit_zh##technote"}{...}
{viewerjumpto "Examples" "xtlogit_zh##examples"}{...}
{viewerjumpto "Stored results" "xtlogit_zh##results"}
{help xtlogit:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[XT] xtlogit} {hline 2}}固定效应、随机效应和总体平均对数模型{p_end}
{p2col:}({mansection XT xtlogit:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
随机效应 (RE) 模型

{p 8 24 2}
{cmd:xtlogit} {depvar} [{indepvars}] {ifin}
[{it:{help xtlogit##weight:权重}}]
[{cmd:, re} {it:{help xtlogit##reoptions:RE选项}}]


{phang}
条件固定效应 (FE) 模型

{p 8 24 2}
{cmd:xtlogit} {depvar} [{indepvars}] {ifin}
[{it:{help xtlogit##weight:权重}}]
{cmd:, fe} [{it:{help xtlogit##feoptions:FE选项}}]


{phang}
总体平均 (PA) 模型

{p 8 24 2}
{cmd:xtlogit} {depvar} [{indepvars}] {ifin}
[{it:{help xtlogit##weight:权重}}]
{cmd:, pa} [{it:{help xtlogit##paoptions:PA选项}}]


{marker reoptions}{...}
{synoptset 27 tabbed}{...}
{synopthdr:RE选项}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:常数项}}不包含常数项{p_end}
{synopt :{opt re}}使用随机效应估计量；默认选项{p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在模型中，系数被约束为 1{p_end}
{synopt :{opth const:raints(estimation options##constraints():约束)}}应用指定的线性约束{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt or}}报告赔率比{p_end}
{synopt :{opt lrmodel}}执行似然比模型检验，而不是默认的瓦尔德检验{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help xtlogit##re_display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

INCLUDE help intpts1
 
{syntab :最大化}
{synopt :{it:{help xtlogit##maximize_optionsRE:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt nodis:play}}抑制显示头信息和系数{p_end}
{synopt:{opt col:linear}}保留共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}


{marker feoptions}{...}
{synoptset 27 tabbed}{...}
{synopthdr:FE选项}
{synoptline}
{syntab :模型}
{synopt :{opt fe}}请求固定效应估计量{p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在模型中，系数被约束为 1{p_end}
{synopt :{opth const:raints(estimation options##constraints():约束)}}应用指定的线性约束{p_end}

{syntab :标准误}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt or}}报告赔率比{p_end}
{synopt :{opt lrmodel}}执行似然比模型检验，而不是默认的瓦尔德检验{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help xtlogit##fe_display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

{syntab :最大化}
{synopt :{it:{help xtlogit##maximize_optionsFE:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt nodis:play}}抑制显示头信息和系数{p_end}
{synopt:{opt col:linear}}保留共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}


{marker paoptions}{...}
{synoptset 27 tabbed}{...}
{synopthdr:PA选项}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:常数项}}不包含常数项{p_end}
{synopt :{opt pa}}请求总体平均估计量{p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在模型中，系数
被约束为 1{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}

{syntab :相关性}
{synopt :{cmdab:c:orr(}{it:{help xtlogit##correlation:相关性}}{cmd:)}}面板内相关性结构{p_end}
{synopt :{opt force}}即使观察值在时间上不均匀，也强制估计{p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt conventional}、{opt r:obust}、{opt boot:strap} 或 {opt jack:knife}{p_end}
{synopt :{opt nmp}}使用除数 N-P，而不是默认的 N{p_end}
{synopt :{opt s:cale(parm)}}覆盖默认的规模参数；{it:parm} 可以是 {cmd:x2}、{cmd:dev}、{cmd:phi} 或 {it:#}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt or}}报告赔率比{p_end}
{synopt :{it:{help xtlogit##pa_display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

{syntab :优化}
{synopt :{it:{help xtlogit##optimize_options:优化选项}}}控制优化过程；很少使用{p_end}

{synopt:{opt nodis:play}}抑制显示头信息和系数{p_end}
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
{synopt :{opt sta:tionary} {it:#}}阶数 {it:#} 的平稳{p_end}
{synopt :{opt non:stationary} {it:#}}阶数 {it:#} 的非平稳{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
必须指定一个面板变量。对于 {cmd:xtlogit, pa}，除了 {cmd:exchangeable} 和 {cmd:independent} 的相关结构还需要指定时间变量。使用 {help xtset_zh}。{p_end}
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列操作符；请参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
{opt by}、{opt mi estimate} 和 {opt statsby} 是允许的；请见 {help prefix_zh}。
{opt fp} 对于随机效应和固定效应模型是允许的。{p_end}
INCLUDE help vce_mi
{marker weight}{...}
{p 4 6 2}
{opt iweight}s、{opt fweight}s 和 {opt pweight}s 适用于总体平均模型，对于固定效应和随机效应模型允许使用 {opt iweight}s；请见 {help weight_zh}。权重必须在面板内保持恒定。{p_end}
{p 4 6 2}
{opt nodisplay}、{opt collinear} 和 {opt coeflegend}
不出现在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp xtlogit_postestimation XT:xtlogit postestimation} 以获取估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 二元结果 >}
    {bf:逻辑回归 (FE, RE, PA)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtlogit} 拟合随机效应、条件固定效应和二元因变量的总体平均逻辑模型。
正结果的概率假定由逻辑累积分布函数决定。结果可以以系数或赔率比的形式报告。 


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection XT xtlogitQuickstart:快速入门}

        {mansection XT xtlogitRemarksandexamples:备注和示例}

        {mansection XT xtlogitMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options_re}{...}
{title:随机效应模型选项}

{dlgtab:模型}

{phang}
{opt noconstant}；请参见
    {helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt re} 请求随机效应估计量，这是默认选项。

{phang}
{opth offset(varname)}、{opt constraints(constraints)}；请参见 
{helpb estimation options##offset():[R] 估计选项}。

{phang}
{opt asis} 强制保留完美预测变量及其相关的、完全预测的观察值，可能在最大化时产生不稳定；请参见 {manhelp probit R}。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误的类型，包括源自渐近理论的类型 ({cmd:oim})、对某些类型的错误指定具有鲁棒性的类型 ({cmd:robust})、考虑组内相关性 ({cmd:cluster} {it:clustvar}) 的类型，以及使用自助法或茎刀法 ({cmd:bootstrap}, {cmd:jackknife}) 的类型；请参见 {help xt_vce_options_zh:[XT] {it:vce_options}}。

{pmore}
指定 {cmd:vce(robust)} 等同于指定 {cmd:vce(cluster} {it:panelvar}{cmd:)}；见 {mansection XT xtlogitMethodsandformulasxtlogit,reandtherobustVCEestimator:{it:xtlogit, re 和鲁棒性 VCE 估计器}} 在 {it:方法和公式} 中的 {bf:[XT] xtlogit}。

{dlgtab:报告}

{phang}
{opt level(#)}；请参见
{helpb estimation options##level():[R] 估计选项}。 

{phang}
{opt or} 报告估计的系数转化为赔率比，即 e^b 而不是 b。标准误和置信区间也相应转化。此选项影响结果的显示方式，而不是估计方式。 {opt or} 可在估计时指定，也可在重放先前估计的结果时指定。

{phang}
{opt lrmodel}、{opt nocnsreport}；请参见
     {helpb estimation options:[R] 估计选项}。

{marker re_display_options}{...}
INCLUDE help displayopts_list

INCLUDE help intpts4

{dlgtab:最大化}

{phang}
{marker maximize_optionsRE}
{it:最大化选项}： {opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}、 
{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、{opt grad:ient}、 
{opt showstep}、{opt hess:ian}、{opt showtol:erance}、{opt tol:erance(#)}、 
{opt ltol:erance(#)}、{opt nrtol:erance(#)}、 
{opt nonrtol:erance} 和 {opt from(init_specs)}；
请见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pstd}
以下选项可与 {cmd:xtlogit} 一起使用，但不在对话框中显示：

{phang}
{opt nodisplay} 供程序员使用。它抑制头信息和系数的显示。

{phang}
{opt collinear}、{opt coeflegend}；请参见
     {helpb estimation options:[R] 估计选项}。


{marker options_fe}{...}
{title:固定效应模型选项}

{dlgtab:模型}

{phang}
{opt fe} 请求固定效应估计量。

{phang}
{opth offset(varname)}、{opt constraints(constraints)}；请参见
{helpb estimation options##offset():[R] 估计选项}。

{dlgtab:标准误}

INCLUDE help xt_vce_asymptbj

{dlgtab:报告}

{phang}
{opt level(#)}；请参见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt or} 报告估计的系数转化为赔率比，即 e^b 而不是 b。标准误和置信区间也相应转化。此选项影响结果的显示方式，而不是估计方式。 {opt or} 可在估计时指定，也可在重放先前估计的结果时指定。

{phang}
{opt lrmodel}、{opt nocnsreport}；请参见
     {helpb estimation options:[R] 估计选项}。

{marker fe_display_options}{...}
INCLUDE help displayopts_list

{dlgtab:最大化}

{phang}
{marker maximize_optionsFE}
{it:最大化选项}： {opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}、 
{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、{opt grad:ient}、 
{opt showstep}、{opt hess:ian}、{opt showtol:erance}、{opt tol:erance(#)}、 
{opt ltol:erance(#)}、{opt nrtol:erance(#)}、 
{opt nonrtol:erance} 和 {opt from(init_specs)}；
请见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pstd}
以下选项可与 {cmd:xtlogit} 一起使用，但不在对话框中显示：

{phang}
{opt nodisplay} 供程序员使用。它抑制头信息和系数的显示。

{phang}
{opt collinear}、{opt coeflegend}；请参见
     {helpb estimation options:[R] 估计选项}。


{marker options_pa}{...}
{title:总体平均模型选项}

{dlgtab:模型}

{phang}
{opt noconstant}；请参见 
    {helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt pa} 请求总体平均估计量。

{phang}
{opth offset(varname)}；请参见
{helpb estimation options##offset():[R] 估计选项}。

{phang}
{opt asis} 强制保留完美预测变量及其相关的、完全预测的观察值，可能在最大化时产生不稳定；请参见 {manhelp probit R}。

{dlgtab:相关性}

{phang}
{opt corr(correlation)} 指定面板内相关性结构；默认值对应于相等相关模型，{cmd:corr(exchangeable)}。

{pmore}
当指定需要滞后的相关结构时，可以在结构名称后面指明滞后，带或不带空格；例如，{cmd:corr(ar 1)} 或 {cmd:corr(ar1)}。

{pmore}
如果指定了固定相关结构，则在单词 {cmd:fixed} 后指定包含假定相关性的矩阵的名称，例如 {cmd:corr(fixed myr)}。

{phang}
{opt force} 指定即使时间变量不均匀也强制进行估计。这仅与需要知识的时间变量的相关结构有关。这些相关结构要求观察值在时间上均匀，以便基于滞后的计算相应于恒定的时间变化。如果指定了指示观察值不均匀的时间变量，则不拟合（时间依赖的）模型。如果同时指定 {opt force}，则模型将被拟合，并将假定基于时间变量排序的数据的滞后是适当的。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误的类型，包括源自渐近理论的类型 ({cmd:conventional})、对某些类型的错误指定具有鲁棒性的类型 ({cmd:robust})，以及使用自助法或茎刀法的方法 ({cmd:bootstrap}, {cmd:jackknife})；请参见 {help xt_vce_options_zh:[XT] {it:vce_options}}。

{pmore}
{cmd:vce(conventional)}，默认选项，使用常规派生的方差估计器进行广义最小二乘回归。

{phang}
{opt nmp}、{cmd:scale(x2}|{cmd:dev}|{cmd:phi}|{it:#}{cmd:)}；请参见
{help xt_vce_options_zh:[XT] {it:vce_options}}。

{dlgtab:报告} 

{phang}
{opt level(#)}；请参见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt or} 报告估计的系数转化为赔率比，即 e^b 而不是 b。标准误和置信区间也相应转化。此选项影响结果的显示方式，而不是估计方式。 {opt or} 可在估计时指定，也可在重放先前估计的结果时指定。

{marker pa_display_options}{...}
INCLUDE help displayopts_list

{dlgtab:优化}

{phang}
{marker optimize_options}
{it:优化选项}控制迭代优化过程。这些选项很少使用。

{pmore}
{opt iter:ate(#)} 指定最大迭代次数。当迭代次数等于 # 时，优化停止并呈现当前结果，即使未达到收敛容忍度。默认值为 {cmd:iterate(100)}。

{pmore}
{opt tol:erance(#)} 指定系数向量的容忍度。当从一个迭代到下一个迭代的系数向量的相对变化小于或等于 # 时，优化过程停止。
{cmd:tolerance(1e-6)} 是默认值。

{pmore}
INCLUDE help lognolog

{pmore}
{opt tr:ace} 指定在每次迭代时打印当前估计。

{pstd}
以下选项可与 {cmd:xtlogit} 一起使用，但不在对话框中显示：

{phang}
{opt nodisplay} 供程序员使用。它抑制头信息和系数的显示。

{phang}
{opt coeflegend}；请参见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker technote}{...}
{title:技术说明}

{pstd}
随机效应模型使用求积法计算，求积法是一种近似，其精度部分取决于使用的积分点的数量。我们可以使用 {cmd:quadchk} 命令查看更改积分点的数量是否会影响结果。如果结果发生变化，则说明在给定积分点数量的情况下，求积近似不准确。尝试使用 {cmd:intpoints()} 选项增加积分点的数量，并再次运行 {cmd:quadchk}。当 {cmd:quadchk} 报告的系数显著不同時，请不要试图解释估计的结果。有关详细信息，请参见 {manhelp quadchk XT} 和 
{bf:[XT] xtprobit} 的
{mansection XT xtprobitRemarksandexamplestechnote:示例}。

{pstd}
由于 {cmd:xtlogit, re} 的似然函数是通过高斯-赫尔米特求积法计算的，因此在大型问题中，计算可能会很慢。计算时间大致与用于求积的点的数量成正比。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse union}

{pstd}随机效应逻辑模型{p_end}
{phang2}{cmd:. xtlogit union age grade i.not_smsa south##c.year}

{pstd}等相关的总体平均逻辑模型{p_end}
{phang2}{cmd:. xtlogit union age grade i.not_smsa south##c.year, pa}

{pstd}具有稳健方差的总体平均逻辑模型{p_end}
{phang2}{cmd:. xtlogit union age grade i.not_smsa south##c.year, pa}
                {cmd:vce(robust)}

{pstd}固定效应逻辑模型{p_end}
{phang2}{cmd:. xtlogit union age grade i.not_smsa south##c.year, fe}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:xtlogit, re} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值的数量{p_end}
{synopt:{cmd:e(N_g)}}组的数量{p_end}
{synopt:{cmd:e(k)}}参数的数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数的数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}在整体模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(ll_c)}}比较模型的对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方值{p_end}
{synopt:{cmd:e(chi2_c)}}比较测试的卡方值{p_end}
{synopt:{cmd:e(N_clust)}}集群的数量{p_end}
{synopt:{cmd:e(rho)}}rho{p_end}
{synopt:{cmd:e(sigma_u)}}面板级标志{p_end}
{synopt:{cmd:e(n_quad)}}求积点的数量{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(rank0)}}仅常数模型的 {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtlogit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(model)}}{cmd:re}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}集群变量名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}; 模型卡方检验的类型{p_end}
{synopt:{cmd:e(chi2_ct)}}{cmd:Wald} 或 {cmd:LR}; 与 {cmd:e(chi2_c)} 相对应的模型卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(distrib)}}{cmd:Gaussian}; 随机效应的分布{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器是否执行
                         最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsdefault)}}{opt predict()} 在 {cmd:margins} 中的默认规范{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

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
{cmd:xtlogit, fe} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值的数量{p_end}
{synopt:{cmd:e(N_g)}}组的数量{p_end}
{synopt:{cmd:e(N_drop)}}因全部正或全为负结果而丢弃的观察值数量{p_end}
{synopt:{cmd:e(N_group_drop)}}因全部正或全为负结果而丢弃的组的数量{p_end}
{synopt:{cmd:e(k)}}参数的数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}在整体模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(r2_p)}}伪 R 平方{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方值{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:clogit}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:xtlogit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(model)}}{cmd:fe}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:LR}; 模型卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(group)}} {cmd:group()} 变量名称{p_end}
{synopt:{cmd:e(multiple)}}{cmd:multiple} 如果组内有多个正结果{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器是否执行
                         最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(marginsdefault)}}{opt predict()} 在 {cmd:margins} 中的默认规范{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(R)}}估计的工作相关性矩阵{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}表示估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtlogit.sthlp>}