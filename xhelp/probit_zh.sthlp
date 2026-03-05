{smcl}
{* *! version 1.3.14  19jun2019}{...}
{viewerdialog probit "dialog probit"}{...}
{viewerdialog "svy: probit" "dialog probit, message(-svy-) name(svy_probit)"}{...}
{vieweralsosee "[R] probit" "mansection R probit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] probit postestimation" "help probit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: probit" "help bayes probit"}{...}
{vieweralsosee "[R] biprobit" "help biprobit_zh"}{...}
{vieweralsosee "[R] brier" "help brier_zh"}{...}
{vieweralsosee "[CM] cmmprobit" "help cmmprobit_zh"}{...}
{vieweralsosee "[ERM] eprobit" "help eprobit_zh"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[FMM] fmm: probit" "help fmm probit"}{...}
{vieweralsosee "[R] glm" "help glm_zh"}{...}
{vieweralsosee "[R] heckoprobit" "help heckoprobit_zh"}{...}
{vieweralsosee "[R] hetprobit" "help hetprobit_zh"}{...}
{vieweralsosee "[R] ivprobit" "help ivprobit_zh"}{...}
{vieweralsosee "[LASSO] Lasso intro" "help lasso intro"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[R] logit" "help logit_zh"}{...}
{vieweralsosee "[ME] meprobit" "help meprobit_zh"}{...}
{vieweralsosee "[R] mprobit" "help mprobit_zh"}{...}
{vieweralsosee "[R] npregress kernel" "help npregress kernel"}{...}
{vieweralsosee "[R] npregress series" "help npregress series"}{...}
{vieweralsosee "[R] roc" "help roc_zh"}{...}
{vieweralsosee "[R] scobit" "help scobit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[XT] xtprobit" "help xtprobit_zh"}{...}
{viewerjumpto "Syntax" "probit_zh##syntax"}{...}
{viewerjumpto "Menu" "probit_zh##menu"}{...}
{viewerjumpto "Description" "probit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "probit_zh##linkspdf"}{...}
{viewerjumpto "Options" "probit_zh##options"}{...}
{viewerjumpto "Examples" "probit_zh##examples"}{...}
{viewerjumpto "Video examples" "probit_zh##video"}{...}
{viewerjumpto "Stored results" "probit_zh##results"}
{help probit:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] probit} {hline 2}}Probit 回归{p_end}
{p2col:}({mansection R probit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:probit} {depvar} [{indepvars}] {ifin}
[{it:{help probit##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 28 tabbed}{...}
{synopthdr :选项}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:不截距}}抑制常数项{p_end}
{synopt :{opth off:设置(varname)}}将 {it:varname} 包含在模型中，系数约束为 1{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可能为 {opt oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置信任水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help probit##display_options:显示选项}}}控制
包括帮助短描述 - 显示选项

{syntab :最大化}
{synopt :{it:{help probit##probit_maximize:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt :{opt nocoe:f}}不显示系数表；很少使用{p_end}
{synopt:{opt col:linear}}保留共线性变量{p_end}
包括帮助短描述 - 系数图例
{synoptline}
{p2colreset}{...}
包括帮助 - fvvarlist
{p 4 6 2}{it:depvar} 和 {it:indepvars} 可能包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bayes}、{cmd:bootstrap}、{cmd:by}、{opt fmm}、{opt fp}、{cmd:jackknife}、{opt mfp}、{cmd:mi estimate}、{cmd:nestreg}、{cmd:rolling}、{cmd:statsby}、{cmd:stepwise} 和 {cmd:svy} 是允许的；见 {help prefix_zh}。
有关更多详细信息，请参见 {manhelp bayes_probit BAYES:bayes: probit} 和 {manhelp fmm_probit FMM:fmm: probit}.{p_end}
包括帮助 - vce_mi
{p 4 6 2}权重与 {help bootstrap_zh} 前缀不允许。{p_end}
{p 4 6 2}{opt vce()}、{opt nocoef} 和权重与 {help svy_zh} 前缀不允许。
{p_end}
{marker weight}{...}
{p 4 6 2}{opt fweight}s、{opt iweight}s 和 {opt pweight}s 是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt nocoef}、{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp probit_postestimation R:probit 后估计} 以获取估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 二元结果 > Probit 回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:probit} 为二元因变量拟合一个 probit 模型，假设正结果的概率由标准正态累积分布函数决定。{cmd:probit} 可以计算稳健和集群稳健的标准误，并调整结果以适应复杂的调查设计。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R probitQuickstart:快速入门}

        {mansection R probitRemarksandexamples:备注和示例}

        {mansection R probitMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}、{opth offset(varname)}、{opt constraints(constraints)}；见 {helpb estimation options:[R] 估计选项}。

{phang}
{marker asis}
{opt asis} 指定在最大化过程中保留所有指定的变量和观测值。此选项通常不指定，并可能引入数值不稳定性。通常 {cmd:probit} 会丢弃那些完美预测因变量成功或失败的变量及其相关观测值。在这些情况下，被丢弃变量的有效系数为无穷大（负无穷大）对于完全决定成功（失败）的变量。丢弃变量和完美预测的观测值对剩余系数的似然或估计没有影响，并增加优化过程的数值稳定性。指定此选项强制保留完美预测变量及其相关观察。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)}指定报告的标准误类型，包括源自渐进理论的类型（{cmd:oim}）、对某些类型的错误规范稳健的（{cmd:robust}）、允许组内相关（{cmd:cluster} {it:clustvar}）和使用自助法或留一法（{cmd:bootstrap}、{cmd:jackknife}）；见 {help vce_option_zh:[R] {it:vce_option}}。

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt nocnsreport}；见 {helpb estimation options##nocnsreport:[R] 估计选项}。

包括帮助 - displayopts_list

{marker probit_maximize}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:算法_spec)}、{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、{opt grad:ient}、{opt showstep}、{opt hess:ian}、{opt showtol:erance}、{opt tol:erance(#)}、{opt ltol:erance(#)}、{opt nrtol:erance(#)}、{opt nonrtol:erance}，和 {opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pstd}
以下选项适用于 {opt probit}，但不在对话框中显示：

{phang}
{opt nocoef} 指定不显示系数表。该选项有时被程序员使用，但交互中没有用处。

{phang}
{opt collinear}、{opt coeflegend}；见 {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}Probit 回归{p_end}
{phang2}{cmd:. probit foreign weight mpg}{p_end}

{phang}与上述相同，但使用稳健标准误{p_end}
{phang2}{cmd:. probit foreign weight mpg, vce(robust)}{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse union}{p_end}

{pstd}Probit 回归{p_end}
{phang2}{cmd:. probit union age grade not_smsa south##c.year}{p_end}

{phang}与上述相同，但对 {cmd:id} 中的集群调整标准误{p_end}
{phang2}{cmd:. probit union age grade not_smsa south##c.year, vce(cluster id)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse nhanes2d}{p_end}
{phang2}{cmd:. svyset}

{pstd}使用调查数据的 Probit 回归{p_end}
{phang2}{cmd:. svy: probit highbp height weight age female}{p_end}
    {hline}


{marker video}{...}
{title:视频示例}

{phang2}{browse "https://www.youtube.com/watch?v=qt8DPrVGCok":带分类协变量的 Probit 回归}

{phang2}{browse "https://www.youtube.com/watch?v=AunPalHL_us":带连续协变量的 Probit 回归}

{phang2}{browse "https://www.youtube.com/watch?v=JHZKV9DPxfI":带分类和连续协变量的 Probit 回归}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:probit} 将以下内容存储在 {cmd:e()}：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测值数量{p_end}
{synopt:{cmd:e(N_cds)}}完全确定成功的数量{p_end}
{synopt:{cmd:e(N_cdf)}}完全确定失败的数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}在整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(r2_p)}}伪 R 平方{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}常数模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}集群数量{p_end}
{synopt:{cmd:e(chi2)}}卡方统计量{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:probit}{p_end}
{synopt:{cmd:e(cmdline)}}输入命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}集群变量的名称{p_end}
{synopt:{cmd:e(offset)}}线性偏差变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是执行
                     最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}预测被 {cmd:margins} 允许{p_end}
{synopt:{cmd:e(marginsnotok)}}预测被 {cmd:margins} 不允许{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(mns)}}自变量的均值向量{p_end}
{synopt:{cmd:e(rules)}}关于完美预测变量的信息{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <probit.sthlp>}