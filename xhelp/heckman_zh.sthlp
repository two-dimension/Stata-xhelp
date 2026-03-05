{smcl}
{* *! version 1.3.15  27feb2019}{...}
{viewerdialog heckman "dialog heckman"}{...}
{viewerdialog "svy: heckman" "dialog heckman, message(-svy-) name(svy_heckman_ml)"}{...}
{vieweralsosee "[R] heckman" "mansection R heckman"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] heckman postestimation" "help heckman postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: heckman" "help bayes heckman"}{...}
{vieweralsosee "[ERM] eregress" "help eregress_zh"}{...}
{vieweralsosee "[TE] etregress" "help etregress_zh"}{...}
{vieweralsosee "[R] heckoprobit" "help heckoprobit_zh"}{...}
{vieweralsosee "[R] heckpoisson" "help heckpoisson_zh"}{...}
{vieweralsosee "[R] heckprobit" "help heckprobit_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[R] tobit" "help tobit_zh"}{...}
{vieweralsosee "[XT] xtheckman" "help xtheckman_zh"}{...}
{viewerjumpto "Syntax" "heckman_zh##syntax"}{...}
{viewerjumpto "Menu" "heckman_zh##menu"}{...}
{viewerjumpto "Description" "heckman_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "heckman_zh##linkspdf"}{...}
{viewerjumpto "Options for Heckman selection model (ML)" "heckman_zh##options_ml"}{...}
{viewerjumpto "Options for Heckman selection model (two-step)" "heckman_zh##options_twostep"}{...}
{viewerjumpto "Remarks" "heckman_zh##remarks"}{...}
{viewerjumpto "Examples" "heckman_zh##examples"}{...}
{viewerjumpto "Stored results" "heckman_zh##results"}{...}
{viewerjumpto "Reference" "heckman_zh##reference"}
{help heckman:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] heckman} {hline 2}}Heckman 选择模型{p_end}
{p2col:}({mansection R heckman:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}基本语法

{p 8 16 2}{cmd:heckman} {depvar} [{indepvars}]{cmd:,} 
      {opth sel:ect(varlist:varlist_s)} [{opt two:step}]

      或者

{p 8 16 2}{cmd:heckman} {depvar} [{indepvars}]{cmd:,} 
      {cmdab:sel:ect(}{it:{help depvar:depvar_s}} {cmd:=}
                    {it:{help varlist_zh:varlist_s}}{cmd:)} [{opt two:step}]


{phang}仅适用于最大似然估计的完整语法

{p 8 16 2}{cmd:heckman} {depvar} [{indepvars}] {ifin}
[{it:{help heckman##weight:权重}}]{cmd:,} 
    {opt sel:ect}{cmd:(}[{it:{help depvar:depvar_s}} {cmd:=}]
    {it:{help varlist_zh:varlist_s}} [{cmd:,} 
    {opt nocons:tant} {opth off:set(varname:varname_o)}]{cmd:)} 
    [{it:{help heckman##heckman_ml_options:heckman_ml_options}}]


{phang}仅适用于 Heckman 的两步一致估计的完整语法

{p 8 16 2}{cmd:heckman} {depvar} [{indepvars}] {ifin}{opt ,} {opt two:step}
   {opt sel:ect}{cmd:(}[{it:{help depvar:depvar_s}} {cmd:=}]
                        {it:{help varlist_zh:varlist_s}}
   [{cmd:,} {opt nocons:tant}]{cmd:)} 
   [{it:{help heckman##heckman_ts_options:heckman_ts_options}}]


{synoptset 28 tabbed}{...}
{marker heckman_ml_options}{...}
{synopthdr :heckman_ml_options}
{synoptline}
{syntab :模型}
{synopt :{opt ml:e}}使用最大似然估计量；默认值{p_end}
{p2coldent :* {opt sel:ect()}}指定选择方程：因变量和自变量；是否包含常数项和偏移变量{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth off:set(varname)}}在模型中包括 {it:varname}，且其系数被约束为 1{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():constraints}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim},
{opt r:obust}, {opt cl:uster} {it:clustvar}, {cmd:opg},
{opt boot:strap}, 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置信心水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt fir:st}}报告第一步 probit 估计{p_end}
{synopt :{opt lrmodel}}执行似然比模型检验，而不是默认的 Wald 检验{p_end}
{synopt :{opth ns:hazard(newvar)}}生成非选择风险变量{p_end}
{synopt :{opth m:ills(newvar)}}{opt nshazard()} 的同义词{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help heckman##ml_display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab :最大化}
{synopt :{it:{help heckman##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt select()} 是必需的。完整的规格为{break}
{opt sel:ect}{cmd:(}[{it:depvar_s} {cmd:=}] {it:varlist_s}
[{cmd:,} {opt nocons:tant} {opt off:set(varname_o)}]{cmd:)}.
{p_end}

{synoptset 28 tabbed}{...}
{marker heckman_ts_options}{...}
{synopthdr :heckman_ts_options}
{synoptline}
{syntab :模型}
{p2coldent :* {opt two:step}}生成两步一致估计{p_end}
{p2coldent :* {opt sel:ect()}}指定选择方程：因变量和自变量；是否包含常数项{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opt rhos:igma}}将 rho 截断到 [-1,1]，并使sigma一致{p_end}
{synopt :{opt rhot:runc}}将 rho 截断到 [-1,1]{p_end}
{synopt :{opt rhol:imited}}在有限情况下截断 rho{p_end}
{synopt :{opt rhof:orce}}不截断 rho{p_end}

{syntab :SE}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt conventional},
             {opt boot:strap}, 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置信心水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt fir:st}}报告第一步 probit 估计{p_end}
{synopt :{opth ns:hazard(newvar)}}生成非选择风险变量{p_end}
{synopt :{opth m:ills(newvar)}}{opt nshazard()} 的同义词{p_end}
{synopt :{it:{help heckman##ts_display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt twostep} 和 {opt select()} 是必需的。完整的规格为{break}
{opt sel:ect}{cmd:(}[{it:depvar_s} {cmd:=}] {it:varlist_s}
[{cmd:,} {opt nocons:tant}]{cmd:)}.
{p_end}

{p 4 6 2}{it:indepvars} 和 {it:varlist_s} 可以包含因子变量；请参见
{help fvvarlist_zh}.{p_end}
{p 4 6 2}{it:depvar}、{it:indepvars}、{it:varlist_s} 和 {it:depvar_s} 可以
包含时间序列运算符；请参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bayes}、{cmd:bootstrap}、{cmd:by}、{cmd:fp}、{cmd:jackknife}、
{cmd:rolling}、{cmd:statsby} 和 {cmd:svy} 被允许；请参见 {help prefix_zh}。
有关更多详细信息，请参见 {manhelp bayes_heckman BAYES:bayes: heckman}.{p_end}
{p 4 6 2}权重与 {help bootstrap_zh} 前缀不允许使用.{p_end}
{p 4 6 2}
{opt twostep},
{opt vce()},
{opt first},
{opt lrmodel},
和权重与 {help svy_zh} 前缀不允许使用.
{p_end}
{marker weight}{...}
{p 4 6 2}{opt pweight}s、{opt fweight}s 和 {opt iweight}s
与最大似然估计允许使用；请参见 {help weight_zh}。如果指定了 {opt twostep}，则不允许使用任何权重。{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}请参见 {manhelp heckman_postestimation R:heckman postestimation} 以获取
估计后可用的功能。  {p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 样本选择模型 > Heckman 选择模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:heckman} 使用 Heckman 的两步一致估计量或全最大似然拟合回归模型，进行选择。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R heckmanQuickstart:快速入门}

        {mansection R heckmanRemarksandexamples:备注和示例}

        {mansection R heckmanMethodsandformulas:方法与公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options_ml}{...}
{title:Heckman 选择模型 (ML) 选项}

{dlgtab:模型}

{phang}
{opt mle} 请求使用最大似然估计量。这是
默认选项。

{phang}
{cmd:select(}[{it:{help depvar:depvar_s}} {cmd:=}] {it:{help varlist_zh:varlist_s}}
[{cmd:,} {opt noconstant} {opth offset:(varname:varname_o)}]{cmd:)}
指定选择方程的变量和选项。这是指定 Heckman 模型的一个组成部分，并且是必需的。选择方程应包含至少一个不在结果方程中的变量。

{pmore}
如果指定了 {it:depvar_s}，它应编码为 0 或 1，
其中 0 表示未选择的观察值，1 表示已选择的观察值。如果没有指定 {it:depvar_s}，则默认假设对于那些 {it:depvar} 非缺失的观察值已被选择，而那些 {it:depvar} 为缺失的观察值则未被选择。

{pmore}
{cmd:noconstant} 抑制选择常数项（截距）。

{pmore}
{opt offset(varname_o)} 指定选择偏移量 {it:varname_o} 应包含在模型中，其系数被约束为 1。

{phang}
{opt noconstant}、{opth offset(varname)}、{opt constraints(constraints)}；
请参见 {helpb estimation options:[R] 估计选项}。

{dlgtab:SE/稳健性}

INCLUDE help vce_asymptall

{marker Reporting}{...}
{dlgtab:报告}

{phang}
{opt level(#)}；请参见 
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt first} 指定在估计之前显示选择方程的第一步 probit 估计。

{phang}
{opt lrmodel}；请参见
{helpb estimation options##lrmodel:[R] 估计选项}。

{phang}
{opth nshazard(newvar)} 和 {opt mills(newvar)} 是同义词；任一者都会从选择方程创建一个包含非选择风险的新变量——即 {help heckman##H1979:Heckman (1979)} 所称的米尔斯比率的逆。此非选择风险根据选择方程的估计参数计算。

{phang}
{opt nocnsreport}；请参见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

{marker ml_display_options}{...}
INCLUDE help displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}: {opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}, 
{opt iter:ate(#)}, [{cmd:no}]{opt log}, {opt tr:ace},
{opt grad:ient}, {opt showstep},
{opt hess:ian}, {opt showtol:erance},
{opt tol:erance(#)}, {opt ltol:erance(#)}, 
{opt nrtol:erance(#)}, {opt nonrtol:erance}, 和
{opt from(init_specs)}；请参见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会重置默认的
{it:vcetype} 为 {cmd:vce(opg)}。

{pstd}
以下选项适用于 {opt heckman}，但未在对话框中显示：

{phang}
{opt collinear}、{opt coeflegend}；请参见
     {helpb estimation options:[R] 估计选项}。


{marker options_twostep}{...}
{title:Heckman 选择模型 (two-step) 选项}

{dlgtab:模型}

{phang}
{opt twostep} 指定生成 Heckman 的 {help heckman##H1979:(1979)} 两步有效参数的估计、标准误和协方差矩阵。

{phang}
{cmd:select(}[{it:{help depvar:depvar_s}} {cmd:=}] {it:{help varlist_zh:varlist_s}}
[{cmd:,} {opt noconstant}]{cmd:)}
指定选择方程的变量和选项。这是指定 Heckman 模型的一个组成部分，并且是必需的。选择方程应包含至少一个不在结果方程中的变量。

{pmore}
如果指定了 {it:depvar_s}，它应编码为 0 或 1，
其中 0 表示未选择的观察值，1 表示已选择的观察值。如果没有指定 {it:depvar_s}，则默认假设对于那些 {it:depvar} 非缺失的观察值已被选择，而那些 {it:depvar} 为缺失的观察值则未被选择。

{pmore}
{cmd:noconstant} 抑制选择常数项（截距）。

{phang}
{opt noconstant}；请参见
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt rhosigma}、{opt rhotrunc}、{opt rholimited} 和 {opt rhoforce} 是很少使用的选项，用于指定两步估计器（选项 {opt twostep}）如何处理 rho 的两步估计超出相关性的允许范围 [-1,1] 的不寻常情况。当 rho 超出该范围时，两步估计的系数方差-协方差矩阵可能不是正定的，从而可能无法用于检验。默认选项为 {opt rhosigma}。

{pmore}
{cmd:rhosigma} 指定 rho 应被截断，正如 {opt rhotrunc} 选项，
并且使 sigma 的估计与 rho_hat，截断的 rho 估计一致。因此，sigma_hat = B_m * rho_hat；请参见
{it:{mansection R heckmanMethodsandformulas:方法与公式}}中对 B_m 的定义。截断的 rho 和新估计的 sigma_hat 都被用于所有计算，以估计两步协方差矩阵。

{pmore}
{opt rhotrunc} 指定 rho 截断在 [-1,1] 的范围内。如果两步估计小于 -1，则将 rho 设置为 -1；如果两步估计大于 1，则将 rho 设置为 1。这个截断的 rho 值用于所有计算来估计两步协方差矩阵。

{pmore}
{opt rholimited} 指定 rho 仅在计算对角矩阵 D 进入 V_twostep 和 Q 时被截断；请参见 
{it:{mansection R heckmanMethodsandformulas:方法与公式}}
在 {hi:[R] heckman} 中。在所有其他计算中，使用未截断的 rho 估计。

{pmore}
{opt rhoforce} 指定保留两步估计的 rho，即使它超出相关性的允许范围。这个选项在极少数情况下可能导致协方差矩阵不是正定的。

{pmore}
这些选项在使用最大似然估计时无效，这是默认选项。当两步估计的 rho 在 [-1,1] 范围内时，这些选项也不会生效。

{dlgtab:SE}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括从渐近理论推导的类型 ({cmd:conventional}) 和使用引导法或切片法的类型 ({cmd:bootstrap}、{cmd:jackknife})；请参见 {help vce_option_zh:[R] {it:vce_option}}。

{pmore}
{cmd:vce(conventional)}，即默认值，采用由 Heckman 推导出的两步方差估计器。

{dlgtab:报告}

{phang}
{opt level(#)}；请参见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt first} 指定在估计之前显示选择方程的第一步 probit 估计。

{phang}
{opth nshazard(newvar)} 和 {opt mills(newvar)} 是同义词；任一者都会从选择方程创建一个包含非选择风险的新变量——即 {help heckman##H1979:Heckman (1979)} 所称的米尔斯比率的逆。此非选择风险根据选择方程的估计参数计算。

{marker ts_display_options}{...}
INCLUDE help displayopts_list

{pstd}
以下选项适用于 {opt heckman}，但未在对话框中显示：

{phang}
{opt coeflegend}; 请参见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker remarks}{...}
{title:备注}

{pstd}
Heckman 估计模型中的所有参数：

{pin}(回归方程：y 为 {it:depvar}，x 为 {it:varlist}){p_end}
{pin}y = xb + u_1

{pin}(选择方程：Z 为 {it:varlist_s}){p_end}
{pin}y 观察到当 Zg + u_2 > 0

	where:
		u_1 ~ N(0, sigma)
		u_2 ~ N(0, 1)
		corr(u_1, u_2) = rho

{pstd}
在 {cmd:heckman} 的语法中，{depvar} 和 {varlist} 是基础回归模型的因变量和回归变量 (y = xb)，而 {it:varlist_s} 是认为影响 {it:depvar} 是否被选中或观察到的变量（被选中或未被选中）。默认情况下，{cmd:heckman} 假定 {it:depvar} 的缺失值（见 {help missing_zh}）意味着因变量未被观察到（未被选择）。对于某些数据集，更方便指定一个二元变量 ({it:depvar_s})，用以识别因变量是否被观察/选择（{it:depvar_s}!=0）或未观察（{it:depvar_s}=0）；{cmd:heckman} 可以适应这两种类型的数据。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse womenwk}{p_end}

{pstd}获取完整的 ML 估计{p_end}
{phang2}{cmd:. heckman wage educ age, select(married children educ age)}

{pstd}获取 Heckman 的两步一致估计{p_end}
{phang2}{cmd:. heckman wage educ age, select(married children educ age) twostep}

{pstd}分别定义并使用每个方程{p_end}
{phang2}{cmd:. global wage_eqn wage educ age}{p_end}
{phang2}{cmd:. global seleqn married children age}{p_end}
{phang2}{cmd:. heckman $wage_eqn, select($seleqn)}

{pstd}使用变量识别选择{p_end}
{phang2}{cmd:. generate wageseen = (wage < .)}{p_end}
{phang2}{cmd:. heckman wage educ age, select(wageseen = married children educ age)}

{pstd}指定稳健方差{p_end}
{phang2}{cmd:. heckman wage educ age, select(married children educ age) vce(robust)}{p_end}

{pstd}指定在 {cmd:county} 上进行聚类{p_end}
{phang2}{cmd:. heckman $wage_eqn, select($seleqn) vce(cluster county)}{p_end}

{pstd}报告第一步 probit 估计{p_end}
{phang2}{cmd:. heckman wage educ age, select(married children educ age) first}

{pstd}创建包含非选择风险的 {cmd:mymills}{p_end}
{phang2}{cmd:. heckman $wage_eqn, select($seleqn) mills(mymills)}

{pstd}模型中不包含常数{p_end}
{phang2}{cmd:. heckman wage educ age, noconstant select(married children educ age)}{p_end}

{pstd}选择方程中不包含常数{p_end}
{phang2}{cmd:. heckman wage educ age, select(married children educ age, noconstant)}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:heckman}（最大似然）在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_selected)}}被选择的观察数{p_end}
{synopt:{cmd:e(N_nonselected)}}未选择的观察数{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}在总体模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(lambda)}}lambda{p_end}
{synopt:{cmd:e(selambda)}}lambda 的标准误{p_end}
{synopt:{cmd:e(sigma)}}sigma{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(chi2_c)}}比较检验的卡方{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(p_c)}}比较检验的 p 值{p_end}
{synopt:{cmd:e(rho)}}rho{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(rank0)}}仅常数模型的 {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:heckman}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(title2)}}估计输出中的副标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(offset1)}}回归方程的偏移量{p_end}
{synopt:{cmd:e(offset2)}}选择方程的偏移量{p_end}
{synopt:{cmd:e(mills)}}包含非选择风险的变量（米尔斯比率的逆）{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}; 模型卡方类型检验{p_end}
{synopt:{cmd:e(chi2_ct)}}{cmd:Wald} 或 {cmd:LR}; 对应于 {cmd:e(chi2_c)} 的模型卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 指定在 {cmd:vce()} 中{p_end}
{synopt:{cmd:e(vcetype)}}用于标记 Std. Err. 的标题{p_end}
{synopt:{cmd:e(opt)}}优化的类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器是否执行最大化或最小化{p_end}
{synopt:{cmd:e(method)}}{cmd:ml}{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{pstd}
{cmd:heckman}（两步）在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_selected)}}被选择的观察数{p_end}
{synopt:{cmd:e(N_nonselected)}}未选择的观察数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(lambda)}}lambda{p_end}
{synopt:{cmd:e(selambda)}}lambda 的标准误{p_end}
{synopt:{cmd:e(sigma)}}sigma{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}比较检验的 p 值{p_end}
{synopt:{cmd:e(rho)}}rho{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:heckman}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(title2)}}估计输出中的副标题{p_end}
{synopt:{cmd:e(mills)}}包含非选择风险的变量（米尔斯比率的逆）{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}; 模型卡方类型检验{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 指定在 {cmd:vce()} 中{p_end}
{synopt:{cmd:e(rhometh)}}{cmd:rhosigma}、{cmd:rhotrunc}、{cmd:rholimited} 或
          {cmd:rhoforce}{p_end}
{synopt:{cmd:e(method)}}{cmd:twostep}{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考文献}

{marker H1979}{...}
{phang}
Heckman, J. 1979.
样本选择偏差作为规范错误。
{it:Econometrica} 47: 153--161.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <heckman.sthlp>}