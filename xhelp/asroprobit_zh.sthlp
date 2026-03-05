{smcl}
{* *! version 1.4.10  01apr2019}{...}
{viewerdialog asroprobit "dialog asroprobit"}{...}
{vieweralsosee "previously documented" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] asroprobit postestimation" "help asroprobit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] asmixlogit" "help asmixlogit_zh"}{...}
{vieweralsosee "[R] asmprobit" "help asmprobit_zh"}{...}
{vieweralsosee "[R] mlogit" "help mlogit_zh"}{...}
{vieweralsosee "[R] mprobit" "help mprobit_zh"}{...}
{vieweralsosee "[R] oprobit" "help oprobit_zh"}{...}
{viewerjumpto "Syntax" "asroprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "asroprobit_zh##menu"}{...}
{viewerjumpto "Description" "asroprobit_zh##description"}{...}
{viewerjumpto "Options" "asroprobit_zh##options"}{...}
{viewerjumpto "Examples" "asroprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "asroprobit_zh##results"}
{help asroprobit:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[R] asroprobit} {hline 2}}替代特定的秩序概率回归{p_end}
{p2col:}({browse "http://www.stata.com/manuals15/rasroprobit.pdf":查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{pstd}
{cmd:asroprobit} 仍然可以使用，但自 Stata 16 起，已不再正式作为 Stata 的一部分。 这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。

{pstd}
参见 {help cmroprobit_zh} 获取对 {cmd:asroprobit} 的推荐替代。

{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:asroprobit} 
{depvar} 
[{indepvars}] 
{ifin}
[{it:{help asroprobit##weight:weight}}]
{cmd:,}
{opth case(varname)}
{opth alt:ernatives(varname)}
[{it:options}]

{synoptset 28 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent :* {opth case(varname)}}使用 {it:varname} 来识别案例{p_end}
{p2coldent :* {opth alt:ernatives(varname)}}使用 {it:varname} 来识别每个案例可用的替代方案{p_end}
{synopt : {opth casev:ars(varlist)}}案例特定变量{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():constraints}}{cmd:)}}应用指定的线性约束{p_end}
{synopt:{opt col:linear}}保持共线变量{p_end}

{syntab :模型 2}
{synopt :{opth corr:elation(asroprobit##cortype:correlation)}}隐变量误差的相关结构{p_end}
{synopt :{opth std:dev(asroprobit##stdtype:stddev)}}隐变量误差的方差结构{p_end}
{synopt :{opt struc:tural}}使用结构协方差参数化；默认是差分协方差参数化{p_end}
{synopt :{opt fact:or(#)}}使用维度为 {it:#} 的因子协方差结构{p_end}
{synopt :{opt nocons:tant}}抑制替代特定的常数项{p_end}
{synopt :{opt base:alternative(#|lbl|str)}}用于规范化位置的替代{p_end}
{synopt :{opt scale:alternative(#|lbl|str)}}用于规范化尺度的替代{p_end}
{synopt :{opt altwise}}使用替代逐步删除而不是案例逐步删除{p_end}
{synopt :{opt rev:erse}}解释 {depvar} 中的最低等级为最佳；默认情况下，最高等级为最佳{p_end}

{syntab :SE/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可能为
	{opt oim}, {opt r:obust}, {opt cl:uster} {it:clustvar},
	{opt opg}, {opt boot:strap}, 或 {opt jack:knife}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信区间；默认为 {cmd:level(95)}{p_end}
{synopt :{opt notran:sform}}不将方差-协方差估计转换为标准差和相关性度量{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help asroprobit##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab :积分}
{synopt :{opth intm:ethod(asroprobit##seqtype:seqtype)}}用于生成的点集的准蒙特卡洛积分的类型{p_end}
{synopt :{opt intp:oints(#)}}每个序列中使用的点数{p_end}
{synopt :{opt intb:urn(#)}}哈默斯利或哈尔顿序列中的起始索引{p_end}
{synopt :{cmdab:ints:eed(}{it:{help asroprobit##code:code}}{c |}{it:#}{cmd:)}}准随机数种子{p_end}
{synopt :{opt anti:thetics}}使用对称抽样{p_end}
{synopt :{opt nopiv:ot}}不使用积分区间的支点{p_end}
{synopt :{opt initb:hhh(#)}}在前 {it:#} 次迭代中使用 BHHH 优化算法{p_end}
{synopt :{cmd:favor(}{opt spe:ed}|{opt spa:ce}{cmd:)}}在生成积分点时偏好速度或空间{p_end}

{syntab :最大化}
{synopt :{it:{help asroprobit##maximize_options:maximize_options}}}控制最大化过程{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{synoptset 23}{...}
{marker cortype}
{synopthdr :相关性}
{synoptline}
{synopt :{opt uns:tructured}}每对替代品一个相关性参数；与 {opt basealternative()} 的相关性为零；默认为此{p_end}
{synopt :{opt exc:hangeable}}对所有替代品对共有一个相关性参数；与 {opt basealternative()} 的相关性为零{p_end}
{synopt :{opt ind:ependent}}将所有相关性参数约束为零{p_end}
{synopt :{opt pat:tern} {it:matname}}用户指定矩阵，识别相关性模式{p_end}
{synopt :{opt fix:ed} {it:matname}}用户指定矩阵，识别固定和自由相关性参数{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 23}{...}
{marker stdtype}
{synopthdr :标准差}
{synoptline}
{synopt :{opt het:eroskedastic}}为每个替代品估计标准差；{opt basealternative()} 和 {opt scalealternative()} 的标准差设置为 1{p_end}
{synopt :{opt hom:oskedastic}}所有标准差均为 1{p_end}
{synopt :{opt pat:tern} {it:matname}}用户指定矩阵，识别标准差模式{p_end}
{synopt :{opt fix:ed} {it:matname}}用户指定矩阵，识别固定和自由标准差{p_end}
{synoptline}
{p2colreset}{...}
 
{synoptset 23}{...}
{marker seqtype}
{synopthdr :序列类型}
{synoptline}
{synopt :{opt ham:mersley}}哈默斯利点集{p_end}
{synopt :{opt hal:ton}}哈尔顿点集{p_end}
{synopt :{opt ran:dom}}均匀伪随机点集{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}* {opt case(varname)} 和 {opt alternatives(varname)} 是必需的。{p_end}
INCLUDE help fvvarlist2
{p 4 6 2}{cmd:bootstrap}、{cmd:by}、{cmd:jackknife} 和 {cmd:statsby} 是允许的；参见 {help prefix_zh}.{p_end}
{p 4 6 2}使用 {help bootstrap_zh} 前缀时不允许权重。{p_end}
{marker weight}{...}
{p 4 6 2}{cmd:fweight}s、{cmd:iweight}s 和 {cmd:pweight}s 是允许的；参见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 在对话框中不会出现。{p_end}
{p 4 6 2}参见 {manhelp asroprobit_postestimation R:asroprobit postestimation} 获取估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 有序结果 > 秩序概率回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:asroprobit} 通过使用最大模拟似然 (MSL) 适配秩序概率 (ROP) 模型。该模型允许您放宽顺序逻辑模型的独立无关替代 (IIA) 属性，通过估计隐变量误差的方差-协方差参数。每个在 {cmd:case()} 变量中出现的唯一标识符都有多个在 {cmd:alternatives()} 变量中识别的替代方案，而 {depvar} 包含每个案例的排序替代方案。仅顺序的排列被认为是相关的，而不是它们差异的大小。默认情况下，最大等级表示更可取的替代。若要将最低等级解释为更可取的替代，请使用 {cmd:reverse} 选项。允许平级排序，但由于在计算每个案例的似然时使用所有平级排序的排列，因此会增加计算时间。
{cmd:asroprobit} 允许两种类型的自变量：
替代特定变量，其中每个变量的值随每个替代而变化，以及案例特定变量，在每个案例中变化。

{pstd}
{cmd:asroprobit} 的估计技术与 {cmd:asmprobit} 几乎相同，这两种程序共享许多相同的选项；参见 {manhelp asmprobit R}。


{marker options}{...}
{title:选项}

INCLUDE help asmprobit_options_model

{phang}{opt reverse} 指示 {cmd:asroprobit} 将 {depvar} 中值最小的等级解析为优先替代。默认情况下，值最大的等级为优选替代。

{dlgtab:SE/稳健}

INCLUDE help vce_asymptall

{pmore}
如果指定 {cmd:vce(bootstrap)} 或 {cmd:vce(jackknife)}，则还必须指定 {cmd:basealternative()} 和 {cmd:scalealternative()}。

{dlgtab:报告}

{phang}{opt level(#)}；参见
{helpb estimation options##level():[R] estimation options}。

{phang}{opt notransform} 防止将 Cholesky 事实方差-协方差估计转换为相关性和标准差度量。

{pmore}
如果未指定 {cmd:structural}，则此选项无效，因为默认的差分方差-协方差估计在作为相关性和标准差时没有有趣的解释。如果 {cmd:correlation()} 和 {cmd:stddev()} 选项与其默认值以外的任何值一起指定，则 {cmd:notransform} 也无效。在这里，通常无法分解方差-协方差矩阵，因此优化已经使用标准差和相关性表示执行。

{phang}
{opt nocnsreport}；参见
     {helpb estimation options##nocnsreport:[R] estimation options}。

INCLUDE help displayopts_list

{dlgtab:积分}

{phang}{cmd:intmethod(hammersley}|{cmd:halton}|{cmd:random)} 指定生成的点集使用的一种方法，用于多元正态密度的准蒙特卡洛积分。 {cmd:intmethod(hammersley)}，默认，使用哈默斯利序列； {cmd:intmethod(halton)} 使用哈尔顿序列； {cmd:intmethod(random)} 使用均匀随机数序列。

{phang}{opt intpoints(#)} 指定在准蒙特卡洛积分中要使用的点数。如果未指定此选项，则点数为 50 x J（如果使用 {cmd:intmethod(hammersley)} 或 {cmd:intmethod(halton)}）或 100 x J（如果使用 {cmd:intmethod(random)}）。 {opt intpoints()} 的较大值提供对对数似然的更好估计，但计算时间也增加。

{phang}{opt intburn(#)} 指定哈默斯利或哈尔顿序列的起始位置，以帮助减少各维度之间序列的相关性。默认值为 0。此选项不能与 {cmd:intmethod(random)} 一起指定。

{marker code}{...}
{phang}{opt intseed(code|#)} 指定用于生成均匀伪随机序列的种子。此选项只能与 {cmd:intmethod(random)} 一起指定。 {it:code} 指代记录随机数生成器状态的字符串 {cmd:runiform()}; 请参阅 
{help set_seed_zh:[R] set seed}。也可以使用整数值 {it:#}。默认情况下，使用 Stata 的均匀随机数生成器的当前种子值，可以通过 {cmd:c(rngstate)} 获取。

{phang}{opt antithetics} 指定使用对称抽样。对于 J - 1 维向量均匀随机变量 {bf:x}，对称抽样为 1 - {bf:x}。

{phang}{opt nopivot} 关闭积分区间的支点。默认情况下， {cmd:asroprobit} 将较宽的积分区间支点放入多元积分的内部。这提高了积分估计的精度。然而，当使用少量模拟点时，通过有限差分计算数值二阶导数时，可能会导致不连续性（对于牛顿-拉夫森优化技术，{cmd:tech(nr)}），从而导致海森矩阵不是正定的。默认情况下， {cmd:asroprobit} 使用 Broyden-Fletcher-Goldfarb-Shanno 优化算法，该算法不需要使用有限差分通过数值计算海森矩阵。

{phang}{opt initbhhh(#)} 指定在初始 {it:#} 优化步骤中使用 Berndt-Hall-Hall-Hausman (BHHH) 算法。此选项是唯一可以与其他优化技术一起使用 BHHH 算法的方法。 {cmd:ml} 的 {opt technique()} 选项的算法切换功能不能包含 {opt bhhh}。

{phang}{cmd:favor(speed}|{cmd:space)} 指示 {cmd:asroprobit} 在生成积分点时偏好速度或空间。 {cmd:favor(speed)} 是默认选项。偏好速度时，积分点被生成一次并存储在内存中，从而提高计算似然的速度。当案例数量较多或用户指定了大量积分点时，可以看到这种速度的提升，当 {cmd:intpoints(}{it:#}{cmd:)} 的值较大时，尤其如此。偏好空间时，积分点在每次计算似然时重复生成。

{pmore} 
对于不平衡数据，替代数量在每个案例中有所不同，使用 {cmd:intmethod(random)} 计算的估计在 {cmd:favor(speed)} 和 {cmd:favor(space)} 之间会略有变化。这是因为即使使用相同的均匀种子 {cmd:intseed(}{it:code}{cmd:|}{it:#}{cmd:)} 初始化序列，均匀序列也不会完全相同。对于 {cmd:favor(speed)}，生成 {cmd:ncase} 块的 {cmd:intpoints(}{it:#}{cmd:)} X J-2 个均匀点，其中 J 是替代方案的最大数量。对于 {cmd:favor(space)}，点矩阵的列维度根据每个案例拥有的替代数量而变化。

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}:
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)},
{opt iter:ate(#)},
[{cmdab:no:}]{opt lo:g},
{opt tr:ace},
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)},
{opt nonrtol:erance}, 和
{opt from(init_specs)}; 请参见 {manhelp maximize R}。

{pmore}
以下选项在使用 {cmd:asroprobit} 时可能尤其有助于获得收敛： {opt difficult}, 
{opt technique(algorithm_spec)}, {opt nrtolerance(#)}, 
{opt nonrtolerance}, 和 {opt from(init_specs)}。

{pmore}
如果 {opt technique()} 包含多个算法规格，则 {opt bhhh} 不能是其中之一。要将 BHHH 算法与其他算法一起使用，请使用 {opt initbhhh()} 选项，并在 {opt technique()} 中指定其他算法。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会重置默认的 {it:vcetype} 为 {cmd:vce(opg)}。

{pmore}
在指定 {cmd:from(}{it:matname} [{cmd:, copy}]{cmd:) 时，{it:matname} 中与隐变量误差方差相关的值必须是对数转换的标准差和反双曲正切转换的相关性。此选项便利了使用以前拟合的 {cmd:asroprobit} 模型的系数向量作为起始点。

{pstd}
以下选项适用于 {opt asroprobit}，但在对话框中未显示：

{phang}
{opt coeflegend}; 请参阅
     {helpb estimation options##coeflegend:[R] estimation options}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse wlsrank}{p_end}

{pstd}拟合替代特定的秩序概率模型，排除平级排名的案例；指定最低 {cmd:rank} 为最优{p_end}
{phang2}{cmd:. asroprobit rank high low if noties,}
           {cmd:case(id) alternatives(jobchar) casevars(female score) reverse}

{pstd}指定潜变量误差的可交换相关模型{p_end}
{phang2}{cmd:. asroprobit rank high low if noties,}
            {cmd:case(id) alternatives(jobchar) casevars(female score)}
            {cmd:reverse correlation(exchangeable)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:asroprobit} 将以下内容存储在 {cmd:e()} 中：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_case)}}案例数量{p_end}
{synopt:{cmd:e(N_ties)}}平级数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_alt)}}替代数量{p_end}
{synopt:{cmd:e(k_indvars)}}替代特定变量的数量{p_end}
{synopt:{cmd:e(k_casevars)}}案例特定变量的数量{p_end}
{synopt:{cmd:e(k_sigma)}}方差估计的数量{p_end}
{synopt:{cmd:e(k_rho)}}相关性估计的数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}总体模型检验中的方程数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}逻辑模拟似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(const)}}常数指示符{p_end}
{synopt:{cmd:e(i_base)}}基础替代索引{p_end}
{synopt:{cmd:e(i_scale)}}尺度替代索引{p_end}
{synopt:{cmd:e(mc_points)}} Monte Carlo 复现的数量{p_end}
{synopt:{cmd:e(mc_burn)}}起始序列索引{p_end}
{synopt:{cmd:e(mc_antithetics)}}对称标志{p_end}
{synopt:{cmd:e(reverse)}}{cmd:1} 如果最小排名为最佳， {cmd:0} 如果最大排名为最佳{p_end}
{synopt:{cmd:e(chi2)}}卡方值{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(fullcov)}}无结构协方差指示符{p_end}
{synopt:{cmd:e(structcov)}}{cmd:1} 如果为结构协方差， {cmd:0} 否则{p_end}
{synopt:{cmd:e(cholesky)}} Cholesky 分解的协方差指示符{p_end}
{synopt:{cmd:e(alt_min)}}最小替代数量{p_end}
{synopt:{cmd:e(alt_avg)}}平均替代数量{p_end}
{synopt:{cmd:e(alt_max)}}最大替代数量{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果已收敛， {cmd:0} 否则{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:asroprobit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(indvars)}}替代特定的自变量{p_end}
{synopt:{cmd:e(casevars)}}案例特定变量{p_end}
{synopt:{cmd:e(case)}}定义案例的变量{p_end}
{synopt:{cmd:e(altvar)}}定义替代的变量{p_end}
{synopt:{cmd:e(alteqs)}}替代方程的名称{p_end}
{synopt:{cmd:e(alt}{it:#}{cmd:)}}替代标签{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(correlation)}}相关结构{p_end}
{synopt:{cmd:e(stddev)}}方差结构{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}，模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是进行最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(mc_method)}}{cmd:Hammersley}、{cmd:Halton} 或 {cmd:uniform random}；生成序列的技术{p_end}
{synopt:{cmd:e(mc_rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(mfx_dlg)}}用于实现 {cmd:estat mfx} 对话框的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(stats)}}替代统计量{p_end}
{synopt:{cmd:e(stdpattern)}}方差模式{p_end}
{synopt:{cmd:e(stdfixed)}}固定和自由的标准差{p_end}
{synopt:{cmd:e(altvals)}}替代值{p_end}
{synopt:{cmd:e(altfreq)}}替代引数{p_end}
{synopt:{cmd:e(alt_casevars)}}估计的案例特定系数的指示符—— {cmd:e(k_alt)} x {cmd:e(k_casevars)}{p_end}
{synopt:{cmd:e(corpattern)}}相关结构{p_end}
{synopt:{cmd:e(corfixed)}}固定和自由的相关性{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计值的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <asroprobit.sthlp>}