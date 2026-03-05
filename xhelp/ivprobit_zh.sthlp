{smcl}
{* *! version 1.3.12  22mar2019}{...}
{viewerdialog ivprobit "dialog ivprobit"}{...}
{viewerdialog "svy: ivprobit" "dialog ivprobit, message(-svy-) name(svy_ivprobit)"}{...}
{vieweralsosee "[R] ivprobit" "mansection R ivprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ivprobit postestimation" "help ivprobit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] eprobit" "help eprobit_zh"}{...}
{vieweralsosee "[R] gmm" "help gmm_zh"}{...}
{vieweralsosee "[R] ivregress" "help ivregress_zh"}{...}
{vieweralsosee "[R] ivtobit" "help ivtobit_zh"}{...}
{vieweralsosee "[R] probit" "help probit_zh"}{...}
{vieweralsosee "[SVY] svy estimation " "help svy_estimation_zh"}{...}
{vieweralsosee "[XT] xtprobit" "help xtprobit_zh"}{...}
{viewerjumpto "Syntax" "ivprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "ivprobit_zh##menu"}{...}
{viewerjumpto "Description" "ivprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "ivprobit_zh##linkspdf"}{...}
{viewerjumpto "Options for ML estimator" "ivprobit_zh##options_ml"}{...}
{viewerjumpto "Options for two-step estimator" "ivprobit_zh##options_twostep"}{...}
{viewerjumpto "Examples" "ivprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "ivprobit_zh##results"}{...}
{viewerjumpto "Reference" "ivprobit_zh##reference"}
{help ivprobit:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[R] ivprobit} {hline 2}}具有连续内生协变量的 Probit 模型{p_end}
{p2col:}({mansection R ivprobit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
最大似然估计量

{p 8 17 2}
{cmd:ivprobit} {depvar} [{it:{help varlist_zh:varlist1}}] 
{cmd:(}{it:{help varlist_zh:varlist2}} {cmd:=}
       {it:{help varlist_zh:varlist_iv}}{cmd:)} {ifin}
       [{it:{help ivprobit##weight:权重}}]
       [{cmd:,} {it:{help ivprobit##mle_options:mle_options}}] 


{phang}
两步估计量

{p 8 17 2}
{cmd:ivprobit} {depvar} [{it:{help varlist_zh:varlist1}}]
{cmd:(}{it:{help varlist_zh:varlist2}} {cmd:=}
       {it:{help varlist_zh:varlist_iv}}{cmd:)} {ifin}
       [{it:{help ivprobit##weight:权重}}]
{cmd:,} {opt two:step} [{it:{help ivprobit##tse_options:tse_options}}]


{phang}
{it:varlist1} 是外生变量列表。{p_end}

{phang}
{it:varlist2} 是内生变量列表。{p_end}

{phang}
{it:varlist_iv} 是与 {it:varlist1} 一起作为 {it:varlist2} 的工具的外生变量列表。


{synoptset 28 tabbed}{...}
{marker mle_options}{...}
{synopthdr :mle_options}
{synoptline}
{syntab :模型}
{synopt :{opt m:le}}使用条件最大似然估计量；默认选项{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim},
{opt r:obust}, {opt cl:uster} {it:clustvar}, {opt opg}, {opt boot:strap},
或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认是
{cmd:level(95)}{p_end}
{synopt :{opt first}}报告第一阶段回归{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help ivprobit##ml_display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab :最大化}
{synopt :{it:{help ivprobit##maximize_options:maximize_options}}}控制最大化过程{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{synoptset 28 tabbed}{...}
{marker tse_options}{...}
{synopthdr :tse_options}
{synoptline}
{syntab :模型}
{p2coldent :* {opt two:step}}使用 Newey 的两步估计量；默认是 {opt mle}{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt twostep}, 
         {opt boot:strap}, 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认是
{cmd:level(95)}{p_end}
{synopt :{opt first}}报告第一阶段回归{p_end}
{synopt :{it:{help ivprobit##ts_display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt twostep} 是必需的。{p_end}

{p 4 6 2}{it:varlist1} 和 {it:varlist_iv} 可以
包含因子变量；见 {help fvvarlist_zh}。{p_end}
{p 4 6 2}{it:depvar}、{it:varlist1}、{it:varlist2} 和 {it:varlist_iv} 可以
包含时间序列运算符；见 {help tsvarlist_zh}。{p_end}
{p 4 6 2}{cmd:bootstrap}、{cmd:by}、{cmd:jackknife}、{cmd:rolling}、
{cmd:statsby} 和 {cmd:svy} 是允许的；见 {help prefix_zh}。
{cmd:fp} 与最大似然估计量一起使用是允许的。{p_end}
{p 4 6 2}加权不允许与 {help bootstrap_zh} 前缀一起使用。{p_end}
{p 4 6 2}
{opt vce()},
{opt first},
{opt twostep},
和加权不允许与 {help svy_zh} 前缀一起使用。{p_end}
{marker weight}{...}
{p 4 6 2}{cmd:fweight}s、{cmd:iweight}s 和 {cmd:pweight}s 在
最大似然估计量中是允许的。{cmd:fweight}s 在 Newey 的
两步估计量中是允许的。见 {help weight_zh}。{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}见 {manhelp ivprobit_postestimation R:ivprobit postestimation} 以获取
估计后可用的功能。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 内生协变量 > 具有内生协变量的 Probit 模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:ivprobit} 拟合二元因变量的模型，其中一个或多个协变量是内生的且误差项呈正态分布。默认情况下，{cmd:ivprobit} 使用最大似然估计，但可以请求使用 Newey 的（{help ivprobit##N1987:1987}）最小卡方（两步）估计量。这两种估计量都假设内生协变量是连续的，因此不适合用于离散内生协变量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R ivprobitQuickstart:快速入门}

        {mansection R ivprobitRemarksandexamples:备注和示例}

        {mansection R ivprobitMethodsandformulas:方法和公式}

{pstd}
上述章节未包含在本帮助文件中。


{marker options_ml}{...}
{title:最大似然估计量的选项}

{dlgtab:模型}

{phang}
{opt mle} 请求使用条件最大似然估计量。这是默认选项。

{phang}
{opt asis} 请求在最大化过程中保留所有指定的变量和观测值。此选项通常不使用，可能导致数值不稳定。通常，{cmd:ivprobit} 会丢弃任何完美预测因变量成功或失败的内生或外生变量。相关的观测值也会被丢弃。更多信息见 
{mansection R probitRemarksandexamplesModelidentification:{it:模型识别}}在{bf:[R] probit} 中。

{phang}
{opt constraints(constraints)}; 见
{helpb estimation options##constraints():[R] 估计选项}。

{dlgtab:标准误/稳健性}

INCLUDE help vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}; 见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt first} 请求显示内生变量和工具之间关系的简化方程的参数。对于两步估计器，{opt first} 显示第一阶段回归。对于最大似然估计器，这些参数与 Probit 方程的参数联合估计。默认情况下不显示这些参数估计。

{phang}
{opt nocnsreport}; 见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

{marker ml_display_options}{...}
INCLUDE help displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}: {opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:算法规格)},
{opt iter:ate(#)}, [{cmd:no}]{opt log}, {opt tr:ace},
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)}, {opt nonrtol:erance}, 和
{opt from(init_specs)}; 见 {help maximize_zh:[R] 最大化}。

{pstd}
以下选项适用于 {opt ivprobit}，但未在对话框中显示：

{phang}
{opt coeflegend}; 见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker options_twostep}{...}
{title:两步估计量的选项}

{dlgtab:模型}

{phang}
{opt twostep} 是必需的，请求使用 Newey 的
({help ivprobit##N1987:1987})
有效的两步估计量来获取系数估计。

{phang}
{opt asis} 请求在最大化过程中保留所有指定的变量和观测值。此选项通常不使用，可能导致数值不稳定。通常，{cmd:ivprobit} 会丢弃任何完美预测因变量成功或失败的内生或外生变量。相关的观测值也会被丢弃。更多信息见
{mansection R probitRemarksandexamplesModelidentification:{it:模型识别}}在{bf:[R] probit}。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括来源于渐近理论的类型（{cmd:twostep}）和使用自助法或留一法（{cmd:bootstrap}，
{cmd:jackknife}）的方法；见 {help vce_option_zh:[R] {it:vce_option}}。

{dlgtab:报告}

{phang}
{opt level(#)}; 见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt first} 请求显示内生变量与工具之间关系的简化方程的参数。对于两步估计器，{opt first} 显示第一阶段回归。对于最大似然估计器，这些参数与 Probit 方程的参数联合估计。默认情况下不显示这些参数估计。

{marker ts_display_options}{...}
INCLUDE help displayopts_list

{pstd}
以下选项适用于 {opt ivprobit}，但未在对话框中显示：

{phang}
{opt coeflegend}; 见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse laborsup}{p_end}

{pstd}最大似然估计量{p_end}
{phang2}{cmd:. ivprobit fem_work fem_educ kids (other_inc = male_educ)}{p_end}

{pstd}两步估计量{p_end}
{phang2}{cmd:. ivprobit fem_work fem_educ kids (other_inc = male_educ), twostep}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:ivprobit, mle} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测值数量{p_end}
{synopt:{cmd:e(N_cds)}}完全确定的成功次数{p_end}
{synopt:{cmd:e(N_cdf)}}完全确定的失败次数{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(endog_ct)}}内生协变量数量{p_end}
{synopt:{cmd:e(p)}}模型的 Wald p 值{p_end}
{synopt:{cmd:e(p_exog)}}外生性检验的 Wald p 值{p_end}
{synopt:{cmd:e(chi2)}}模型的 Wald 卡方{p_end}
{synopt:{cmd:e(chi2_exog)}}外生性 Wald 卡方检验{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:ivprobit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(instd)}}被工具化的变量{p_end}
{synopt:{cmd:e(insts)}}工具变量{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(asis)}}如果指定则为 {cmd:asis}{p_end}
{synopt:{cmd:e(method)}}{cmd:ml}{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器是执行最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(footnote)}}用于实现脚注显示的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsprop)}}向 {cmd:margins} 命令发出的信号{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(rules)}}关于完美预测变量的信息{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(Sigma)}}Sigma 估计值{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{pstd}
{cmd:ivprobit, twostep} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测值数量{p_end}
{synopt:{cmd:e(N_cds)}}完全确定的成功次数{p_end}
{synopt:{cmd:e(N_cdf)}}完全确定的失败次数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(df_exog)}}外生性卡方检验的自由度{p_end}
{synopt:{cmd:e(p)}}模型的 Wald p 值{p_end}
{synopt:{cmd:e(p_exog)}}外生性检验的 Wald p 值{p_end}
{synopt:{cmd:e(chi2)}}模型的 Wald 卡方{p_end}
{synopt:{cmd:e(chi2_exog)}}外生性 Wald 卡方检验{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:ivprobit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(instd)}}被工具化的变量{p_end}
{synopt:{cmd:e(insts)}}工具变量{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(asis)}}{cmd:asis}，如果指定{p_end}
{synopt:{cmd:e(method)}}{cmd:twostep}{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(footnote)}}用于实现脚注显示的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsprop)}}给 {cmd:margins} 命令的信号{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(rules)}}关于完美预测变量的信息{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考文献}

{marker N1987}{...}
{phang}
Newey, W. K. 1987. 具有内生解释变量的有限依赖变量模型的有效估计。 {it:经济计量学杂志} 36:
231-250.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ivprobit.sthlp>}