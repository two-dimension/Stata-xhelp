{smcl}
{* *! version 1.2.12  12dec2018}{...}
{viewerdialog heckoprobit "dialog heckoprobit"}{...}
{viewerdialog "svy: heckoprobit" "dialog heckoprobit, message(-svy-) name(svy_heckoprobit)"}{...}
{vieweralsosee "[R] heckoprobit" "mansection R heckoprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] heckoprobit postestimation" "help heckoprobit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: heckoprobit" "help bayes heckoprobit"}{...}
{vieweralsosee "[ERM] eoprobit" "help eoprobit_zh"}{...}
{vieweralsosee "[R] heckman" "help heckman_zh"}{...}
{vieweralsosee "[R] heckpoisson" "help heckpoisson_zh"}{...}
{vieweralsosee "[R] heckprobit" "help heckprobit_zh"}{...}
{vieweralsosee "[R] oprobit" "help oprobit_zh"}{...}
{vieweralsosee "[R] probit" "help probit_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[R] tobit" "help tobit_zh"}{...}
{viewerjumpto "Syntax" "heckoprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "heckoprobit_zh##menu"}{...}
{viewerjumpto "Description" "heckoprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "heckoprobit_zh##linkspdf"}{...}
{viewerjumpto "Options" "heckoprobit_zh##options"}{...}
{viewerjumpto "Example" "heckoprobit_zh##example"}{...}
{viewerjumpto "Stored results" "heckoprobit_zh##results"}
{help heckoprobit:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[R] heckoprobit} {hline 2}}有样本选择的有序 probit 模型{p_end}
{p2col:}({mansection R heckoprobit:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:heckoprobit} {depvar} {indepvars} {ifin}
[{help heckoprobit##weight:{it:weight}}]{cmd:,}
{opt sel:ect}{cmd:(}[{it:{help depvar:depvar_s}} {cmd:=}]
                     {it:{help varlist_zh:varlist_s}}
[{cmd:,} {opt nocons:tant} {opth off:set(varname:varname_o)}]{cmd:)}
[{it:options}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{p2coldent :* {opt sel:ect()}}指定选择方程：因变量和自变量；是否包含常数项和偏置变量{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，其系数约束为 1{p_end}
{synopt :{cmdab:约束(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :标准误/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim},
{opt r:obust}, {opt cl:uster} {it:clustvar}, {cmd:opg}, {opt boot:strap}, 或
{opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置信心水平；默认为 {cmd:level(95)}{p_end}
{synopt :{opt fir:st}}报告第一步 probit 估计{p_end}
{synopt :{opt nohead:er}}不显示参数表上方的标题{p_end}
{synopt :{opt nofoot:note}}不显示参数表下方的注释{p_end}
{synopt :{opt nocns:r:eport}}不显示约束{p_end}
{synopt :{it:{help heckoprobit##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

{syntab :最大化}
{synopt :{it:{help heckoprobit##maximize_options:最大化选项}}}控制最大化过程；甚少使用{p_end}

{synopt:{opt col:linear}}保留多重共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt select()} 是必需的。完整的规范为{p_end}
{p 10 10 2}
{opt sel:ect}{cmd:(}[{it:depvar_s} {cmd:=}] {it:varlist_s}
[{cmd:,} {opt nocons:tant} {opt off:set(varname_o)}]{cmd:)}
{p_end}
{p 4 6 2}{it:indepvars} 和 {it:varlist_s} 可以包含因子变量；参见
{help fvvarlist_zh}.{p_end}
{p 4 6 2}{it:depvar}, {it:indepvars}, {it:depvar_s}, 和 {it:varlist_s} 可以
包含时间序列运算符；参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bayes}, {cmd:bootstrap}, {cmd:by}, {cmd:jackknife},
{cmd:rolling}, {cmd:statsby}, 和 {cmd:svy} 是允许的；参见 {help prefix_zh}。
更多细节，请参见 {manhelp bayes_heckoprobit BAYES:bayes: heckoprobit}。
{p_end}
{p 4 6 2}权重无法与 {help bootstrap_zh} 前缀一起使用.{p_end}
{p 4 6 2}
{opt vce()}, {opt first}, 和权重不能与 {help svy_zh} 前缀一起使用。
{p_end}
{marker weight}{...}
{p 4 6 2}{opt pweight}s, {opt fweight}s, 和 {opt iweight}s 被允许；参见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不出现在对话框中.{p_end}
{p 4 6 2}有关估计后使用的功能，请参见 {manhelp heckoprobit_postestimation R:heckoprobit postestimation}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 样本选择模型 > 有样本选择的有序 probit 模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:heckoprobit} 拟合最大似然有序 probit 模型并进行样本选择。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection R heckoprobitQuickstart:快速入门}

        {mansection R heckoprobitRemarksandexamples:备注和示例}

        {mansection R heckoprobitMethodsandformulas:方法与公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:select(}[{it:{help depvar:depvar_s}} {cmd:=}] {it:{help varlist_zh:varlist_s}}
[{cmd:,} {opt noconstant} {opth offset:(varname:varname_o)}]{cmd:)}
指定选择方程的变量和选项。这是指定选择模型的一个重要部分，且是必需的。选择方程应包含至少一个不在结果方程中的变量。

{pmore}
如果指定了 {it:depvar_s}，应编码为 0 或 1，0 表示未选择的观察，1 表示选中的观察。
如果未指定 {it:depvar_s}，那么对于 {it:depvar} 不缺失的观察将假定为选中，而对于 {it:depvar_s} 缺失的观察将假定为未选择。

{pmore}
{cmd:noconstant} 抑制选择常数项（截距）。

{pmore}
{opt offset(varname_o)} 指定选择偏置 {it:varname_o} 包含在模型中，且其系数约束为 1。

{phang}
{opth offset(varname)}, {opt constraints(constraints)};
参见 {helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健}

INCLUDE help vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}; 参见 
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt first} 指定显示选择方程的第一步 probit 估计，在估计前。

{phang}
{opt noheader} 抑制参数表上方的标题。

{phang}
{opt nofootnote} 抑制参数表下方显示的脚注。

{phang}
{opt nocnsreport}; 参见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

{marker display_options}{...}
INCLUDE help displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}: {opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:算法规格)},
{opt iter:ate(#)}, [{cmd:no}]{opt log}, {opt tr:ace},
{opt grad:ient}, {opt showstep},
{opt hess:ian}, {opt showtol:erance},
{opt tol:erance(#)}, {opt ltol:erance(#)},
{opt nrtol:erance(#)}, {opt nonrtol:erance}, 和
{opt from(init_specs)}; 参见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 将重置默认的
{it:vcetype} 为 {cmd:vce(opg)}。

{pstd}
{opt heckoprobit} 可用的以下选项但未显示在对话框中：

{phang}
{opt collinear}, {opt coeflegend}; 参见
     {helpb estimation options:[R] 估计选项}。


{marker example}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse womensat}{p_end}

{pstd}拟合基于就业的有样本选择的有序 probit 模型{p_end}
{phang2}{cmd:. heckoprobit satisfaction educ age, select(work=educ age i.married##c.children)}
{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:heckoprobit} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_selected)}}选中观察的数量{p_end}
{synopt:{cmd:e(N_nonselected)}}未选中观察的数量{p_end}
{synopt:{cmd:e(N_cd)}}完全确定观察的数量{p_end}
{synopt:{cmd:e(k_cat)}}类别数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中方程的数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_c)}}对数似然，比较模型{p_end}
{synopt:{cmd:e(N_clust)}}集群数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(chi2_c)}}比较检验的卡方{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(p_c)}}比较检验的 p 值{p_end}
{synopt:{cmd:e(rho)}}rho{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代数量{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:heckoprobit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}集群变量名称{p_end}
{synopt:{cmd:e(offset1)}}回归方程的偏置{p_end}
{synopt:{cmd:e(offset2)}}选择方程的偏置{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}; 模型卡方检验的类型{p_end}
{synopt:{cmd:e(chi2_ct)}}比较卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器是进行最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}允许的预测由 {cmd:margins}{p_end}
{synopt:{cmd:e(marginsnotok)}}不允许的预测由 {cmd:margins}{p_end}
{synopt:{cmd:e(marginsdefault)}}默认 {opt predict()} 在 {cmd:margins} 中的规格{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(cat)}}类别值{p_end}
{synopt:{cmd:e(V)}}估计值的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <heckoprobit.sthlp>}