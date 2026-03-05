{smcl}
{* *! version 1.3.1  12dec2018}{...}
{viewerdialog stcrreg "dialog stcrreg"}{...}
{vieweralsosee "[ST] stcrreg" "mansection ST stcrreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stcrreg postestimation" "help stcrreg postestimation"}{...}
{vieweralsosee "[ST] stcurve" "help stcurve_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[ST] stcox" "help stcox_zh"}{...}
{vieweralsosee "[ST] stcox PH-assumption tests" "help stcox_diagnostics_zh"}{...}
{vieweralsosee "[ST] stcox postestimation" "help stcox_postestimation_zh"}{...}
{vieweralsosee "[ST] stintreg" "help stintreg_zh"}{...}
{vieweralsosee "[ST] streg" "help streg_zh"}{...}
{vieweralsosee "[ST] sts" "help sts_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{viewerjumpto "Syntax" "stcrreg_zh##syntax"}{...}
{viewerjumpto "Menu" "stcrreg_zh##menu"}{...}
{viewerjumpto "Description" "stcrreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "stcrreg_zh##linkspdf"}{...}
{viewerjumpto "Options" "stcrreg_zh##options"}{...}
{viewerjumpto "Examples" "stcrreg_zh##examples"}{...}
{viewerjumpto "Stored results" "stcrreg_zh##results"}{...}
{viewerjumpto "Reference" "stcrreg_zh##reference"}
{help stcrreg:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[ST] stcrreg} {hline 2}}竞争风险回归{p_end}
{p2col:}({mansection ST stcrreg:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmdab:stcrr:eg} [{indepvars}] {ifin}{cmd:,}
{cmdab:comp:ete(}{it:crvar}[{cmd:==}{it:{help numlist_zh}}]{cmd:)} 
[{it:options}] 

{synoptset 27 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent :* {cmdab:comp:ete(}{it:crvar}[{cmd:==}{it:{help numlist_zh}}]{cmd:)}}指定竞争风险事件{p_end}
{synopt :{cmd:tvc({help varlist_zh:{it:tvarlist}})}}时间变化协变量{p_end}
{synopt :{opth texp(exp)}}时间变化协变量的乘数；默认是 {cmd:texp(_t)}{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname} ，系数约束为1{p_end}
{synopt :{cmdab:const:raints:(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是
  {opt r:obust}, {opt cl:uster} {it:clustvar}, {opt boot:strap}, 或
  {opt jack:knife}{p_end}
{synopt :{opt noadj:ust}}不使用标准自由度调整{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置信任水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opt noshr}}报告系数，而不是子风险比{p_end}
{synopt :{opt nosh:ow}}不显示 st 设置信息{p_end}
{synopt :{opt nohead:er}}抑制系数表头{p_end}
{synopt :{opt notable}}抑制系数表{p_end}
{synopt :{opt nodisplay}}抑制输出；迭代日志仍然显示{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help stcrreg##display_options:显示选项}}}控制

{syntab:最大化}
{synopt :{it:{help stcrreg##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt :{cmdab:col:linear}}保留共线性变量{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt compete(crvar[==numlist])} 是必需的。{p_end}
{p 4 6 2}
您必须在使用 {cmd:stcrreg} 之前 {cmd:stset} 数据；见 {manhelp stset ST}.{p_end}
{p 4 6 2}
{it:varlist} 和 {it:tvarlist}
可以包含因子变量；见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{cmd:bootstrap}, {cmd:by}, {cmd:fp}, {cmd:jackknife}, {cmd:mfp}, 
{cmd:mi estimate}, {cmd:nestreg}, {cmd:statsby}, 和 {cmd:stepwise} 是
允许的；见 {help prefix_zh}.{p_end}
{p 4 6 2}
权重与 {help bootstrap_zh} 前缀不允许一起使用.{p_end}
{p 4 6 2}
{cmd:fweight}s, {cmd:iweight}s, 和 {cmd:pweight}s 可以使用 
{cmd:stset} 指定；见 {manhelp stset ST}. 在多记录数据中，权重
应用于整体受试者，而不是单个观察。
{cmd:iweight}s 被视为可以是非整数的 {cmd:fweight}s，但不可为负。{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp stcrreg_postestimation ST:stcrreg 后估计} 以获取在估计后
可用的功能.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 回归模型 >}
     {bf:竞争风险回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:stcrreg} 通过最大似然拟合竞争风险回归模型于 st 数据，依照 
{help stcrreg##FG1999:Fine 和 Gray (1999)} 方法。竞争风险回归
假设模型针对主要关注的失败事件的子风险函数。在存在妨碍
感兴趣事件的竞争失败事件的情况下，使用 Cox 回归的标准分析（见 {help stcox_zh}）
能够生成的发生率曲线要么 1) 仅适用于一个假设的宇宙即竞争事件不发生，或 2) 适用于手头的数据，但协变量对这些曲线的影响不易量化。使用
{cmd:stcrreg} 执行的竞争风险回归提供了一种替代模型，能够生成
代表观察数据的发生曲线，而描述协变量影响则变得简单明了。

{pstd}
{cmd:stcrreg} 可用于单记录或多记录数据。
当您有多个失败记录时，{cmd:stcrreg}不能使用。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ST stcrregQuickstart:快速入门}

        {mansection ST stcrregRemarksandexamples:备注和示例}

        {mansection ST stcrregMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:compete(}{it:crvar}[{cmd:==}{it:{help numlist_zh}}{cmd:)]} 是必需的，指定与由于竞争风险导致的失败相关的事件。

{pmore}
如果指定了 {opt compete(crvar)}，则 {it:crvar} 被解释为指示变量；所有非零、非缺失的值被解释为代表竞争事件。

{pmore}
如果指定了 {opt compete(crvar==numlist)}，则假定 {it:crvar} 取值在 {it:numlist} 之内的记录是竞争事件。

{pmore}
{cmd:compete()} 的语法与 {cmd:stset} 的 {cmd:failure()} 选项相同。使用 {cmd:stset, failure()} 指定关注的失败事件，即您希望使用 {cmd:stcox}, {cmd:streg}, {cmd:stcrreg} 或其他模型进行建模的失败事件。使用
{cmd:stcrreg, compete()} 来指定与关注的失败事件竞争的事件或事件。由于竞争事件不是主要关注的失败事件，因此必须被 {cmd:stset} 标识为被审查。

{pmore}
如果您有多个记录，每个受试者的 {it:crvar} 的值仅使用每个受试者最后一个时间顺序记录来确定该受试者的事件类型。

{phang}
{cmd:tvc({help varlist_zh:{it:tvarlist}})} 指定随时间变化的变量，即时间变化的协变量。这些变量乘以在 {cmd:texp()} 中指定的时间函数。

{phang}
{opth texp(exp)} 用于结合 
{cmd:tvc({help varlist_zh:{it:tvarlist}})} 指定应该乘以时间变化协变量的分析时间函数。例如，指定 {cmd:texp(ln(_t))} 将导致时间变化的协变量乘以分析时间的对数。如果 {opt tvc(tvarlist)} 在没有 {opt texp(exp)} 的情况下使用，Stata 将理解您是指 {cmd:texp(_t)}，因此会将时间变化的协变量乘以分析时间。

{pmore}
{opt tvc(tvarlist)} 和 {opt texp(exp)} 的更多解释见
{mansection ST stcrregRemarksandexamplesOptiontvc()andtestingtheproportional-subhazardsassumption:{it:选项 tvc() 和检验比例子风险假设}} 于 {bf:[ST] stcrreg}。

{phang}
{opth offset(varname)}, {opt constraints(constraints)}；见
         {helpb estimation options##offset():[R] 估计选项}。

{dlgtab: SE/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误差类型，包括对某些类型的错误指定具有鲁棒性的类型
({cmd:robust}), 允许组内相关性({cmd:cluster}
{it:clustvar})，以及使用自助法或重抽样法 ({cmd:bootstrap},
{cmd:jackknife})；见 {help vce_option_zh:[R] {it:vce_option}}。
对于每个单记录的 st 数据，{cmd:vce(robust)} 是默认值；对于多记录的 st 数据，{cmd:vce(cluster }{it:idvar}{cmd:)} 是默认值，其中 {it:idvar} 是先前已 {cmd:stset} 的 ID 变量。

{pmore}
基于标准 Hessian 的标准误 -- {it:vcetype}
{cmd:oim} -- 对于此模型并不统计上适用，因此不允许。

{phang}
{opt noadjust} 用于 {cmd:vce(robust)} 或 {cmd:vce(cluster}
{it:clustvar}{cmd:)}。{opt noadjust} 防止估计的方差矩阵被乘以 N/(N-1) 或 g/(g-1)，其中 g 是聚类的数量。默认的调整是相当任意的，因为并不总是明确如何计算观察值或聚类。然而在这种情况下，调整可能偏向于 1，所以我们仍然建议进行调整。

{dlgtab: 报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt noshr} 指定显示系数而不是指数系数或子风险比。此选项仅影响结果的显示方式，而不影响它们的估计。您可以在估计时或在重新显示之前估计的结果时指定 {opt noshr}（通过输入不带变量列表的 {cmd:stcrreg}）。

{phang}
{opt noshow} 防止 {cmd:stcrreg} 显示关键的 st 变量。此选项很少使用，因为大多数人会输入 {cmd:stset, show} 或 
{cmd:stset, noshow} 来设置是否希望在每个 st 命令的输出顶部看到这些变量；见 {manhelp stset ST}。

{phang}
{opt noheader} 抑制输出中的头信息。系数表仍然显示。您可以在估计时或在重新显示之前估计的结果时指定 {opt noheader}。

{phang}
{opt notable} 抑制输出中的系数表。头信息仍会显示。您可以在估计时或在重新显示之前估计的结果时指定 {opt notable}。

{phang}
{opt nodisplay} 抑制输出。迭代日志仍然显示。

{phang}
{opt nocnsreport}; 见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

{marker maximize_options}{...}
{dlgtab:最大化}
 
{phang}
{it:maximize_options}：
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:算法规格)},
{opt iter:ate(#)},
[{cmd:no}]{opt log},
{opt tr:ace},
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)}, {opt ltol:erance(#)},
{opt nrtol:erance(#)}, {opt nonrtol:erance}, 和
{opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。
 
{pstd}
以下选项在 {opt stcrreg} 中可用，但不在对话框中显示：

{phang}
{opt collinear}, {opt coeflegend}; 见
     {helpb estimation options:[R] 估计选项}。

 
{marker examples}{...}
{title:示例}
 
{pstd}设置{p_end}
{phang2}{cmd:. webuse hypoxia}{p_end}

{pstd}声明数据为生存时间数据并声明关注的失败事件，即要建模的事件{p_end}
{phang2}{cmd:. stset dftime, failure(failtype==1)}{p_end}

{pstd}拟合竞争风险模型，{cmd:failtype==2} 作为竞争事件{p_end}
{phang2}{cmd:. stcrreg ifp tumsize pelnode, compete(failtype==2)}{p_end}

{pstd}重播结果，但显示系数而不是子风险比{p_end}
{phang2}{cmd:. stcrreg, noshr}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:stcrreg} 在 {cmd:e()} 中存储以下内容：

{synoptset 22 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_sub)}}受试者数量{p_end}
{synopt:{cmd:e(N_fail)}}失败数量{p_end}
{synopt:{cmd:e(N_compete)}}竞争事件数量{p_end}
{synopt:{cmd:e(N_censor)}}被审查的受试者数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}总体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数伪似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(chi2)}}卡方值{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(fmult)}}{cmd:1} 如果 > 1 失败事件，{cmd:0} 其他{p_end}
{synopt:{cmd:e(crmult)}}{cmd:1} 如果 > 1 竞争事件，{cmd:0} 其他{p_end}
{synopt:{cmd:e(fnz)}}{cmd:1} 如果非零则表示失败，{cmd:0} 
其他{p_end}
{synopt:{cmd:e(crnz)}}{cmd:1} 如果非零则表示竞争，{cmd:0} 
其他{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 其他{p_end}

{synoptset 22 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:stcrreg}{p_end}
{synopt:{cmd:e(cmdline)}}按输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(mainvars)}}主方程中的变量{p_end}
{synopt:{cmd:e(tvc)}}时间变化的协变量{p_end}
{synopt:{cmd:e(texp)}}用于时间变化协变量的函数{p_end}
{synopt:{cmd:e(fevent)}}估计输出中的失败事件{p_end}
{synopt:{cmd:e(crevent)}}估计输出中的竞争事件{p_end}
{synopt:{cmd:e(compete)}}输入的竞争事件{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset1)}}偏移量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}最大化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；是否执行
最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 22 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 22 tabbed}{...}
{p2col 5 15 19 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考文献}

{marker FG1999}{...}
{phang}
Fine, J. P., and R. J. Gray. 1999. A proportional hazards model for the
subdistribution of a competing risk.
{it:美国统计协会期刊} 94: 496-509.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stcrreg.sthlp>}