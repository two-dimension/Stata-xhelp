
{smcl}
{* *! version 1.0.7  12feb2015}{...}
{cmd:help dprobit} {right:对话框:  {dialog dprobit}{space 15}}
{right:另见:  {help dprobit postestimation}}
{help dprobit:English Version}
{hline}
{right:{help prdocumented_zh:之前记录过的}{space 1}}
{hline}
{pstd}
{cmd:dprobit} 继续有效，但自 Stata 11 起不再是 Stata 的官方部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再可用。

{pstd}
有关 {cmd:dprobit} 的推荐替代方案，请参见 {help margins_zh}。


{title:标题}

{p2colset 5 20 22 2}{...}
{p2col :{hi:[R] dprobit} {hline 2}}Probit 回归，报告边际效应{p_end}
{p2colreset}{...}


{title:语法}

{p 8 16 2}
{opt dprobit} [{depvar} {indepvars} {ifin} {weight}] 
[{cmd:,} {it:options}] 

{synoptset 23 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在模型中，系数约束为 1{p_end}
{synopt :{opt at(matname)}}评估边际效应的点{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}
{synopt :{opt classic}}为虚拟变量计算均值效应，类似于连续变量{p_end}

{syntab :SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt r:obust}，或 {opt cl:uster} {it:clustvar}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}

{syntab :最大化}
{synopt :{it:{help dprobit##dprobit_maximize:maximize_options}}}控制最大化过程；很少使用{p_end}

{p2coldent :+ {opt nocoe:f}}不显示系数表；很少使用{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}+ {opt nocoef} 在对话框中不出现。{p_end}
包括帮助 fvvarlist
{p 4 6 2}{cmd:by}、{cmd:rolling} 和 {cmd:statsby} 是允许的；请参见 {help prefix_zh}.{p_end}
{p 4 6 2}{opt fweight} 和 {opt pweight} 是允许的；请参见 {help weight_zh}.{p_end}
{p 4 6 2}
有关估计后可用的特征，请参见 {help dprobit_postestimation_zh:dprobit postestimation}。{p_end}


{title:菜单}

{phang2}
{bf:统计 > 二元结果 > Probit 回归（报告概率变化）}


{title:描述}

{pstd}
{cmd:dprobit} 拟合最大似然 probit 模型，是 {cmd:probit} 的替代品。{cmd:dprobit} 不报告系数，而是报告边际效应，即每个独立连续变量进行微小变动时的概率变化，默认情况下，报告虚拟变量的概率离散变化。可以在 {cmd:dprobit} 估计后输入 {cmd:probit}，以查看系数形式的模型。

{pstd}
如果在分组数据上进行估计，请参见 {helpb bprobit}。

{pstd}
在 {cmd:probit}、{cmd:logit} 或 {cmd:logistic} 之后可能会运行多个辅助命令；有关这些命令的描述，请参见 {manhelp logistic_postestimation R:logistic postestimation}。

{pstd}
有关相关估计命令的列表，请参见 {help logistic estimation commands}。


{title:选项}

{dlgtab:模型}

{phang}
{opth offset(varname)}；见 {helpb estimation options##offset():[R] 估计选项}。

{phang}
{opt at(matname)} 指定评估边际效应的点。默认情况下，在独立变量的均值处进行评估。如果有 k 个独立变量，{it:matname} 可以是 1 x k 或 {bind:1 x (k + 1)}；即，它可以选择性地包含最终元素 1，以反映常数。{opt at()} 可以在模型拟合时指定，也可以在结果重新显示时指定。

{phang}
{opt asis}；见上面的 {help probit##asis:Probit 选项}。

{phang}
{opt classic} 请求始终使用公式 f(xb)*b_i 计算均值效应。如果未指定 {opt classic}，则对于连续变量使用 f(xb)*b_i，但对于虚拟变量的均值效应则计算为 F(x_1*b) - F(x_0*b)。这里 x_1=x，但元素 i 设置为 1，x_0=x，但元素 i 设置为 0，而 x 是独立变量的均值或由 {opt at()} 指定的向量。可以在估计时或结果重新显示时指定 {opt classic}。未使用 {opt classic} 计算的结果可以使用 {opt classic} 重新显示，反之亦然。

{dlgtab:SE/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括由渐进理论推导出的类型，能够对某些类型的误设进行稳健处理，并允许组内相关；见 {help vce_option_zh:[R] {it:vce_option}}。

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

{marker dprobit_maximize}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}: {opt iter:ate(#)}, [{cmdab:no:}]{opt lo:g}, 
{opt tr:ace}, {opt tol:erance(#)}, {opt ltol:erance(#)}；见 {manhelp maximize R}。这些选项很少使用。

{phang}
以下选项在 {cmd:dprobit} 中可用，但未显示在对话框中：

{phang}
{opt nocoef} 指定不显示系数表。此选项有时由程序员使用，但对交互式使用没有意义。


{title:示例}

    设置
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. generate goodplus = rep78 >= 4 if rep78 < .}{p_end}

{pstd}Probit 回归，报告边际效应{p_end}
{phang2}{cmd:. dprobit foreign mpg goodplus}{p_end}


{title:保存的结果}

{pstd}
{cmd:dprobit} 将以下内容保存在 {cmd:e()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_cds)}}完全确定的成功数{p_end}
{synopt:{cmd:e(N_cdf)}}完全确定的失败数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(r2_p)}}伪 R 平方{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}集群数{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(pbar)}}数据显示的成功比例{p_end}
{synopt:{cmd:e(xbar)}}平均 probit 分数{p_end}
{synopt:{cmd:e(offbar)}}平均偏移量{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:dprobit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(at)}}预测概率（在 x 处）{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(dummy)}}空格分隔的 0 和 1 的字符串；0 表示相应的独立变量不是虚拟变量；1 表示它是{p_end}
{synopt:{cmd:e(crittype)}}优化标准{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(dfdx)}}边际效应{p_end}
{synopt:{cmd:e(se_dfdx)}}边际效应的标准误{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}


{title:另见}

{psee}
手册:  {help prdocumented_zh:之前记录过的}

{psee}
{space 2}帮助:  {manhelp dprobit_postestimation R:dprobit postestimation};{break}
{manhelp asmprobit R},
{manhelp biprobit R},
{manhelp brier R},
{manhelp glm R},
{manhelp hetprob R},
{manhelp ivprobit R},
{manhelp logistic R},
{manhelp logit R},
{manhelp mprobit R},
{manhelp roc R},
{manhelp scobit R},
{manhelp svy_estimation SVY:svy estimation},
{manhelp xtprobit XT}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dprobit.sthlp>}