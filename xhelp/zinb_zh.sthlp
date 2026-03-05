{smcl}
{* *! version 1.3.1  12dec2018}{...}
{viewerdialog zinb "dialog zinb"}{...}
{viewerdialog "svy: zinb" "dialog zinb, message(-svy-) name(svy_zinb)"}{...}
{vieweralsosee "[R] zinb" "mansection R zinb"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] zinb postestimation" "help zinb postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: zinb" "help bayes zinb"}{...}
{vieweralsosee "[R] nbreg" "help nbreg_zh"}{...}
{vieweralsosee "[R] poisson" "help poisson_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{vieweralsosee "[R] tnbreg" "help tnbreg_zh"}{...}
{vieweralsosee "[R] tpoisson" "help tpoisson_zh"}{...}
{vieweralsosee "[XT] xtnbreg" "help xtnbreg_zh"}{...}
{vieweralsosee "[R] zip" "help zip_zh"}{...}
{viewerjumpto "Syntax" "zinb_zh##syntax"}{...}
{viewerjumpto "Menu" "zinb_zh##menu"}{...}
{viewerjumpto "Description" "zinb_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "zinb_zh##linkspdf"}{...}
{viewerjumpto "Options" "zinb_zh##options"}{...}
{viewerjumpto "Examples" "zinb_zh##examples"}{...}
{viewerjumpto "Stored results" "zinb_zh##results"}
{help zinb:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[R] zinb} {hline 2}}零膨胀负二项回归{p_end}
{p2col:}({mansection R zinb:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:zinb} {depvar} [{indepvars}] {ifin}
[{it:{help zinb##weight:权重}}]{cmd:,}
{opt inf:late}{cmd:(}{varlist}[{cmd:,} {opth off:set(varname)}]|{cmd:_cons)}
[{it:选项}]

{marker zinb_options}{...}
{synoptset 28 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:模型}
{p2coldent:* {opt inf:late()}}决定计数是否为零的方程{p_end}
{synopt :{opt nocons:恒等}}抑制常数项{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包含 {opt ln(varname_e)} 且系数被限制为 1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包含 {it:varname_o} 且系数被限制为 1{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}
{synopt :{opt probit}}使用 probit 模型来描述过量的零；默认是 logit{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim},
   {opt r:obust}, {opt cl:uster} {it:clustvar}, {opt opg}, {opt boot:strap},
   或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为
{cmd:level(95)}.{p_end}
{synopt :{opt irr}}报告发生率比{p_end}
{synopt :{opt zip}}执行 ZIP 似然比检验{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help zinb##display_options:显示选项}}}控制
包括帮助短描述-显示所有选项

{syntab:最大化}
{synopt :{it:{help zinb##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
包括帮助短描述-系数图例
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt inf:late}{cmd:(}{it:varlist}[{cmd:,} {opt off:set(varname)}]|{cmd:_cons)}
是必需的。{p_end}
包括帮助 fvvarlist2
{p 4 6 2}{cmd:bayes}, {cmd:bootstrap}, {cmd:by}, {cmd:fp}, {cmd:jackknife},
{cmd:rolling}, {cmd:statsby}, 和 {cmd:svy} 是允许的；见 {help prefix_zh}。
更多细节请见 {manhelp bayes_zinb BAYES:bayes: zinb}.{p_end}
{p 4 6 2}权重不允许与 {help bootstrap_zh} 前缀一起使用。{p_end}
{p 4 6 2}
{opt vce()},
{opt zip},
和权重不允许与 {help svy_zh} 前缀一起使用。
{p_end}
{marker weight}{...}
{p 4 6 2}{cmd:fweight}s、{cmd:iweight}s 和 {cmd:pweight}s 是允许的；见
{help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}请参阅 {manhelp zinb_postestimation R:zinb 后估计} 来获取估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 计数结果 > 零膨胀负二项回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:zinb} 适用于具有过度分散零计数数据的零膨胀负二项 (ZINB) 模型。ZINB 模型假设过量的零计数来自 logit 或 probit 模型，其余计数来自负二项模型。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R zinbQuickstart:快速入门}

        {mansection R zinbRemarksandexamples:备注和示例}

        {mansection R zinbMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:inflate(}{varlist}[{cmd:,} {cmd:offset(}{varname}{cmd:)}]|{cmd:_cons)}
指定决定观察计数是否为零的方程。概念上，省略 {opt inflate()} 将等同于拟合使用 {cmd:nbreg} 的模型。

{pmore}
{cmd:inflate(}{it:varlist}[{cmd:, offset(}{it:varname}{cmd:)}]{cmd:)}
指定方程中的变量。您可以选择性地为此 {it:varlist} 包含一个偏移量。

{pmore}
{cmd:inflate(_cons)} 指定决定计数是否为零的方程仅包含一个截距。要以仅在两个方程中都有截距的 {depvar} 运行零膨胀模型，请输入
{bind:{cmd:zinb} {it:depvar}{cmd:,} {cmd:inflate(_cons)}}。

{phang}
{opt noconstant}, {opth exposure:(varname:varname_e)}, {opt offset(varname_o)},
{opt constraints(constraints)}; 见
{helpb estimation options:[R] 估计选项}。

{phang}
{opt probit} 请求使用 probit 而不是 logit 模型来描述数据中的过量零。

{dlgtab:标准误/稳健性}

包括帮助 vce_asymptall

{dlgtab:报告}

{phang}
{opt level(#)}; 见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt irr} 报告转化为发生率比的预估系数。标准误差和置信区间亦被类似转化。此选项影响结果的显示方式，而不是其估计或存储方式。{opt irr} 可以在估计时或播放先前估计的结果时指定。

{phang}
{opt zip} 请求在输出中包括比较 ZINB 模型与零膨胀 Poisson 模型的似然比检验。

{phang}
{opt nocnsreport}; 见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

包括帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}: {opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:算法_spec)},
{opt iter:ate(#)}, [{cmd:no}]{cmd:log}, {opt tr:ace},
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)}, {opt nrtol:erance(#)},
{opt nonrtol:erance}, 和 {opt from(init_specs)}; 
见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会将默认 {it:vcetype} 重置为 {cmd:vce(opg)}。

{pstd}
以下选项随 {opt zinb} 可用，但未在对话框中显示：

{phang}
{opt collinear}, {opt coeflegend}; 见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse fish}{p_end}

{pstd}拟合零膨胀负二项回归模型{p_end}
{phang2}{cmd:. zinb count persons livebait, inflate(child camper)}{p_end}

{pstd}重播结果，显示系数、标准误差和置信区间到小数点后 4 位{p_end}
{phang2}{cmd:. zinb, cformat(%8.4f)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:zinb} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_zero)}}零观察数{p_end}
{synopt:{cmd:e(k)}}参数数目{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)} 中方程的数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型检验中的方程数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数的数量{p_end}
{synopt:{cmd:e(k_dv)}}依赖变量数目{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(df_c)}}比较检验的自由度{p_end}
{synopt:{cmd:e(N_clust)}}集群数{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(chi2_cp)}}α = 0 的卡方检验{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，否则 {cmd:0}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:zinb}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}依赖变量的名称{p_end}
{synopt:{cmd:e(inflate)}}{cmd:logit} 或 {cmd:probit}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset1)}}偏移量{p_end}
{synopt:{cmd:e(offset2)}}{cmd:inflate()} 的偏移量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}; 模型卡方检验的类型{p_end}
{synopt:{cmd:e(chi2_cpt)}}{cmd:Wald} 或 {cmd:LR}; 与 {cmd:e(chi2_cp)} 对应的模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器是执行最大化还是最小化{p_end}
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
{synopt:{cmd:e(ilog)}}迭代日志 (最多 20 次迭代){p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计值的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <zinb.sthlp>}