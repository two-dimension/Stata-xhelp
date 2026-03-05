{smcl}
{* *! version 1.0.17  19dec2018}{...}
{viewerdialog xtstreg "dialog xtstreg"}{...}
{vieweralsosee "[XT] xtstreg" "mansection XT xtstreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtstreg postestimation" "help xtstreg postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] mestreg" "help mestreg_zh"}{...}
{vieweralsosee "[XT] quadchk" "help quadchk_zh"}{...}
{vieweralsosee "[ST] streg" "help streg_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "xtstreg_zh##syntax"}{...}
{viewerjumpto "Menu" "xtstreg_zh##menu"}{...}
{viewerjumpto "Description" "xtstreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtstreg_zh##linkspdf"}{...}
{viewerjumpto "Options" "xtstreg_zh##options"}{...}
{viewerjumpto "Examples" "xtstreg_zh##examples"}{...}
{viewerjumpto "Stored results" "xtstreg_zh##results"}
{help xtstreg:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[XT] xtstreg} {hline 2}}随机效应参数生存模型{p_end}
{p2col:}({mansection XT xtstreg:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:xtstreg} [{indepvars}] {ifin} {weight}{cmd:,}
	{opth dist:ribution(xtstreg##distname:分布名)}
        [{it:选项}]

{synoptset 27 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:常数}}抑制常数项{p_end}
{p2coldent :* {cmdab:dist:ribution(}{it:{help xtstreg##distname:分布名}}{cmd:)}}指定生存分布{p_end}
{synopt :{opt time}}使用加速失效时间度量{p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在模型中，系数约束为1{p_end}
{synopt :{opth const:raints(estimation options##constraints():约束)}}应用指定的线性约束{p_end}

{syntab :SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可能是 {opt oim}、{opt r:obust}、 {opt cl:uster} {it:clustvar}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt nohr}}不报告危险比{p_end}
{synopt :{opt nosh:ow}}不显示 st 设置信息{p_end}
{synopt :{opt lrmodel}}执行似然比模型检验，而不是默认的 Wald 检验{p_end}
{synopt :{opt nocns:report}}不显示约束{p_end}
{synopt :{opt tr:atio}}报告时间比{p_end}
{synopt :{it:{help xtstreg##display_options:显示选项}}}控制
包含帮助简短描述-显示选项

包含帮助 intpts1

{syntab :最大化}
{synopt :{it:{help xtstreg##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt :{opth startg:rid(numlist)}}通过执行网格搜索来改善随机截距参数的起始值{p_end}
{synopt:{opt nodis:play}}抑制显示标题和系数{p_end}
{synopt:{opt col:linear}}保留共线变量{p_end}
包含帮助简短描述-系数图例
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt distribution(distname)} 是必需的。{p_end}

{marker distname}{...}
{synoptset 29}{...}
{synopthdr:分布名}
{synoptline}
{synopt:{cmdab:e:xponential}}指数生存分布{p_end}
{synopt:{cmdab:logl:ogistic}}对数逻辑生存分布{p_end}
{synopt:{cmdab:ll:ogistic}}对{cmd:loglogistic}的同义词{p_end}
{synopt:{cmdab:w:eibull}}韦布尔生存分布{p_end}
{synopt:{cmdab:logn:ormal}}对数正态生存分布{p_end}
{synopt:{cmdab:ln:ormal}}对{cmd:lognormal}的同义词{p_end}
{synopt:{cmdab:gam:ma}}伽马生存分布{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
在使用 {cmd:xtstreg} 之前，您必须 {cmd:stset} 数据；请参阅 
{manhelp stset ST}.{p_end}
{p 4 6 2}
必须指定一个面板变量；请参阅 {help xtset_zh}.{p_end}
包含帮助 fvvarlist
{p 4 6 2}
{it:varlist} 可以包含时间序列运算符；请参阅 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
允许使用 {opt by}、{opt fp} 和 {opt statsby}；请参阅 {help prefix_zh}.{p_end}
{p 4 6 2}
允许使用 {opt fweight}s、{opt iweight}s 和 {opt pweight}s；请参阅 {help weight_zh}。
权重在面板内必须是常数。{p_end}
{p 4 6 2}
{opt startgrid()}、{opt nodisplay}、{opt collinear} 和 {opt coeflegend} 不会显示在对话框中。{p_end}
{p 4 6 2}
有关估计后可用功能的信息，请参见 {manhelp xtstreg_postestimation XT:xtstreg 后处理}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 生存模型 >}
    {bf:参数生存模型（RE）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtstreg} 拟合随机效应参数生存时间模型。
给定随机效应的响应的条件分布假定为指数分布、韦布尔分布、对数正态分布、对数逻辑分布或伽马分布。 {cmd:xtstreg} 可用于单记录或多记录的生存数据。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection XT xtstregQuickstart:快速入门}

        {mansection XT xtstregRemarksandexamples:备注和示例}

        {mansection XT xtstregMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 请参见 {helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt distribution(distname)} 指定要拟合的生存模型。
{it:distname} 是以下之一：{opt exponential}、{opt loglogistic}、{opt llogistic}、{opt weibull}、{opt lognormal}、{opt lnormal} 或 {opt gamma}。
此选项是必需的。

{phang}
{cmd:time} 指定模型在加速失效时间度量中拟合，而不是在对数相对危险度度量中拟合。此选项仅对指数和韦布尔模型有效，因为这些模型是唯一同时具有比例危险度和加速失效时间参数化的模型。不论度量如何，似然函数相同，模型在任一度量下均适用；这只是一种解释改变的问题。

{pmore}
{opt time} 必须在估计时指定。

{phang}
{opth offset(varname)} 指定 {it:varname} 包含在模型的固定效应部分，系数约束为1。

{phang}
{opt constraints(constraints)}；请参见
       {helpb estimation options##constraints():[R] 估计选项}。

{dlgtab:SE/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括基于渐近理论的类型（{cmd:oim}）、对某些类型的错误设定稳健的类型（{cmd:robust}），以及允许组内相关性的类型（{cmd:cluster} {it:clustvar}）；请参见 {help vce_option_zh:[R] {it:vce_option}}。 如果指定了 {cmd:vce(robust)}，则稳健方差在多层模型的最高水平聚类。

{pmore}
指定 {cmd:vce(robust)} 相当于指定 {cmd:vce(cluster} {it:panelvar}{cmd:)}；请参见
{mansection XT xtstregMethodsandformulasxtstregandtherobustVCEestimator:{it:xtstreg 和稳健的 VCE 估计器}} 在 {bf:[XT] xtstreg} 中的
{it:方法和公式}。

{dlgtab:报告}

{phang}
{opt level(#)}；请参见
       {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt nohr}，可在估计时或重新显示结果时指定，指定应显示系数而非指数系数，即应显示系数而非危险比。此选项仅影响系数的显示方式，而不是其估计方式。

{pmore}
此选项仅对指数和韦布尔模型有效，因为它们具有自然的比例危险度参数化。
这两个模型默认情况下报告危险比（指数系数）。

{phang}
{opt noshow} 防止 {cmd:xtstreg} 显示关键 st 变量。此选项很少使用，因为大多数用户键入 {cmd:stset, show} 或 
{cmd:stset, noshow} 来一次性设置他们想在每个 st 命令的输出顶部看到这些变量；请参见 
{manhelp stset ST}。

{phang}
{opt lrmodel}、{opt nocnsreport}；请参见
     {helpb estimation options:[R] 估计选项}。

{phang}
{opt tratio} 指定应显示指数系数，解释为时间比。{opt tratio} 仅适用于对数逻辑、对数正态和伽马模型，或对数和韦布尔模型在加速失效时间度量下拟合时。

{pmore}
{opt tratio} 可在估计时或重放时指定。

包含帮助 displayopts_list

{dlgtab:集成}

{phang}
{opt intmethod(intmethod)}、
{opt intpoints(#)}；请参见
     {helpb estimation options:[R] 估计选项}。

{marker maximize_options}{...}
{dlgtab:最大化}
 
{phang}
{it:maximize_options}：
{opt dif:ficult}，
{opth tech:nique(maximize##algorithm_spec:算法规格)}，
{opt iter:ate(#)}，
[{cmd:no}]{opt log}，
{opt tr:ace}，
{opt grad:ient}，
{opt showstep}，
{opt hess:ian}，
{opt showtol:erance}，
{opt tol:erance(#)}，
{opt ltol:erance(#)}，
{opt nrtol:erance(#)}，
{opt nonrtol:erance}，和
{opt from(init_specs)}；
见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pstd}
以下选项适用于 {opt xtstreg} 但未显示在对话框中：

{phang}
{opth startgrid(numlist)} 执行网格搜索以改善随机截距参数的起始值。除非发现起始值不可行，否则默认情况下不执行网格搜索，在这种情况下 {opt xtstreg} 运行 {cmd:startgrid(0.1 1 10)} 并选择最佳可行值。您可能不知道已经在使用 {opt startgrid()} 的默认形式。如果您看到 {opt xtstreg} 在迭代日志中显示网格节点 1、网格节点 2……随后的网格节点 0，那就是 {opt xtstreg} 在执行默认搜索，因为原始起始值不可行。

{phang}
{opt nodisplay} 是为程序员准备的。它抑制标题和系数的显示。

{phang}
{opt collinear}、{opt coeflegend}; 请参见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse catheter}{p_end}
{phang2}{cmd:. xtset patient}{p_end}

{pstd}随机效应韦布尔生存模型{p_end}
{phang2}{cmd:. xtstreg age female, distribution(weibull)}

{pstd}重放结果，但显示系数而非危险比{p_end}
{phang2}{cmd:. xtstreg, nohr}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:xtstreg} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_g)}}组数{p_end}
{synopt:{cmd:e(k)}}参数数{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型检验中的方程数{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(ll_c)}}对数似然，比较模型{p_end}
{synopt:{cmd:e(chi2_c)}}卡方，比较模型{p_end}
{synopt:{cmd:e(sigma_u)}}面板级标准差{p_end}
{synopt:{cmd:e(n_quad)}}求积点数{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:gsem}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:xtstreg}{p_end}
{synopt:{cmd:e(cmdline)}}命令如输入{p_end}
{synopt:{cmd:e(depvar)}}{cmd:_t}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式（第一层权重）{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(model)}}模型名称{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(distribution)}}分布{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset)}}偏移量{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方的类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(frm2)}}{cmd:hazard} 或 {cmd:time}{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器将执行最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(marginswtype)}}{cmd:margins} 的权重类型{p_end}
{synopt:{cmd:e(marginswexp)}}{cmd:margins} 的权重表达式{p_end}
{synopt:{cmd:e(marginsdefault)}}{cmd:margins} 的默认 {opt predict()} 规范{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多20次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtstreg.sthlp>}