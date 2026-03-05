{smcl}
{* *! version 1.0.5  12dec2018}{...}
{viewerdialog heckpoisson "dialog heckpoisson"}{...}
{viewerdialog "svy: heckpoisson" "dialog heckpoisson, message(-svy-) name(svy_heckpoisson)"}{...}
{vieweralsosee "[R] heckpoisson" "mansection R heckpoisson"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] heckpoisson postestimation" "help heckpoisson postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] etpoisson" "help etpoisson_zh"}{...}
{vieweralsosee "[R] heckman" "help heckman_zh"}{...}
{vieweralsosee "[R] heckoprobit" "help heckoprobit_zh"}{...}
{vieweralsosee "[R] heckprobit" "help heckprobit_zh"}{...}
{vieweralsosee "[R] poisson" "help poisson_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{viewerjumpto "Syntax" "heckpoisson_zh##syntax"}{...}
{viewerjumpto "Menu" "heckpoisson_zh##menu"}{...}
{viewerjumpto "Description" "heckpoisson_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "heckpoisson_zh##linkspdf"}{...}
{viewerjumpto "Options" "heckpoisson_zh##options"}{...}
{viewerjumpto "Examples" "heckpoisson_zh##examples"}{...}
{viewerjumpto "Stored results" "heckpoisson_zh##results"}
{help heckpoisson:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[R] heckpoisson} {hline 2}}具有样本选择的泊松回归{p_end}
{p2col:}({mansection R heckpoisson:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:heckpoisson}
{depvar} 
{indepvars}
{ifin}
[{it:{help heckpoisson##weight:权重}}]{cmd:,}
{cmdab:sel:ect(}[{it:{help depvar:depvar_s}} {cmd:=}]
               {it:{help indepvars:indepvars_s}}
[{cmd:,} {opt nocons:tant} {opth off:set(varname:varname_os)}]{cmd:)}
[{it:选项}]

{synoptset 28 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{p2coldent :* {opt sel:ect()}}指定选择方程：因变量和自变量；是否包含常数项和偏移变量{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包含 ln({it:varname_e})，系数约束为 1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包含 {it:varname_o}，系数约束为 1{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation_options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt opg}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值是 {cmd:level(95)}{p_end}
{synopt :{opt ir:r}}报告发生率比{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help heckpoisson##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

{syntab:积分}
{synopt :{opt intp:oints(#)}}设置积分（求积）点的数量；默认值是 {cmd:intpoints(25)}{p_end}

{syntab:最大化}
{synopt :{it:{help heckpoisson##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt select()} 是必需的。完整的规范是{break}
{cmdab:sel:ect(}[{it:depvar_s} {cmd:=}] {it:indepvars_s}
[{cmd:,} {opt nocons:tant} {opt off:set(varname_os)}]{cmd:)}.{p_end}
{p 4 6 2}{it:indepvars} 和 {it:indepvars_s} 可以包含因子变量；见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}{it:indepvars} 和 {it:indepvars_s} 可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{opt bootstrap}、{opt by}、{opt jackknife}、{opt rolling}、
{opt statsby} 和 {opt svy} 被允许；见 {help prefix_zh}.{p_end}
{p 4 6 2}权重不允许与 {help bootstrap_zh} 前缀一起使用。{p_end}
{p 4 6 2}{opt vce()} 和权重不允许与 {help svy_zh} 前缀一起使用。{p_end}
{marker weight}{...}
{p 4 6 2}{opt fweight}s、{opt iweight}s 和 {opt pweight}s 是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}{opt collinear} 和 {opt coeflegend} 不出现在对话框中。{p_end}
{p 4 6 2}请参见 {manhelp heckpoisson_postestimation R:heckpoisson postestimation}
以获取估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 样本选择模型 > 具有样本选择的泊松模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:heckpoisson} 拟合具有内生样本选择的泊松回归模型。这有时被称为选择的不可忽视性、不随机缺失或选择偏差。与标准的泊松模型不同，没有均匀分散的假设。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R heckpoissonQuickstart:快速开始}

        {mansection R heckpoissonRemarksandexamples:备注和示例}

        {mansection R heckpoissonMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:select(}[{it:{help depvar:depvar_s}} {cmd:=}] {it:{help indepvars:indepvars_s}}
[{cmd:,} {opt noconstant} {opth offset:(varname:varname_os)}]{cmd:)}
指定选择方程的变量和选项。它是指定样本选择模型的一个不可或缺的部分，且是必需的。

{pmore}
如果 {it:depvar_s} 被指定，它应被编码为 0 或 1，其中 0 表示未选中的观察值，1 表示选中的观察值。如果未指定 {it:depvar_s}，则被视为未缺失的 {it:depvar} 的观察值被假定为选中，而 {it:depvar} 缺失的观察值被假定为未选中。

{pmore}
{opt noconstant} 抑制选择常数项（截距）。

{pmore}
{opt offset(varname_os)} 指定选择偏移量 {it:varname_os} 被包含在模型中，且系数被约束为 1。

{phang}
{opt noconstant}、{opt exposure(varname_e)}、{opt offset(varname_o)}、
{opt constraints(constraints)}；见 {helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健性}

INCLUDE help vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}；见
     {helpb estimation options:[R] 估计选项}。

{phang}
{opt irr} 将估计系数转换为发生率比报告，即 e^{beta_i} 而不是 beta_i。标准误和置信区间也类似转换。此选项影响结果的显示方式，而不是它们的估计或存储方式。{opt irr} 可以在估计时或在重放之前估计的结果时指定。

{phang}
{opt nocnsreport}；见
     {helpb estimation options:[R] 估计选项}。

{marker display_options}{...}
INCLUDE help displayopts_list

{dlgtab:积分}

{phang}
{opt intpoints(#)} 指定用于求积的积分点数量。默认值是 {cmd:intpoints(25)}，这意味着使用 25 个求积点。允许的最大积分点数为 128。

{pmore}
积分点越多，log 似然的近似越准确。然而，计算时间随着使用的积分点数量增加而增加，并大致与使用的点数成正比。

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}、
{opth tech:nique(maximize##algorithm_spec:算法_spec)},
{opt iter:ate(#)}、
[{cmd:no}]{opt log}、
{opt tr:ace}、
{opt grad:ient}、
{opt showstep}、
{opt hess:ian}、
{opt showtol:erance}、
{opt tol:erance(#)}、
{opt ltol:erance(#)}、
{opt nrtol:erance(#)}、
{opt nonrtol:erance} 和
{opt from(init_specs)}；
见 {help maximize_zh:[R] 最大化}。这些选项很少使用。

{pstd}
以下选项可与 {opt heckpoisson} 一起使用，但未在对话框中显示：

{phang}
{opt collinear}、{opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse patent}{p_end}

{pstd}拟合具有内生样本选择的泊松模型{p_end}
{phang2}{cmd:. heckpoisson npatents expenditure i.tech, select(applied = expenditure size i.tech)}{p_end}

{pstd}重放结果，但显示系数的图例而不是系数的统计量{p_end}
{phang2}{cmd:. heckpoisson, coeflegend}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:heckpoisson} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_selected)}}选中观察数{p_end}
{synopt:{cmd:e(N_nonselected)}}未选中观察数{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}总体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}log 似然{p_end}
{synopt:{cmd:e(N_clust)}}群集数{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(chi2_c)}}比较的卡方，rho=0 测试{p_end}
{synopt:{cmd:e(n_quad)}}积分点数量{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(p_c)}}比较测试的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:heckpoisson}{p_end}
{synopt:{cmd:e(cmdline)}}命令按输入显示{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(title2)}}估计输出中的副标题{p_end}
{synopt:{cmd:e(clustvar)}}分组变量名称{p_end}
{synopt:{cmd:e(offset1)}}回归方程的偏移量{p_end}
{synopt:{cmd:e(offset2)}}选择方程的偏移量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方测试的类型{p_end}
{synopt:{cmd:e(chi2_ct)}}{cmd:Wald}；比较卡方测试的类型{p_end}
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
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}{cmd:fvset} 因子变量作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}{cmd:fvset} 因子变量作为 {cmd:asobserved}{p_end}

{p2col 5 20 24 2:矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}} 基于模型的方差{p_end}

{p2col 5 20 24 2:函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <heckpoisson.sthlp>}