{smcl}
{* *! version 1.3.3  14apr2019}{...}
{viewerdialog streg "dialog streg"}{...}
{viewerdialog "svy: streg" "dialog streg, message(-svy-) name(svy_streg)"}{...}
{vieweralsosee "[ST] streg" "mansection ST streg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] streg postestimation" "help streg postestimation"}{...}
{vieweralsosee "[ST] stcurve" "help stcurve_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: streg" "help bayes streg"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[FMM] fmm: streg" "help fmm streg"}{...}
{vieweralsosee "[ME] mestreg" "help mestreg_zh"}{...}
{vieweralsosee "[PSS-2] power exponential" "help power exponential"}{...}
{vieweralsosee "[ST] stcox" "help stcox_zh"}{...}
{vieweralsosee "[ST] stcrreg" "help stcrreg_zh"}{...}
{vieweralsosee "[ST] stintreg" "help stintreg_zh"}{...}
{vieweralsosee "[ST] sts" "help sts_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{vieweralsosee "[TE] stteffects" "help stteffects_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{vieweralsosee "[XT] xtstreg" "help xtstreg_zh"}{...}
{viewerjumpto "Syntax" "streg_zh##syntax"}{...}
{viewerjumpto "Menu" "streg_zh##menu"}{...}
{viewerjumpto "Description" "streg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "streg_zh##linkspdf"}{...}
{viewerjumpto "Options" "streg_zh##options"}{...}
{viewerjumpto "Examples" "streg_zh##examples"}{...}
{viewerjumpto "Stored results" "streg_zh##results"}
{help streg:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[ST] streg} {hline 2}}参数生存模型{p_end}
{p2col:}({mansection ST streg:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}{cmd:streg} [{indepvars}] {ifin} [{cmd:,} {it:options}]

{marker options_table}{...}
{synoptset 29 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{cmdab:dist:ribution(}{cmdab:e:xponential)}}指数生存分布{p_end}
{synopt :{cmdab:dist:ribution(}{cmdab:gom:pertz)}}Gompertz生存分布{p_end}
{synopt :{cmdab:dist:ribution(}{cmdab:logl:ogistic)}}对数逻辑生存分布{p_end}
{synopt :{cmdab:dist:ribution(}{cmdab:ll:ogistic)}}对{cmd:distribution(loglogistic)}的同义词{p_end}
{synopt :{cmdab:dist:ribution(}{cmdab:w:eibull)}}威布尔生存分布{p_end}
{synopt :{cmdab:dist:ribution(}{cmdab:logn:ormal)}}对数正态生存分布{p_end}
{synopt :{cmdab:dist:ribution(}{cmdab:ln:ormal)}}对{cmd:distribution(lognormal)}的同义词{p_end}
{synopt :{cmdab:dist:ribution(}{cmdab:ggam:ma)}}广义伽马生存分布{p_end}
{synopt :{cmdab:fr:ailty(}{cmdab:g:amma)}}伽马脆弱分布{p_end}
{synopt :{cmdab:fr:ailty(}{cmdab:i:nvgaussian)}}反高斯分布{p_end}
{synopt :{opt time}}使用加速失效时间度量{p_end}

{syntab:模型 2}
{synopt :{opth st:rata(varname)}}分层ID变量{p_end}
{synopt :{opth off:set(varname)}}在模型中包含{it:varname}，其系数被约束为1{p_end}
{synopt :{opth sh:ared(varname)}}共享脆弱ID变量{p_end}
{synopt :{opth anc:iliary(varlist)}}使用{it:varlist}来建模第一个附属参数{p_end}
{synopt :{opth anc2(varlist)}}使用{it:varlist}来建模第二个附属参数{p_end}
{synopt :{cmdab:const:raints:(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype}可以是{opt oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt opg}、{opt boot:strap}或{opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置信心水平；默认值为{cmd:level(95)}{p_end}
{synopt :{opt nohr}}不报告风险比{p_end}
{synopt :{opt tr:atio}}报告时间比{p_end}
{synopt :{opt nos:how}}不显示st设置信息{p_end}
{synopt :{opt nohead:er}}抑制系数表的标题{p_end}
{synopt :{opt nolr:test}}不进行似然比检验{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help streg##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab:最大化}
{synopt :{it:{help streg##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线性变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
您必须在使用{cmd:streg}之前对数据进行{cmd:stset}；请参见{manhelp stset ST}.{p_end}
{p 4 6 2}
{it:varlist}可以包含因子变量；请参见{help fvvarlist_zh}.{p_end}
{p 4 6 2}
{opt bayes}、{opt bootstrap}、{opt by}、{opt fmm}、{opt fp}、{opt jackknife}、{opt mfp}、{opt mi estimate}、{opt nestreg}、{opt statsby}、{opt stepwise}和{opt svy}是允许的；请参见{help prefix_zh}。
有关详细信息，请参见{manhelp bayes_streg BAYES:bayes: streg}和{manhelp fmm_streg FMM:fmm: streg}.{p_end}
INCLUDE help vce_mi
{p 4 6 2}
{opt shared()}、{opt vce()}和{opt noheader}与{help svy_zh}前缀不允许使用。
{p_end}
{p 4 6 2}
{opt fweight}s、{opt iweight}s和{opt pweight}s可以通过{cmd:stset}指定；请参见{manhelp stset ST}。 但是，如果您使用{cmd:bootstrap}前缀与{cmd:streg}命令，则不能指定权重。{p_end}
{p 4 6 2}
{opt collinear}和{opt coeflegend}不会出现在对话框中。{p_end}
{p 4 6 2}请参见{manhelp streg_postestimation ST:streg后估计}以获取估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 回归模型 >}
    {bf:参数生存模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:streg}执行参数回归生存时间模型的最大似然估计。{cmd:streg}可与单记录或多记录 / 单失败或多失败st数据一起使用。 目前支持的生存模型包括指数、威布尔、Gompertz、对数正态、对数逻辑和广义伽马。 参数脆弱模型和共享脆弱模型也可以使用 {cmd:streg} 进行拟合。

{pstd}
另请参见{manhelp stcox ST}以获取比例风险模型。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ST stregQuickstart:快速入门}

        {mansection ST stregRemarksandexamples:备注和示例}

        {mansection ST stregMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}；见
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt distribution(distname)}指定要拟合的生存模型。指定的{opt distribution()}会在一次估计到下一次中保留，当{opt distribution()}未指定时。

{pmore}
例如，输入{cmd:streg} {cmd:x1} {cmd:x2,}
{cmd:distribution(weibull)} 拟合威布尔模型。随后，您无需指定{cmd:distribution(weibull)}即可拟合其他威布尔回归模型。

{pmore}
所有Stata估计命令，包括{cmd:streg}，在您输入命令名称而不带参数时会重新显示结果。要拟合一个没有解释变量的模型，请输入{cmd:streg,} {opt distribution(distname)} ....

{phang}
{cmd:frailty(gamma} | {cmd:invgaussian)}指定脆弱性或异质性的假设分布。除了标准参数估计外，估计结果还将包含脆弱性的方差估计和零假设的似然比检验。 当该零假设为真时，模型将简化为未指定{opt frailty(distname)}的模型。

{pmore}
在未指定{opt distribution()}时，指定的{opt frailty()}会在一次估计到下一次中保留。当您指定{opt distribution()}时，之前保留的{opt frailty()}规格会被忘记。

{phang}
{cmd:time}指定模型在加速失效时间度量下进行拟合，而不是在对数相对风险度量下。该选项仅对指数和威布尔模型有效，因为这两个模型具有比例风险和加速失效时间参数化。无论度量如何，似然函数都是相同的，模型在任一度量下都是同样适用，问题仅在于解释方式的不同。

{pmore}
在估计时必须指定{opt time}。

{dlgtab:模型 2}

{phang}
{opth strata(varname)}指定分层ID变量。变量值相等的观察被视为在同一层。然后获得分层估计（各层系数相等，但截距和附属参数对每层唯一）。如果指定了{opt frailty(distname)}，则此选项不可用。

{phang}
{opth offset(varname)}；见
      {helpb estimation options##offset():[R] 估计选项}。

{phang}
{opth shared(varname)}在{opt frailty()}有效，指定定义共享脆弱的变量组，类似于面板数据的随机效应模型，其中{it:varname}定义面板。未经{opt shared()}指定的{opt frailty()}将把脆弱性视为发生在观察级别。

{pmore}
指定的{opt shared()}会在一次估计到下一次中保留，当{opt distribution()}未指定时。 当您指定{opt distribution()}时，之前保留的{opt shared()}规格会被忘记。

{pmore}
{cmd:shared()}不能与{cmd:distribution(ggamma)}、{cmd:vce(robust)}、{cmd:vce(cluster} {it:clustvar}{cmd:)）、{cmd:vce(opg)}、{cmd:svy}前缀或在存在延迟条目或间隙的情况下使用。

{pmore}
如果{opt shared()}未与{opt frailty()}一起指定并且没有记住的{opt frailty()}来源于上次估计，则假定{cmd:frailty(gamma)}提供与{cmd:stcox}相似的行为；请参见{manhelp stcox ST}。

{phang}
{opth ancillary(varlist)}指定威布尔、对数正态、Gompertz和对数逻辑分布的附属参数，以及广义对数伽马分布的第一个附属参数（σ）以{it:varlist}的线性组合进行估计。此选项不能与{opt frailty(distname)}一起使用。

{pmore}
当附属参数被约束为严格正数时，附属参数的对数以{it:varlist}的线性组合建模。

{phang}
{opth anc2(varlist)}指定广义对数伽马分布的第二个附属参数（κ）以{it:varlist}的线性组合进行估计。此选项不能与{opt frailty(distname)}一起使用。

{phang}
{opt constraints(constraints)}；见
       {helpb estimation options##constraints():[R] 估计选项}。

{dlgtab:标准误/稳健}

INCLUDE help vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}；见
       {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt nohr}可以在估计或重新显示结果时指定，指定显示系数而不是指数系数，即显示系数而不是风险比。此选项仅影响系数的显示方式，而不影响它们的估计方式。

{pmore}
此选项仅对具有自然比例风险参数化的模型有效：指数、威布尔和Gompertz。这三个模型默认情况下报告风险比（指数系数）。

{phang}
{opt tratio}指定显示的指数系数，这些系数被解释为时间比。{opt tratio}仅适用于对数逻辑、对数正态和广义伽马模型，或在加速故障时间度量下拟合的指数和威布尔模型。

{pmore}
{opt tratio}可以在估计时或在重放时进行指定。

{phang}
{opt noshow}防止{cmd:streg}显示关键st变量。此选项很少使用，因为大多数人输入{cmd:stset, show}或{cmd:stset, noshow}来一次性设置是否希望在每个st命令的输出顶部看到这些变量；请参见{manhelp stset ST}。

{phang}
{opt noheader}抑制输出标题，无论是在估计时还是在重放时。

{phang}
{opt nolrtest}仅在脆弱模型中有效，在此情况下，它抑制了显著脆弱的似然比检验。

{phang}
{opt nocnsreport}；见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

INCLUDE help displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}
 
{phang}
{it:maximize_options}: {opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}、{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、{opt grad:ient}、{opt showstep}、{opt hess:ian}、{opt showtol:erance}、{opt tol:erance(#)}、{opt ltol:erance(#)}、{opt nrtol:erance(#)}、{opt nonrtol:erance}和{opt from(init_specs)}；见
{help maximize_zh:[R] 最大化}这些选项很少使用。

{pmore}
将优化类型设置为{cmd:technique(bhhh)}会将默认的{it:vcetype}重置为{cmd:vce(opg)}。

{pstd}
{opt streg}提供的以下选项不会在对话框中显示：

{phang}
{opt collinear}、{opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse kva}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset failtime}

{pstd}拟合威布尔生存模型{p_end}
{phang2}{cmd:. streg load bearings, distribution(weibull)}

{pstd}重放结果，但显示系数而不是风险比{p_end}
{phang2}{cmd:. streg, nohr}

{pstd}在加速失效时间度量下拟合威布尔生存模型{p_end}
{phang2}{cmd:. streg load bearings, distribution(weibull) time}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse mfail}

{pstd}使用每个受试者有多个失败的数据拟合威布尔生存模型，并指定稳健的标准误差{p_end}
{phang2}{cmd:. streg x1 x2, distribution(weibull) vce(robust)}

{pstd}与上述相同，但拟合指数模型而不是威布尔{p_end}
{phang2}{cmd:. streg x1 x2, distribution(exp) vce(robust)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse cancer}

{pstd}将{cmd:drug}的值映射为0（安慰剂）和1（非安慰剂）{p_end}
{phang2}{cmd:. replace drug = drug == 2 | drug == 3}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset studytime, failure(died)}

{pstd}拟合广义伽马生存模型{p_end}
{phang2}{cmd:. streg drug age, distribution(ggamma)}

{pstd}检验威布尔模型的适用性{p_end}
{phang2}{cmd:. test [/kappa] = 1}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse hip3, clear}

{pstd}使用{cmd:male}来建模附属参数拟合威布尔生存模型{p_end}
{phang2}{cmd:. streg protect age, dist(weibull) ancillary(male)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse cancer}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset studytime died}

{pstd}拟合分层威布尔生存模型{p_end}
{phang2}{cmd:. streg age, dist(weibull) strata(drug)}

{pstd}产生一个“低分层”模型{p_end}
{phang2}{cmd:. streg age, dist(weibull) ancillary(i.drug)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse bc}

{pstd}列出一些数据{p_end}
{phang2}{cmd:. list in 1/12}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset t, fail(dead)}

{pstd}拟合具有伽马分布脆弱性的威布尔生存模型{p_end}
{phang2}{cmd:. streg age smoking, dist(weibull) frailty(gamma)}

{pstd}拟合具有反高斯分布脆弱性的威布尔生存模型{p_end}
{phang2}{cmd:. streg age smoking, dist(weibull) frailty(invgauss)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse catheter}

{pstd}列出一些数据{p_end}
{phang2}{cmd:. list in 1/10}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset time, fail(infect)}

{pstd}拟合具有反高斯分布共享脆弱性的威布尔生存模型{p_end}
{phang2}{cmd:. streg age female, dist(weibull) frailty(invgauss) shared(patient)}

{pstd}同上，但拟合对数正态模型而不是威布尔{p_end}
{phang2}{cmd:. streg age female, dist(lnormal) frailty(invgauss) shared(patient)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse nhefs}

{pstd}为数据声明调查设计{p_end}
{phang2}{cmd:. svyset psu2 [pw=swgt2], strata(strata2)}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset age_lung_cancer if age_lung_cancer < . [pw=swgt2],}
             {cmd:fail(lung_cancer)}

{pstd}在考虑到数据为调查数据的情况下拟合指数生存模型{p_end}
{phang2}{cmd:. svy: streg former_smoker smoker male urban1 rural, dist(exp)}
{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:streg}在{cmd:e()}中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测数量{p_end}
{synopt:{cmd:e(N_sub)}}受试者数量{p_end}
{synopt:{cmd:e(N_fail)}}失败数量{p_end}
{synopt:{cmd:e(N_g)}}组数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在{cmd:e(b)}中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}总体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(ll_c)}}比较模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(chi2_c)}}比较模型的卡方{p_end}
{synopt:{cmd:e(risk)}}总风险时间{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(theta)}}脆弱参数{p_end}
{synopt:{cmd:e(aux_p)}}附属参数（{cmd:weibull}）{p_end}
{synopt:{cmd:e(gamma)}}附属参数（{cmd:gompertz, loglogistic}）{p_end}
{synopt:{cmd:e(sigma)}}附属参数（{cmd:ggamma, lnormal}）{p_end}
{synopt:{cmd:e(kappa)}}附属参数（{cmd:ggamma}）{p_end}
{synopt:{cmd:e(p)}}模型测试的p值{p_end}
{synopt:{cmd:e(p_c)}}比较测试的p值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(rank0)}}{cmd:e(V)}的秩，常数模型{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}如果收敛则为{cmd:1}，否则为{cmd:0}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}模型或回归名称{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:streg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(dead)}}{cmd:_d}{p_end}
{synopt:{cmd:e(depvar)}}{cmd:_t}{p_end}
{synopt:{cmd:e(strata)}}层变量{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(shared)}}脆弱分组变量{p_end}
{synopt:{cmd:e(fr_title)}}输出中识别脆弱性的标题{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(t0)}}{cmd:_t0}{p_end}
{synopt:{cmd:e(vce)}}在{cmd:vce()}中指定的{it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(frm2)}}{cmd:hazard}或{cmd:time}{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}或{cmd:LR}；模型卡方类型{p_end}
{synopt:{cmd:e(offset1)}}主方程的偏移量{p_end}
{synopt:{cmd:e(stcurve)}}{cmd:stcurve}{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max}或{cmd:min}；优化器是否执行最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml}方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现{cmd:predict}的程序{p_end}
{synopt:{cmd:e(predict_sub)}}{cmd:predict}子程序{p_end}
{synopt:{cmd:e(footnote)}}用于实现脚注显示的程序{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量{cmd:fvset}为{cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量{cmd:fvset}为{cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多20次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}模型基础方差{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <streg.sthlp>}