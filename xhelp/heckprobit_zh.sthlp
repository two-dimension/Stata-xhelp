{smcl}
{* *! version 1.1.12  12dec2018}{...}
{viewerdialog heckprobit "dialog heckprobit"}{...}
{viewerdialog "svy: heckprobit" "dialog heckprobit, message(-svy-) name(svy_heckprobit)"}{...}
{vieweralsosee "[R] heckprobit" "mansection R heckprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] heckprobit postestimation" "help heckprobit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: heckprobit" "help bayes heckprobit"}{...}
{vieweralsosee "[ERM] eprobit" "help eprobit_zh"}{...}
{vieweralsosee "[TE] etregress" "help etregress_zh"}{...}
{vieweralsosee "[R] heckman" "help heckman_zh"}{...}
{vieweralsosee "[R] heckoprobit" "help heckoprobit_zh"}{...}
{vieweralsosee "[R] heckpoisson" "help heckpoisson_zh"}{...}
{vieweralsosee "[R] probit" "help probit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{viewerjumpto "语法" "heckprobit_zh##syntax"}{...}
{viewerjumpto "菜单" "heckprobit_zh##menu"}{...}
{viewerjumpto "描述" "heckprobit_zh##description"}{...}
{viewerjumpto "PDF文档链接" "heckprobit_zh##linkspdf"}{...}
{viewerjumpto "选项" "heckprobit_zh##options"}{...}
{viewerjumpto "示例" "heckprobit_zh##examples"}{...}
{viewerjumpto "存储结果" "heckprobit_zh##results"}
{help heckprobit:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[R] heckprobit} {hline 2}}带样本选择的Probit模型{p_end}
{p2col:}({mansection R heckprobit:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:heckprobit} {depvar} {indepvars} {ifin}
[{it:{help heckprobit##weight:权重}}]
{cmd:,}
{opt sel:ect}{cmd:(}[{it:{help depvar:depvar_s}} {cmd:=}]
                     {it:{help varlist_zh:varlist_s}}
[{cmd:,} {opt nocons:tant} {opth off:set(varname:varname_o)}]{cmd:)}
[{it:选项}]

{synoptset 28 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{p2coldent :* {opt sel:ect()}}指定选择方程：因变量和自变量；是否有常数项和偏移量变量{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth off:set(varname)}}在模型中包括 {it:varname}，系数约束为1{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype}可以是 {opt oim}，
{opt r:obust}， {opt cl:uster} {it:clustvar}，{cmd:opg}， {opt boot:strap}，或者
{opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认为 {cmd:level(95)}{p_end}
{synopt :{opt fir:st}}报告第一步的probit估计{p_end}
{synopt :{opt lrmodel}}执行似然比模型检验，而不是默认的Wald检验{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help heckprobit##display_options:display_options}}}控制
包含帮助短描述-显示选项

{syntab :最大化}
{synopt :{it:{help heckprobit##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
包含帮助短描述-系数图例
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt select()} 是必需的。完整的规范是{break}
{opt sel:ect}{cmd:(}[{it:depvar_s} {cmd:=}] {it:varlist_s}
[{cmd:,} {opt nocons:tant} {opt off:set(varname_o)}]{cmd:)}.
{p_end}
{p 4 6 2}{it:indepvars} 和 {it:varlist_s} 可以包含因子变量；见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}{it:depvar}、{it:indepvars}、{it:depvar_s} 和 {it:varlist_s} 可能
包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bayes}、{cmd:bootstrap}、{cmd:by}、{cmd:fp}、{cmd:jackknife}，
{cmd:rolling}、{cmd:statsby}，和 {cmd:svy} 都是允许的；见 {help prefix_zh}。
更多详细信息，请参见 {manhelp bayes_heckprobit BAYES:bayes: heckprobit}.{p_end}
{p 4 6 2}权重不允许与 {help bootstrap_zh} 前缀一起使用。{p_end}
{p 4 6 2}
{opt vce()},
{opt first},
{opt lrmodel} 和权重不允许与 {help svy_zh} 前缀一起使用。
{p_end}
{marker weight}{...}
{p 4 6 2}{opt pweight}、{opt fweight} 和 {opt iweight} 都是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}见 {manhelp heckprobit_postestimation R:heckprobit 后估计} 以获取
估计后的可用功能.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 样本选择模型 > 带样本选择的Probit模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:heckprobit} 适合带样本选择的最大似然probit模型。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R heckprobitQuickstart:快速开始}

        {mansection R heckprobitRemarksandexamples:备注和示例}

        {mansection R heckprobitMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在该帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:select(}[{it:{help depvar:depvar_s}} {cmd:=}] {it:{help varlist_zh:varlist_s}}
[{cmd:,} {opt noconstant} {opth offset:(varname:varname_o)}]{cmd:)}
指定选择方程的变量和选项。这是指定选择模型的重要组成部分，且是必需的。选择方程应包含至少一个变量，该变量不在结果方程中。

{pmore}
如果 {it:depvar_s} 被指定，应该编码为0或1，0表示未选择的观测值，1表示已选择的观测值。
如果 {it:depvar_s} 未被指定，假定 {it:depvar} 非缺失的观测值为已选择，而缺失的观测值为未选择。

{pmore}
{cmd:noconstant} 抑制选择常数项（截距）。

{pmore}
{opt offset(varname_o)} 指定选择偏移量 {it:varname_o} 被包含在模型中，系数约束为1。

{phang}
{opt noconstant}、{opth offset(varname)}、{opt constraints(constraints)}；
见 {helpb estimation options:[R] 估计选项}。

{dlgtab:SE/稳健性}

包含帮助 vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}；见 
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt first} 指定选择方程的第一步probit估计在估计前显示。

{phang}
{cmd:lrmodel}、{opt nocnsreport}；见
     {helpb estimation options:[R] 估计选项}。

{marker display_options}{...}
包含帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：{opt dif:ficult}，
{opth tech:nique(maximize##algorithm_spec:算法规范)}，
{opt iter:ate(#)}， [{cmd:no}]{opt log}， {opt tr:ace}，
{opt grad:ient}， {opt showstep}，
{opt hess:ian}， {opt showtol:erance}，
{opt tol:erance(#)}， {opt ltol:erance(#)}，
{opt nrtol:erance(#)}， {opt nonrtol:erance}，和
{opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会将默认的
{it:vcetype} 重置为 {cmd:vce(opg)}。

{pstd}
以下选项与 {opt heckprobit} 一起可用，但未在对话框中显示：

{phang}
{opt collinear}、{opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}.


{marker examples}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse school}{p_end}

{pstd}拟合带样本选择的probit模型{p_end}
{phang2}{cmd:. heckprobit private years logptax, sel(vote=years loginc logptax)}
{p_end}

{pstd}重放结果，但显示系数的图例而不是系数的统计信息{p_end}
{phang2}{cmd:. heckprobit, coeflegend}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:heckprobit} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察的数量{p_end}
{synopt:{cmd:e(N_selected)}}已选择观察的数量{p_end}
{synopt:{cmd:e(N_nonselected)}}未选择观察的数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数的数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(ll_c)}}比较模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(chi2_c)}}比较检验的卡方{p_end}
{synopt:{cmd:e(p)}}模型检验的p值{p_end}
{synopt:{cmd:e(p_c)}}比较检验的p值{p_end}
{synopt:{cmd:e(rho)}}rho{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(rank0)}}仅常数模型的 {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，则为 {cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:heckprobit}{p_end}
{synopt:{cmd:e(cmdline)}}命令如所输入{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(offset1)}}回归方程的偏移量{p_end}
{synopt:{cmd:e(offset2)}}选择方程的偏移量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型的卡方检验类型
{p_end}
{synopt:{cmd:e(chi2_ct)}}比较卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是否执行
                         最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多20次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}模型基础的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <heckprobit.sthlp>}