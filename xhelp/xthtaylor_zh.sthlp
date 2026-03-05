{smcl}
{* *! version 1.3.9  19sep2018}{...}
{viewerdialog xthtaylor "dialog xthtaylor"}{...}
{vieweralsosee "[XT] xthtaylor" "mansection XT xthtaylor"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xthtaylor postestimation" "help xthtaylor postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtivreg" "help xtivreg_zh"}{...}
{vieweralsosee "[XT] xtreg" "help xtreg_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "语法" "xthtaylor_zh##syntax"}{...}
{viewerjumpto "菜单" "xthtaylor_zh##menu"}{...}
{viewerjumpto "描述" "xthtaylor_zh##description"}{...}
{viewerjumpto "PDF文档链接" "xthtaylor_zh##linkspdf"}{...}
{viewerjumpto "选项" "xthtaylor_zh##options"}{...}
{viewerjumpto "示例" "xthtaylor_zh##examples"}{...}
{viewerjumpto "存储结果" "xthtaylor_zh##results"}{...}
{viewerjumpto "参考文献" "xthtaylor_zh##references"}
{help xthtaylor:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[XT] xthtaylor} {hline 2}}Hausman-Taylor 估计器用于误差成分模型{p_end}
{p2col:}({mansection XT xthtaylor:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}{cmd:xthtaylor} {depvar} {indepvars} {ifin}
[{it:{help xthtaylor##weight:权重}}]
{cmd:,} {opth e:ndog(varlist)} [{it:选项}]

{synoptset 23 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{p2coldent :* {opth e:ndog(varlist)}}在 {indepvars} 中作为内生变量处理的解释变量{p_end}
{synopt :{opth cons:tant(varlist:varlist_ti)}}面板内常数的自变量{p_end}
{synopt :{opth v:arying(varlist:varlist_tv)}}面板内随时间变化的自变量{p_end}
{synopt :{opt am:acurdy}}基于 Amemiya 和 MaCurdy 估计器拟合模型{p_end}

{syntab:SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype}可以是 {opt conventional}，
         {opt r:obust}，{opt cl:uster} {it:clustvar}，{opt boot:strap}，或者
         {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt s:mall}}报告小样本统计量{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt endog(varlist)} 是必需的。{p_end}
{p 4 6 2}
必须指定面板变量。对于 {cmd:xthtaylor, amacurdy}，还必须指定时间变量。使用 {help xtset_zh}。{p_end}
{p 4 6 2}
{it:depvar}、{it:indepvars} 和所有 {it:varlists} 可以包含时间序列运算符；见 {help tsvarlist_zh}。{p_end}
{p 4 6 2}
{opt by}、{opt statsby} 和 {cmd:xi} 被允许；见 {help prefix_zh}。{p_end}
{marker weight}{...}
{p 4 6 2}
{opt iweight}s 和 {opt fweight}s 被允许，除非指定 {opt amacurdy} 选项。权重必须在面板内为常数；见 {help weight_zh}。{p_end}
{p 4 6 2}
有关估计后可用功能，请参见 {manhelp xthtaylor_postestimation XT:xthtaylor postestimation}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 内生协变量 >}
     {bf:Hausman-Taylor 回归 (RE)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xthtaylor} 为面板数据拟合一个随机效应模型，其中一些协变量与未观测的个体随机效应相关。该命令默认实现Hausman-Taylor估计器，但对于平衡面板，可以使用 Amemiya-MaCurdy 估计器。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection XT xthtaylorQuickstart:快速入门}

        {mansection XT xthtaylorRemarksandexamples:备注和示例}

        {mansection XT xthtaylorMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 见
    {helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opth endog(varlist)} 指定 {indepvars} 中的部分解释变量被视为内生变量，即假定与未观测随机效应相关的解释变量。
{opt endog()} 是必需的。

{phang}
{opth "constant(varlist:varlist_ti)"} 指定 {indepvars} 中不随时间变化的变量子集。通过使用此选项，您不仅声明 {it:varlist_ti} 中指定的变量是时间不变的，还声明 {it:indepvars} 中的所有其他变量都是时间变化的。如果这一声明是错误的，{cmd:xthtaylor} 则不会进行估计并会发出错误消息。{cmd:xthtaylor} 会自动检测哪些变量是时间不变的，哪些不是。然而，用户可能希望检查数据的理解并指定哪些变量是时间不变，哪些不是。

{phang}
{opth "varying(varlist:varlist_tv)"} 指定 {indepvars} 中随时间变化的变量子集。通过使用此选项，您不仅声明 {it:varlist_tv} 中指定的变量是时间变化的，还声明 {it:indepvars} 中的所有其他变量都是时间不变的。如果这一声明是错误的，{cmd:xthtaylor} 则不会进行估计并会发出错误消息。{cmd:xthtaylor} 会自动检测哪些变量是时间变化的，哪些不是。然而，用户可能希望检查数据的理解并指定哪些变量是时间变化，哪些不是。

{phang}
{cmd:amacurdy} 指定使用 Amemiya-MaCurdy 估计器。该估计器使用额外的工具来提高效率，但以对数据生成过程的额外假设为代价。此选项仅适用于包含平衡面板的样本，并且不允许指定权重。面板还必须具有共同的初始时期。

{dlgtab:SE/稳健性}

包含 help xt_vce_asymptall

{pmore}
{cmd:vce(conventional)}，默认值，使用常规推导的方差估计器用于此 Hausman-Taylor 模型。

{pmore}
指定 {cmd:vce(robust)} 相当于指定
{cmd:vce(cluster} {it:panelvar}{cmd:)}；见
{mansection XT xtpoissonMethodsandformulasxtpoisson,reandtherobustVCEestimator:{it:xtpoisson, re 和稳健的 VCE 估计器}} 在
{it:方法和公式} 的 {bf:[XT] xtpoisson} 中。

{dlgtab:报告}

{phang}
{opt level(#)}; 见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt small} 指定在输出中的 Wald 测试的 p 值以及通过 {cmd:test} 获得的所有后续 Wald 测试使用 t 和 F 分布，而不是大样本正态和卡方分布。默认情况下，p 值是使用正态和卡方分布获得的。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse psidextract}{p_end}

{pstd}Hausman-Taylor 估计{p_end}
{phang2}{cmd:. xthtaylor lwage wks south smsa ms exp exp2 occ ind union fem}
           {cmd:blk ed, endog(exp exp2 occ ind union ed) constant(fem blk ed)}

{pstd}Amemiya-MaCurdy 估计{p_end}
{phang2}{cmd:. xthtaylor lwage wks south smsa ms exp exp2 occ ind union fem}
           {cmd:blk ed, endog(exp exp2 occ ind union ed) amacurdy}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xthtaylor} 在 {cmd:e()} 中存储以下内容：

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_g)}}组数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(df_r)}}残差自由度 ({cmd:small} 仅){p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(Tcon)}}{cmd:1} 如果面板平衡，{cmd:0} 否则{p_end}
{synopt:{cmd:e(N_clust)}}群集数量{p_end}
{synopt:{cmd:e(sigma_u)}}面板级标准差{p_end}
{synopt:{cmd:e(sigma_e)}}epsilon_it 的标准差{p_end}
{synopt:{cmd:e(chi2)}}卡方值{p_end}
{synopt:{cmd:e(rho)}}rho{p_end}
{synopt:{cmd:e(F)}}模型 F ({cmd:small} 仅){p_end}
{synopt:{cmd:e(Tbar)}}组大小的调和平均{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xthtaylor}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(tvar)}}表示组内时间的变量，仅 {cmd:amacurdy}{p_end}
{synopt:{cmd:e(TVexogenous)}}外生的时间变化变量{p_end}
{synopt:{cmd:e(TIexogenous)}}外生的时间不变变量{p_end}
{synopt:{cmd:e(TVendogenous)}}内生的时间变化变量{p_end}
{synopt:{cmd:e(TIendogenous)}}内生的时间不变变量{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}{cmd:Hausman-Taylor} 或 {cmd:Amemiya-MaCurdy}{p_end}
{synopt:{cmd:e(clustvar)}}群集变量的名称{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 功能}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker AM1986}{...}
{phang}
Amemiya, T. 和 T. E. MaCurdy. 1986. 误差成分模型的工具变量估计。 {it:Econometrica} 54: 869-880.

{marker HT1981}{...}
{phang}
Hausman, J. A. 和 W. E. Taylor. 1981. 面板数据和不可观测的个体效应。 {it:Econometrica} 49: 1377-1398.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xthtaylor.sthlp>}