{smcl}
{* *! version 1.0.0  01may2019}{...}
{viewerdialog cmroprobit "dialog cmroprobit"}{...}
{vieweralsosee "[CM] cmroprobit" "mansection CM cmroprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] cmroprobit postestimation" "help cmroprobit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] cmmprobit" "help cmmprobit_zh"}{...}
{vieweralsosee "[CM] cmrologit" "help cmrologit_zh"}{...}
{vieweralsosee "[CM] cmset" "help cmset_zh"}{...}
{vieweralsosee "[CM] margins" "help cm margins"}{...}
{vieweralsosee "[R] ologit" "help ologit_zh"}{...}
{vieweralsosee "[R] oprobit" "help oprobit_zh"}{...}
{viewerjumpto "Syntax" "cmroprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "cmroprobit_zh##menu"}{...}
{viewerjumpto "Description" "cmroprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "cmroprobit_zh##linkspdf"}{...}
{viewerjumpto "Options" "cmroprobit_zh##options"}{...}
{viewerjumpto "Examples" "cmroprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "cmroprobit_zh##results"}
{help cmroprobit:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[CM] cmroprobit} {hline 2}}排名顺序的 probit 选择模型{p_end}
{p2col:}({mansection CM cmroprobit:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:cmroprobit}
{depvar}
[{indepvars}]
{ifin}
[{help cmroprobit##weight:{it:weight}}]
[{cmd:,} {it:options}]

{synoptset 30 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opth casev:ars(varlist)}}个别案例变量{p_end}
{synopt :{opt rev:erse}}将 {it:depvar} 中的最低等级解释为最优选；默认情况下，最高等级为最佳{p_end}
{synopt :{cmdab:base:alternative(}{it:#}{c |}{it:lbl}{c |}{it:str}{cmd:)}}用于归一化位置的备选项{p_end}
{synopt :{cmdab:scale:alternative(}{it:#}{c |}{it:lbl}{c |}{it:str}{cmd:)}}用于归一化规模的备选项{p_end}
{synopt :{opt nocons:tant}}抑制特定备选项的常量项{p_end}
{synopt :{opt altwise}}使用备选项删除而不是案例删除{p_end}
{synopt :{opth const:raints(estimation_options##constraints():constraints)}}应用指定的线性约束{p_end}

{syntab:模型 2}
{synopt :{opth corr:elation(cmroprobit##correlation:correlation)}}效用误差的相关结构{p_end}
{synopt :{opth std:dev(cmroprobit##stddev:stddev)}}效用误差的方差结构{p_end}
{synopt :{opt fact:or(#)}}使用维度为 {it:#} 的因子协方差结构{p_end}
{syntab:结构化}使用结构化协方差参数化；默认值是差分协方差参数化{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt opg}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt notran:sform}}不将方差-协方差估计转换为标准差和相关度量{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help cmroprobit##display_options:display_options}}}控制
包含帮助简要描述-显示所有选项

{syntab:积分}
{synopt :{opth intm:ethod(cmroprobit##seqtype:seqtype)}}准均匀或伪均匀序列类型{p_end}
{synopt :{opt intp:oints(#)}}每个序列中的点数{p_end}
{synopt :{opt intb:urn(#)}}在 Hammersley 或 Halton 序列中的起始索引{p_end}
{synopt :{cmdab:ints:eed(}{help cmroprobit##code:{it:code}}{c |}{it:#}{cmd:)}}伪均匀随机数种子{p_end}
{synopt :{opt anti:thetics}}使用反向抽样{p_end}
{synopt :{opt nopiv:ot}}不使用积分区间的支点{p_end}
{synopt :{opt initb:hhh(#)}}在前 {it:#} 次迭代中使用 BHHH 优化算法{p_end}
{synopt :{cmd:favor(}{cmdab:spe:ed}{c |}{cmdab:spa:ce}{cmd:)}}在生成积分点时优先考虑速度或空间{p_end}

{syntab:最大化}
{synopt :{it:{help cmroprobit##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

{synopt :{opt col:linear}}保留共线变量{p_end}
包含帮助简要描述-系数图例
{synoptline}
{p2colreset}{...}

{synoptset 30}{...}
{marker correlation}{...}
{synopthdr:相关性}
{synoptline}
{synopt :{opt uns:tructured}}每对备选项的一个相关参数；与 {cmd:basealternative()} 的相关性为零；默认值{p_end}
{synopt :{opt exc:hangeable}}所有备选项的共用一个相关参数；与 {cmd:basealternative()} 的相关性为零{p_end}
{synopt :{opt ind:ependent}}将所有相关参数约束为零{p_end}
{synopt :{opt pat:tern} {it:matname}}用户指定的矩阵，标识相关模式{p_end}
{synopt :{opt fix:ed} {it:matname}}用户指定的矩阵，标识固定和自由的相关参数{p_end}
{synoptline}

{marker stddev}{...}
{synopthdr:标准差}
{synoptline}
{synopt :{opt het:eroskedastic}}为每个备选项估计标准差；{cmd:basealternative()} 和 {cmd:scalealternative()} 的标准差设置为一{p_end}
{synopt :{opt hom:oskedastic}}所有标准差均为一{p_end}
{synopt :{opt pat:tern} {it:matname}}用户指定的矩阵，标识标准差模式{p_end}
{synopt :{opt fix:ed} {it:matname}}用户指定的矩阵，标识固定和自由的标准差{p_end}
{synoptline}

{marker seqtype}{...}
{synopthdr:序列类型}
{synoptline}
{synopt :{opt ham:mersley}}Hammersley 点集{p_end}
{synopt :{opt hal:ton}}Halton 点集{p_end}
{synopt :{opt ran:dom}}均匀伪随机点集{p_end}
{synoptline}

{p 4 6 2}
您必须在使用 {cmd:cmroprobit} 之前先 {cmd:cmset} 您的数据；请参见 {manhelp cmset CM}.{p_end}
包含帮助 fvvarlist2
{p 4 6 2}
{cmd:bootstrap}、{cmd:by}、{cmd:jackknife} 和 {cmd:statsby} 是允许的；请参见 {help prefix_zh}.{p_end}
包含帮助 weight_boot
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:fweight}、{cmd:iweight} 和 {cmd:pweight}；请参见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}
有关估计后可用特性的更多信息，请参见 {manhelp cmroprobit_postestimation CM:cmroprobit postestimation}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 选择模型 > 排名顺序的 probit 模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:cmroprobit} 使用最大模拟似然 (MSL) 拟合排名顺序的 probit (ROP) 模型。该模型允许您放松与排名顺序逻辑模型特征相关的无关替代品的独立性 (IIA) 属性，通过估计替代方案误差项之间的协方差。

{pstd}
{cmd:cmroprobit} 允许两种类型的自变量：特定替代品的变量，其中每个变量的值因替代方案而异，以及特定案例的变量，在每个案例中变化。

{pstd}
{cmd:cmroprobit} 的估计技术与 {cmd:cmmprobit} 几乎相同，这两个例程共享许多相同的选项；请参见 {manhelp cmmprobit CM}。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection CM cmroprobitQuickstart:快速入门}

        {mansection CM cmroprobitRemarksandexamples:备注和示例}

        {mansection CM cmroprobitMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth casevars(varlist)} 指定对每个 {cmd:case()} 常量的案例特定变量。如果有最多 J 个备选项，将有 J - 1 组系数与 {cmd:casevars()} 相关联。

{phang}
{opt reverse} 指示 {opt cmroprobit} 解释 {depvar} 中最小值的排名为最优替代品。默认情况下，最大排名值为最优替代品。

{phang}
{cmd:basealternative(}{it:#}{c |}{it:lbl}{c |}{it:str}{cmd:)} 指定用于归一化效用水平的替代品。基准替代品可以在替代品变量为数字时指定为数字，在其为数字且拥有 {help label_zh:value label} 时指定为标签，或者在其为字符串变量时指定为字符串。与基准替代品相关的效用误差的标准差固定为一，并且与所有其他效用误差的相关性设置为零。默认值为按排序的第一个替代品。如果在 {cmd:stddev()} 和 {cmd:correlation()} 选项中提供了 {cmd:fixed} 或 {cmd:pattern} 矩阵，则 {cmd:basealternative()} 将由矩阵规范中的固定标准差和相关性隐含。 {cmd:basealternative()} 不能等于 {cmd:scalealternative()}。

{phang}
{cmd:scalealternative(}{it:#}{c |}{it:lbl}{c |}{it:str}{cmd:)} 指定用于归一化效用规模的替代品。规模替代品可以指定为数字、标签或字符串。默认情况下，按排序选择第二个替代品。如果在 {cmd:stddev()} 选项中提供了 {cmd:fixed} 或 {cmd:pattern} 矩阵，则 {cmd:scalealternative()} 将由矩阵规范中的固定标准差隐含。 {cmd:scalealternative()} 不能等于 {cmd:basealternative()}。

{pmore}
如果在 {cmd:stddev()} 选项中指定了 {cmd:fixed} 或 {cmd:pattern} 矩阵，则基准替代品和规模替代品由矩阵规范中的标准差和相关性隐含，无需在 {cmd:basealternative()} 和 {cmd:scalealternative()} 选项中指定。

{phang}
{opt noconstant} 抑制 J - 1 特定替代品常量项。

{phang}
{opt altwise} 指定在因变量中因缺失值而省略观察时使用备选项删除。默认使用案例删除；即，如果遇到任何缺失值，将省略构成案例的整组观察。此选项不适用于通过 {cmd:if} 或 {cmd:in} 限定符或 {cmd:by} 前缀排除的观察；这些观察始终按备选项处理，无论是否指定了 {cmd:altwise}。

{phang}
{opt constraints(constraints)}；请参见 {helpb estimation options:[R] 估计选项}。

{dlgtab:模型 2}

{phang}
{opt correlation(correlation)} 指定效用（潜在变量）误差的相关结构。

{phang2}
{cmd:correlation(unstructured)} 是最一般的，有 {bind:J(J - 3)/2 + 1} 个独特相关参数。除非指定了 {cmd:stddev()} 或 {cmd:structural}，否则这是默认值。

{phang2}
{cmd:correlation(exchangeable)} 为所有效用提供一个共用的相关系数，除了与 {cmd:basealternative()} 选项相关的效用。

{phang2}
{cmd:correlation(independent)} 假设所有相关性都为零。

{phang2}
{cmd:correlation(pattern} {it:matname}{cmd:)} 和 {cmd:correlation(fixed} {it:matname}{cmd:)} 赋予您在定义相关结构方面更多灵活性。有关更多信息，请参见 {mansection CM cmmprobitRemarksandexamplesvariance:{it:协方差结构}} 中的 {bf:[CM] cmmprobit}。

{phang}
{opt stddev(stddev)} 指定效用（潜在变量）误差的方差结构。

{phang2}
{cmd:stddev(heteroskedastic)} 是最一般的，有 J - 2 可估计参数。{cmd:basealternative()} 和 {cmd:scalealternative()} 变量的效用误差标准差固定为一。

{phang2}
{cmd:stddev(homoskedastic)} 将所有标准差限制为一。

{phang2}
{cmd:stddev(pattern} {it:matname}{cmd:)} 和 {cmd:stddev(fixed} {it:matname}{cmd:)} 在定义标准差参数方面提供更多灵活性。有关更多信息，请参见 {mansection CM cmmprobitRemarksandexamplesvariance:{it:协方差结构}} 中的 {bf:[CM] cmmprobit}。

{phang}
{opt factor(#)} 请求使用维度为 {it:#} 的因子协方差结构。{cmd:factor()} 选项可以与 {cmd:structural} 选项一起使用，但不能与 {cmd:stddev()} 或 {cmd:correlation()} 一起使用。用于对协方差矩阵进行因子化的 {it:#} x J（或 {bind:{it:#} x J - 1}）矩阵 {bf:C} 表示为 {bind:I + {bf:C}'{bf:C}}，其中 I 是维度为 J（或 J - 1） 的单位矩阵。{bf:C} 的列维度取决于协方差是结构的还是差分的。{bf:C} 的行维度 {it:#} 必须小于或等于 {bind:floor[{J(J - 1)/2 - 1}/(J - 2)]}，因为只有 {bind:J(J - 1)/2 - 1} 可识别的协方差参数。这种协方差参数化对于减少需要估计的协方差参数的数量可能是有用的。

{pmore}
如果协方差是结构的，基准替代品对应的 {bf:C} 列将包含零。与规模替代品对应的列在第一行中具有一、其余为零。如果协方差是差分的，与规模替代品对应的列（与基准品差分）在第一行中具有一、其余为零。

{phang}
{cmd:structural} 请求使用 J x J 结构协方差参数化，而不是默认的 {bind:J - 1 x J - 1} 差分协方差参数化（效用误差的协方差与基准替代品的协方差差分）。无论选择 {cmd:basealternative()} 和 {cmd:scalealternative()}，差分协方差参数化将实现相同的 MSL。另一方面，结构协方差参数化施加了更多标准化条件，可能会将模型限制在其最大似然之外，从而在某些数据集或 {cmd:basealternative()} 和 {cmd:scalealternative()} 选择下导致不收敛。

{dlgtab:标准误/稳健性}

包含帮助 vce_asymptall

{pmore}
如果指定了 {cmd:vce(bootstrap)} 或 {cmd:vce(jackknife)}，您还必须指定 {cmd:basealternative()} 和 {cmd:scalealternative()}。

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt notransform} 防止将 Cholesky 因子协方差估计转换回相关和标准差度量。

{pmore}
如果未指定 {cmd:structural}，该选项不会产生影响，因为默认的差分协方差估计在作为相关性和标准差时没有有趣的解释。如果 {cmd:correlation()} 和 {cmd:stddev()} 选项以非默认值指定，则 {cmd:notransform} 也不会产生影响。在这里，通常无法对协方差矩阵进行因子化，因此优化已经使用标准差和相关性表示进行。

{phang}
{opt nocnsreport}；见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

包含帮助 displayopts_list

{dlgtab:积分}

{phang}
{cmd:intmethod(hammersley{c |}halton{c |}random)} 指定用于生成用于多元正态密度的准蒙特卡洛积分的点集的方法。{cmd:intmethod(hammersley)} 是默认值，使用 Hammersley 序列； {cmd:intmethod(halton)} 使用 Halton 序列； {cmd:intmethod(random)} 使用均匀随机数序列。

{phang}
{opt intpoints(#)} 指定在蒙特卡洛积分中使用的点数。
如果使用选项 {cmd:intmethod(hammersley)} 或 {cmd:intmethod(halton)}，默认值为 {bind:500 + floor(2.5 sqrt[N_c{ln(k + 5) + v}])}，其中 N_c 是案例数量，k 是模型中的系数数量，v 是方差参数的数量。如果使用 {cmd:intmethod(random)}，则点数为上述值的两倍。更大的 {cmd:intpoints()} 值在计算时间增加的情况下提供更好的 log 似然值近似。

{phang}
{opt intburn(#)} 指定在 Hammersley 或 Halton 序列中的起始位置，有助于降低每个维度序列之间的相关性。默认值为 0。此选项不能与 {cmd:intmethod(random)} 一起指定。

{marker code}{...}
{phang}
{cmd:intseed(}{it:code}{c |}{it:#}{cmd:)} 指定用于生成均匀伪随机序列的种子。该选项仅可与 {cmd:intmethod(random)} 一起指定。{it:code} 指代一个记录随机数生成器 {cmd:runiform()} 状态的字符串；请见 {helpb set seed:[R] 设置种子}。同样可以使用整型值 {it:#}。默认值为使用 Stata 的均匀随机数生成器的当前种子值，该值可以通过 {cmd:c(rngstate)} 获取。

{phang}
{cmd:antithetics} 指定使用反向抽样。对于 J - 1 个向量均匀随机变量 {bf:x}，反向抽样为 1 - {bf:x}。

{phang}
{opt nopivot} 关闭积分区间的支点。默认情况下，{opt cmroprobit} 会将较宽的积分区间支点转移到多元积分的内部。这改善了数值积分估计的准确度。然而，当使用少量模拟点来计算数值二阶导数时，可能会因不连续性而导致 Hessian 非正定。默认情况下，{cmd:cmroprobit} 使用 Broyden-Fletcher-Goldfarb-Shanno 优化算法，不需要使用有限差分法数值计算 Hessian。

{phang}
{opt initbhhh(#)} 指定在初始 {it:#} 优化步骤中使用 Berndt-Hall-Hall-Hausman (BHHH) 算法。此选项是将 BHHH 算法与其他优化技术结合使用的唯一方法。{cmd:ml} 的选项 {cmd:technique()} 的算法切换功能不能包括 {cmd:bhhh}。

{phang}
{cmd:favor(speed{c |}space)} 指示 {cmd:cmroprobit} 在生成积分点时优先考虑速度或空间。{cmd:favor(speed)} 是默认选项。当优先考虑速度时，积分点一次生成并存储在内存中，从而提高了评估似然性时的速度。当案例较多或用户指定许多积分点时，可以看到这种速度提高。优先考虑空间时，积分点将在每次似然评估时重复生成。

{pmore}
对于不均衡数据，即每个案例的可选项数量各异，使用 {cmd:intmethod(random)} 计算的估计将在 {cmd:favor(speed)} 和 {cmd:favor(space)} 之间略有不同。这是因为即使使用相同的均匀种子 {cmd:intseed(}{it:code}{c |}{it:#}{cmd:)} 启动序列，均匀序列也不会相同。对于 {cmd:favor(speed)}，生成 {opt intpoints(#)} x J - 2 的均匀点的 {cmd:ncase} 块，其中 J 是最大备选项的数量。对于 {cmd:favor(space)}，点矩阵的列维度因每个案例的备选项数而异。

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}、{opt iter:ate(#)}、[{cmd:no}]{cmd:log}、{opt tr:ace}、{opt grad:ient}、{opt showstep}、{opt hess:ian}、{opt showtol:erance}、{opt tol:erance(#)}、{opt ltol:erance(#)}、{opt nrtol:erance(#)}、{opt nonrtol:erance}；参见 {help maximize_zh:[R] 最大化}。

{pmore}
以下选项在使用 {cmd:cmroprobit} 时可能特别有助于获得收敛：
{opt difficult}、{opt technique(algorithm_spec)}、{opt nrtolerance(#)}、{opt nonrtolerance} 和 {opt from(init_specs)}。

{pmore}
如果 {opt technique()} 包含多个算法规范，则不能包括 {cmd:bhhh}。要将 BHHH 算法与其他算法结合使用，请使用 {cmd:initbhhh()} 选项，并在 {cmd:technique()} 中指定其他算法。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 时，默认的 {it:vcetype} 会重置为 {cmd:vce(opg)}。

{pmore}
当您指定 {cmd:from(}{it:matname} [{cmd:, copy}]{cmd:)} 时，与效用误差方差相关的 {it:matname} 值必须是经过对数变换的标准差和逆双曲正切变换的相关性。此选项使得从先前拟合的 {cmd:cmroprobit} 模型使用系数向量作为起始点变得方便。

{pstd}
以下选项可与 {cmd:cmroprobit} 一起使用，但未在对话框中显示：

{phang}
{opt collinear}、{opt coeflegend}；见 {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse wlsrank}{p_end}
{phang2}{cmd:. generate currentjob = 1 if low==1}{p_end}
{phang2}{cmd:. replace currentjob = 2 if low==0 & high==0}{p_end}
{phang2}{cmd:. replace currentjob = 3 if high==1}{p_end}
{phang2}{cmd:. label define current 1 "低" 2 "无" 3 "高"}{p_end}
{phang2}{cmd:. label values currentjob current}{p_end}
{phang2}{cmd:. cmset id jobchar}{p_end}

{pstd}拟合排名顺序的 probit 选择模型{p_end}
{phang2}{cmd:. cmroprobit rank i.currentjob if noties, casevars(i.female score) reverse}{p_end}

{pstd}与上述相同，但维度为 1 的因子协方差结构{p_end}
{phang2}{cmd:. cmroprobit rank i.currentjob if noties, casevars(i.female score) factor(1)}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:cmroprobit} 在 {cmd:e()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt :{cmd:e(N)}}观察次数{p_end}
{synopt :{cmd:e(N_case)}}案例数量{p_end}
{synopt :{cmd:e(N_ties)}}平局数量{p_end}
{synopt :{cmd:e(N_ic)}}贝叶斯信息准则 (BIC) 的 N{p_end}
{synopt :{cmd:e(N_clust)}}聚类数量{p_end}
{synopt :{cmd:e(k)}}参数数量{p_end}
{synopt :{cmd:e(k_alt)}}备选项数量{p_end}
{synopt :{cmd:e(k_indvars)}}特定替代品变量的数量{p_end}
{synopt :{cmd:e(k_casevars)}}特定案例变量的数量{p_end}
{synopt :{cmd:e(k_sigma)}}方差估计的数量{p_end}
{synopt :{cmd:e(k_rho)}}相关性估计的数量{p_end}
{synopt :{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt :{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt :{cmd:e(df_m)}}模型自由度{p_end}
{synopt :{cmd:e(ll)}}对数模拟似然{p_end}
{synopt :{cmd:e(const)}}常数指示符{p_end}
{synopt :{cmd:e(i_base)}}基准替代品索引{p_end}
{synopt :{cmd:e(i_scale)}}规模替代品索引{p_end}
{synopt :{cmd:e(mc_points)}}蒙特卡洛重复次数{p_end}
{synopt :{cmd:e(mc_burn)}}起始序列索引{p_end}
{synopt :{cmd:e(mc_antithetics)}}反向抽样指示符{p_end}
{synopt :{cmd:e(reverse)}}{cmd:1} 最小排名最好， {cmd:0} 最大排名最好{p_end}
{synopt :{cmd:e(chi2)}}卡方值{p_end}
{synopt :{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt :{cmd:e(fullcov)}}无结构协方差指示符{p_end}
{synopt :{cmd:e(structcov)}}{cmd:1} 结构协方差；否则为 {cmd:0}{p_end}
{synopt :{cmd:e(cholesky)}} Cholesky 因子协方差指示符{p_end}
{synopt :{cmd:e(alt_min)}}最小备选项数量{p_end}
{synopt :{cmd:e(alt_avg)}}平均备选项数量{p_end}
{synopt :{cmd:e(alt_max)}}最大备选项数量{p_end}
{synopt :{cmd:e(rank)}}{cmd:e(V)} 的等级{p_end}
{synopt :{cmd:e(ic)}}迭代次数{p_end}
{synopt :{cmd:e(rc)}}返回代码{p_end}
{synopt :{cmd:e(converged)}}{cmd:1} 若已收敛，否则为 {cmd:0}{p_end}

{p2col 5 25 29 2: 宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:cmroprobit}{p_end}
{synopt :{cmd:e(cmdline)}}输入的命令{p_end}
{synopt :{cmd:e(depvar)}}因变量名称{p_end}
{synopt :{cmd:e(caseid)}}案例 ID 变量名称{p_end}
{synopt :{cmd:e(altvar)}}备选项变量名称{p_end}
{synopt :{cmd:e(alteqs)}}备选方程名称{p_end}
{synopt :{cmd:e(alt}{it:#}{cmd:)}}备选项标签{p_end}
{synopt :{cmd:e(wtype)}}权重类型{p_end}
{synopt :{cmd:e(wexp)}}权重表达式{p_end}
{synopt :{cmd:e(marktype)}}{cmd:casewise} 或 {cmd:altwise} 的标记类型{p_end}
{synopt :{cmd:e(key_N_ic)}}{cmd:cases}，贝叶斯信息准则 (BIC) 的关键{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt :{cmd:e(correlation)}}相关结构{p_end}
{synopt :{cmd:e(stddev)}}方差结构{p_end}
{synopt :{cmd:e(chi2type)}}{cmd:Wald}，模型卡方检验的类型{p_end}
{synopt :{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt :{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt :{cmd:e(opt)}}优化类型{p_end}
{synopt :{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是执行最大化还是最小化{p_end}
{synopt :{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt :{cmd:e(mc_method)}}生成序列时使用的技术{p_end}
{synopt :{cmd:e(mc_rngstate)}}使用的随机数状态{p_end}
{synopt :{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt :{cmd:e(technique)}}最大化技术{p_end}
{synopt :{cmd:e(datasignature)}}校验和{p_end}
{synopt :{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt :{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt :{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsok)}} {cmd:margins} 允许的预测{p_end}
{synopt :{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}
{synopt :{cmd:e(marginsdefault)}} {cmd:margins} 的默认 {cmd:predict()} 规范{p_end}
{synopt :{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt :{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 25 29 2: 矩阵}{p_end}
{synopt :{cmd:e(b)}}系数向量{p_end}
{synopt :{cmd:e(stats)}}替代统计量{p_end}
{synopt :{cmd:e(stdpattern)}}方差模式{p_end}
{synopt :{cmd:e(stdfixed)}}固定和自由的标准差{p_end}
{synopt :{cmd:e(altvals)}}备选值{p_end}
{synopt :{cmd:e(altfreq)}}备选频率{p_end}
{synopt :{cmd:e(alt_casevars)}}估计的特定案例系数的指示符 -- {cmd:e(k_alt)} x {cmd:e(k_casevars)}{p_end}
{synopt :{cmd:e(corpattern)}}相关结构{p_end}
{synopt :{cmd:e(corfixed)}}固定和自由的相关性{p_end}
{synopt :{cmd:e(Cns)}}约束矩阵{p_end}
{synopt :{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt :{cmd:e(gradient)}}梯度向量{p_end}
{synopt :{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt :{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cmroprobit.sthlp>}