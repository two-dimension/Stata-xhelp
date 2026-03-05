{smcl}
{* *! version 1.3.13  22mar2019}{...}
{viewerdialog ivtobit "dialog ivtobit"}{...}
{viewerdialog "svy: ivtobit" "dialog ivtobit, message(-svy-) name(svy_ivtobit)"}{...}
{vieweralsosee "[R] ivtobit" "mansection R ivtobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ivtobit postestimation" "help ivtobit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ERM] eintreg" "help eintreg_zh"}{...}
{vieweralsosee "[R] gmm" "help gmm_zh"}{...}
{vieweralsosee "[R] ivprobit" "help ivprobit_zh"}{...}
{vieweralsosee "[R] ivregress" "help ivregress_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[R] tobit" "help tobit_zh"}{...}
{vieweralsosee "[XT] xtintreg" "help xtintreg_zh"}{...}
{vieweralsosee "[XT] xttobit" "help xttobit_zh"}{...}
{viewerjumpto "Syntax" "ivtobit_zh##syntax"}{...}
{viewerjumpto "Menu" "ivtobit_zh##menu"}{...}
{viewerjumpto "Description" "ivtobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "ivtobit_zh##linkspdf"}{...}
{viewerjumpto "Options for ML estimator" "ivtobit_zh##options_ml"}{...}
{viewerjumpto "Options for two-step estimator" "ivtobit_zh##options_twostep"}{...}
{viewerjumpto "Examples" "ivtobit_zh##examples"}{...}
{viewerjumpto "Stored results" "ivtobit_zh##results"}{...}
{viewerjumpto "Reference" "ivtobit_zh##reference"}
{help ivtobit:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] ivtobit} {hline 2}}使用包含连续内生自变量的Tobit模型{p_end}
{p2col:}({mansection R ivtobit:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}最大似然估计器

{p 8 17 2}
{cmd:ivtobit} {depvar} [{it:{help varlist_zh:varlist1}}] 
{cmd:(}{it:{help varlist_zh:varlist2}} {cmd:=}
       {it:{help varlist_zh:varlist_iv}}{cmd:)} {ifin}
       [{it:{help ivtobit##weight:weight}}]
       {cmd:,}
{cmd:ll}[{cmd:(}{it:#}{cmd:)}] {cmd:ul}[{cmd:(}{it:#}{cmd:)}]
[{it:{help ivtobit##mle_options:mle_options}}]


{phang}两步估计器

{p 8 17 2}
{cmd:ivtobit} {depvar} [{it:{help varlist_zh:varlist1}}] 
{cmd:(}{it:{help varlist_zh:varlist2}} {cmd:=}
       {it:{help varlist_zh:varlist_iv}}{cmd:)} {ifin} 
       [{it:{help ivtobit##weight:weight}}]{cmd:,}
{opt two:step} {cmd:ll}[{cmd:(}{it:#}{cmd:)}] {cmd:ul}[{cmd:(}{it:#}{cmd:)}] 
[{it:{help ivtobit##tse_options:tse_options}}]


{phang}
{it:varlist1} 是外生变量的列表.{p_end}

{phang}
{it:varlist2} 是内生变量的列表.{p_end}

{phang}
{it:varlist_iv} 是与 {it:varlist1} 一起用作 {it:varlist2} 的工具的外生变量列表。


{synoptset 26 tabbed}{...}
{marker mle_options}{...}
{synopthdr :mle_options}
{synoptline}
{syntab :模型}
{p2coldent :* {cmd:ll}[{cmd:(}{it:#}{cmd:)}]}左截断限{p_end}
{p2coldent :* {cmd:ul}[{cmd:(}{it:#}{cmd:)}]}右截断限{p_end}
{synopt :{opt m:le}}使用条件最大似然估计器；默认情况下{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}, 
{opt r:obust}, {opt cl:uster} {it:clustvar}, {cmd:opg}, {opt boot:strap}, 或
{opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为
{cmd:level(95)}{p_end}
{synopt :{opt first}}报告第一阶段回归{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help ivtobit##ml_display_options:display_options}}}控制
包含帮助短描述-displayoptall

{syntab :最大化}
{synopt :{it:{help ivtobit##maximize_options:maximize_options}}}控制最大化过程{p_end}

包含帮助短描述-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* 你必须指定至少一个 
{opt ll}[{cmd:(}{it:#}{cmd:)}] 和 {opt ul}[{cmd:(}{it:#}{cmd:)}].{p_end}

{synoptset 26 tabbed}{...}
{marker tse_options}{...}
{synopthdr :tse_options}
{synoptline}
{syntab :模型}
{p2coldent :* {opt two:step}}使用Newey的两步估计器；默认为 {opt mle}{p_end}
{p2coldent :* {opt ll}[{cmd:(}{it:#}{cmd:)}]}左截断限{p_end}
{p2coldent :* {opt ul}[{cmd:(}{it:#}{cmd:)}]}右截断限{p_end}

{syntab :SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt twostep},
        {opt boot:strap}, 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认为
{cmd:level(95)}{p_end}
{synopt :{opt first}}报告第一阶段回归{p_end}
{synopt :{it:{help ivtobit##ts_display_options:display_options}}}控制
包含帮助短描述-displayoptall

包含帮助短描述-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt twostep} 是必需的。 你必须指定至少一个 
{opt ll}[{cmd:(}{it:#}{cmd:)}] 和 {opt ul}[{cmd:(}{it:#}{cmd:)}].
{p_end}

{p 4 6 2}{it:varlist1} 和 {it:varlist_iv} 可以
包含因子变量；参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}{it:depvar}, {it:varlist1}, {it:varlist2}, 和 {it:varlist_iv} 可以
包含时间序列运算符；参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bootstrap}, {cmd:by}, {cmd:jackknife}, {cmd:rolling},
{cmd:statsby}, 和 {cmd:svy} 是允许的；参见 {help prefix_zh}.
{cmd:fp} 可以与最大似然估计器一起使用.{p_end}
{p 4 6 2}与 {help bootstrap_zh} 前缀不允许使用权重.{p_end}
{p 4 6 2}
{opt vce()},
{opt first},
{opt twostep},
和权重不允许与 {help svy_zh} 前缀一起使用.
{p_end}
{marker weight}{...}
{p 4 6 2}{cmd:fweight}s, {cmd:iweight}s, 和 {cmd:pweight}s
被允许与最大似然估计器。{cmd:fweight}s 被
允许与Newey的两步估计器。参见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 在对话框中不显示.{p_end}
{p 4 6 2}
参见 {manhelp ivtobit_postestimation R:ivtobit postestimation} 以获取
估计后的可用特性。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 内生自变量 > 带内生自变量的Tobit模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:ivtobit} 拟合Tobit模型，其中一个或多个自变量是
内生决定的。默认情况下，{opt ivtobit} 使用最大似然
估计，但可以请求使用Newey的（{help ivtobit##N1987:1987}）最小卡方
（两步）估计器。这两种估计器都假设内生自变量是连续的，
因此不适合与离散内生自变量一起使用。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R ivtobitQuickstart:快速入门}

        {mansection R ivtobitRemarksandexamples:备注和示例}

        {mansection R ivtobitMethodsandformulas:方法与公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options_ml}{...}
{title:最大似然估计器的选项}

{dlgtab:模型}

{phang} 
{cmd:ll}[{cmd:(}{it:#}{cmd:)}] 和 {cmd:ul}[{cmd:(}{it:#}{cmd:)}]
表示截断的下限和上限。你可以指定一个或两个。
观察到 {depvar} {ul:<} {cmd:ll()} 的值为左截断；
观察到 {it:depvar} {ul:>} {opt ul()} 的值为右截断；其他观察值未截断。
你并不需要完全指定截断值。只需输入 {opt ll}, {opt ul}，或两者均可。
当你不指定截断值时，{opt ivtobit} 假设
下限为数据中观察到的最小值（如果指定了{opt ll}），
上限为最大值（如果指定了{opt ul}）。

{phang}
{opt mle} 请求使用条件最大似然估计器。
这是默认选项。

{phang}
{opt constraints(constraints)}; 参见
{helpb estimation options##constraints():[R] 估计选项}。

{dlgtab:SE/稳健性}

包含帮助 vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}; 参见 
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt first} 请求显示表明内生变量与工具之间关系的
简化方程的参数。对于两步估计器，{opt first} 显示第一阶段回归。
对于最大似然估计器，这些参数与Tobit方程的参数共同估计。
默认情况下不显示这些参数估计。

{phang}
{opt nocnsreport}; 参见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

{marker ml_display_options}{...}
包含帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}: {opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:算法规格)},
{opt iter:ate(#)}, [{cmd:no}]{opt log}, {opt tr:ace},
{opt grad:ient}, {opt showstep}, {opt hess:ian}, {opt showtol:erance},
{opt tol:erance(#)}, {opt ltol:erance(#)},
{opt nrtol:erance(#)}, {opt nonrtol:erance}, 和
{opt from(init_specs)}; 参见 {help maximize_zh:[R] 最大化}。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会重置默认值
{it:vcetype} 为 {cmd:vce(opg)}。

{pstd}
以下选项在 {opt ivtobit} 中可用，但在对话框中未显示：

{phang}
{opt coeflegend}; 参见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker options_twostep}{...}
{title:两步估计器的选项}

{dlgtab:模型}

{phang}
{cmd:twostep} 是必需的，并请求使用Newey的
({help ivtobit##N1987:1987})
有效的两步估计器来获得系数估计。

{phang} 
{cmd:ll}[{cmd:(}{it:#}{cmd:)}] 和 {cmd:ul}[{cmd:(}{it:#}{cmd:)}]
表示截断的下限和上限。你可以指定一个或两个。
观察到 {depvar} {ul:<} {cmd:ll()} 的值为左截断；
观察到 {it:depvar} {ul:>} {opt ul()} 的值为右截断；其他观察值未截断。
你并不需要完全指定截断值。只需输入 {opt ll}, {opt ul}，或两者均可。
当你不指定截断值时，{opt ivtobit} 假设
下限为数据中观察到的最小值（如果指定了{opt ll}），
上限为最大值（如果指定了{opt ul}）。

{dlgtab:SE/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误差类型，包括基于渐进理论的类型（{cmd:twostep}）
和使用引导法或删失法的方法（{cmd:bootstrap}, {cmd:jackknife}）；参见 {help vce_option_zh:[R] {it:vce_option}}。

{dlgtab:报告}

{phang}
{opt level(#)}; 参见 
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt first} 请求显示表明内生变量与工具之间关系的
简化方程的参数。对于两步估计器，{opt first} 显示第一阶段回归。
对于最大似然估计器，这些参数与Tobit方程的参数共同估计。
默认情况下不显示这些参数估计。

{marker ts_display_options}{...}
包含帮助 displayopts_list

{pstd}
以下选项在 {opt ivtobit} 中可用，但在对话框中未显示：

{phang}
{opt coeflegend}; 参见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse laborsup}{p_end}

{phang}获得完整的最大似然估计{p_end}
{phang2}{cmd:. ivtobit fem_inc fem_educ kids (other_inc = male_educ), ll}{p_end}
{phang2}{cmd:. ivtobit fem_inc fem_educ kids (other_inc = male_educ), ll(12)}

{phang}获得两步估计{p_end}
{phang2}{cmd:. ivtobit fem_inc fem_educ kids (other_inc = male_educ), ll}
           {cmd:twostep}{p_end}
{phang2}{cmd:. ivtobit fem_inc fem_educ kids (other_inc = male_educ), ll(12)}
           {cmd:twostep}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:ivtobit, mle} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_unc)}}未截断观察数{p_end}
{synopt:{cmd:e(N_lc)}}左截断观测值数{p_end}
{synopt:{cmd:e(N_rc)}}右截断观测值数{p_end}
{synopt:{cmd:e(llopt)}}{it:depvar}的最小值或 {cmd:ll()} 的内容{p_end}
{synopt:{cmd:e(ulopt)}}{it:depvar}的最大值或 {cmd:ul()} 的内容{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整个模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}} 对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数{p_end}
{synopt:{cmd:e(endog_ct)}}内生自变量数量{p_end}
{synopt:{cmd:e(p)}}模型Wald p值{p_end}
{synopt:{cmd:e(p_exog)}}外生性检验Wald p值{p_end}
{synopt:{cmd:e(chi2)}}模型Wald卡方值{p_end}
{synopt:{cmd:e(chi2_exog)}}外生性检验的Wald卡方{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛, 否则为 {cmd:0}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:ivtobit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(instd)}}工具化变量{p_end}
{synopt:{cmd:e(insts)}}工具{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的{it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(method)}}{cmd:ml}{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器是执行
                         最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml}方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(footnote)}}用于实现脚注显示的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsprop)}}信号到 {cmd:margins} 命令{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多20次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(Sigma)}}Sigma的估计{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}


{pstd}
{cmd:ivtobit, twostep} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_unc)}}未截断观察数{p_end}
{synopt:{cmd:e(N_lc)}}左截断观测值数{p_end}
{synopt:{cmd:e(N_rc)}}右截断观测值数{p_end}
{synopt:{cmd:e(llopt)}}{cmd:ll()} 的内容{p_end}
{synopt:{cmd:e(ulopt)}}{cmd:ul()} 的内容{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(df_exog)}}外生性检验卡方的自由度{p_end}
{synopt:{cmd:e(p)}}模型Wald p值{p_end}
{synopt:{cmd:e(p_exog)}}外生性检验Wald p值{p_end}
{synopt:{cmd:e(chi2)}}模型Wald卡方值{p_end}
{synopt:{cmd:e(chi2_exog)}}外生性检验的Wald卡方{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:ivtobit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(instd)}}工具化变量{p_end}
{synopt:{cmd:e(insts)}}工具{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的{it:vcetype}{p_end}
{synopt:{cmd:e(method)}}{cmd:twostep}{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(footnote)}}用于实现脚注显示的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsprop)}}信号到 {cmd:margins} 命令{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考}

{marker N1987}{...}
{phang}
Newey, W. K. 1987. 带内生解释变量的有限依赖变量模型的有效估计。{it:经济计量学杂志} 36:
231-250.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ivtobit.sthlp>}