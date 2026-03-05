{smcl}
{* *! version 1.0.0  19feb2019}{...}
{viewerdialog hetoprobit "dialog hetoprobit"}{...}
{viewerdialog "svy: hetoprobit" "dialog hetoprobit, message(-svy-) name(svy_hetoprobit)"}{...}
{vieweralsosee "[R] hetoprobit" "mansection R hetoprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] hetoprobit postestimation" "help hetoprobit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: hetoprobit" "help bayes hetoprobit"}{...}
{vieweralsosee "[R] hetprobit" "help hetprobit_zh"}{...}
{vieweralsosee "[R] oprobit" "help oprobit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{viewerjumpto "Syntax" "hetoprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "hetoprobit_zh##menu"}{...}
{viewerjumpto "Description" "hetoprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "hetoprobit_zh##linkspdf"}{...}
{viewerjumpto "Options" "hetoprobit_zh##options"}{...}
{viewerjumpto "Examples" "hetoprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "hetoprobit_zh##results"}
{help hetoprobit:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[R] hetoprobit} {hline 2}}异方差有序 probit 回归{p_end}
{p2col:}({mansection R hetoprobit:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:hetoprobit}
{depvar}
[{indepvars}]
{ifin}
[{it:{help hetoprobit##weight:权重}}]{cmd:,}
{cmd:het(}{varlist} [{cmd:,} {opth off:set(varname:varname_o)}]{cmd:)}
[{it:选项}]

{synoptset 27 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{p2coldent :* {cmd:het(}{varlist}[...]{cmd:)}}用于建模方差的自变量和可选的偏移变量{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，系数被约束为 1{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype}可以是 {opt oim}，{opt r:obust}，{opt cl:uster} {it:clustvar}，{cmd:opg}，{opt boot:strap}，或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt waldhet}}对方差进行 Wald 检验，而不是 LR 检验{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help hetoprobit##display_options:显示选项}}}控制
包括帮助简要描述-显示选项全部

{syntab :最大化}
{synopt :{it:{help hetoprobit##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt :{opt nohead:er}}不在系数表上方显示标题{p_end}
{synopt :{opt notable}}不显示系数表{p_end}
{synopt :{opt col:linear}}保留共线性变量{p_end}
包含帮助简要描述-系数图例
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt het()} 是必需的。完整规格为{break}
     {cmd:het(}{it:varlist} [{cmd:,} {opt off:set(varname_o)}]{cmd:)}。
{p_end}
包含帮助 fvvarlist2
{p 4 6 2}{it:depvar}，{it:indepvars}，和 {it:varlist} 可包含时间序列运算符；请参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bayes}，{cmd:bootstrap}，{cmd:by}，{cmd:fp}，{cmd:jackknife}，{cmd:rolling}，{cmd:statsby}，和 {cmd:svy} 是被允许的；请参见 {help prefix_zh}。
有关更多详细信息，请参见 {manhelp bayes_hetoprobit BAYES:bayes: hetoprobit}.{p_end}
{p 4 6 2}与 {help bootstrap_zh} 前缀不允许使用权重。{p_end}
{p 4 6 2}
{opt vce()} 和权重与 {help svy_zh} 前缀不允许使用。{p_end}
{marker weight}{...}
{p 4 6 2}{opt fweight}s，{opt iweight}s 和 {opt pweight}s 是被允许的；请参见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt noheader}、{opt notable}、{opt collinear} 和 {opt coeflegend}
不会出现在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp hetoprobit_postestimation R:hetoprobit postestimation} 以获取
估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 有序结果 > 异方差有序 probit 回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:hetoprobit} 拟合一个异方差有序 probit 模型用于有序因变量。{cmd:hetoprobit} 是 {help oprobit_zh} 的一种推广，它允许方差作为自变量的函数进行建模，并在总体中在不同的个体或组之间存在差异。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R hetoprobitQuickstart:快速入门}

        {mansection R hetoprobitRemarksandexamples:备注和示例}

        {mansection R hetoprobitMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:het(}{varlist} [{cmd:,} {opth offset:(varname:varname_o)}]{cmd:)}
指定方差函数中的自变量和可选的偏移变量。{opt het()} 是必需的。

{pmore}
{opt offset(varname_o)} 指定将偏移量 {it:varname_o} 包含在方差模型中，系数约束为 1。

{phang}
{opth offset(varname)}, {opt constraints(constraints)};
请参见 {manhelp estimation_options R:估计选项}。

{dlgtab:SE/稳健性}

包含帮助 vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}; 请参见 {manhelp estimation_options R:估计选项}。

{phang}
{opt waldhet} 指定进行 Wald 检验以确定 {cmd:lnsigma} = 0，而不是 LR 检验。

{phang}
{opt nocnsreport}; 请参见 {manhelp estimation_options R:估计选项}。

包含帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab :最大化}

{phang}
{it:maximize_options}: {opt dif:ficult}，
{opth tech:nique(maximize##algorithm_spec:算法规格)}，
{opt iter:ate(#)}， [{cmd:no}]{opt log}， {opt tr:ace}，
{opt grad:ient}， {opt showstep}，
{opt hess:ian}， {opt showtol:erance}，
{opt tol:erance(#)}， {opt ltol:erance(#)}，
{opt nrtol:erance(#)}， {opt nonrtol:erance}，和
{opt from(init_specs)}; 请参见 {manhelp Maximize R}。这些选项很少使用。

{pstd}
以下选项在 {opt hetoprobit} 中可用，但在对话框中未显示：

{phang}
{opt noheader} 抑制系数表上方的标题。

{phang}
{opt notable} 抑制系数表的显示。

{phang}
{opt collinear}，{opt coeflegend};
请参见 {manhelp estimation_options R:估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse eathealth15}{p_end}

{pstd}拟合异方差有序 probit 模型，并使用 {cmd:age} 和
{cmd:exercise} 建模方差 {p_end}
{phang2}{cmd:. hetoprobit health age bmi i.exercise, het(age i.exercise)}{p_end}

{pstd}拟合异方差有序 probit 模型，并请求稳健标准误{p_end}
{phang2}{cmd:. hetoprobit health age bmi i.exercise, het(age i.exercise) vce(robust)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:hetoprobit} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k_cat)}}类别数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}} 总体模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_aux)}} 辅助参数数量{p_end}
{synopt:{cmd:e(k_dv)}} 因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度（x beta 项）{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}对数似然，只包含切点的（异方差）模型{p_end}
{synopt:{cmd:e(ll_c)}}对数似然，比较（同方差）模型{p_end}
{synopt:{cmd:e(N_clust)}}簇数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(chi2_c)}}异方差检验的卡方{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(p_c)}}异方差检验的 p 值{p_end}
{synopt:{cmd:e(df_m_c)}}异方差检验的自由度{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:hetoprobit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}簇变量的名称{p_end}
{synopt:{cmd:e(offset1)}}有序 probit 方程的偏移量{p_end}
{synopt:{cmd:e(offset2)}}方差方程的偏移量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:LR}; 模型卡方检验的类型{p_end}
{synopt:{cmd:e(chi2_ct)}}{cmd:LR} 或 {cmd:Wald}; 对应于 {cmd:e(chi2_c)} 的异方差检验类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器执行最大化或最小化的判断{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(marginsdefault)}}默认 {cmd:predict()} 规范，用于 {cmd:margins}{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

{p2col 5 20 24 2:矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(cat)}}类别值{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{p2col 5 20 24 2:函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <hetoprobit.sthlp>}