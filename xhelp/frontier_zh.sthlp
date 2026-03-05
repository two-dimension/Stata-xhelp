{smcl}
{* *! version 1.3.1  12dec2018}{...}
{viewerdialog frontier "dialog frontier"}{...}
{vieweralsosee "[R] frontier" "mansection R frontier"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] frontier postestimation" "help frontier postestimation"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[XT] xtfrontier" "help xtfrontier_zh"}{...}
{viewerjumpto "Syntax" "frontier_zh##syntax"}{...}
{viewerjumpto "Menu" "frontier_zh##menu"}{...}
{viewerjumpto "Description" "frontier_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "frontier_zh##linkspdf"}{...}
{viewerjumpto "Options" "frontier_zh##options"}{...}
{viewerjumpto "Examples" "frontier_zh##examples"}{...}
{viewerjumpto "Stored results" "frontier_zh##results"}{...}
{viewerjumpto "Reference" "frontier_zh##reference"}
{help frontier:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[R] frontier} {hline 2}}随机前沿模型{p_end}
{p2col:}({mansection R frontier:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:frontier}
{depvar}
[{indepvars}]
{ifin}
[{it:{help frontier##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 31 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{cmdab:d:istribution(}{opt h:normal)}}非效率项的半正态分布{p_end}
{synopt :{cmdab:d:istribution(}{opt e:xponential)}}非效率项的指数分布{p_end}
{synopt :{cmdab:d:istribution(}{opt t:normal)}}非效率项的截断正态分布{p_end}
{synopt :{opt uf:rom(matrix)}}指定未变换的对数似然；仅与{cmd:d(tnormal)}一起使用{p_end}
{synopt :{cmd:cm(}{it:{help varlist_zh}}[{cmd:,} {opt nocons:tant}]{cmd:)}}适合条件均值模型；仅与{cmd:d(tnormal)}一起使用；使用 {opt noconstant} 来抑制常数项{p_end}

{syntab :模型 2}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}
{synopt :{cmdab:u:het(}{it:{help varlist_zh}}[{cmd:,} {opt nocons:tant}]{cmd:)}}技术非效率方差函数的解释变量；使用 {opt noconstant} 来抑制常数项{p_end}
{synopt :{cmdab:v:het(}{it:{help varlist_zh}}[{cmd:,} {opt nocons:tant}]{cmd:)}}特异性误差方差函数的解释变量；使用 {opt noconstant} 来抑制常数项{p_end}
{synopt :{opt cost}}适合成本前沿模型；默认是生产前沿模型{p_end}

{syntab :标准误/稳健性}
{p2coldent:* {opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt opg}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认是{cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help frontier##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptall

{syntab :最大化}
{synopt :{it:{help frontier##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:vce(robust)} 和 {cmd:vce(cluster} {it:clustvar}{cmd:)} 不能与 {cmd:distribution(tnormal)} 一起指定。{p_end}
INCLUDE help fvvarlist2
{p 4 6 2}
{opt bootstrap}、{opt by}、{opt fp}、{opt jackknife}、{opt rolling} 和 {opt statsby} 都被允许；见 {help prefix_zh}.{p_end}
{p 4 6 2}权重在 {help bootstrap_zh} 前缀下不被允许。{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}s、{opt iweight}s 和 {opt pweight}s 是允许的；见 {help weight_zh}。{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
有关估计后可用的功能，请参见 {manhelp frontier_postestimation R:frontier postestimation}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型和相关 > 前沿模型}


{marker description}{...}
{title:描述}

{pstd}
{opt frontier} 适合随机生产或成本前沿模型；默认是生产前沿模型。它提供了一种线性模型参数的估计方法，假设其干扰项是两个成分的混合，这两个成分有严格的非负和对称分布。{opt frontier} 可以适配假设非负分布成分（一个非效率的度量）来自半正态、指数或截断正态分布的模型。有关前沿分析的详细介绍，请参见 {help frontier##KL2000:Kumbhakar 和 Lovell (2000)}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R frontierQuickstart:快速入门}

        {mansection R frontierRemarksandexamples:备注和示例}

        {mansection R frontierMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}；见 {helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt distribution(distname)} 指定非效率项的分布为半正态({opt hnormal})、指数({opt exponential}) 或 截断正态({opt tnormal})。默认是 {opt hnormal}。

{phang}
{opt ufrom(matrix)} 指定一个 1 x K 的未变换起始值矩阵，当分布为截断正态({opt tnormal}) 时使用。{opt frontier} 可以通过最大化对数似然或变换后的对数似然来估计模型的参数（见 {mansection R frontierMethodsandformulas:方法和公式}）。{opt frontier} 会在将起始值传递给变换后的对数似然之前自动变换它们。矩阵的列数必须与要估计的参数数量相同。

{phang}
{cmd:cm(}{varlist} [{cmd:,} {opt noconstant}]{cmd:)} 仅能与 {cmd:distribution(tnormal)} 一起使用。在这里 {opt frontier} 将适配一个条件均值模型，其中截断正态分布的均值被建模为指定的{it:varlist} 的协变量的线性函数。指定 {opt noconstant} 可抑制均值函数中的常数。

{dlgtab:模型 2}

{phang}
{opt constraints(constraints)}；见 {helpb estimation options:[R] 估计选项}。

{pmore}
默认情况下，当适配截断正态模型或条件均值模型时，{opt frontier} 最大化变换后的对数似然。当应用约束时，{opt frontier} 将在未变换度量下最大化未变换的对数似然。

{phang}
{cmd:uhet(}{varlist} [{cmd:, noconstant}]{cmd:)} 指定技术非效率成分是异方差的，方差函数依赖于 {it:varlist_u} 的线性组合。指定 {opt noconstant} 可抑制方差函数中的常数项。此选项不能与 {cmd:distribution(tnormal)} 一起使用。

{phang}
{cmd:vhet(}{varlist} [{cmd:, noconstant}]{cmd:)} 指定特异性误差成分是异方差的，方差函数依赖于 {it:varlist_v} 的线性组合。指定 {opt noconstant} 可抑制方差函数中的常数项。此选项不能与 {cmd:distribution(tnormal)} 一起使用。

{phang}
{opt cost} 指定 {opt frontier} 适配一个成本前沿模型。

{dlgtab:标准误/稳健性}

INCLUDE help vce_asymptall

{pmore}
{cmd:vce(robust)} 和 {cmd:vce(cluster} {it:clustvar}{cmd:)} 不能与 {cmd:distribution(tnormal)} 一起指定。

{dlgtab:报告}

{phang}
{opt level(#)}、{opt nocnsreport}；见{helpb estimation options:[R] 估计选项}。

INCLUDE help displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:算法规格)}、{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、{opt grad:ient}、{opt showstep}、{opt hess:ian}、{opt showtol:erance}、{opt tol:erance(#)}、{opt ltol:erance(#)}、{opt nrtol:erance(#)}、{opt nonrtol:erance}，以及 {opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。这些选项很少使用。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会重置默认的 {it:vcetype} 为 {cmd:vce(opg)}。

{pstd}
以下选项可与 {opt frontier} 一起使用，但不会在对话框中显示：

{phang}
{opt collinear}、{opt coeflegend}；见 {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. webuse greene9}{p_end}

{pstd}具有半正态分布的科布-道格拉斯生产函数的非效率项{p_end}
{phang2}{cmd:. frontier lnv lnk lnl}{p_end}

{pstd}具有指数分布的科布-道格拉斯生产函数的非效率项{p_end}
{phang2}{cmd:. frontier lnv lnk lnl, dist(exponential)}{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse frontier1}{p_end}

{pstd}科布-道格拉斯生产函数，{cmd:size} 作为特异性误差方差函数的解释变量{p_end}
{phang2}{cmd:. frontier lnoutput lnlabor lncapital, vhet(size)}{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse frontier2}{p_end}

{pstd}具有截断正态分布的成本前沿模型的非效率项{p_end}
{phang2}{cmd:. frontier lncost lnp_k lnp_l lnout, dist(tnormal) cost}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:frontier} 将以下信息存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(chi2)}}卡方值{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_c)}} H_0: sigma_u=0 的对数似然{p_end}
{synopt:{cmd:e(z)}}用于检验 OLS 残差的负偏度{p_end}
{synopt:{cmd:e(sigma_u)}}技术非效率的标准差{p_end}
{synopt:{cmd:e(sigma_v)}}V_i 的标准差{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(chi2_c)}}LR 检验统计量{p_end}
{synopt:{cmd:e(p_z)}} z 的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示已收敛，{cmd:0} 表示未收敛{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:frontier}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(function)}}{cmd:production} 或 {cmd:cost}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(dist)}}U_i 的分布假设{p_end}
{synopt:{cmd:e(het)}}异方差成分{p_end}
{synopt:{cmd:e(u_hetvar)}}在 {cmd:uhet()} 中的 {it:varlist}{p_end}
{synopt:{cmd:e(v_hetvar)}}在 {cmd:vhet()} 中的 {it:varlist}{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是执行最大化还是最小化{p_end}
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
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考文献}

{marker KL2000}{...}
{phang}
Kumbhakar, S. C., 和 C. A. K. Lovell. 2000. {it:随机前沿分析}。剑桥：剑桥大学出版社。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <frontier.sthlp>}