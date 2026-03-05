{smcl}
{* *! version 1.0.0  28apr2019}{...}
{viewerdialog cmmprobit "dialog cmmprobit"}{...}
{vieweralsosee "[CM] cmmprobit" "mansection CM cmmprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] cmmprobit postestimation" "help cmmprobit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] cmclogit" "help cmclogit_zh"}{...}
{vieweralsosee "[CM] cmmixlogit" "help cmmixlogit_zh"}{...}
{vieweralsosee "[CM] cmroprobit" "help cmroprobit_zh"}{...}
{vieweralsosee "[CM] cmset" "help cmset_zh"}{...}
{vieweralsosee "[CM] margins" "help cm margins"}{...}
{vieweralsosee "[CM] nlogit" "help nlogit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] mlogit" "help mlogit_zh"}{...}
{vieweralsosee "[R] mprobit" "help mprobit_zh"}{...}
{viewerjumpto "Syntax" "cmmprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "cmmprobit_zh##menu"}{...}
{viewerjumpto "Description" "cmmprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "cmmprobit_zh##linkspdf"}{...}
{viewerjumpto "Options" "cmmprobit_zh##options"}{...}
{viewerjumpto "Examples" "cmmprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "cmmprobit_zh##results"}
{help cmmprobit:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[CM] cmmprobit} {hline 2}}多项式 Probit 选择模型{p_end}
{p2col:}({mansection CM cmmprobit:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:cmmprobit}
{depvar}
[{indepvars}]
{ifin}
[{help cmmprobit##weight:{it:weight}}]
[{cmd:,} {it:options}]

{phang}
{it:depvar} 等于 1 表示选择的替代方案，
而 0 表示未选择的替代方案。

{synoptset 30 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opth casev:ars(varlist)}}案例特定变量{p_end}
{synopt :{cmdab:base:alternative(}{it:#}{c |}{it:lbl}{c |}{it:str}{cmd:)}}用于标准化位置的替代方案{p_end}
{synopt :{cmdab:scale:alternative(}{it:#}{c |}{it:lbl}{c |}{it:str}{cmd:)}}用于标准化规模的替代方案{p_end}
{synopt :{opt nocons:tant}}抑制特定替代方案的常数项{p_end}
{synopt :{opt altwise}}使用替代方案逐个删除而不是逐案例删除{p_end}
{synopt :{opth const:raints(estimation_options##constraints():constraints)}}应用指定的线性约束{p_end}

{syntab:模型 2}
{synopt :{opth corr:elation(cmmprobit##correlation:correlation)}}效用误差的相关结构{p_end}
{synopt :{opth std:dev(cmmprobit##stddev:stddev)}}效用误差的方差结构{p_end}
{synopt :{opt fact:or(#)}}使用维度为 {it:#} 的因子协方差结构{p_end}
{synopt :{opt struc:tural}}使用结构协方差参数化；
默认是差分协方差参数化{p_end}

{syntab:SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt opg}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置信心水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt notran:sform}}不将方差-协方差估计转换为标准差和相关度度量{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help cmmprobit##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab:积分}
{synopt :{opth intm:ethod(cmmprobit##seqtype:seqtype)}}生成的准均匀或伪均匀序列的类型{p_end}
{synopt :{opt intp:oints(#)}}每个序列中的点数{p_end}
{synopt :{opt intb:urn(#)}}在 Hammersley 或 Halton 序列中的起始索引{p_end}
{synopt :{cmdab:ints:eed(}{help cmmprobit##code:{it:code}}{c |}{it:#}{cmd:)}}伪均匀随机数种子{p_end}
{synopt :{opt anti:thetics}}使用反面抽样{p_end}
{synopt :{opt nopiv:ot}}不使用积分区间枢轴{p_end}
{synopt :{opt initb:hhh(#)}}在前 {it:#} 次迭代中使用 BHHH 优化算法{p_end}
{synopt :{cmd:favor(}{cmdab:spe:ed}{c |}{cmdab:spa:ce)}}在生成积分点时偏好速度或空间{p_end}

{syntab:最大化}
{synopt :{it:{help cmmprobit##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt :{opt col:linear}}保持共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{synoptset 30}{...}
{marker correlation}{...}
{synopthdr:相关性}
{synoptline}
{synopt :{opt uns:tructured}}每对替代方案一个相关参数；与 {cmd:basealternative()} 的相关性为零；默认值{p_end}
{synopt :{opt exc:hangeable}}所有替代方案共有一个相关参数；与 {cmd:basealternative()} 的相关性为零{p_end}
{synopt :{opt ind:ependent}}约束所有相关参数为零{p_end}
{synopt :{opt pat:tern} {it:matname}}用户指定的识别相关模式的矩阵{p_end}
{synopt :{opt fix:ed} {it:matname}}用户指定的识别固定和自由相关参数的矩阵{p_end}
{synoptline}

{marker stddev}{...}
{synopthdr:标准差}
{synoptline}
{synopt :{opt het:eroskedastic}}为每个替代方案估计标准差；{cmd:basealternative()} 和 {cmd:scalealternative()} 的标准差设为1{p_end}
{synopt :{opt hom:oskedastic}}所有标准差均为1{p_end}
{synopt :{opt pat:tern} {it:matname}}用户指定的识别标准差模式的矩阵{p_end}
{synopt :{opt fix:ed} {it:matname}}用户指定的识别固定和自由标准差的矩阵{p_end}
{synoptline}

{marker seqtype}{...}
{synopthdr:序列类型}
{synoptline}
{synopt :{opt ham:mersley}}Hammersley 点集{p_end}
{synopt :{opt hal:ton}}Halton 点集{p_end}
{synopt :{opt ran:dom}}均匀伪随机点集{p_end}
{synoptline}

{p 4 6 2}
在使用 {cmd:cmmprobit} 之前，您必须先 {cmd:cmset} 数据；请参阅
{manhelp cmset CM}.{p_end}
INCLUDE help fvvarlist2
{p 4 6 2}
{cmd:bootstrap}、{cmd:by}、{cmd:jackknife} 和 {cmd:statsby} 
是允许的；请参阅 {help prefix_zh}.{p_end}
INCLUDE help weight_boot
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:fweight}、{cmd:iweight} 和 {cmd:pweight}；请参阅
{help weight_zh}.{p_end}
{p 4 6 2}
{cmd:collinear} 和 {cmd:coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp cmmprobit_postestimation CM:cmmprobit postestimation} 了解估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 选择模型 > 多项式 Probit 模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:cmmprobit} 拟合一个多项式 Probit (MNP) 选择模型，该模型放宽了
独立无关替代品 (IIA) 特性，该特性是 {help cmclogit_zh} 选择模型的特征，并且是 MNP 模型拟合假设的内容。

{pstd}
该命令要求每个案例（代表一个个体或决策者）有多个观察值，每个观察值表示一个可能被选择的替代方案。{cmd:cmmprobit} 允许两种类型的自变量：替代方案特定变量，随案例和替代方案而变化，以及案例特定变量，仅在案例间变化。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection CM cmmprobitQuickstart:快速入门}

        {mansection CM cmmprobitRemarksandexamples:备注和示例}

        {mansection CM cmmprobitMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth casevars(varlist)} 指定对每个 {cmd:case()} 恒定的案例特定变量。
如果有最多 J 个替代品，则将有 J - 1 组与 {cmd:casevars()} 相关的参数。

{phang}
{cmd:basealternative(}{it:#}{c |}{it:lbl}{c |}{it:str}{cmd:)} 
指定用于标准化效用水平的替代方案。 
当替代方案变量为数字时，基准替代方案可指定为数字；它是数字并具有 {help label_zh:value label} 时可以以标签形式指定；如果它是字符串变量，则可作为字符串指定。与基准替代方案相关的效用误差的标准差固定为1，其与所有其他效用误差的相关性设置为零。默认值为排序后的第一个替代方案。如果在 {cmd:stddev()} 和 {cmd:correlation()} 选项中提供了 {cmd:fixed} 或 {cmd:pattern} 矩阵，则 {cmd:basealternative()} 将由矩阵规范中的固定标准差和相关性推导。{cmd:basealternative()} 不能等于 {cmd:scalealternative()}。

{phang}
{cmd:scalealternative(}{it:#}{c |}{it:lbl}{c |}{it:str}{cmd:)} 
指定用于标准化效用规模的替代方案。 
规模替代方案可指定为数字、标签或字符串。 使用排序后的第二个替代方案为默认值。 如果在 {cmd:stddev()} 选项中提供了 {cmd:fixed} 或 {cmd:pattern} 矩阵，则 {cmd:scalealternative()} 将由矩阵规范中的固定标准差推导。{cmd:scalealternative()} 不能等于 {cmd:basealternative()}。

{pmore}
如果为 {cmd:stddev()} 选项提供了 {cmd:fixed} 或 {cmd:pattern} 矩阵，则基准替代方案和规模替代方案由矩阵规范中的标准差和相关性推导，并且不需要在 {cmd:basealternative()} 和 {cmd:scalealternative()} 选项中指定。

{phang}
{cmd:noconstant} 抑制 J - 1 个特定替代方案的常数项。

{phang}
{cmd:altwise} 指定在由于变量缺失值而省略观察时使用替代方案逐个删除。 默认值是使用案例逐个删除；也就是说，如果遇到任何缺失值，则会省略组成案例的整个观察组。此选项不适用于通过 {cmd:if} 或 {cmd:in} 限定符或 {cmd:by} 前缀排除的观察；这些观察无论是否指定 {cmd:altwise} 都始终以替代方案为基础进行处理。

{phang}
{opt constraints(constraints)}; 见
{helpb estimation options:[R] 估计选项}。

{dlgtab:模型 2}

{phang}
{opt correlation(correlation)} 为效用（潜变量）误差指定相关结构。

{phang2}
{cmd:correlation(unstructured)} 是最一般的，具有 
{bind:J(J - 3)/2 + 1} 个独特的相关参数。 默认情况下是这样的，除非指定了 {cmd:stddev()} 或 {cmd:structural}。

{phang2}
{cmd:correlation(exchangeable)} 提供给所有效用一个共有的相关系数，除了与 {cmd:basealternative()} 选项相关的效用。

{phang2}
{cmd:correlation(independent)} 假设所有相关性为零。

{phang2}
{cmd:correlation(pattern} {it:matname}{cmd:)} 和 {cmd:correlation(fixed} {it:matname}{cmd:)} 使您可以更灵活地定义相关结构。 详见
{mansection CM cmmprobitRemarksandexamplesvariance:{it:协方差结构}} 中的 {bf:[CM] cmmprobit}。

{phang}
{opt stddev(stddev)} 为效用（潜变量）误差指定方差结构。

{phang2}
{cmd:stddev(heteroskedastic)} 是最一般的，有 J - 2 个可估计参数。  {cmd:basealternative()} 和 {cmd:scalealternative()} 中指定的效用误差的标准差固定为1。

{phang2}
{cmd:stddev(homoskedastic)} 约束所有标准差等于1。

{phang2}
{cmd:stddev(pattern} {it:matname}{cmd:)} 和 {cmd:stddev(fixed} {it:matname}{cmd:)} 使您在定义标准差参数时更加灵活。详见
{mansection CM cmmprobitRemarksandexamplesvariance:{it:协方差结构}} 中的 {bf:[CM] cmmprobit}。

{phang}
{opt factor(#)} 请求使用维度为 {it:#} 的因子协方差结构。 
{cmd:factor()} 选项可以与 {cmd:structural} 选项一起使用，但不能与 {cmd:stddev()} 或 {cmd:correlation()} 一起使用。使用一个 {bind:{it:#} x J}（或 {bind:{it:#} x J - 1}）的矩阵，{bf:C}，将协方差矩阵分解为 {bind:I + {bf:C}'{bf:C}}，其中 I 是维度 J（或 J - 1）的单位矩阵。 {bf:C} 的列维度取决于协方差是结构的还是差分的。 {bf:C} 的行维度，{it:#}，必须小于或等于 {bind:floor[{J(J - 1)/2 - 1}/(J - 2)]}，因为只有 {bind:J(J - 1)/2 - 1} 个可识别的协方差参数。此协方差参数化对于减少需要估计的协方差参数数量可能是有用的。

{pmore}
如果协方差为结构，则对应于基准替代方案的 {bf:C} 列包含零。 对应于规模替代方案的列在第一行有一个1，其余为零。 若协方差为差分，则对应于规模替代方案（与基准差分） 的列在第一行有一个1，其余为零。

{phang}
{opt structural} 请求 J x J 的结构协方差参数化，而不是默认的 J - 1 x J - 1 差分协方差参数化（效用误差与基准替代方案的协方差的差分）。 差分协方差参数化无论选择 {cmd:basealternative()} 和 {cmd:scalealternative()} 如何都将实现相同的 MSL。 另一方面，结构协方差参数化会施加更多的归一化限制，这可能会使模型远离其最大似然估计，因此在某些数据集或 {cmd:basealternative()} 和 {cmd:scalealternative()} 的选择下阻止收敛。

{dlgtab:SE/稳健性}

INCLUDE help vce_asymptall

{pmore}
如果指定了 {cmd:vce(bootstrap)} 或 {cmd:vce(jackknife)}，则还必须指定 {cmd:basealternative()} 和 {cmd:scalealternative()}。

{dlgtab:报告}

{phang}
{opt level(#)}; 见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt notransform} 防止再次转换 Cholesky 形状的协方差估计到相关和标准差度量。

{pmore}
如果未指定 {opt structural}，则此选项没有影响，因为默认的差分协方差估计在相关性和标准差方面并没有有趣的解释。 如果在 {opt correlation()} 和 {opt stddev()} 选项中指定了其他值，则 {opt notransform} 也没有影响。此时通常无法对协方差矩阵进行因子分解，因此优化已经使用标准差和相关表示执行。

{phang}
{opt nocnsreport}; 见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

INCLUDE help displayopts_list

{dlgtab:积分}

{phang}
{cmd:intmethod(hammersley{c |}halton{c |}random)} 指定用于生成多元正态密度的准 Monte Carlo 积分的点集的生成方法。 {cmd:intmethod(hammersley)}，默认使用 Hammersley 序列； {cmd:intmethod(halton)} 使用 Halton 序列；而 {cmd:intmethod(random)} 使用均匀随机数序列。

{phang}
{opt intpoints(#)} 指定在 Monte Carlo 积分中使用的点数。 如果使用选项 {cmd:intmethod(hammersley)} 或 {cmd:intmethod(halton)}，则默认值为 {bind:500 + floor(2.5 sqrt[N_c{ln(k + 5) + v}])}，其中 N_c 是案例的数量，k 是模型中的系数数量，v 是协方差参数的数量。如果使用 {cmd:intmethod(random)}，点数是上面的两倍。
更大的 {cmd:intpoints()} 值提供了对对数似然的更好近似，但会增加计算时间。

{phang}
{opt intburn(#)} 指定在 Hammersley 或 Halton 序列中的起始点，以帮助减少每个维度序列之间的相关性。 默认值为 0。此选项不得与 {cmd:intmethod(random)} 一起指定。

{marker code}{...}
{phang}
{cmd:intseed(}{it:code}{c |}{it:#}{cmd:)} 指定用于生成均匀伪随机序列的种子。 此选项只能与 {cmd:intmethod(random)} 一起指定。 {it:code} 是记录随机数生成器 {cmd:runiform()} 状态的字符串；请参见 {help set_seed_zh:[R] 设置种子}。 也可以使用整数 {it:#}。 默认值是使用 Stata 的均匀随机数生成器中的当前种子值，您可以使用 {cmd:c(rngstate)} 获取该值。

{phang}
{cmd:antithetics} 指定使用反面抽样。 J - 1 维度的均匀随机变量 {bf:x} 的反面抽样为 1 - {bf:x}。

{phang}
{opt nopivot} 关闭积分区间的枢轴。 默认情况下，{opt cmmprobit} 将更宽的积分区间枢轴到多元积分的内部。这提高了求积估计的准确性。 但是，当使用有限差分计算数值二阶导数 (对于牛顿-拉夫森优化技术 {cmd:tech(nr)}) 时，少量模拟点可能会导致 Hessian 矩阵变为非正定。 默认情况下，{cmd:cmmprobit} 使用 Broyden-Fletcher-Goldfarb-Shanno 优化算法，该算法不需要使用有限差分法数值计算 Hessian。

{phang}
{opt initbhhh(#)} 指定在初始 {it:#} 次优化步骤中使用 Berndt-Hall-Hall-Hausman (BHHH) 算法。 此选项是唯一一种可以将 BHHH 算法与其他优化技术结合使用的方法。 {cmd:ml} 的 {cmd:technique()} 选项的算法切换功能不能包含 {cmd:bhhh}。

{phang}
{cmd:favor(speed{c |}space)} 指示 {cmd:cmmprobit} 在生成积分点时偏好速度或空间。 {cmd:favor(speed)} 为默认选项。 偏好速度时，积分点生成一次并存储在内存中，从而提高了评估似然的速度。 当案例数较多或用户指定了多个积分点 (即 {opt intpoints(#)}) 时，可以看到这种速度提升。 偏好空间时，积分点在每次似然评估时都会重复生成。

{pmore}
对于不平衡数据，当每个案例的替代方案数量不同，这时使用 {cmd:intmethod(random)} 计算的估计值在 {cmd:favor(speed)} 和 {cmd:favor(space)} 之间会略有不同。 这是因为即使在使用相同的均匀种子 {cmd:intseed(}{it:code}{c |}{it:#}{cmd:)} 启动序列时，均匀序列也不会相同。 对于 {cmd:favor(speed)}，生成 {cmd:ncase} 块的 {opt intpoints(#)} x J - 2 组均匀点，其中 J 是替代方案的最大数量。 对于 {cmd:favor(space)}，点矩阵的列维度随着每个案例的替代方案数量的不同而变化。

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}:
{opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}、{opt iter:ate(#)}、[{cmd:no}]{cmd:log}、{opt tr:ace}、{opt grad:ient}、{opt showstep}、{opt hess:ian}、{opt showtol:erance}、{opt tol:erance(#)}、{opt ltol:erance(#)}、{opt nrtol:erance(#)}、{opt nonrtol:erance} 和 {opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。

{pmore}
以下选项在使 {cmd:cmmprobit} 收敛时可能特别有用：
{cmd:difficult}、{opt technique(algorithm_spec)}、{opt nrtolerance(#)}、{opt nonrtolerance} 和 {opt from(init_specs)}。

{pmore}
如果 {opt technique()} 包含多个算法规范，则 {opt bhhh} 不能是其中之一。 要将 BHHH 算法与其他算法结合使用，请使用 {cmd:initbhhh()} 选项，并在 {cmd:technique()} 中指定其他算法。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会将默认的 {it:vcetype} 重置为 {cmd:vce(opg)}。

{pstd}
以下选项可与 {cmd:cmmprobit} 一起使用，但未在对话框中显示：

{phang}
{cmd:collinear}、{cmd:coeflegend}；见
 {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse travel}{p_end}
{phang2}{cmd:. cmset id mode}{p_end}

{pstd}拟合多项式 Probit 选择模型{p_end}
{phang2}{cmd:. cmmprobit choice travelcost termtime, casevars(income)}{p_end}

{pstd}与上面相同，但使用结构协方差参数化{p_end}
{phang2}{cmd:. cmmprobit choice travelcost termtime, casevars(income) structural}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:cmmprobit} 在 {cmd:e()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt :{cmd:e(N)}}观察数{p_end}
{synopt :{cmd:e(N_case)}}案例数{p_end}
{synopt :{cmd:e(N_ic)}}贝叶斯信息准则 (BIC) 的 N{p_end}
{synopt :{cmd:e(N_clust)}}集群数{p_end}
{synopt :{cmd:e(k)}}参数数量{p_end}
{synopt :{cmd:e(k_alt)}}替代方案数量{p_end}
{synopt :{cmd:e(k_indvars)}}替代方案特定变量的数量{p_end}
{synopt :{cmd:e(k_casevars)}}案例特定变量的数量{p_end}
{synopt :{cmd:e(k_sigma)}}方差估计数量{p_end}
{synopt :{cmd:e(k_rho)}}相关性估计数量{p_end}
{synopt :{cmd:e(k_eq)}}{cmd:e(b)} 中方程的数量{p_end}
{synopt :{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt :{cmd:e(df_m)}}模型自由度{p_end}
{synopt :{cmd:e(ll)}}对数模拟似然{p_end}
{synopt :{cmd:e(const)}}常数指示器{p_end}
{synopt :{cmd:e(i_base)}}基准替代方案索引{p_end}
{synopt :{cmd:e(i_scale)}}规模替代方案索引{p_end}
{synopt :{cmd:e(mc_points)}}蒙特卡洛复制次数{p_end}
{synopt :{cmd:e(mc_burn)}}起始序列索引{p_end}
{synopt :{cmd:e(mc_antithetics)}}反向抽样指示器{p_end}
{synopt :{cmd:e(chi2)}}卡方值{p_end}
{synopt :{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt :{cmd:e(fullcov)}}非结构协方差指示器{p_end}
{synopt :{cmd:e(structcov)}}{cmd:1} 如果是结构协方差，则为 {cmd:0} 否则{p_end}
{synopt :{cmd:e(cholesky)}} Cholesky 分解的协方差指示器{p_end}
{synopt :{cmd:e(alt_min)}}最少替代方案数量{p_end}
{synopt :{cmd:e(alt_avg)}}平均替代方案数量{p_end}
{synopt :{cmd:e(alt_max)}}最多替代方案数量{p_end}
{synopt :{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt :{cmd:e(ic)}}迭代次数{p_end}
{synopt :{cmd:e(rc)}}返回代码{p_end}
{synopt :{cmd:e(converged)}}{cmd:1} 若收敛，{cmd:0} 否则{p_end}

{p2col 5 25 29 2: 宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:cmmprobit}{p_end}
{synopt :{cmd:e(cmdline)}}命令如所输入{p_end}
{synopt :{cmd:e(depvar)}}因变量名称{p_end}
{synopt :{cmd:e(caseid)}}案例 ID 变量名称{p_end}
{synopt :{cmd:e(altvar)}}替代方案变量名称{p_end}
{synopt :{cmd:e(alteqs)}}替代方程名称{p_end}
{synopt :{cmd:e(alt}{it:#}{cmd:)}}替代标签{p_end}
{synopt :{cmd:e(wtype)}}权重类型{p_end}
{synopt :{cmd:e(wexp)}}权重表达式{p_end}
{synopt :{cmd:e(marktype)}}{cmd:casewise} 或 {cmd:altwise}，标注类型{p_end}
{synopt :{cmd:e(key_N_ic)}}{cmd:cases}，贝叶斯信息准则 (BIC) 的关键{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(clustvar)}}集群变量名称{p_end}
{synopt :{cmd:e(correlation)}}相关结构{p_end}
{synopt :{cmd:e(stddev)}}方差结构{p_end}
{synopt :{cmd:e(chi2type)}}{cmd:Wald}，模型卡方检验类型{p_end}
{synopt :{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt :{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt :{cmd:e(opt)}}优化类型{p_end}
{synopt :{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是执行
                           最大化还是最小化{p_end}
{synopt :{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt :{cmd:e(mc_method)}}生成序列所用的技术{p_end}
{synopt :{cmd:e(mc_rngstate)}}使用的随机数状态{p_end}
{synopt :{cmd:e(user)}}似然评估程序名称{p_end}
{synopt :{cmd:e(technique)}}最大化技术{p_end}
{synopt :{cmd:e(datasignature)}}校验和{p_end}
{synopt :{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt :{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt :{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsok)}} {cmd:margins} 允许的预测{p_end}
{synopt :{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}
{synopt :{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt :{cmd:e(asobserved)}}因子变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

{p2col 5 25 29 2: 矩阵}{p_end}
{synopt :{cmd:e(b)}}系数向量{p_end}
{synopt :{cmd:e(stats)}}替代统计量{p_end}
{synopt :{cmd:e(stdpattern)}}方差模式{p_end}
{synopt :{cmd:e(stdfixed)}}固定和自由标准差{p_end}
{synopt :{cmd:e(altvals)}}替代值{p_end}
{synopt :{cmd:e(altfreq)}}替代频率{p_end}
{synopt :{cmd:e(alt_casevars)}}估计的案例特定系数的指示器 -- {cmd:e(k_alt)} x {cmd:e(k_casevars)}{p_end}
{synopt :{cmd:e(corpattern)}}相关结构{p_end}
{synopt :{cmd:e(corfixed)}}固定和自由相关{p_end}
{synopt :{cmd:e(Cns)}}约束矩阵{p_end}
{synopt :{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt :{cmd:e(gradient)}}梯度向量{p_end}
{synopt :{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt :{cmd:e(V_modelbased)}}模型基础方差{p_end}

{p2col 5 25 29 2: 函数}{p_end}
{synopt :{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cmmprobit.sthlp>}