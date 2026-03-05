{smcl}
{* *! version 1.3.9  27feb2019}{...}
{viewerdialog nbreg "dialog nbreg"}{...}
{viewerdialog gnbreg "dialog gnbreg"}{...}
{viewerdialog "svy: nbreg" "dialog nbreg, message(-svy-) name(svy_nbreg)"}{...}
{viewerdialog "svy: gnbreg" "dialog gnbreg, message(-svy-) name(svy_gnbreg)"}{...}
{vieweralsosee "[R] nbreg" "mansection R nbreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] nbreg postestimation" "help nbreg postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: gnbreg" "help bayes gnbreg"}{...}
{vieweralsosee "[BAYES] bayes: nbreg" "help bayes nbreg"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[FMM] fmm: nbreg" "help fmm nbreg"}{...}
{vieweralsosee "[R] glm" "help glm_zh"}{...}
{vieweralsosee "[ME] menbreg" "help menbreg_zh"}{...}
{vieweralsosee "[R] npregress kernel" "help npregress kernel"}{...}
{vieweralsosee "[R] npregress series" "help npregress series"}{...}
{vieweralsosee "[R] poisson" "help poisson_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[R] tnbreg" "help tnbreg_zh"}{...}
{vieweralsosee "[XT] xtnbreg" "help xtnbreg_zh"}{...}
{vieweralsosee "[R] zinb" "help zinb_zh"}{...}
{viewerjumpto "Syntax" "nbreg_zh##syntax"}{...}
{viewerjumpto "Menu" "nbreg_zh##menu"}{...}
{viewerjumpto "Description" "nbreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "nbreg_zh##linkspdf"}{...}
{viewerjumpto "Options for nbreg" "nbreg_zh##options_nbreg"}{...}
{viewerjumpto "Options for gnbreg" "nbreg_zh##options_gnbreg"}{...}
{viewerjumpto "Remarks" "nbreg_zh##remarks"}{...}
{viewerjumpto "Examples" "nbreg_zh##examples"}{...}
{viewerjumpto "Stored results" "nbreg_zh##results"}
{help nbreg:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] nbreg} {hline 2}}负二项回归{p_end}
{p2col:}({mansection R nbreg:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
负二项回归模型

{p 8 14 2}
{cmd:nbreg} {depvar} [{indepvars}] {ifin}
[{it:{help nbreg##weight:权重}}]
[{cmd:,} {it:{help nbreg##nbreg_options:nbreg选项}}]


{phang}
广义负二项模型

{p 8 15 2}
{cmd:gnbreg} {depvar} [{indepvars}] {ifin} 
[{it:{help nbreg##weight:权重}}]
[{cmd:,} {it:{help nbreg##gnbreg_options:gnbreg选项}}]


{synoptset 28 tabbed}{...}
{marker nbreg_options}{...}
{synopthdr :nbreg选项}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:拦截项}}抑制常量项{p_end}
{synopt :{cmdab:d:ispersion(}{opt m:ean}{cmd:)}}离散参数的参数化；默认为{p_end}
{synopt :{cmdab:d:ispersion(}{opt c:onstant}{cmd:)}}所有观察值的常量离散{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包含ln({it:varname_e})，系数约束为1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包含{it:varname_o}，系数约束为1{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype}可为{opt oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt opg}、{opt boot:strap}或{opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认为{cmd:level(95)}{p_end}
{synopt :{opt nolr:test}}抑制似然比测试{p_end}
{synopt :{opt ir:r}}报告发生率比{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help nbreg##nbreg_display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

{syntab :最大化}
{synopt :{it:{help nbreg##nbreg_maximize:maximize_options}}}控制最大化过程；少用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{synoptset 28 tabbed}{...}
{marker gnbreg_options}{...}
{synopthdr :gnbreg选项}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:拦截项}}抑制常量项{p_end}
{synopt :{opth lna:lpha(varlist)}}离散模型变量{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包含ln({it:varname_e})，系数约束为1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包含{it:varname_o}，系数约束为1{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype}可为{opt oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt opg}、{opt boot:strap}或{opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认为{cmd:level(95)}{p_end}
{synopt :{opt ir:r}}报告发生率比{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help nbreg##gnbreg_display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall
        
{syntab :最大化}
{synopt :{it:{help nbreg##gnbreg_maximize:maximize_options}}}控制最大化过程；少用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

INCLUDE help fvvarlist2
{p 4 6 2}{it:depvar}、{it:indepvars}、{it:varname_e}和{it:varname_o}可以包含时间序列运算符（仅适用于{cmd:nbreg}）；参见{help tsvarlist_zh}.{p_end}
{p 4 6 2}{opt bayes}、{opt bootstrap}、{opt by}（仅适用于{cmd:nbreg}）、{opt fmm}（仅适用于{cmd:nbreg}）、{opt fp}（仅适用于{cmd:nbreg}）、{opt jackknife}、{opt mfp}（仅适用于{cmd:nbreg}）、{opt mi estimate}、{opt nestreg}（仅适用于{cmd:nbreg}）、{opt rolling}、{opt statsby}、{opt stepwise}和{opt svy}是允许的；具体请参见{help prefix_zh}。
有关详细信息，请参阅{manhelp bayes_gnbreg BAYES:bayes: gnbreg}、{manhelp bayes_nbreg BAYES:bayes: nbreg}和{manhelp fmm_nbreg FMM:fmm: nbreg}.{p_end}
INCLUDE help vce_mi
{p 4 6 2}权重在{help bootstrap_zh}前缀下不被允许.{p_end}
{p 4 6 2}
{opt vce()}和权重在{help svy_zh}前缀下不被允许。
{p_end}
{marker weight}{...}
{p 4 6 2} {cmd:fweight}s、{cmd:iweight}s和{cmd:pweight}s被允许；参见
{help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear}和{opt coeflegend}不会出现在对话框中.{p_end}
{p 4 6 2}
请参见 {manhelp nbreg_postestimation R:nbreg 后估计}以获取估计后可用的功能。
{p_end}


{marker menu}{...}
{title:菜单}

    {title:nbreg} 

{phang2}
{bf:统计 > 计数结果 > 负二项回归}

    {title:gnbreg}

{phang2}
{bf:统计 > 计数结果 > 广义负二项回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:nbreg} 适用于一个非负计数的因变量拟合一个负二项回归模型。在该模型中，计数变量被认为是由类似于泊松过程生成的，唯一的不同是允许方差大于真实泊松的方差。这个额外的变异被称为过度离散。

{pstd}
{cmd:gnbreg} 适用于负二项均值-离散模型的推广；形状参数 alpha 也可以被参数化。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R nbreg快速入门:快速开始}

        {mansection R nbreg备注和示例:备注和示例}

        {mansection R nbreg方法和公式:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options_nbreg}{...}
{title:nbreg选项}

{dlgtab:模型}

{phang}
{opt noconstant}；请参见
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{cmd:dispersion(mean}{c |}{cmd:constant)} 指定模型的参数化。 {cmd:dispersion(mean)}为默认值，产生一个离散度等于1 + alpha * exp(xb + offset)的模型；即离散度是期望均值的函数：exp(xb + offset)。
{cmd:dispersion(constant)}的离散度等于1 + delta；即对所有观察值是一个常量。

{phang}
{opth "exposure(varname:varname_e)"}, {opt offset(varname_o)}, 
{opt constraints(constraints)}；参见
{helpb estimation options:[R] 估计选项}。

{dlgtab:SE/稳健性}

INCLUDE help vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}；请参见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt nolrtest}抑制拟合泊松模型。如果没有此选项，拟合一个比较的泊松模型，并且在零假设下使用似然进行似然比测试，即离散参数为零。

{phang}
{opt irr}报告转化为发生率比的估计系数，即exp(b)而不是b。标准误差和置信区间也会类似地转换。此选项影响了结果的显示方式，而不是估计或存储的方式。 {opt irr}可以在估计时或重新播放先前估计的结果时指定。

{phang}
{opt nocnsreport}；请参见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

{marker nbreg_display_options}{...}
INCLUDE help displayopts_list

{marker nbreg_maximize}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}: {opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}、
{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、
{opt grad:ient}、{opt showstep}、{opt hess:ian}、
{opt showtol:erance}、{opt tol:erance(#)}、{opt ltol:erance(#)}、
{opt nrtol:erance(#)}、{opt nonrtol:erance}和
{opt from(init_specs)}；请参见 {help maximize_zh:[R] 最大化}。这些选项很少使用。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会重置默认 {it:vcetype} 为 {cmd:vce(opg)}。

{pstd}
以下选项可与 {opt nbreg} 一起使用，但未在对话框中显示：

{phang}
{opt collinear}、{opt coeflegend}；请参见
     {helpb estimation options:[R] 估计选项}。


{marker options_gnbreg}{...}
{title:gnbreg选项}

{dlgtab:模型}

{phang}
{opt noconstant}；请参见
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opth lnalpha(varlist)}允许您为 ln(alpha) 指定线性方程。
指定 {cmd:lnalpha(male old)} 意味着 ln(alpha)=a_0 + a_1{cmd:male} + a_2{cmd:old}，其中 a_0、a_1和 a_2 是待估计的参数。如果未指定此选项，{cmd:gnbreg}和{cmd:nbreg}将产生相同结果，因为形状参数将被参数化为常量。

{phang}
{opth "exposure(varname:varname_e)"}, {opt offset(varname_o)}，
{opt constraints(constraints)}；参见
{helpb estimation options:[R] 估计选项}。

{dlgtab:SE/稳健性}

INCLUDE help vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}；请参见 
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt irr}报告转化为发生率比的估计系数。标准误差和置信区间也会类似地转换。此选项影响结果的显示方式，而不是估计或存储的方式。 {opt irr}可以在估计时或重新播放先前估计的结果时指定。

{phang}
{opt nocnsreport}；请参见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

{marker gnbreg_display_options}{...}
INCLUDE help displayopts_list

{marker gnbreg_maximize}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}: {opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}、
{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、
{opt grad:ient}、{opt showstep}、{opt hess:ian}、
{opt showtol:erance}、{opt tol:erance(#)}、{opt ltol:erance(#)}、
{opt nrtol:erance(#)}、{opt nonrtol:erance}和
{opt from(init_specs)}；请参见 {help maximize_zh:[R] 最大化}。这些选项很少使用。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会重置默认 {it:vcetype} 为 {cmd:vce(opg)}。

{pstd}
以下选项可与 {opt gnbreg} 一起使用，但未在对话框中显示：

{phang}
{opt collinear}、{opt coeflegend}；请参见
     {helpb estimation options:[R] 估计选项}。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:nbreg} 将拟合负二项模型的两种不同参数化。默认情况下，由 {cmd:dispersion(mean)} 选项给出，i 次观察的离散度等于 1 + alpha * exp(x_jb + offset_j)；也就是说，离散度是对于 j 次观察计数的期望均值的函数。替代参数化由 {cmd:dispersion(constant)} 选项给出，离散度等于 1 + delta；也就是说，对于所有观察值是一个常量。

{pstd}
对于默认模型，alpha = 0（或 ln(alpha) = -infinity）对应于离散度 = 1，因此这仅是泊松模型。同样，对于替代参数化，delta = 0（或 ln(delta) = -infinity）对应于离散度 = 1，因此它也是一个泊松模型。

{pstd}
用户可能希望拟合这两种参数化，并选择具有更大（最小负）对数似然的模型。两种参数化通常会产生相似的结果，并且彼此之间通常不会显著不同。因此，选择参数化通常并不重要。

{pstd}
请参见 {manhelp xtpoisson XT} 和 {manhelp xtnbreg XT} 以获取密切相关的面板估计量。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse rod93}{p_end}
{phang2}{cmd:. generate logexp=ln(exposure)}{p_end}

{pstd}拟合负二项回归模型{p_end}
{phang2}{cmd:. nbreg deaths i.cohort, exposure(exp)}{p_end}

{pstd}与上述命令相同{p_end}
{phang2}{cmd:. nbreg deaths i.cohort, offset(logexp)}{p_end}

{pstd}与上述命令相同，但将离散度从 {cmd:mean} 更改为 {cmd:constant}{p_end}
{phang2}{cmd:. nbreg deaths i.cohort, offset(logexp) dispersion(constant)}{p_end}

{pstd}拟合广义负二项模型{p_end}
{phang2}{cmd:. gnbreg deaths age_mos, lnalpha(i.cohort) offset(logexp)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:nbreg} 在 {cmd:e()} 中存储以下结果：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(k)}}参数数{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数数{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数{p_end}
{synopt:{cmd:e(k_dv)}}因变量数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(r2_p)}}伪 R 方{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}常数模型的对数似然{p_end}
{synopt:{cmd:e(ll_c)}}比较模型的对数似然{p_end}
{synopt:{cmd:e(alpha)}}alpha值{p_end}
{synopt:{cmd:e(delta)}}delta值{p_end}
{synopt:{cmd:e(N_clust)}}聚类数{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(chi2_c)}}比较测试的卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(rank0)}}常数模型的 {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:nbreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}或{cmd:LR}；模型卡方测试的类型{p_end}
{synopt:{cmd:e(chi2_ct)}}{cmd:Wald} 或 {cmd:LR}；对应于 {cmd:e(chi2_c)} 的模型卡方测试类型{p_end}
{synopt:{cmd:e(dispers)}}{cmd:mean} 或 {cmd:constant}{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是执行最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}实现 {cmd:predict} 的程序{p_end}
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

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <nbreg.sthlp>}