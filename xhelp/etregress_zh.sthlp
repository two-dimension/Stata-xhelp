{smcl}
{* *! version 1.1.19  12dec2018}{...}
{viewerdialog "etregress cfunction" "dialog etregress, message(-cfunc-)"}{...}
{viewerdialog "etregress ml" "dialog etregress, message(-ml-)"}{...}
{viewerdialog "etregress two-step"  "dialog etregress, message(-2step-)"}{...}
{viewerdialog "svy: etregress ml" "dialog etregress, message(-svy-) name(svy_etregress_ml)"}{...}
{vieweralsosee "[TE] etregress" "mansection TE etregress"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] etregress postestimation" "help etregress postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] eregress" "help eregress_zh"}{...}
{vieweralsosee "[TE] etpoisson" "help etpoisson_zh"}{...}
{vieweralsosee "[R] heckman" "help heckman_zh"}{...}
{vieweralsosee "[R] probit" "help probit_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "etregress_zh##syntax"}{...}
{viewerjumpto "Menu" "etregress_zh##menu"}{...}
{viewerjumpto "Description" "etregress_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "etregress_zh##linkspdf"}{...}
{viewerjumpto "Options for maximum likelihood estimates" "etregress_zh##options_ml"}{...}
{viewerjumpto "Options for two-step consistent estimates" "etregress_zh##options_twostep"}{...}
{viewerjumpto "Options for control-function estimates" "etregress_zh##options_cfunction"}{...}
{viewerjumpto "Examples" "etregress_zh##examples"}{...}
{viewerjumpto "Stored results" "etregress_zh##results"}
{help etregress:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[TE] etregress} {hline 2}}具有内生处理效应的线性回归{p_end}
{p2col:}({mansection TE etregress:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
基本语法

{p 8 17 2}
{cmd:etregress}
{depvar}
[{indepvars}]{cmd:,}
{cmdab:tr:eat:(}{depvar:_t} {cmd:=} {indepvars:_t}{cmd:)}
[{opt two:step}{c |}{opt cfunc:tion}]


{phang}
仅适用于最大似然估计的完整语法

{p 8 17 2}
{cmd:etregress}
{depvar}
[{indepvars}]
{ifin}
[{it:{help etregress##weight:权重}}]{cmd:,}
{cmdab:tr:eat:(}{depvar:_t} {cmd:=} {indepvars:_t} [{cmd:,}
{opt nocons:tant}]{cmd:)}
[{it:{help etregress##etregress_ml_options:etregress_ml_options}}]


{phang}
仅适用于两步一致估计的完整语法

{p 8 17 2}
{cmd:etregress}
{depvar}
[{indepvars}]
{ifin}{cmd:,}
{cmdab:tr:eat:(}{depvar:_t} {cmd:=} {indepvars:_t} [{cmd:,}
{opt nocons:tant}]{cmd:)}
{opt two:step}
[{it:{help etregress##etregress_ts_options:etregress_ts_options}}]


{phang}
仅适用于控制函数估计的完整语法

{p 8 17 2}
{cmd:etregress}
{depvar}
[{indepvars}]
{ifin}{cmd:,}
{cmdab:tr:eat:(}{depvar:_t} {cmd:=} {indepvars:_t} [{cmd:,}
{opt nocons:tant}]{cmd:)}
{opt cfunc:tion}
[{it:{help etregress##etregress_cf_options:etregress_cf_options}}]


{marker etregress_ml_options}{...}
{synoptset 26 tabbed}{...}
{synopthdr:etregress_ml_options}
{synoptline}
{syntab:模型}
{p2coldent :* {opt tr:eat()}}处理效应方程{p_end}
{synopt:{opt nocons:tant}}抑制常数项{p_end}
{synopt:{opt po:utcomes}}使用潜在结果模型，具有独立处理组和控制组的方差与相关参数{p_end}
{synopt:{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt opg}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设定置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt fir:st}}报告第一步 probit 估计{p_end}
{synopt :{opth ha:zard(newvar)}}创建变量 {it:newvar}，包含来自处理方程的风险{p_end}
{synopt :{opt lrmodel}}执行似然比模型检验，而不是默认的 Wald 检验{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help etregress##ml_display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab:最大化}
{synopt:{it:{help etregress##ml_maximize_options:maximize_options}}}控制
    最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p 4 6 2}
* {opt treat}{cmd:(}{it:depvar_t} {cmd:=} {it:indepvars_t}[{cmd:,}
{opt nocons:tant}]{cmd:)} 是必需的。{p_end}


{marker etregress_ts_options}{...}
{synopthdr:etregress_ts_options}
{synoptline}
{syntab:模型}
{p2coldent :* {opt tr:eat()}}处理效应方程{p_end}
{p2coldent :* {opt two:step}}产生两步一致估计{p_end}
{synopt:{opt nocons:tant}}抑制常数项{p_end}

{syntab:标准误}
{synopt:{opth vce(vcetype)}}{it:vcetype} 可以是 {opt conventional}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设定置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt:{opt fir:st}}报告第一步 probit 估计{p_end}
{synopt:{opth ha:zard(newvar)}}创建变量 {it:newvar}，包含来自处理方程的风险{p_end}
{synopt :{it:{help etregress##ts_display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt treat}{cmd:(}{it:depvar_t} {cmd:=} {it:indepvars_t}[{cmd:,}
{opt nocons:tant}]{cmd:)} 和 {opt twostep} 是必需的。{p_end}


{marker etregress_cf_options}{...}
{synoptset 26 tabbed}{...}
{synopthdr:etregress_cf_options}
{synoptline}
{syntab:模型}
{p2coldent :* {opt tr:eat()}}处理效应方程{p_end}
{p2coldent :* {opt cfunc:tion}}产生控制函数估计{p_end}
{synopt:{opt nocons:tant}}抑制常数项{p_end}
{synopt:{opt po:utcomes}}使用潜在结果模型，具有独立处理组和控制组的方差与相关参数{p_end}

{syntab:标准误}
{synopt:{opth vce(vcetype)}}{it:vcetype} 可以是 {opt r:obust}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设定置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt:{opt fir:st}}报告第一步 probit 估计{p_end}
{synopt:{opth ha:zard(newvar)}}创建变量 {it:newvar}，包含来自处理方程的风险{p_end}
{synopt :{it:{help etregress##cf_display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab:最大化}
{synopt:{it:{help etregress##cf_maximize_options:maximize_options}}}控制
    最大化过程；很少使用{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt treat}{cmd:(}{it:depvar_t} {cmd:=} {it:indepvars_t}[{cmd:,}
{opt nocons:tant}]{cmd:)} 和 {opt cfunction} 是必需的。{p_end}


{p 4 6 2}{it:indepvars} 和 {it:indepvars_t} 可以包含因子变量；参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar}、{it:indepvars}、{it:depvar_t} 和 {it:indepvars_t} 可以包含时间序列运算符；参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
{opt bootstrap}、{opt by}、{opt fp}、{opt jackknife}、{opt rolling}、{opt statsby} 和 {cmd:svy} 被允许；参见 {help prefix_zh}.{p_end}
{p 4 6 2}如果指定了 {opt twostep}，则不允许使用权重。{p_end}
{p 4 6 2}
{cmd:aweight}s 不允许与 {help jackknife_zh} 前缀一起使用。
{p_end}
{p 4 6 2}
{opt twostep}、{opt cfunction}、{opt vce()}、{opt first}、{opt hazard()}、{opt lrmodel} 和权重不允许与 {help svy_zh} 前缀一起使用。
{p_end}
{marker weight}{...}
{p 4 6 2}
{opt pweight}s、{opt aweight}s、{opt fweight}s 和 {opt iweight}s 在最大似然估计和控制函数估计中都被允许；参见 {help weight_zh}。如果指定了 {opt twostep}，则不允许使用任何权重。{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 在对话框中不显示。{p_end}
{p 4 6 2}
请参见 {manhelp etregress_postestimation TE:etregress 后估计} 获取估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 处理效应 > 内生处理 >}
  {bf:最大似然估计器 > 连续结果}


{marker description}{...}
{title:描述}

{pstd}
{cmd:etregress} 估计平均处理效应以及增加了一个内生二元处理变量的线性回归模型的其他参数。估计是通过全最大似然、两步一致估计或控制函数估计完成的。

{pstd}
除了平均处理效应外，{cmd:etregress} 还可用于估计处理组的平均处理效应，当结果可能与处理不独立时。 


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TE etregressQuickstart:快速开始}

        {mansection TE etregressRemarksandexamples:备注和示例}

        {mansection TE etregressMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options_ml}{...}
{title:最大似然估计的选项}

{dlgtab:模型}

{phang}
{cmd:treat(}{depvar:_t} {cmd:=} {indepvars:_t}[{cmd:,} {opt noconstant}]{cmd:)}
   指定处理方程的变量和选项。这是指定处理效应模型的一个组成部分，并且是必需的。

{phang}
{opt noconstant}；参见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt poutcomes} 指定使用潜在结果模型，具有独立的处理组和控制组的方差和相关参数。

{phang}
{opt constraints(constraints)}；参见 {helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健}

INCLUDE help vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}；参见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt first} 指定在估计之前显示处理方程的第一步 probit 估计。

{phang}
{opth hazard(newvar)} 将创建一个包含来自处理方程的风险的新变量。风险是从处理方程的估计参数中计算的。

{phang}
{opt lrmodel}、{opt nocnsreport}；参见
     {helpb estimation options:[R] 估计选项}。

{marker ml_display_options}{...}
INCLUDE help displayopts_list

{marker ml_maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:算法规格)}、{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、{opt grad:ient}、{opt showstep}、{opt hess:ian}、{opt showtol:erance}、{opt tol:erance(#)}、{opt ltol:erance(#)}、{opt nrtol:erance(#)}、{opt nonrtol:erance(#)}和
{opt from(init_specs)}；参见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会将默认的 {it:vcetype} 重置为 {cmd:vce(opg)}。

{pstd}
以下选项可与 {opt etregress} 一起使用，但在对话框中不显示：

{phang}
{opt collinear}、{opt coeflegend}；参见
     {helpb estimation options:[R] 估计选项}。


{marker options_twostep}{...}
{title:两步一致估计的选项}

{dlgtab:模型}

{phang}
{cmd:treat(}{depvar:_t} {cmd:=} {indepvars:_t}[{cmd:,} {opt noconstant}]{cmd:)}
   指定处理方程的变量和选项。这是指定处理效应模型的一个组成部分，并且是必需的。

{phang}
{opt twostep} 指定生成参数的两步一致估计、标准误差和协方差矩阵，而不是默认的最大似然估计。

{phang}
{opt noconstant}；参见
{helpb estimation options##noconstant:[R] 估计选项}。

{dlgtab:标准误}

{phang}
{opt vce(vcetype)} 指定报告的标准误差类型，其中包括基于渐进理论的类型 ({cmd:conventional}) 和使用 bootstrap 或 jackknife 方法的类型 ({cmd:bootstrap}、{cmd:jackknife})；参见 {help vce_option_zh:[R] {it:vce_option}}。
{p_end}

{pmore}
{cmd:vce(conventional)}，默认情况下，使用传统导出的方差估计器来估计处理效应模型的两步估计。

{dlgtab:报告}

{phang}
{opt level(#)}；参见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt first} 指定在估计之前显示处理方程的第一步 probit 估计。

{phang}
{opth hazard(newvar)} 将创建一个包含来自处理方程的风险的新变量。风险是从处理方程的估计参数中计算的。

{marker ts_display_options}{...}
INCLUDE help displayopts_list

{pstd}
以下选项可与 {opt etregress} 一起使用，但在对话框中不显示：

{phang}
{opt coeflegend}；参见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker options_cfunction}{...}
{title:控制函数估计的选项}

{dlgtab:模型}

{phang}
{cmd:treat(}{depvar:_t} {cmd:=} {indepvars:_t}[{cmd:,} {opt noconstant}]{cmd:)}
   指定处理方程的变量和选项。这是指定处理效应模型的一个组成部分，并且是必需的。

{phang}
{opt cfunction} 指定生成参数、标准误差和协方差矩阵的控制函数估计，而不是默认的最大似然估计。{opt cfunction} 是必需的。

{phang}
{opt noconstant}；参见
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt poutcomes} 指定使用潜在结果模型，具有独立的处理组和控制组的方差和相关参数。

{dlgtab:标准误}

INCLUDE help vce_rbj

{dlgtab:报告}

{phang}
{opt level(#)}；参见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt first} 指定在估计之前显示处理方程的第一步 probit 估计。

{phang}
{opth hazard(newvar)} 将创建一个包含来自处理方程的风险的新变量。风险是从处理方程的估计参数中计算的。

{marker cf_display_options}{...}
INCLUDE help displayopts_list

{marker cf_maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt iter:ate(#)}、[{cmd:no}]{opt log} 和
{opt from(init_specs)}；参见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
{it:init_specs} 是以下之一：

{pmore2}
{it:matname} [{cmd:,} {cmd:skip} {cmd:copy}]

{pmore2}
{it:#} [{cmd:} {it:#} ...]{cmd:} {cmd:copy}

{pstd}
以下选项可与 {opt etregress} 一起使用，但在对话框中不显示：

{phang}
{opt coeflegend}；参见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse union3}{p_end}

{pstd}获取完整的 ML 估计{p_end}
{phang2}{cmd:. etregress wage age grade smsa black tenure,}
           {cmd:treat(union = south black tenure)}

{pstd}获取两步一致估计{p_end}
{phang2}{cmd:. etregress wage age grade smsa black tenure,}
           {cmd:treat(union = south black tenure) twostep}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse drugexp}{p_end}

{pstd}获取潜在结果模型的控制函数估计{p_end}
{phang2}{cmd:. etregress lndrug chron age lninc, }
{cmd:treat(ins=age married lninc work) poutcomes cfunction}

    {hline}

{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:etregress} （最大似然）将以下内容存储在 {cmd:e()}：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(k)}}参数个数{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数个数{p_end}
{synopt:{cmd:e(k_dv)}}因变量个数{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}常数-only 模型的对数似然 ({cmd:lrmodel} 仅){p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(lambda)}}约束模型中 lambda 的估计{p_end}
{synopt:{cmd:e(selambda)}}约束模型中 lambda 的标准误差{p_end}
{synopt:{cmd:e(sigma)}}约束模型中 sigma 的估计{p_end}
{synopt:{cmd:e(lambda0)}}潜在结果模型中 lambda0 的估计{p_end}
{synopt:{cmd:e(selambda0)}}潜在结果模型中 lambda0 的标准误差{p_end}
{synopt:{cmd:e(sigma0)}}潜在结果模型中 sigma0 的估计{p_end}
{synopt:{cmd:e(lambda1)}}潜在结果模型中 lambda1 的估计{p_end}
{synopt:{cmd:e(selambda1)}}潜在结果模型中 lambda1 的标准误差{p_end}
{synopt:{cmd:e(sigma1)}}潜在结果模型中 sigma1 的估计{p_end}
{synopt:{cmd:e(chi2)}}卡方统计量{p_end}
{synopt:{cmd:e(chi2_c)}}比较检验的卡方统计量{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(p_c)}}比较检验的 p 值{p_end}
{synopt:{cmd:e(rho)}}约束模型中 rho 的估计{p_end}
{synopt:{cmd:e(rho0)}}潜在结果模型中 rho0 的估计{p_end}
{synopt:{cmd:e(rho1)}}潜在结果模型中 rho1 的估计{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(rank0)}}常数-only 模型的 {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}如果收敛则为 {cmd:1}，否则为 {cmd:0}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:etregress}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(hazard)}}包含风险的变量{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(title2)}}估计输出中的次标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(chi2_ct)}}{cmd:Wald} 或 {cmd:LR}；模型卡方检验类型，对应于 {cmd:e(chi2_c)}{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；指示优化器执行最大化或最小化{p_end}
{synopt:{cmd:e(method)}}{cmd:ml}{p_end}
{synopt:{cmd:e(ml_method)}} {cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(footnote)}}用于实现脚注显示的程序{p_end}
{synopt:{cmd:e(marginsok)}}允许由 {cmd:margins} 生成的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}模型基础的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{pstd}
{cmd:etregress} （两步）将以下内容存储在 {cmd:e()}：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(lambda)}}lambda{p_end}
{synopt:{cmd:e(selambda)}}lambda 的标准误{p_end}
{synopt:{cmd:e(sigma)}}sigma 的估计{p_end}
{synopt:{cmd:e(chi2)}}卡方统计量{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(rho)}}rho{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:etregress}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(hazard)}}包含风险的变量{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(title2)}}估计输出中的次标题{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(method)}}{cmd:twostep}{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(footnote)}}用于实现脚注显示的程序{p_end}
{synopt:{cmd:e(marginsok)}}允许由 {cmd:margins} 生成的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}不允许由 {cmd:margins} 生成的预测{p_end}
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

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <etregress.sthlp>}