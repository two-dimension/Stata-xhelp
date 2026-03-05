{smcl}
{* *! version 1.0.11  12dec2018}{...}
{viewerdialog zioprobit "dialog zioprobit"}{...}
{viewerdialog "svy: zioprobit" "dialog zioprobit, message(-svy-) name(svy_zioprobit)"}{...}
{vieweralsosee "[R] zioprobit" "mansection R zioprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] zioprobit postestimation" "help zioprobit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: zioprobit" "help bayes zioprobit"}{...}
{vieweralsosee "[R] oprobit" "help oprobit_zh"}{...}
{vieweralsosee "[R] probit" "help probit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{viewerjumpto "Syntax" "zioprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "zioprobit_zh##menu"}{...}
{viewerjumpto "Description" "zioprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "zioprobit_zh##linkspdf"}{...}
{viewerjumpto "Options" "zioprobit_zh##options"}{...}
{viewerjumpto "Example" "zioprobit_zh##example"}{...}
{viewerjumpto "Stored results" "zioprobit_zh##results"}
{help zioprobit:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[R] zioprobit} {hline 2}}零膨胀有序概率回归{p_end}
{p2col:}({mansection R zioprobit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:zioprobit}
{depvar}
[{indepvars}]
{ifin}
[{it:{help zioprobit##weight:权重}}]{cmd:,}{break}
{opt inf:late}{cmd:(}{varlist}[{cmd:,} {opt nocons:常数项} {opth off:set(varname)}]|{cmd:_cons)}
 [{it:选项}]

{synoptset 28 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{p2coldent :* {opt inf:late()}}决定过量零值的方程{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，其系数约束为 1{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、 {opt r:obust}、 {opt cl:uster} {it:clustvar}、 {opt opg}、 {opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt nocns:r:eport}}不显示约束{p_end}
{synopt :{it:{help zioprobit##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

{syntab :最大化}
{synopt :{it:{help zioprobit##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt inf:late}{cmd:(}{it:varlist}[{cmd:,} {opt nocons:常数项} {opt off:set(varname)}]|{cmd:_cons)}
是必需的。{p_end}
INCLUDE help fvvarlist2
{p 4 6 2}
{opt bayes}、{opt bootstrap}、{opt by}、{opt fp}、{opt jackknife}、 {opt rolling}、{opt statsby} 和 {opt svy} 是允许的；请参见 {help prefix_zh}。
有关更多详细信息，请参见 {manhelp bayes_zioprobit BAYES:bayes: zioprobit}.{p_end}
{p 4 6 2}权重无法与 {help bootstrap_zh} 前缀一起使用。{p_end}
{p 4 6 2}
{opt vce()} 和权重不允许与 {help svy_zh} 前缀一起使用。{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {opt fweight}、{opt iweight} 和 {opt pweight}；见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp zioprobit_postestimation R:zioprobit 后估计} 以获取估计后可用的特性。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 有序结果 > 零膨胀有序概率回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd: zioprobit} 适用于具有高比例零值的离散有序结果模型，这种现象称为零膨胀。此模型称为零膨胀有序概率（ZIOP）模型。在 ZIOP 模型的上下文中，零是实际的 0 值或最低结果类别。ZIOP 模型通过假设零值结果来自概率模型和有序概率模型，来考虑零膨胀，允许每个模型使用不同的协变量集。  


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R zioprobitQuickstart:快速入门}

        {mansection R zioprobitRemarksandexamples:备注和示例}

        {mansection R zioprobitMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt inflate}{cmd:(}{varlist}[{cmd:,} {opt noconstant} {opth offset(varname)}]|{cmd:_cons)}
指定决定过量零值的方程；该选项是必需的。从概念上讲，省略 {opt inflate()} 类似于拟合 {opt oprobit} 模型；请参见 {manhelp oprobit R}。

{pmore}
{opt inflate}{cmd:(}{it:varlist}[{cmd:,} {opt noconstant} {opt offset(varname)}]{cmd:)}
指定决定过量零值的方程中的变量。要在该方程中抑制常数项，请指定 {opt noconstant} 子选项。您可以选择性地包含该 {it:varlist} 的偏移量。

{pmore}
{cmd:inflate(_cons)} 指定决定过量零值的方程仅包含一个截距。要在两个方程中仅使用一个截距运行 {depvar} 的零膨胀模型，请输入 {opt zioprobit} {it:depvar}{cmd:,} {cmd:inflate(_cons)}。

{phang}
{opth offset(varname)},
{opt constraints(constraints)}；见 {helpb estimation options:[R] 估计选项}。

{dlgtab:SE/稳健性}

INCLUDE help vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt nocnsreport}；见 {helpb estimation options##nocnsreport:[R] 估计选项}。

INCLUDE help displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}、
{opth tech:nique(maximize##algorithm_spec:算法规格)}、
{opt iter:ate(#)}、 [{cmd:no}]{opt log}、 {opt tr:ace}、 
{opt grad:ient}、 {opt showstep}、
{opt hess:ian}、 
{opt showtol:erance}、 
{opt tol:erance(#)}、
{opt ltol:erance(#)}、 
{opt nrtol:erance(#)}、 
{opt nonrtol:erance}，以及 
{opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 将重置默认的 {it:vcetype} 为 {cmd:vce(opg)}。

{pstd}
以下选项适用于 {opt zioprobit} 但未显示在对话框中：

{phang}
{opt collinear}、{opt coeflegend}；见 {helpb estimation options:[R] 估计选项}。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse tobacco}{p_end}

{pstd}零膨胀有序概率回归{p_end}
{phang2}{cmd:. zioprobit tobacco education income i.female age, inflate(education income i.parent age i.female i.religion)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:zioprobit} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_zero)}}零值或最低类别观察的数量{p_end}
{synopt:{cmd:e(k_cat)}}类别数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:zioprobit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset1)}}偏移量{p_end}
{synopt:{cmd:e(offset2)}}用于 {cmd:inflate()} 的偏移量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是否执行
                     最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}由 {cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}由 {cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(marginsdefault)}}默认 {opt predict()} 规范用于 {cmd:margins}{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 定义为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 定义为 {cmd:asobserved}{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(cat)}}类别值{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <zioprobit.sthlp>}