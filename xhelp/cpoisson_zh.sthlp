{smcl}
{* *! version 1.0.8  12dec2018}{...}
{viewerdialog cpoisson "dialog cpoisson"}{...}
{viewerdialog "svy: cpoisson" "dialog cpoisson, message(-svy-) name(svy_cpoisson)"}{...}
{vieweralsosee "[R] cpoisson" "mansection R cpoisson"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] cpoisson postestimation" "help cpoisson postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] nbreg" "help nbreg_zh"}{...}
{vieweralsosee "[R] poisson" "help poisson_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[R] tnbreg" "help tnbreg_zh"}{...}
{vieweralsosee "[R] tpoisson" "help tpoisson_zh"}{...}
{vieweralsosee "[XT] xtpoisson" "help xtpoisson_zh"}{...}
{vieweralsosee "[R] zinb" "help zinb_zh"}{...}
{vieweralsosee "[R] zip" "help zip_zh"}{...}
{viewerjumpto "Syntax" "cpoisson_zh##syntax"}{...}
{viewerjumpto "Menu" "cpoisson_zh##menu"}{...}
{viewerjumpto "Description" "cpoisson_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "cpoisson_zh##linkspdf"}{...}
{viewerjumpto "Options" "cpoisson_zh##options"}{...}
{viewerjumpto "Example" "cpoisson_zh##example"}{...}
{viewerjumpto "Stored results" "cpoisson_zh##results"}
{help cpoisson:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[R] cpoisson} {hline 2}}左截断泊松回归{p_end}
{p2col:}({mansection R cpoisson:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:cpoisson} {depvar} [{indepvars}] {ifin}
[{it:{help cpoisson##weight:权重}}]
[{cmd:,}
{it:选项}] 

{synoptset 28 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:不常数}}抑制常数项{p_end}
{synopt :{opt ll}[{cmd:(}{varname}|{it:#}{cmd:)}]}左截断变量或限制{p_end}
{synopt :{opt ul}[{cmd:(}{varname}|{it:#}{cmd:)}]}右截断变量或限制{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中的 ln({it:varname_e}) 的系数限制为 1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包含 {it:varname_o}，系数限制为 1{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、
{opt r:obust}、{opt cl:uster} {it:clustvar}，
{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为
{cmd:level(95)}{p_end}
{synopt :{opt ir:r}}报告发生率比{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help cpoisson##display_options:显示选项}}}控制
包含帮助短描述-显示选项

{syntab :最大化}
{synopt :{it:{help cpoisson##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线性变量{p_end}
包含帮助简短描述-系数图例
{synoptline}
{p2colreset}{...}
包含帮助 fvvarlist
{p 4 6 2}{it:depvar} 和 {it:indepvars} 可能
包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{opt bootstrap}、{opt by}、{opt fp}、{opt jackknife}、
{opt rolling}、{opt statsby} 和 {opt svy} 是允许的；见 {help prefix_zh}。
{p_end}
{p 4 6 2}权重不允许与 {help bootstrap_zh} 前缀一起使用。{p_end}
{p 4 6 2}
{opt vce()} 和权重不允许与 {help svy_zh} 前缀一起使用。{p_end}
{marker weight}{...}
{p 4 6 2}{opt fweight}s、{opt iweight}s 和 {opt pweight}s 是允许的；见
{help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不出现在对话框中。{p_end}
{p 4 6 2}
见 {manhelp cpoisson_postestimation R:cpoisson 后估计} 以获取
估计后可用的特性。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 计数结果 > 左截断泊松回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:cpoisson} 拟合一个计数因变量的泊松模型，其中包含一些截断值。该命令可以在因变量左截断（有下限）、右截断（有上限）或区间截断（同时有下限和上限）时使用。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R cpoissonQuickstart:快速入门}

        {mansection R cpoissonRemarksandexamples:备注和示例}

        {mansection R cpoissonMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}；见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt ll}[{cmd:(}{varname}|{it:#}{cmd:)}] 和
{opt ul}[{cmd:(}{varname}|{it:#}{cmd:)}]
   分别指示截断的下限和上限。
   观察值 {depvar} {ul:<} {opt ll()} 为左截断；观察值
   {it:depvar} {ul:>} {opt ul()} 为右截断；其余观察值没有截断。您不必指定截断值。
   如果您指定了 {opt ll}，则下限为 {it:depvar} 的最小值。
   如果您指定了 {opt ul}，则上限为 {it:depvar} 的最大值。

{phang}
{opth "exposure(varname:varname_e)"},
{opt offset(varname_o)},
{opt constraints(constraints)}；见
{helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健性}

包含帮助 vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}；见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt irr} 报告转换为事件率比的估计系数，即 exp(b) 而不是 b。
标准误和置信区间也类似转换。此选项影响结果的显示方式，而不影响估计方式。
{opt irr} 可以在估计时或重播先前估计结果时指定。

{phang}
{opt nocnsreport}；见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

包含帮助显示选项列表

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:算法规格)}、
{opt iter:ate(#)}、
[{cmd:no}]{opt log}、
{opt tr:ace}、
{opt grad:ient}、
{opt showstep}、
{opt hess:ian}、
{opt showtol:erance}、
{opt tol:erance(#)}、{opt ltol:erance(#)}、 
{opt nrtol:erance(#)}、{opt nonrtol:erance}，和
{opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pstd}
以下选项可用于 {opt cpoisson}，但在对话框中不显示：

{phang}
{opt collinear}、{opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse trips}{p_end}

{pstd}拟合一个左截断泊松回归{p_end}
{phang2}{cmd:. cpoisson trips income children, ul(3)}
{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:cpoisson} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_unc)}}未截断观察数{p_end}
{synopt:{cmd:e(N_lc)}}左截断观察数{p_end}
{synopt:{cmd:e(N_rc)}}右截断观察数{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示收敛，{cmd:0} 表示未收敛{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:cpoisson}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(llopt)}}如果指定，则为 {cmd:ll()} 的内容{p_end}
{synopt:{cmd:e(ulopt)}}如果指定，则为 {cmd:ul()} 的内容{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是执行
                           最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cpoisson.sthlp>}