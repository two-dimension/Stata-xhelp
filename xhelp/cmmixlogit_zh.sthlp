{smcl}
{* *! version 1.0.0  28apr2019}{...}
{viewerdialog cmmixlogit "dialog cmmixlogit"}{...}
{vieweralsosee "[CM] cmmixlogit" "mansection CM cmmixlogit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] cmmixlogit postestimation" "help cmmixlogit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] cmclogit" "help cmclogit_zh"}{...}
{vieweralsosee "[CM] cmmprobit" "help cmmprobit_zh"}{...}
{vieweralsosee "[CM] cmset" "help cmset_zh"}{...}
{vieweralsosee "[CM] cmxtmixlogit" "help cmxtmixlogit_zh"}{...}
{vieweralsosee "[CM] margins" "help cm margins"}{...}
{vieweralsosee "[CM] nlogit" "help nlogit_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "cmmixlogit_zh##syntax"}{...}
{viewerjumpto "Menu" "cmmixlogit_zh##menu"}{...}
{viewerjumpto "Description" "cmmixlogit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "cmmixlogit_zh##linkspdf"}{...}
{viewerjumpto "Options" "cmmixlogit_zh##options"}{...}
{viewerjumpto "Examples" "cmmixlogit_zh##examples"}{...}
{viewerjumpto "Stored results" "cmmixlogit_zh##results"}
{help cmmixlogit:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[CM] cmmixlogit} {hline 2}}混合逻辑选择模型{p_end}
{p2col:}({mansection CM cmmixlogit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:cmmixlogit}
{depvar}
[{indepvars}]
{ifin}
[{help cmmixlogit##weight:{it:weight}}]
[{cmd:,} {it:options}]

{phang}
{it:depvar} 等于 1 表示选择的备选项，而 0 表示未被选择的备选项。
每个案例只能有一个选择的备选项。{p_end}
{phang}
{it:indepvars} 指定具有固定系数的备选项特定协变量。

{synoptset 33 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opth casev:ars(varlist)}}案例特定变量{p_end}
{synopt :{cmdab:r:andom(}{varlist}[{cmd:,} {help cmmixlogit##distribution:{it:distribution}}]{cmd:)}}指定具有随机系数和系数分布的变量{p_end}
{synopt :{opth corr:metric(cmmixlogit##metric:metric)}}相关随机系数的相关度量{p_end}
{synopt :{cmdab:base:alternative(}{it:#}{c |}{it:lbl}{c |}{it:str}{cmd:)}}用于归一化位置的备选项{p_end}
{synopt :{opt nocons:tant}}抑制备选项特定的常数项{p_end}
{synopt :{opt altwise}}使用备选项删减而不是案例删减{p_end}
{synopt :{opth const:raints(estimation_options##constraints():constraints)}}应用指定的线性约束{p_end}

{syntab:标准误/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:oim},
{opt r:obust}, {opt cl:uster} {it:clustvar}, {opt opg},
{opt boot:strap}, 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设定置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help cmmixlogit##display_options:display_options}}}控制
包含帮助短描述-显示选项

{syntab:积分}
{synopt :{opth intm:ethod(cmmixlogit##seqspec:seqspec)}}指定用于蒙特卡罗积分的点集{p_end}
{synopt :{opt intp:oints(#)}}指定每个序列中的点数{p_end}
{synopt :{opt intb:urn(#)}}指定哈默斯利或哈尔顿序列中的起始索引{p_end}
{synopt :{opt ints:eed(#)}}为伪随机序列指定随机数种子{p_end}
{synopt :{cmd:favor(}{cmdab:spe:ed}{c |}{cmdab:spa:ce)}}在生成积分点时优先考虑速度或空间{p_end}

{syntab:最大化}
{synopt :{it:{help cmmixlogit##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt :{opt col:linear}}保留共线变量{p_end}
包括帮助短描述-系数图例
{synoptline}
{p2colreset}{...}

{marker distribution}{...}
{synoptset 33}{...}
{synopthdr:分布}
{synoptline}
{synopt :{opt n:ormal}}高斯分布的随机系数；默认值{p_end}
{synopt :{opt corr:elated}}相关的高斯分布随机系数{p_end}
{synopt :{opt ln:ormal}}对数正态分布的随机系数{p_end}
{synopt :{opt tn:ormal}}截断正态分布的随机系数{p_end}
{synopt :{opt u:niform}}均匀分布的随机系数{p_end}
{synopt :{opt tr:iangle}}三角分布的随机系数{p_end}
{synoptline}

{marker metric}{...}
{synopthdr:度量}
{synoptline}
{synopt :{opt correlation}}标准差和相关性；默认{p_end}
{synopt :{opt covariance}}方差和协方差{p_end}
{synopt :{opt cholesky}}乔尔斯基因数{p_end}
{synoptline}

{marker seqspec}{...}
{pstd}
{it:seqspec} 是

        {it:seqtype}[{cmd:,} {cmd:antithetics}{c |}{cmd:mantithetics}]

{marker seqtype}{...}
{synopthdr:序列类型}
{synoptline}
{synopt :{opt hammersley}}哈默斯利点集；默认{p_end}
{synopt :{opt halton}}哈尔顿点集{p_end}
{synopt :{opt random}}均匀伪随机点集{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
在使用 {cmd:cmmixlogit} 之前，您必须 {cmd:cmset} 您的数据；请参阅
{manhelp cmset CM}.{p_end}
包括帮助 fvvarlist2
{p 4 6 2}
{cmd:bootstrap},
{cmd:by},
{cmd:jackknife},
{cmd:statsby},
和
{cmd:svy}
被允许；请参阅 {help prefix_zh}.{p_end}
包括帮助 weight_boot
{p 4 6 2}
{cmd:vce()} 和权重
包括帮助 weight_svy
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}s, {cmd:iweight}s, 和 {cmd:pweight}s 是允许的；请参阅
{help weight_zh}.{p_end}
{p 4 6 2}
{cmd:collinear} 和 {cmd:coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}
请参阅 {manhelp cmmixlogit_postestimation CM:cmmixlogit postestimation} 了解
估计后的可用特性.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 选择模型 > 混合逻辑模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:cmmixlogit} 拟合混合逻辑选择模型，也称为混合多项式逻辑模型或随机参数逻辑模型，该模型使用随机系数来建模选择在备选项之间的相关性。随机系数是针对在案例和备选项之间变化的变量，即备选项特定变量。

{pstd}
跨备选项选择的相关性放宽了由传统的多项式逻辑模型 {help mlogit_zh} 和条件逻辑选择模型 {help cmclogit_zh} 强加的无关备选项独立性 (IIA) 特性。

{pstd}
有关面板数据的混合逻辑选择模型，请参见
{manhelp cmxtmixlogit CM}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection CM cmmixlogitQuickstart:快速开始}

        {mansection CM cmmixlogitRemarksandexamples:备注和示例}

        {mansection CM cmmixlogitMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth casevars(varlist)} 指定每个案例都是常量的案例特定变量。如果有至多 A 个备选项，则将会有 A - 1 组系数与 {cmd:casevars()} 相关联。

{phang}
{cmd:random(}{varlist}[{cmd:,} {help cmmixlogit##distribution:{it:distribution}}]{cmd:)} 指定具有随机系数的备选项特定变量，并可选地指定随机系数的假定分布。默认分布为 {cmd:normal}，即高斯分布的随机系数。{it:distribution} 还可以是 {cmd:correlated}、{cmd:lnormal}、{cmd:tnormal}、{cmd:uniform} 或 {cmd:triangle}。可以多次指定 {cmd:random()} 以指定与不同系数分布相对应的不同变量集。

{phang}
{opth corrmetric:(cmmixlogit##metric:metric)} 指定相关随机系数的估计度量。 {cmd:corrmetric(correlation)}，这是默认值，估计随机系数的标准差和相关性。{cmd:corrmetric(covariance)} 估计方差和协方差，而 {cmd:corrmetric(cholesky)} 估计乔尔斯基因数。仅当指定了 {cmd:random(}{varlist}{cmd:, correlated)} 时，{cmd:corrmetric()} 才被允许。

{phang}
{cmd:basealternative(}{it:#}{c |}{it:lbl}{c |}{it:str}{cmd:)} 设置归一化效用水平的备选项。可以在备选项变量为数字时将基准备选项指定为数字，在备选项变量为数字且具有 {help label_zh:value label} 时指定为标签，或者在其为字符串变量时指定为字符串。默认是选择频率最高的备选项。如果未指定备选项特定常数或案例特定变量，则忽略此选项。

{phang}
{cmd:noconstant} 抑制 A - 1 个备选项特定的常数项。

{phang}
{cmd:altwise} 指定在因变量中的缺失值导致观察值被忽略时采用备选项删减。默认是使用案例删减；也就是说，如果遇到任何缺失值，则整个案例组的观察值会被排除。此选项不适用于因 {cmd:if} 或 {cmd:in} 限定符或 {cmd:by} 前缀排除的观察值；这些观察值始终按照备选项进行处理，而不论是否指定了 {cmd:altwise}。

{phang}
{opt constraints(constraints)}；请参阅
{helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健}

包括帮助 vce_asymptall

{pmore}
指定 {cmd:vce(robust)} 相当于指定 {cmd:vce(cluster} {it:caseid}{cmd:)}。

{pmore}
如果指定 {cmd:vce(bootstrap)} 或 {cmd:vce(jackknife)}，则您还必须指定 {cmd:basealternative()}。

{dlgtab:报告}

{phang}
{opt level(#)}, {opt nocnsreport}; 请参阅
{helpb estimation options:[R] 估计选项}。

包括帮助 displayopts_list

{dlgtab:积分}

{phang}
{cmd:intmethod(}{help cmmixlogit##seqtype:{it:seqtype}}[{cmd:,} {cmd:antithetics}{c |}{cmd:mantithetics}]{cmd:)} 
指定用于蒙特卡罗积分的点集生成方法。{cmd:intmethod(hammersley)}，默认，使用哈默斯利序列；{cmd:intmethod(halton)} 使用哈尔顿序列；{cmd:intmethod(random)} 使用均匀随机数序列。

{phang2}
{cmd:antithetics} 和 {cmd:mantithetics} 分别指定生成一维对称序列或多维对称序列，而不是标准实现的请求的 {it:seqtype}。这些方法在增加计算时间的情况下提高了蒙特卡罗积分的准确性；请参见
{mansection CM cmmixlogitMethodsandformulas:{it:方法和公式}}。

{phang}
{opt intpoints(#)} 指定在蒙特卡罗积分中使用的点数。默认点数是模型复杂性和积分方法的函数。
如果使用 {cmd:intmethod(hammersley)} 或 {cmd:intmethod(halton)}，则默认值为 {bind:500 + floor(2.5 sqrt[N_c {ln(r + 5) + v}])}，
其中 N_c 为案例数， 
r 为模型中的随机系数数目， 
v 为方差参数的数量。
如果使用 {cmd:intmethod(hammersley, mantithetics)} 或
{cmd:intmethod(halton, mantithetics)}，那么
积分点数是 
{bind:250 + floor(0.5 sqrt[N_c{ln(r + 5) + v}])}。
如果使用 {cmd:intmethod(random)}，则点数是 
使用 {cmd:intmethod(hammersley)} 和 {cmd:intmethod(halton)} 所用点数的两倍。
更大的 {cmd:intpoints()} 值可以提供更好的对数的近似值 
且会增加计算时间。

{phang}
{opt intburn(#)} 指定在哈默斯利或哈尔顿序列中的起始位置，以帮助减少每个维度序列之间的相关性。默认是丢弃每个序列中的前 n 个初始元素，其中 n 是生成序列所使用的最大素数。此选项不能与 {cmd:intmethod(random)} 一起指定。

{phang}
{opt intseed(#)} 指定用于生成均匀伪随机序列的种子。仅可以与 {cmd:intmethod(random)} 一起指定。{it:#} 必须是 0 到 2^{31} - 1 之间的整数。默认值是使用 Stata 的均匀随机数生成器中的当前种子值；请参阅 {help set_seed_zh:[R] 设置种子}。

{phang}
{cmd:favor(speed{c |}space)} 指示 {cmd:cmmixlogit} 在生成积分点时优先考虑速度或空间。{cmd:favor(speed)} 是默认值。优先考虑速度时，积分点被一次性生成并存储在内存中，从而提高评估似然的速度。当案例数较多或用户在 {opt intpoints(#)} 中指定多个积分点时，可以看到这种速度提升。当优先考虑空间时，积分点在每次进行似然评估时都会重新生成。

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)},
{opt iter:ate(#)},
[{cmd:no}]{cmd:log},
{opt tr:ace},
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)},
{opt nonrtol:erance}, 和
{opt from(init_specs)};
请参阅 {help maximize_zh:[R] 最大化}。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会将默认值
{it:vcetype} 重置为 {cmd:vce(opg)}。

{pstd}
以下选项可与 {cmd:cmmixlogit} 一起使用，但不在
对话框中显示：

{phang}
{opt collinear}, {opt coeflegend}; 请参阅
{helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse inschoice}{p_end}
{phang2}{cmd:. cmset id insurance}{p_end}

{pstd}拟合固定系数的混合逻辑选择模型，针对 {cmd:premium}
和随机系数针对 {cmd:deductible}{p_end}
{phang2}{cmd:. cmmixlogit choice premium, random(deductible)}{p_end}

{pstd}拟合 {cmd:premium}
和 {cmd:deductible} 的相关随机系数模型{p_end}
{phang2}{cmd:. cmmixlogit choice, random(deductible premium, correlated)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:cmmixlogit} 在 {cmd:e()} 中存储如下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt :{cmd:e(N)}}观察数{p_end}
{synopt :{cmd:e(N_case)}}案例数{p_end}
{synopt :{cmd:e(N_ic)}} Bayesian 信息准则 (BIC) 的 N{p_end}
{synopt :{cmd:e(N_clust)}}集群数{p_end}
{synopt :{cmd:e(k)}}参数数{p_end}
{synopt :{cmd:e(k_alt)}}备选项数{p_end}
{synopt :{cmd:e(k_casevars)}}案例特定变量数{p_end}
{synopt :{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数{p_end}
{synopt :{cmd:e(k_eq_model)}} 整体模型测试中的方程数{p_end}
{synopt :{cmd:e(df_m)}}模型自由度{p_end}
{synopt :{cmd:e(df_c)}}比较测试的自由度{p_end}
{synopt :{cmd:e(ll)}}对数模拟似然{p_end}
{synopt :{cmd:e(ll_c)}}比较模型的对数似然{p_end}
{synopt :{cmd:e(const)}}常数指标{p_end}
{synopt :{cmd:e(intpoints)}}原始积分点数{p_end}
{synopt :{cmd:e(lsequence)}}每个积分序列的长度{p_end}
{synopt :{cmd:e(intburn)}}起始序列索引{p_end}
{synopt :{cmd:e(chi2)}}卡方{p_end}
{synopt :{cmd:e(chi2_c)}}比较测试中的卡方{p_end}
{synopt :{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt :{cmd:e(p_c)}}比较测试的 p 值{p_end}
{synopt :{cmd:e(alt_min)}}最低备选项数{p_end}
{synopt :{cmd:e(alt_avg)}}平均备选项数{p_end}
{synopt :{cmd:e(alt_max)}}最大备选项数{p_end}
{synopt :{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt :{cmd:e(ic)}}迭代次数{p_end}
{synopt :{cmd:e(rc)}}返回代码{p_end}
{synopt :{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{p2col 5 25 29 2: 宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:cmmixlogit}{p_end}
{synopt :{cmd:e(cmdline)}}按原样输入的命令{p_end}
{synopt :{cmd:e(depvar)}}因变量名称{p_end}
{synopt :{cmd:e(caseid)}}案例 ID 变量名称{p_end}
{synopt :{cmd:e(altvar)}}备选项变量名称{p_end}
{synopt :{cmd:e(alteqs)}}备选项方程名称{p_end}
{synopt :{cmd:e(alt}{it:#}{cmd:)}}备选项标签{p_end}
{synopt :{cmd:e(base)}}基准备选项{p_end}
{synopt :{cmd:e(corrmetric)}}相关随机系数的相关度量{p_end}
{synopt :{cmd:e(wtype)}}权重类型{p_end}
{synopt :{cmd:e(wexp)}}权重表达式{p_end}
{synopt :{cmd:e(marktype)}}{cmd:casewise} 或 {cmd:altwise}, 标记类型{p_end}
{synopt :{cmd:e(key_N_ic)}}{cmd:cases}, Bayesian 信息准则 (BIC) 的关键{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(clustvar)}}集群变量名称{p_end}
{synopt :{cmd:e(chi2type)}}卡方类型{p_end}
{synopt :{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt :{cmd:e(vcetype)}}标签用于标记标准误{p_end}
{synopt :{cmd:e(opt)}}优化类型{p_end}
{synopt :{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器是执行最大化或最小化{p_end}
{synopt :{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt :{cmd:e(intmethod)}}生成序列的技术{p_end}
{synopt :{cmd:e(sequence)}}序列的类型{p_end}
{synopt :{cmd:e(mc_rngstate)}}使用的随机数状态{p_end}
{synopt :{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt :{cmd:e(technique)}}最大化技术{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt :{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt :{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt :{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt :{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 25 29 2: 矩阵}{p_end}
{synopt :{cmd:e(b)}}系数向量{p_end}
{synopt :{cmd:e(altvals)}}备选值{p_end}
{synopt :{cmd:e(Cns)}}约束矩阵{p_end}
{synopt :{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt :{cmd:e(gradient)}}梯度向量{p_end}
{synopt :{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt :{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{p2col 5 25 29 2: 功能}{p_end}
{synopt :{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cmmixlogit.sthlp>}