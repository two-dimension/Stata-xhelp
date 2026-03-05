{smcl}
{* *! version 1.0.0  14may2019}{...}
{viewerdialog cmxtmixlogit "dialog cmxtmixlogit"}{...}
{vieweralsosee "[CM] cmxtmixlogit" "mansection CM cmxtmixlogit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] cmxtmixlogit postestimation" "help cmxtmixlogit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] cmmixlogit" "help cmmixlogit_zh"}{...}
{vieweralsosee "[CM] cmset" "help cmset_zh"}{...}
{vieweralsosee "[CM] margins" "help cm margins"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "cmxtmixlogit_zh##syntax"}{...}
{viewerjumpto "Menu" "cmxtmixlogit_zh##menu"}{...}
{viewerjumpto "Description" "cmxtmixlogit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "cmxtmixlogit_zh##linkspdf"}{...}
{viewerjumpto "Options" "cmxtmixlogit_zh##options"}{...}
{viewerjumpto "Examples" "cmxtmixlogit_zh##examples"}{...}
{viewerjumpto "Stored results" "cmxtmixlogit_zh##results"}
{help cmxtmixlogit:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[CM] cmxtmixlogit} {hline 2}}面板数据混合逻辑选择模型{p_end}
{p2col:}({mansection CM cmxtmixlogit:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:cmxtmixlogit}
{depvar}
[{indepvars}]
{ifin}
[{help cmxtmixlogit##weight:{it:weight}}]
[{cmd:,} {it:options}]

{phang}
{it:depvar} 等于 1 标识被选择的替代方案，
而 0 表示未被选择的替代方案。
每个案例只能有一个被选择的替代方案。

{phang}
{it:indepvars} 指定具有固定系数的替代特定协变量。

{synoptset 33 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opth casev:ars(varlist)}}选择集特定变量{p_end}
{synopt :{cmdab:r:andom(}{varlist}[{cmd:,} {help cmxtmixlogit##distribution:{it:distribution}}]{cmd:)}}指定具有随机系数的变量及其系数的分布{p_end}
{synopt :{opth corr:metric(cmxtmixlogit##metric:metric)}}相关随机系数的相关性度量{p_end}
{synopt :{cmdab:base:alternative(}{it:#}{c |}{it:lbl}{c |}{it:str}{cmd:)}}用于规范化效用水平的替代方案{p_end}
{synopt :{opt nocons:tant}}压制替代特定的常量项{p_end}
{synopt :{opt altwise}}使用替代方式删除，而不是案例方式删除{p_end}
{synopt :{opth const:raints(estimation_options##constraints():constraints)}}应用指定的线性约束{p_end}

{syntab:标准误/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt opg}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help cmxtmixlogit##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab:积分}
{synopt :{opth intm:ethod(cmxtmixlogit##seqspec:seqspec)}}指定用于Monte Carlo积分的点集{p_end}
{synopt :{opt intp:oints(#)}}指定每个序列中的点数{p_end}
{synopt :{opt intb:urn(#)}}指定在Hammersley或Halton序列中的起始索引{p_end}
{synopt :{opt ints:eed(#)}}指定伪随机序列的随机数种子{p_end}
{synopt :{cmd:favor(}{cmdab:spe:ed}{c |}{cmdab:spa:ce)}}在生成积分点时优先考虑速度还是空间{p_end}

{syntab:最大化}
{synopt :{it:{help cmxtmixlogit##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt :{opt col:linear}}保留共线性变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{marker distribution}{...}
{synoptset 33}{...}
{synopthdr:distribution}
{synoptline}
{synopt :{opt n:ormal}}高斯分布的随机系数；默认值{p_end}
{synopt :{opt corr:elated}}相关的高斯分布随机系数{p_end}
{synopt :{opt ln:ormal}}对数正态分布随机系数{p_end}
{synopt :{opt tn:ormal}}截断正态分布随机系数{p_end}
{synopt :{opt u:niform}}均匀分布随机系数{p_end}
{synopt :{opt tr:iangle}}三角分布随机系数{p_end}
{synoptline}

{marker metric}{...}
{synopthdr:metric}
{synoptline}
{synopt :{opt correlation}}标准差和相关性；默认值{p_end}
{synopt :{opt covariance}}方差和协方差{p_end}
{synopt :{opt cholesky}}Cholesky因子{p_end}
{synoptline}

{marker seqspec}{...}
{pstd}
{it:seqspec} 是

        {it:seqtype}[{cmd:,} {cmd:antithetics}{c |}{cmd:mantithetics}]

{marker seqtype}{...}
{synopthdr:seqtype}
{synoptline}
{synopt :{opt hammersley}}Hammersley点集；默认值{p_end}
{synopt :{opt halton}}Halton点集{p_end}
{synopt :{opt random}}均匀伪随机点集{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
在使用 {cmd:cmxtmixlogit} 之前，您必须 {cmd:cmset} 数据；
请参见 {manhelp cmset CM}.{p_end}
{p 4 6 2}
{it:indepvars} 和 {it:varlist} 可以包含因子变量和时间序列运算符；请参见 {help fvvarlist_zh} 和 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
{cmd:bootstrap}、{cmd:by}、{cmd:jackknife}、{cmd:statsby} 和 {cmd:svy} 是允许的；请参见 {help prefix_zh}.{p_end}
INCLUDE help weight_boot
{p 4 6 2}
{cmd:vce()} 和权重
INCLUDE help weight_svy
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}s、{cmd:iweight}s 和 {cmd:pweight}s 是允许的；请参见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:collinear} 和 {cmd:coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}
有关估计后可用特征，请参见 {manhelp cmxtmixlogit_postestimation CM:cmxtmixlogit postestimation}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 选择模型 > 面板数据混合逻辑模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:cmxtmixlogit} 适合于选择数据的混合逻辑模型（MLM），在这种情况下，决策者在不同时间段内进行重复选择。
来自同一单位的重复案例数据也称为面板数据。
面板数据混合逻辑模型使用随机系数来模拟不同替代方案之间选择的相关性。
随机系数是指在替代方案之间变化的变量（并且可能在个体和选择集之间变化），称为替代特定变量。

{pstd}
选择间的相关性放宽了传统多项逻辑模型（通过 {help mlogit_zh} 拟合）和选择模型条件逻辑模型（通过 {help cmclogit_zh} 拟合）所要求的无关替代方案独立性（IIA）假设。

{pstd}
在面板数据应用的上下文中，MLM 针对每个时间段的每个替代方案选择的概率进行建模，而不是对选择每个替代方案建模单一概率，正如横截面数据的情况。
横截面数据的混合逻辑模型通过 {help cmmixlogit_zh} 拟合。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection CM cmxtmixlogitQuickstart:快速入门}

        {mansection CM cmxtmixlogitRemarksandexamples:备注和示例}

        {mansection CM cmxtmixlogitMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth casevars(varlist)} 指定每个案例恒定的案例特定变量，即选择集。如果有最多 A 个替代方案，将会有 A - 1 组系数与 {opt casevars()} 关联。

{phang}
{cmd:random(}{varlist} [{cmd:,} {help cmxtmixlogit##distribution:{it:distribution}}]{cmd:)} 指定具有随机系数的替代特定变量，并可以选择随机系数的假设分布。默认分布为 {cmd:normal}，即高斯分布的随机系数。{it:distribution} 也可以是 {cmd:correlated}、{cmd:lnormal}、{cmd:tnormal}、{cmd:uniform} 或 {cmd:triangle}。可以多次指定 {cmd:random()} 来指定不同系数分布对应的不同变量集。

{phang}
{opth corrmetric:(cmxtmixlogit##metric:metric)} 指定相关随机系数的估计度量。
{cmd:corrmetric(correlation)} 为默认选项，会估计随机系数的标准差和相关性。
{cmd:corrmetric(covariance)} 估计方差和协方差，{cmd:corrmetric(cholesky)} 估计 Cholesky 因子。仅在指定了 {cmd:random(}{varlist}{cmd:, correlated)} 时允许使用 {cmd:corrmetric()}。

{phang}
{cmd:basealternative(}{it:#}{c |}{it:lbl}{c |}{it:str}{cmd:)} 设置规范化效用水平的替代方案。基准替代方案可以在替代变量为数字时指定为数字，当替代变量是数字且有 {help label_zh:value label} 时可指定为标签，或者当其为字符串变量时可指定为字符串。默认基准替代方案为选择频率最高的替代方案。如果既未指定替代特定常量又未指定案例特定变量，则此选项会被忽略。

{phang}
{opt noconstant} 压制 A - 1 的替代特定常量项。

{phang}
{opt altwise} 指定在因变量缺失值时使用逐个替代的方式删除观察值。默认是采用案例方式删除；也就是说，如果遇到任何缺失值，则会省略构成案例的整个观察组。此选项不适用于通过 {cmd:if} 或 {cmd:in} 限定符或 {cmd:by} 前缀排除的观察值；无论是否指定 {cmd:altwise}，这些观察值都将始终逐个替代方式处理。

{phang}
{opt constraints(constraints)}；见 {helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健}

INCLUDE help vce_asymptall

{pmore}
指定 {cmd:vce(robust)} 相当于指定 {cmd:vce(cluster} {it:caseid}{cmd:)}。

{pmore}
如果指定 {cmd:vce(bootstrap)} 或 {cmd:vce(jackknife)}，您还必须定义 {cmd:basealternative()}。

{dlgtab:报告}

{phang}
{opt level(#)}, {cmd:nocnsreport}；见 {helpb estimation options:[R] 估计选项}。

INCLUDE help displayopts_list

{dlgtab:积分}

{phang}
{cmd:intmethod(}{help cmxtmixlogit##seqtype:{it:seqtype}}[{cmd:,} {cmd:antithetics}{c |}{cmd:mantithetics}]{cmd:)} 指定在 Monte Carlo 积分中生成点集的方法。默认选项 {cmd:intmethod(hammersley)} 使用 Hammersley 序列；{cmd:intmethod(halton)} 使用 Halton 序列；而 {cmd:intmethod(random)} 使用一组均匀随机数。

{phang2}
{cmd:antithetics} 和 {cmd:mantithetics} 分别指定生成一维对立序列或多维对立序列，而不是请求的标准实现 {it:seqtype}。这些方法能够提高 Monte Carlo 积分的准确性，但会增加计算时间；见 {mansection CM cmxtmixlogitMethodsandformulas:{it:方法和公式}} 在 {bf:[CM] cmxtmixlogit}。

{phang}
{opt intpoints(#)} 指定用于 Monte Carlo 积分的点数。默认点数为模型复杂性和积分方法的函数。如果使用 {cmd:intmethod(hammersley)} 或 {cmd:intmethod(halton)}，默认为 
{bind:500 + floor(2.5 sqrt[N_c{ln(r + 5) + v}])}，其中 N_c 是面板数量，r 是模型中的随机系数数量，v 是方差参数的数量。如果使用 {cmd:intmethod(hammersley, mantithetics)} 或 {cmd:intmethod(halton, mantithetics)}，积分点的数量为 {bind:250 + floor(0.5 sqrt[N_c{ln(r + 5) + v}])}。如果使用 {cmd:intmethod(random)}，则点数是 {cmd:intmethod(hammersley)} 和 {cmd:intmethod(halton)} 使用的点数的两倍。较大的 {cmd:intpoints()} 值提供更好的对数似然近似，但会增加计算时间。

{phang}
{opt intburn(#)} 指定在 Hammersley 或 Halton 序列中的起始位置，有助于减少每个维度序列之间的相关性。默认是丢弃每个序列的前 n 个初始元素，其中 n 是用于生成序列的最大素数。此选项不能与 {cmd:intmethod(random)} 一起指定。

{phang}
{opt intseed(#)} 指定用于生成均匀伪随机序列的种子。此选项只能与 {cmd:intmethod(random)} 一起指定。{it:#} 必须是 0 和 2^{31} - 1 之间的整数。默认是使用 Stata 的均匀随机数生成器的当前种子值；见 {helpb set seed:[R] 设定种子}。

{phang}
{cmd:favor(speed{c |}space)} 指示 {cmd:cmxtmixlogit} 在生成积分点时优先考虑速度或空间。默认值为 {cmd:favor(speed)}。当偏向速度时，积分点生成一次并存储在内存中，从而加快似然评估的速度。当有许多案例或者用户在 {opt intpoints(#)} 中指定了许多积分点时，可以看到这种速度提升。偏向空间时，积分点会在每个似然评估时重复生成。

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}、
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}、
{opt iter:ate(#)}、
[{cmd:no}]{cmd:log}、
{opt tr:ace}、
{opt grad:ient}、
{opt showstep}、
{opt hess:ian}、
{opt showtol:erance}、
{opt tol:erance(#)}、
{opt ltol:erance(#)}、
{opt nrtol:erance(#)}、
{opt nonrtol:erance}，以及
{opt from(init_specs)}；
见 {help maximize_zh:[R] 最大化}。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会重置默认 {it:vcetype} 为 {cmd:vce(opg)}。

{pstd}
以下选项可与 {cmd:cmxtmixlogit} 使用，但未在对话框中显示：

{phang}
{opt collinear}、{opt coeflegend}；见 {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse transport}{p_end}
{phang2}{cmd:. cmset id t alt}{p_end}

{pstd}拟合面板数据混合逻辑选择模型{p_end}
{phang2}{cmd:. cmxtmixlogit choice trcost, random(trtime)}{p_end}

{pstd}与上面相同，但包括案例特定协变量 {cmd:age} 和 {cmd:income}{p_end}
{phang2}{cmd:. cmxtmixlogit choice trcost, casevars(age income) random(trtime)}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:cmxtmixlogit} 将以下内容存储在 {cmd:e()} 中：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt :{cmd:e(N)}}观察数量{p_end}
{synopt :{cmd:e(N_case)}}案例数量{p_end}
{synopt :{cmd:e(N_panel)}}面板数量{p_end}
{synopt :{cmd:e(N_ic)}}贝叶斯信息准则的 N (BIC){p_end}
{synopt :{cmd:e(N_clust)}}聚类数量{p_end}
{synopt :{cmd:e(k)}}参数数量{p_end}
{synopt :{cmd:e(k_alt)}}替代方案数量{p_end}
{synopt :{cmd:e(k_casevars)}}案例特定变量的数量{p_end}
{synopt :{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt :{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt :{cmd:e(df_m)}}模型自由度{p_end}
{synopt :{cmd:e(df_c)}}比较测试自由度{p_end}
{synopt :{cmd:e(ll)}}对数模拟似然{p_end}
{synopt :{cmd:e(ll_c)}}比较模型的对数似然{p_end}
{synopt :{cmd:e(const)}}常数指示符{p_end}
{synopt :{cmd:e(intpoints)}}原始积分点数量{p_end}
{synopt :{cmd:e(lsequence)}}每个积分序列的长度{p_end}
{synopt :{cmd:e(intburn)}}起始序列索引{p_end}
{synopt :{cmd:e(chi2)}}卡方{p_end}
{synopt :{cmd:e(chi2_c)}}比较测试的卡方{p_end}
{synopt :{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt :{cmd:e(p_c)}}比较测试的 p 值{p_end}
{synopt :{cmd:e(alt_min)}}最小替代方案数量{p_end}
{synopt :{cmd:e(alt_avg)}}平均替代方案数量{p_end}
{synopt :{cmd:e(alt_max)}}最大替代方案数量{p_end}
{synopt :{cmd:e(t_avg)}}每个面板的时间点平均数量{p_end}
{synopt :{cmd:e(t_min)}}每个面板的最小时间点数量{p_end}
{synopt :{cmd:e(t_max)}}每个面板的最大时间点数量{p_end}
{synopt :{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt :{cmd:e(ic)}}迭代次数{p_end}
{synopt :{cmd:e(rc)}}返回代码{p_end}
{synopt :{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{p2col 5 25 29 2: 宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:cmxtmixlogit}{p_end}
{synopt :{cmd:e(cmdline)}}输入的命令{p_end}
{synopt :{cmd:e(depvar)}}因变量的名称{p_end}
{synopt :{cmd:e(caseid)}}案例 ID 变量的名称{p_end}
{synopt :{cmd:e(timevar)}}时间变量的名称{p_end}
{synopt :{cmd:e(altvar)}}替代变量的名称{p_end}
{synopt :{cmd:e(alteqs)}}替代方程名称{p_end}
{synopt :{cmd:e(alt}{it:#})}}替代标签{p_end}
{synopt :{cmd:e(base)}}基准替代方案{p_end}
{synopt :{cmd:e(corrmetric)}}相关随机系数的相关性度量{p_end}
{synopt :{cmd:e(wtype)}}权重类型{p_end}
{synopt :{cmd:e(wexp)}}权重表达式{p_end}
{synopt :{cmd:e(marktype)}}{cmd:casewise} 或 {cmd:altwise}，标记类型{p_end}
{synopt :{cmd:e(key_N_ic)}}{cmd:cases}，贝叶斯信息准则（BIC）的 N 键{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt :{cmd:e(chi2type)}}卡方的类型{p_end}
{synopt :{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt :{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt :{cmd:e(opt)}}优化类型{p_end}
{synopt :{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是进行最大化还是最小化{p_end}
{synopt :{cmd:e(ml_method)}} {cmd:ml} 方法的类型{p_end}
{synopt :{cmd:e(intmethod)}}用于生成序列的技术{p_end}
{synopt :{cmd:e(sequence)}}序列的类型{p_end}
{synopt :{cmd:e(mc_rngstate)}}使用的随机数状态{p_end}
{synopt :{cmd:e(user)}}用于似然评估的程序名称{p_end}
{synopt :{cmd:e(technique)}}最大化技术{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt :{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsok)}}通过 {cmd:margins} 允许的预测{p_end}
{synopt :{cmd:e(marginsnotok)}}通过 {cmd:margins} 禁止的预测{p_end}
{synopt :{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt :{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 25 29 2: 矩阵}{p_end}
{synopt :{cmd:e(b)}}系数向量{p_end}
{synopt :{cmd:e(altvals)}}替代值{p_end}
{synopt :{cmd:e(Cns)}}约束矩阵{p_end}
{synopt :{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt :{cmd:e(gradient)}}梯度向量{p_end}
{synopt :{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt :{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{p2col 5 25 29 2: 矩阵}{p_end}
{synopt :{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cmxtmixlogit.sthlp>}