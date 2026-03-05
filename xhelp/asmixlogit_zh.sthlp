{smcl}
{* *! version 1.0.4  01apr2019}{...}
{viewerdialog asmixlogit "dialog asmixlogit"}{...}
{vieweralsosee "之前记录的文档" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] asmixlogit 后期估计" "help asmixlogit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] asclogit" "help asclogit_zh"}{...}
{vieweralsosee "[R] asmprobit" "help asmprobit_zh"}{...}
{vieweralsosee "[R] asroprobit" "help asroprobit_zh"}{...}
{vieweralsosee "[R] mlogit" "help mlogit_zh"}{...}
{vieweralsosee "[SVY] svy 估计" "help svy estimation"}{...}
{viewerjumpto "语法" "asmixlogit_zh##syntax"}{...}
{viewerjumpto "菜单" "asmixlogit_zh##menu"}{...}
{viewerjumpto "描述" "asmixlogit_zh##description"}{...}
{viewerjumpto "选项" "asmixlogit_zh##options"}{...}
{viewerjumpto "示例" "asmixlogit_zh##examples"}{...}
{viewerjumpto "存储结果" "asmixlogit_zh##results"}
{help asmixlogit:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[R] asmixlogit} {hline 2}}替代特定的混合 logit 回归{p_end}
{p2col:}({browse "http://www.stata.com/manuals15/rasmixlogit.pdf":查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}

{pstd}
自 Stata 16 起，{cmd:asmixlogit} 仍可使用，但不再是 Stata 的官方组成部分。这是原始帮助文件，我们将不再进行更新，因此某些链接可能不再有效。

{pstd}
请参阅 {help cmmixlogit_zh} 以获取对 {cmd:asmixlogit} 的推荐替代方案。


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:asmixlogit}
{depvar}
[{indepvars}]
{ifin}
[{it:{help asmixlogit##weight:weight}}]{cmd:,}
{opth c:ase(varname:caseid)}
[{it:options}]

{phang}
{it:depvar} 为 1 时标识结果或选择的替代品，而 0 则表示未选择的替代品。每个案例只能选择一个替代品。

{phang}
{it:indepvars} 指定具有固定系数的特定于替代的协变量。

{synoptset 32 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent :* {opth c:ase(varname:caseid)}}使用变量 {it:caseid} 来识别案例{p_end}
{p2coldent :* {opth alt:ernatives(varname:altvar)}}使用 {it:altvar} 来识别每个案例的可用替代品{p_end}
{synopt :{opth casev:ars(varlist)}}案例特定变量{p_end}
{synopt :{opt nocons:tant}}抑制特定于替代的常数项{p_end}
{synopt :{cmdab:r:andom(}{varlist}[{cmd:,} {it:{help asmixlogit##distribution:distribution}}]{cmd:)}}指定具有随机系数及其系数分布的变量{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():constraints}}{cmd:)}}应用指定的线性约束{p_end}
{synopt :{opt col:linear}}保持共线变量{p_end}

{syntab:模型 2}
{synopt :{opth corr:metric(asmixlogit##metric:metric)}}相关随机系数的相关度量{p_end}
{synopt :{opt base:alternative(#|lbl|str)}}用于归一化位置的替代品{p_end}
{synopt :{opt altwise}}使用替代逐个删除，而不是逐案例删除{p_end}

{syntab:SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt opg}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help asmixlogit##display_options:display_options}}}控制
包括帮助短描述显示选项

{syntab:积分}
{synopt :{opth intm:ethod(asmixlogit##seqspec:seqspec)}}指定用于蒙特卡罗积分的点集{p_end}
{synopt :{opt intp:oints(#)}}指定每个序列中的点数{p_end}
{synopt :{opt intb:urn(#)}}指定在 Hammersley 或 Halton 序列中的起始索引{p_end}
{synopt :{opt ints:eed(#)}}指定随机数种子以生成伪随机序列{p_end}
{synopt :{cmd:favor(speed}|{cmd:space)}}在生成积分点时偏好速度或空间{p_end}

{syntab:最大化}
{synopt :{it:{help asmixlogit##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

包含帮助短描述系数图例
{synoptline}
{p2colreset}{...}

{marker metric}{...}
{synoptset 32}{...}
{synopthdr:metric}
{synoptline}
{synopt :{opt correlation}}标准差和相关度；默认值{p_end}
{synopt :{opt covariance}}方差和协方差{p_end}
{synopt :{opt cholesky}}Cholesky 因子{p_end}
{synoptline}

{marker distribution}{...}
{synopthdr:distribution}
{synoptline}
{synopt :{opt n:ormal}}高斯分布的随机系数；默认值{p_end}
{synopt :{opt corr:elated}}相关的高斯分布随机系数{p_end}
{synopt :{opt ln:ormal}}对数正态分布的随机系数{p_end}
{synopt :{opt tn:ormal}}截断正态分布的随机系数{p_end}
{synopt :{opt u:niform}}均匀分布的随机系数{p_end}
{synopt :{opt tr:iangle}}三角分布的随机系数{p_end}
{synoptline}

{marker seqspec}{...}
{pstd}
{it:seqspec} 是

{phang2}
{it:seqtype} [{cmd:,} {cmd:antithetics} | {cmd:mantithetics}]

{marker seqtype}{...}
{synopthdr:seqtype}
{synoptline}
{synopt :{opt hammersley}}Hammersley 点集；默认值{p_end}
{synopt :{opt halton}}Halton 点集{p_end}
{synopt :{opt random}}均匀伪随机点集{p_end}
{synoptline}

{p 4 6 2}
* {opt case(casevar)} 是必需的。
{opt alternatives(altvar)} 是必需的，以估计特定于替代的常数，或者如果指定了案例特定变量{p_end}
包含帮助 fvvarlist2
{p 4 6 2}
{opt bootstrap}、
{opt by}、
{opt jackknife}、
{opt statsby} 和
{opt svy}
是允许的；见 {help prefix_zh}.{p_end}
{p 4 6 2}权重与 {help bootstrap_zh} 前缀不允许使用{p_end}
{p 4 6 2}
{opt vce()} 及权重与 {help svy_zh} 前缀不允许使用{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}s、{opt iweight}s 和 {opt pweight}s 是允许的；见{help weights}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp asmixlogit_postestimation R:asmixlogit postestimation} 以获取估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 分类结果 > 混合 logit 模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:asmixlogit} 拟合一种特定于替代的混合 logit 模型，也称为混合多项 logit 模型或随机参数 logit 模型，使用随机系数来建模选择之间的相关性。随机系数位于在案例和替代之间变化的变量上，称为特定于替代的变量。选择之间的相关性放宽了由 {help mlogit_zh} 拟合的常规多项 logit 模型和由 {help asclogit_zh} 拟合的特定于替代的条件 logit 模型施加的无关替代的独立性（IIA）特性。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt case(caseid)} 指定用于识别每个案例的变量。此变量识别做出选择的个体或实体。{opt case()} 是必需的。

{phang}
{opt alternatives(altvar)} 指定用于识别每个案例的替代品的变量。每个案例的替代品数量可以有所不同。{cmd:alternatives()} 是必需的，以估计特定于替代的常数，或者如果在 {cmd:casevars()} 中指定了案例特定变量。

{phang}
{opth casevars(varlist)} 指定对每个 {opt case()} 恒定的案例特定变量。如果有最多 A 个替代品，将会有 A-1 组系数与 {opt casevars()} 相关联。

{phang}
{opt noconstant} 抑制 A-1 个特定于替代的常数项。

{phang}
{cmd:random(}{varlist}
[{cmd:,} {it:{help asmixlogit##distribution:distribution}}]{cmd:)} 指定要具有随机系数的特定于替代的变量，以及随机系数的假定分布（可选）。默认分布为 {cmd:normal}，即高斯分布的随机系数。{it:distribution} 也可以是 {cmd:correlated}、{cmd:lnormal}、{cmd:tnormal}、{cmd:uniform} 或 {cmd:triangle}。可以多次指定 {cmd:random()} 以指定对应于不同系数分布的变量集。

{phang}
{opt constraints(constraints)}、{opt collinear}；见 {helpb estimation options:[R] estimation options}。

{dlgtab:模型 2}

{phang}
{opth corrmetric:(asmixlogit##metric:metric)} 指定相关随机系数的估计度量。{cmd:corrmetric(correlation)} 为默认值，估计随机系数的标准差和相关性。{cmd:corrmetric(covariance)} 估计方差和协方差，{cmd:corrmetric(cholesky)} 估计 Cholesky 因子。
{cmd:corrmetric()} 仅在指定了 {cmd:random(}{varlist}{cmd:,} {cmd:correlated)} 时允许。

{phang}
{opt basealternative(#|lbl|str)} 指定用于归一化潜变量位置的替代品（也称为效用水平）。基准替代品可以指定为数字、标签或字符串。默认是最常见的替代品。如果未指定特定于替代的常数或案例特定变量，则此选项将被忽略。

{phang}
{opt altwise} 指定在标记由于变量缺失而要删除的观察值时使用逐替代删除。默认情况下，使用逐案例删除；也就是说，若遇到任何缺失值，将删除构成一案例的整个观察组。此选项不适用于通过 {cmd:if} 或 {cmd:in} 限定符或 {cmd:by} 前缀标记出的观察值。

{dlgtab:SE/稳健性}

包含帮助 vce_asymptall

{pmore}
指定 {cmd:vce(robust)} 等价于指定 {cmd:vce(cluster} {it:caseid}{cmd:)} 的效果。

{pmore}
如果指定 {cmd:vce(bootstrap)} 或 {cmd:vce(jackknife)}，则还必须指定 {cmd:basealternative()}。

{dlgtab:报告}

{phang}
{opt level(#)}、{opt nocnsreport}；见 {helpb estimation options##level():[R] estimation options}。

包含帮助 displayopts_list

{dlgtab:积分}

{phang}
{cmd:intmethod(}{it:{help asmixlogit##seqtype:seqtype}}
[{cmd:,} {cmd:antithetics} | {cmd:mantithetics}]{cmd:)} 
指定生成用于蒙特卡罗积分的点集的方法。{cmd:intmethod(hammersley)} 为默认值，使用 Hammersley 序列；{cmd:intmethod(halton)} 使用 Halton 序列；{cmd:intmethod(random)} 使用一组均匀随机数序列。

{phang2}
{cmd:antithetics} 和 {cmd:mantithetics} 分别指定生成一维反量序列或多维反量序列，而不是请求的 {it:seqtype} 的标准实现。这些方法提高了蒙特卡罗积分的准确性，但增加了计算时间；见 {mansection R asmixlogitMethodsandformulas:{it:方法和公式}}。

{phang}
{opt intpoints(#)} 指定在蒙特卡罗积分中使用的原始点的数量。默认点数是模型复杂性和积分方法的函数。如果使用 {cmd:intmethod(hammersley)} 或 {cmd:intmethod(halton)}，且模型中有 r 个不相关的随机系数，则默认值为 50 x floor(sqrt{r})。如果模型中还有相关随机系数，且 c 为相关参数的数量，另加 50 x floor(sqrt{c}) 个点。如果使用 {cmd:intmethod(random)}，则点数为前述值乘以 5。更大的 {cmd:intpoints()} 值提供更好的对数似然的近似，但代价是额外的计算时间。

{phang}
{opt intburn(#)} 指定在 Hammersley 或 Halton 序列中开始的位置，有助于减少每个维度序列之间的相关性。默认是从每个序列中丢弃前 n 个初始元素，其中 n 是用于生成序列的最大素数。此选项与 {cmd:intmethod(random)} 不得同时指定。

{phang}
{opt intseed(#)} 指定用于生成均匀伪随机序列的种子。此选项仅可与 {cmd:intmethod(random)} 一起指定。{it:#} 必须是 0 到 2^{31}-1 之间的整数。默认使用 Stata 的均匀随机数生成器中的当前种子值；见 {manhelp set_seed R:set seed}。

{phang}
{cmd:favor(speed}|{cmd:space)} 指示 {cmd:asmixlogit} 在生成积分点时偏好速度或空间。默认是 {cmd:favor(speed)}。在偏好速度时，积分点会一次生成并存储在内存中，从而加快计算似然的速度。当案件数量较多或用户在 {opt intpoints(#)} 中指定较多积分点时，可以看到这种速度提升。当偏好空间时，积分点会在每次计算似然时重复生成。

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}:
{opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}、{opt iter:ate(#)}、[{cmd:{ul:no}}]{opt lo:g}、{opt tr:ace}、 
{opt grad:ient}、{opt showstep}、
{opt hess:ian}、{opt showtol:erance}、
{opt tol:erance(#)}、{opt ltol:erance(#)}、{opt nrtol:erance(#)}、
{opt nonrtol:erance}，和
{opt from(init_specs)}；见 {manhelp maximize R}。这些选项很少使用。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会重置默认 {it:vcetype} 为 {cmd:vce(opg)}。

{pstd}
以下选项可与 {opt asmixlogit} 一起使用，但不会在对话框中显示：

{phang}
{opt coeflegend}；见
     {helpb estimation options##coeflegend:[R] estimation options}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse inschoice}{p_end}

{pstd}针对 {cmd:premium} 具有固定系数，针对 {cmd:deductible} 具有随机系数的混合 logit 模型{p_end}
{phang2}{cmd:. asmixlogit choice premium, case(id) alternatives(insurance)}
     {cmd:random(deductible)}{p_end}

{pstd}针对 {cmd:premium} 和 {cmd:deductible} 具有相关随机系数的混合 logit 模型{p_end}
{phang2}{cmd:. asmixlogit choice, case(id) alternatives(insurance)}
     {cmd:random(deductible premium, correlated)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:asmixlogit} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_case)}}案例数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_alt)}}替代品数量{p_end}
{synopt:{cmd:e(k_casevars)}}案例特定变量数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型检验中的方程数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数模拟似然{p_end}
{synopt:{cmd:e(N_clust)}}集群数量{p_end}
{synopt:{cmd:e(const)}}常数指示符{p_end}
{synopt:{cmd:e(intpoints)}}原始积分点数{p_end}
{synopt:{cmd:e(lsequence)}}每个积分序列的长度{p_end}
{synopt:{cmd:e(intburn)}}起始序列索引{p_end}
{synopt:{cmd:e(chi2)}}卡方值{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(ll_c)}}对比模型的对数似然{p_end}
{synopt:{cmd:e(chi2_c)}}对比检验的卡方值{p_end}
{synopt:{cmd:e(df_c)}}对比检验的自由度{p_end}
{synopt:{cmd:e(p_c)}}对比检验的 p 值{p_end}
{synopt:{cmd:e(alt_min)}}最小替代品数量{p_end}
{synopt:{cmd:e(alt_avg)}}平均替代品数量{p_end}
{synopt:{cmd:e(alt_max)}}最大替代品数量{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{opt 1} 表示收敛，{opt 0} 表示未收敛{p_end}

{p2col 5 20 24 2:宏}{p_end}
{synopt:{cmd:e(cmd)}}{opt asmixlogit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(casevars)}}案例特定变量{p_end}
{synopt:{cmd:e(case)}}定义案例的变量{p_end}
{synopt:{cmd:e(altvar)}}定义替代品的变量{p_end}
{synopt:{cmd:e(alteqs)}}替代方程名称{p_end}
{synopt:{cmd:e(alt}{it:#}{cmd:)}}替代品标签{p_end}
{synopt:{cmd:e(base)}}基准替代品{p_end}
{synopt:{cmd:e(corrmetric)}}相关随机系数的相关度量{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}集群变量名称{p_end}
{synopt:{cmd:e(chi2type)}}卡方类型{p_end}
{synopt:{cmd:e(vce)}}在 {opt vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{opt max} 或 {opt min}；优化器是执行最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{opt ml} 方法的类型{p_end}
{synopt:{cmd:e(intmethod)}}用于生成序列的技术{p_end}
{synopt:{cmd:e(sequence)}}序列的类型{p_end}
{synopt:{cmd:e(mc_rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用来实现 {opt predict} 的程序{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 20 24 2:矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}模型基方差{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <asmixlogit.sthlp>}