{smcl}
{* *! version 2.6.13  01apr2019}{...}
{viewerdialog asmprobit "dialog asmprobit"}{...}
{vieweralsosee "之前的文档" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] asmprobit 后处理" "help asmprobit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] asclogit" "help asclogit_zh"}{...}
{vieweralsosee "[R] asmixlogit" "help asmixlogit_zh"}{...}
{vieweralsosee "[R] asroprobit" "help asroprobit_zh"}{...}
{vieweralsosee "[R] mlogit" "help mlogit_zh"}{...}
{vieweralsosee "[R] mprobit" "help mprobit_zh"}{...}
{viewerjumpto "语法" "asmprobit_zh##syntax"}{...}
{viewerjumpto "菜单" "asmprobit_zh##menu"}{...}
{viewerjumpto "描述" "asmprobit_zh##description"}{...}
{viewerjumpto "选项" "asmprobit_zh##options"}{...}
{viewerjumpto "示例" "asmprobit_zh##examples"}{...}
{viewerjumpto "存储结果" "asmprobit_zh##results"}
{help asmprobit:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[R] asmprobit} {hline 2}}特定备选的多项式 probit 回归{p_end}
{p2col:}({browse "http://www.stata.com/manuals15/rasmprobit.pdf":查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}

{pstd}
{cmd:asmprobit} 仍然可以使用，但从 Stata 16 开始，它不再是 Stata 的官方部分。这是原始帮助文件，我们将不再更新，因此某些链接可能无法正常工作。

{pstd}
请参见 {help cmmprobit_zh}，以获取对 {cmd:asmprobit} 的推荐替代方案。

{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:asmprobit} 
{depvar} 
[{indepvars}] 
{ifin}
[{it:{help asmprobit##weight:weight}}]{cmd:,}
{opth case(varname)}
{opth alt:ernatives(varname)}
[{it:选项}]

{phang}
{it:depvar} 等于 1 标识结果或选择的替代方案，而 0 则表示未选择的替代方案。

{synoptset 28 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent :* {opth case(varname)}}使用 {it:varname} 来识别案例{p_end}
{p2coldent :* {opth alt:ernatives(varname)}}使用 {it:varname} 来识别每个案例的可用替代方案{p_end}
{synopt : {opth casev:ars(varlist)}}特定案例的变量{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}
{synopt:{opt col:linear}}保留共线变量{p_end}

{syntab :模型 2}
{synopt :{opth corr:elation(asmprobit##cortype:相关类型)}}潜在变量误差的相关结构{p_end}
{synopt :{opth std:dev(asmprobit##stdtype:标准差)}}潜在变量误差的方差结构{p_end}
{synopt :{opt struc:tural}}使用结构协方差参数化；默认是差分协方差参数化{p_end}
{synopt :{opt fact:or(#)}}使用维度为 {it:#} 的因子协方差结构{p_end}
{synopt :{opt nocons:tant}}抑制特定备选的常数项{p_end}
{synopt :{opt base:alternative(#|lbl|str)}}用于归一化位置的替代方案{p_end}
{synopt :{opt scale:alternative(#|lbl|str)}}用于归一化规模的替代方案{p_end}
{synopt :{opt altwise}}使用按替代方案删除，而不是按案例删除{p_end}

{syntab :标准误/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}， 
{opt r:obust}， {opt cl:uster} {it:clustvar}， {opt opg}， {opt boot:strap}，或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opt notran:sform}}不将方差协方差估计变换到标准差和相关度度量{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help asmprobit##display_options:显示选项}}}控制
包括帮助短描述显示选项

{syntab :积分}
{synopt :{opth intm:ethod(asmprobit##seqtype:序列类型)}}准或伪均匀点集类型{p_end}
{synopt :{opt intp:oints(#)}}每个序列中要使用的点数{p_end}
{synopt :{opt intb:urn(#)}}在 Hammersley 或 Halton 序列中的起始索引{p_end}
{synopt :{cmdab:ints:eed(}{it:{help asmprobit##code:代码}}{c |}{it:#}{cmd:)}}伪均匀随机数种子{p_end}
{synopt :{opt anti:thetics}}使用对偶抽样{p_end}
{synopt :{opt nopiv:ot}}不使用积分区间的枢轴{p_end}
{synopt :{opt initb:hhh(#)}}对于前 {it:#} 次迭代使用 BHHH 优化算法{p_end}
{synopt :{cmd:favor(}{opt spe:ed}|{opt spa:ce}{cmd:)}}在生成积分点时优先考虑速度或空间{p_end}

{syntab :最大化}
{synopt :{it:{help asmprobit##maximize_options:最大化选项}}}控制
        最大化过程{p_end}

包含帮助短描述系数图例
{synoptline}
{p2colreset}{...}

{synoptset 23}{...}
{marker cortype}
{synopthdr :相关性}
{synoptline}
{synopt :{opt uns:tructured}}每对替代方案一个主相关参数；与 {opt basealternative()} 的相关性为零； 默认值{p_end}
{synopt :{opt exc:hangeable}}所有替代方案的每对都有一个共用主相关参数；与 {opt basealternative()} 的相关性为零{p_end}
{synopt :{opt ind:ependent}}将所有相关参数约束为零{p_end}
{synopt :{opt pat:tern} {it:matname}}用户指定的矩阵识别相关模式{p_end}
{synopt :{opt fix:ed} {it:matname}}用户指定的矩阵识别固定和自由相关参数{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 23}{...}
{marker stdtype}
{synopthdr :标准差}
{synoptline}
{synopt :{opt het:eroskedastic}}为每个替代方案估计标准差；{opt basealternative()} 和 {opt scalealternative()} 的标准差设为 1{p_end}
{synopt :{opt hom:oskedastic}}所有标准差均为 1{p_end}
{synopt :{opt pat:tern} {it:matname}}用户指定的矩阵识别标准差模式{p_end}
{synopt :{opt fix:ed} {it:matname}}用户指定的矩阵识别固定和自由标准差{p_end}
{synoptline}
{p2colreset}{...}
 
{synoptset 23}{...}
{marker seqtype}
{synopthdr :序列类型}
{synoptline}
{synopt :{opt ham:mersley}}Hammersley 点集{p_end}
{synopt :{opt hal:ton}}Halton 点集{p_end}
{synopt :{opt ran:dom}}均匀伪随机点集{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}* {opt case(varname)} 和 {opt alternatives(varname)} 是必需的。{p_end}
包含帮助 fvvarlist2
{p 4 6 2}{cmd:bootstrap}、{cmd:by}、{cmd:jackknife} 和 {cmd:statsby} 是允许的；参见 {help prefix_zh}.{p_end}
{p 4 6 2}在使用 {help bootstrap_zh} 前缀时不允许使用权重。{p_end}
{marker weight}{...}
{p 4 6 2}{cmd:fweight}s、{cmd:iweight}s 和 {cmd:pweight}s 是允许的；参见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}有关估计后可用功能的信息，请参见 {manhelp asmprobit_postestimation R:asmprobit postestimation}。{p_end}

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 分类结果 > 特定备选的多项式 probit}

{marker description}{...}
{title:描述}

{pstd}
{cmd:asmprobit} 拟合一个多项式 probit (MNP) 模型，该模型允许特定备选和案例特定的自变量。特定备选的变量在案例和替代方案之间变化；案例特定的变量仅在案例间变化。通过估计潜在变量误差的方差-协方差参数，模型允许放宽多项逻辑模型的无关替代品独立性 (IIA) 特性，而该特性是通过 {help mprobit_zh} 拟合的 MNP 模型所假定的。该命令要求每个案例（个体或决策）都有多个观察值，每个观察值表示一个可能被选择的替代方案。

{marker options}{...}
{title:选项}

包含帮助 asmprobit_options_model

{dlgtab:标准误/稳健}

包含帮助 vce_asymptall

{pmore}
如果指定了 {cmd:vce(bootstrap)} 或 {cmd:vce(jackknife)}，您还必须
指定 {cmd:basealternative()} 和 {cmd:scalealternative()}。

{dlgtab:报告}

{phang}{opt level(#)}；请参见
{helpb estimation options##level():[R] 估计选项}。

{phang}{opt notransform} 防止将 Cholesky 分解的方差协方差估计重转换为相关度和标准差度量。

{pmore}
如果未指定 {cmd:structural}，则此选项无效，因为默认的差分方差协方差估计在相关度和标准差方面没有有趣的解释。 如果与默认值以外的任何值一起指定了 {cmd:correlation()} 和 {cmd:stddev()} 选项，则 {cmd:notransform} 也无效。 在这里，通常不能对方差协方差矩阵进行分解，因此优化已经使用标准差和相关度表示进行。

{phang}
{opt nocnsreport}；请参见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

包含帮助 displayopts_list

{dlgtab:积分}

{phang}{cmd:intmethod(hammersley}|{cmd:halton}|{cmd:random)} 指定用于多元正态密度的准蒙特卡洛积分中生成点集的方法。 {cmd:intmethod(hammersley)} 是默认值，使用 Hammersley 序列； {cmd:intmethod(halton)} 使用 Halton 序列；而 {cmd:intmethod(random)} 使用均匀随机数的序列。

{phang}{opt intpoints(#)} 指定用于准蒙特卡洛积分的点数。如果未指定该选项，则点数为 50 x J（如果使用 {cmd:intmethod(hammersley)} 或 {cmd:intmethod(halton)}）或 100 x J（如果使用 {cmd:intmethod(random)}）。 增大 {opt intpoints()} 的值可提供更好的对数似然近似，但会增加计算时间。

{phang}{opt intburn(#)} 指定在 Hammersley 或 Halton 序列中开始的位置，帮助减少各维序列之间的相关性。 默认值为 0。 此选项不能与 {cmd:intmethod(random)} 一起指定。

{marker code}{...}
{phang}{opt intseed(code|#)} 指定用于生成均匀伪随机序列的种子。 此选项只能与 {cmd:intmethod(random)} 一起指定。 {it:code} 指代记录随机数生成器 {cmd:runiform()} 状态的字符串；参见
{help set_seed_zh:[R] 设定种子}。 也可以使用整数值 {it:#}。 默认是使用来自 Stata 的均匀随机数生成器的当前种子值，可以从 {cmd:c(rngstate)} 获得。

{phang}{opt antithetics} 指定使用对偶抽样。 J - 1 向量均匀随机变量的对偶抽样 {bf:x} 为 1 - {bf:x}。

{phang}{opt nopivot} 关闭积分区间的枢轴。 默认情况下，{cmd:asmprobit} 会将更宽的积分区间移动到多元积分的内部。 这提高了数值积分估计的准确性。 然而，当使用较少的模拟点时，断点可能会导致使用有限差分计算数值二阶导数时，{cmd:tech(nr)} 的计算结果出现非正定 Hessian。 默认情况下，{cmd:asmprobit} 使用 Broyden-Fletcher-Goldfarb-Shanno 优化算法，该算法不需要使用有限差分数值计算 Hessian。

{phang}{opt initbhhh(#)} 指定对于初始 {it:#} 次优化步骤使用 Berndt-Hall-Hall-Hausman (BHHH) 算法。 此选项是唯一可以与其他优化技术一起使用 BHHH 算法的方式。 {cmd:ml} 的 {opt technique()} 选项的算法切换功能不能包括 {opt bhhh}。

{phang}{cmd:favor(speed}|{cmd:space)} 指示 {cmd:asmprobit} 在生成积分点时优先考虑速度或空间。 {cmd:favor(speed)} 是默认值。 优先考虑速度时，积分点会一次生成并存储在内存中，从而提高似然评估的速度。 当存在许多案例或用户指定大量积分点时，可能会看到这种速度的提高，{cmd:intpoints(}{it:#}{cmd:)}。 当优先考虑空间时，积分点在每次似然评估时会重复生成。

{pmore} 
对于不平衡数据，其中每个案例的替代方案数量各不相同，使用 {cmd:intmethod(random)} 计算的估计会在 {cmd:favor(speed)} 和 {cmd:favor(space)} 之间略有不同。 这是因为即使使用相同的均匀种子 {cmd:intseed(}{it:code}{cmd:|}{it:#}{cmd:)} 启动序列，均匀序列也不会完全相同。 对于 {cmd:favor(speed)}，会生成 {cmd:ncase} 阻塞的 {cmd:intpoints(}{it:#}{cmd:)} X J-2 均匀点，其中 J 是最大替代方案数。 对于 {cmd:favor(space)}，点矩阵的列维数因每个案例的替代方案数量而异。

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}，
{opth tech:nique(maximize##algorithm_spec:算法规格)},
{opt iter:ate(#)}，
[{cmdab:no:}]{opt lo:g}，
{opt tr:ace}，
{opt grad:ient}，
{opt showstep}，
{opt hess:ian}，
{opt showtol:erance}，
{opt tol:erance(#)}，
{opt ltol:erance(#)}，
{opt nrtol:erance(#)}，
{opt nonrtol:erance}，和
{opt from(init_specs)}；请参阅 {manhelp maximize R}。

{pmore}
以下选项可能特别有助于获得 {cmd:asmprobit} 的收敛性： {opt difficult}， 
{opt technique(algorithm_spec)}， {opt nrtolerance(#)}， 
{opt nonrtolerance}，和 {opt from(init_specs)}。

{pmore}
如果 {opt technique()} 包含多个算法规格，则 {opt bhhh} 不能是其中之一。 要将 BHHH 算法与其他算法一起使用，请使用 {opt initbhhh()} 选项，并在 {opt technique()} 中指定其他算法。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会将默认的 {it:vcetype} 重置为 {cmd:vce(opg)}。

{pstd}
以下选项可与 {opt asmprobit} 一起使用，但未在对话框中显示：

{phang}
{opt coeflegend}; 请参见
     {helpb estimation options##coeflegend:[R] 估计选项}。

{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse travel}{p_end}

{pstd}使用默认的差分协方差参数化拟合特定备选的多项式 probit 模型{p_end}
{phang2}{cmd:. asmprobit choice travelcost termtime, case(id)}
         {cmd:alternatives(mode) casevars(income)}

{pstd}与上述相同，但使用结构协方差参数化{p_end}
{phang2}{cmd:. asmprobit choice travelcost termtime, case(id)}
         {cmd:alternatives(mode) casevars(income) structural}

{pstd}与上述相同，但指定可互换的相关矩阵{p_end}
{phang2}{cmd:. asmprobit choice travelcost termtime, case(id)}
	{cmd:alternatives(mode) casevars(income) correlation(exchangeable)}

{marker results}{...}
{title:存储结果}

{pstd}
{cmd:asmprobit} 将以下内容存储在 {cmd:e()} 中：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(N_case)}}案例数{p_end}
{synopt:{cmd:e(k)}}参数数{p_end}
{synopt:{cmd:e(k_alt)}}替代方案数{p_end}
{synopt:{cmd:e(k_indvars)}}特定备选的变量数{p_end}
{synopt:{cmd:e(k_casevars)}}案例特定的变量数{p_end}
{synopt:{cmd:e(k_sigma)}}方差估计数{p_end}
{synopt:{cmd:e(k_rho)}}相关估计数{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数{p_end}
{synopt:{cmd:e(k_eq_model)}}总体模型检验中的方程数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数模拟似然{p_end}
{synopt:{cmd:e(N_clust)}}簇数{p_end}
{synopt:{cmd:e(const)}}常数指示{p_end}
{synopt:{cmd:e(i_base)}}基准替代方案索引{p_end}
{synopt:{cmd:e(i_scale)}}规模替代方案索引{p_end}
{synopt:{cmd:e(mc_points)}}蒙特卡洛重复数{p_end}
{synopt:{cmd:e(mc_burn)}}起始序列索引{p_end}
{synopt:{cmd:e(mc_antithetics)}}对偶指示{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(fullcov)}}无结构协方差指示{p_end}
{synopt:{cmd:e(structcov)}}{cmd:1} 如果是结构协方差， {cmd:0} 否则{p_end}
{synopt:{cmd:e(cholesky)}} Cholesky 分解协方差指示{p_end}
{synopt:{cmd:e(alt_min)}}最小替代方案数{p_end}
{synopt:{cmd:e(alt_avg)}}平均替代方案数{p_end}
{synopt:{cmd:e(alt_max)}}最大替代方案数{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛， {cmd:0} 否则{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:asmprobit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(indvars)}}特定备选的自变量{p_end}
{synopt:{cmd:e(casevars)}}案例特定的变量{p_end}
{synopt:{cmd:e(case)}}定义案例的变量{p_end}
{synopt:{cmd:e(altvar)}}定义替代方案的变量{p_end}
{synopt:{cmd:e(alteqs)}}替代方程名称{p_end}
{synopt:{cmd:e(alt}{it:#}{cmd:)}}替代标签{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}簇变量名称{p_end}
{synopt:{cmd:e(correlation)}}相关结构{p_end}
{synopt:{cmd:e(stddev)}}方差结构{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}，模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器执行
                         最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(mc_method)}}用于生成序列的技术{p_end}
{synopt:{cmd:e(mc_rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}计算校验和所用的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(mfx_dlg)}}用于实现 {cmd:estat mfx} 对话框的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(stats)}}替代统计量{p_end}
{synopt:{cmd:e(stdpattern)}}方差模式{p_end}
{synopt:{cmd:e(stdfixed)}}固定和自由标准差{p_end}
{synopt:{cmd:e(altvals)}}替代值{p_end}
{synopt:{cmd:e(altfreq)}}替代频率{p_end}
{synopt:{cmd:e(alt_casevars)}}估计的案例特定系数指标 -- {cmd:e(k_alt)} x {cmd:e(k_casevars)}{p_end}
{synopt:{cmd:e(corpattern)}}相关结构{p_end}
{synopt:{cmd:e(corfixed)}}固定和自由相关性{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}模型基础方差{p_end}
{synoptset 25 tabbed}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <asmprobit.sthlp>}