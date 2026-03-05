{smcl}
{* *! version 1.2.6  12dec2018}{...}
{viewerdialog scobit "dialog scobit"}{...}
{viewerdialog "svy: scobit" "dialog scobit, message(-svy-) name(svy_scobit)"}{...}
{vieweralsosee "[R] scobit" "mansection R scobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] scobit postestimation" "help scobit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] cloglog" "help cloglog_zh"}{...}
{vieweralsosee "[R] glm" "help glm_zh"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "scobit_zh##syntax"}{...}
{viewerjumpto "Menu" "scobit_zh##menu"}{...}
{viewerjumpto "Description" "scobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "scobit_zh##linkspdf"}{...}
{viewerjumpto "Options" "scobit_zh##options"}{...}
{viewerjumpto "Examples" "scobit_zh##examples"}{...}
{viewerjumpto "Stored results" "scobit_zh##results"}
{help scobit:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] scobit} {hline 2}}偏斜逻辑回归{p_end}
{p2col:}({mansection R scobit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:scobit}
{depvar}
[{indepvars}]
{ifin}
[{it:{help scobit##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt:{opt nocons:常量项}}抑制常量项{p_end}
{synopt:{opth off:设置(varname)}}将 {it:varname} 包含在模型中，并将系数约束为 1{p_end}
{synopt:{opt asis}}保留完美预测变量{p_end}
{synopt:{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt opg}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt:{opt or}}报告赔率比{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help scobit##display_options:显示选项}}}控制
包括帮助短描述-显示选项

{syntab:最大化}
{synopt:{it:{help scobit##maximize_options:最大化选项}}}控制最大化过程{p_end}

{synopt:{opt col:linear}}保留共线性变量{p_end}
包括帮助 fvvarlist
{p 4 6 2}
{cmd:bootstrap}、{cmd:by}、{cmd:fp}、{cmd:jackknife}、{cmd:nestreg}、{cmd:rolling}、{cmd:statsby}、{cmd:stepwise} 和 {cmd:svy} 是允许的；见 {help prefix_zh}.{p_end}
{p 4 6 2}权重与 {help bootstrap_zh} 前缀不允许同时使用。{p_end}
{p 4 6 2}
{opt vce()} 和权重与 {help svy_zh} 前缀不允许同时使用。{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}、{opt iweight} 和 {opt pweight} 是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会显示在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp scobit_postestimation R:scobit 后处理} 以获取估计后可用的特性。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 二元结果 > 偏斜逻辑回归}


{marker description}{...}
{title:描述}

{pstd}
{opt scobit} 拟合最大似然偏斜逻辑模型。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R scobitQuickstart:快速入门}

        {mansection R scobitRemarksandexamples:备注和示例}

        {mansection R scobitMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}、{opth offset(varname)}、{opt constraint(constraints)}；见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt asis} 强制保留完美预测变量及其相关的完美预测的观察值，并可能在最大化过程中产生不稳定性；见 {manhelp probit R}。

{dlgtab:标准误/稳健性}

包括帮助 vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt or} 报告变换为赔率比的估计系数，即 exp(b) 而不是 b。标准误和置信区间同样被变换。这个选项影响结果的显示方式，而不是估计方式。{opt or} 可以在估计时或重新查看之前估计的结果时指定。

{phang}
{opt nocnsreport}；见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

包括帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:最大化选项}：
{opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:算法规格)}、{opt iter:ate(#)}、
[{cmd:no}]{opt log}、{opt tr:ace}、{opt grad:ient}、{opt showstep}、{opt hess:ian}、
{opt showtol:erance}、{opt tol:erance(#)}、{opt ltol:erance(#)}、{opt nrtol:erance(#)}、
{opt nonrtol:erance(#)}，及 {opt from(init_specs)}；
见 {help maximize_zh:[R] 最大化}。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会将默认的 {it:vcetype} 重置为 {cmd:vce(opg)}。

{pstd}
{opt scobit} 提供以下选项，但在对话框中不显示：

{phang}
{opt collinear}、{opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}拟合偏斜逻辑回归模型{p_end}
{phang2}{cmd:. scobit foreign mpg}{p_end}

{pstd}同上，但指定稳健标准误{p_end}
{phang2}{cmd:. scobit foreign mpg, vce(robust)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:scobit} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)} 中方程的数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数的数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_c)}}对数似然，比较模型{p_end}
{synopt:{cmd:e(N_f)}}失败次数（零结果）{p_end}
{synopt:{cmd:e(N_s)}}成功次数（非零结果）{p_end}
{synopt:{cmd:e(alpha)}}α{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(chi2_c)}}比较检验的卡方{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:scobit}{p_end}
{synopt:{cmd:e(cmdline)}}命令按照输入的方式{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2_ct)}}{cmd:Wald} 或 {cmd:LR}；对应于 {cmd:e(chi2_c)} 的模型卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是进行最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(footnote)}}用于实现脚注显示的程序{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}模型基方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scobit.sthlp>}