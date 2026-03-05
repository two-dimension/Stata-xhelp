{smcl}
{* *! version 1.0.17  07jan2019}{...}
{viewerdialog hetprobit "dialog hetprobit"}{...}
{viewerdialog "svy: hetprobit" "dialog hetprobit, message(-svy-) name(svy_hetprobit)"}{...}
{vieweralsosee "[R] hetprobit" "mansection R hetprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] hetprobit postestimation" "help hetprobit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: hetprobit" "help bayes hetprobit"}{...}
{vieweralsosee "[R] hetoprobit" "help hetoprobit_zh"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[R] probit" "help probit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[XT] xtprobit" "help xtprobit_zh"}{...}
{viewerjumpto "Syntax" "hetprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "hetprobit_zh##menu"}{...}
{viewerjumpto "Description" "hetprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "hetprobit_zh##linkspdf"}{...}
{viewerjumpto "Options" "hetprobit_zh##options"}{...}
{viewerjumpto "Examples" "hetprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "hetprobit_zh##results"}
{help hetprobit:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[R] hetprobit} {hline 2}}异方差 probit 模型{p_end}
{p2col:}({mansection R hetprobit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:hetprobit} {depvar} [{indepvars}] {ifin}
[{it:{help hetprobit##weight:权重}}]{cmd:,} 
{cmd:het(}{varlist} [{cmd:,} {opth off:set(varname:varname_o)}]{cmd:)}
[{it:选项}]

{synoptset 27 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{p2coldent :* {cmd:het(}{varlist}[...]{cmd:)}}用于建模方差的自变量和可选的偏移变量{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，其系数被约束为 1{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim},
{opt r:obust}, {opt cl:uster} {it:clustvar}, {cmd:opg}, {opt boot:strap},
或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设定置信水平；默认为 {cmd:level(95)}{p_end}
{synopt :{opt lrmodel}}执行似然比模型检验，而非默认的 Wald 检验{p_end}
{synopt :{opt waldhet}}在方差上执行 Wald 检验，而非 LR 检验{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help hetprobit##display_options:显示选项}}}控制包含帮助短描述 - displayoptall

{syntab :最大化}
{synopt :{it:{help hetprobit##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线性变量{p_end}
包含帮助短描述 - coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt het()} 是必需的。完整规格为{break}
     {cmd:het(}{it:varlist} [{cmd:,} {opt off:set(varname_o)}]{cmd:)}.
{p_end}
包含帮助 fvvarlist2
{p 4 6 2}{it:depvar}，{it:indepvars}，和 {it:varlist} 可以包含时间序列操作符；请参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bayes}，{cmd:bootstrap}，{cmd:by}，{cmd:fp}，{cmd:jackknife},
{cmd:rolling}，{cmd:statsby}，和 {cmd:svy} 被允许；请参见 {help prefix_zh}。
有关更多详细信息，请参见 {manhelp bayes_hetprobit BAYES:bayes: hetprobit}.{p_end}
{p 4 6 2}权重与 {help bootstrap_zh} 前缀不允许一起使用。{p_end}
{p 4 6 2}
{opt vce()}，{opt lrmodel}，和权重与 {help svy_zh}
前缀不允许一起使用。{p_end}
{marker weight}{...}
{p 4 6 2}{opt fweight}s，{opt iweight}s，和 {opt pweight}s 是被允许的；请参见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp hetprobit_postestimation R:hetprobit 后估计} 获取估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 二元结果 > 异方差 probit 回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:hetprobit} 拟合一个最大似然异方差 probit 模型。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R hetprobitQuickstart:快速开始}

        {mansection R hetprobitRemarksandexamples:备注和示例}

        {mansection R hetprobitMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:het(}{varlist} [{cmd:,} {opth offset:(varname:varname_o)}]{cmd:)}
指定自变量，以及可选的偏移变量
在方差函数中。{opt het()} 是必需的。

{pmore}
{opt offset(varname_o)} 指定选择偏移 {it:varname_o} 被
包含在模型中，系数被约束为 1。

{phang}
{opt noconstant}，{opth offset(varname)}；请参见
{helpb estimation options:[R] 估计选项}。

{phang}
{opt asis} 强制保留完美预测变量及其
相关完美预测的观察，并可能导致最大化中的不稳定性；请参见 {manhelp probit R}。

{phang}
{opt constraints(constraints)}；请参见
{helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健性}

包含帮助 vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}，{opt lrmodel}；请参见 
{helpb estimation options:[R] 估计选项}。

{phang}
{opt waldhet} 指定执行 Wald 检验以检查 {cmd:lnsigma} = 0 而非 LR 检验。

{phang}
{opt nocnsreport}；请参见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

包含帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab :最大化}

{phang}
{it:maximize_options}: {opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:算法规格)},
{opt iter:ate(#)}, [{cmd:no}]{opt log}, {opt tr:ace},
{opt grad:ient}, {opt showstep},
{opt hess:ian}, {opt showtol:erance},
{opt tol:erance(#)}, {opt ltol:erance(#)},
{opt nrtol:erance(#)}, {opt nonrtol:erance}, 和
{opt from(init_specs)}; 请参见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会重置默认
{it:vcetype} 为 {cmd:vce(opg)}。

{pstd}
以下选项可用于 {opt hetprobit}，但在对话框中未显示：

{phang}
{opt collinear}，{opt coeflegend}；请参见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse hetprobxmpl}{p_end}

{pstd}拟合异方差 probit 模型，并使用 {cmd:xhet} 来建模方差
{p_end}
{phang2}{cmd:. hetprobit y x, het(xhet)}{p_end}

{pstd}拟合异方差 probit 模型并请求稳健标准误差{p_end}
{phang2}{cmd:. hetprobit y x, het(xhet) vce(robust)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:hetprobit} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_f)}}零结果的数量{p_end}
{synopt:{cmd:e(N_s)}}非零结果的数量{p_end}
{synopt:{cmd:e(k)}}参数的数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}} 总模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}} 依赖变量的数量{p_end}
{synopt:{cmd:e(df_m)}} 模型自由度{p_end}
{synopt:{cmd:e(ll)}} 对数似然{p_end}
{synopt:{cmd:e(ll_0)}} 仅常数模型的对数似然{p_end}
{synopt:{cmd:e(ll_c)}} 比较模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}} 群集数量{p_end}
{synopt:{cmd:e(chi2)}} 卡方{p_end}
{synopt:{cmd:e(chi2_c)}} 异方差检验的卡方{p_end}
{synopt:{cmd:e(p_c)}} 异方差检验的 p 值{p_end}
{synopt:{cmd:e(df_m_c)}} 异方差检验的自由度{p_end}
{synopt:{cmd:e(p)}} 模型检验的 p 值{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(rank0)}} 仅常数模型的 {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}} 迭代次数{p_end}
{synopt:{cmd:e(rc)}} 返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示已收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:hetprobit}{p_end}
{synopt:{cmd:e(cmdline)}} 输入的命令{p_end}
{synopt:{cmd:e(depvar)}} 依赖变量名称{p_end}
{synopt:{cmd:e(wtype)}} 权重类型{p_end}
{synopt:{cmd:e(wexp)}} 权重表达式{p_end}
{synopt:{cmd:e(title)}} 估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}} 群集变量名称{p_end}
{synopt:{cmd:e(offset1)}} probit 方程的偏移量{p_end}
{synopt:{cmd:e(offset2)}} 方差方程的偏移量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(chi2_ct)}}{cmd:Wald} 或 {cmd:LR}；与 {cmd:e(chi2_c)} 相对应的模型卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}} 用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}} 优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是执行
                         最大化还是最小化{p_end}
{synopt:{cmd:e(method)}}{cmd:ml}{p_end}
{synopt:{cmd:e(ml_method)}} {cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}} 似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}} 最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}} 用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(asbalanced)}} 因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}} 因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}} 系数向量{p_end}
{synopt:{cmd:e(Cns)}} 约束矩阵{p_end}
{synopt:{cmd:e(ilog)}} 迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}} 梯度向量{p_end}
{synopt:{cmd:e(V)}} 估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}} 基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}} 标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <hetprobit.sthlp>}