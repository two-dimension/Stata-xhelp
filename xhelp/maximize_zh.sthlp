{smcl}
{* *! version 1.4.1  21feb2019}{...}
{vieweralsosee "[R] 最大化" "mansection R Maximize"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ml" "help ml_zh"}{...}
{vieweralsosee "[R] set iter" "help set iter"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] moptimize()" "help mf_moptimize_zh"}{...}
{vieweralsosee "[M-5] optimize()" "help mf_optimize_zh"}{...}
{viewerjumpto "语法" "maximize_zh##syntax"}{...}
{viewerjumpto "描述" "maximize_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "maximize_zh##linkspdf"}{...}
{viewerjumpto "最大化选项" "maximize_zh##options_max"}{...}
{viewerjumpto "备注" "maximize_zh##remarks"}{...}
{viewerjumpto "存储结果" "maximize_zh##results"}{...}
{viewerjumpto "参考" "maximize_zh##reference"}
{help maximize:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[R] 最大化} {hline 2}}迭代最大化的详细信息{p_end}
{p2col:}({mansection R Maximize:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 20 2}
{it:mle_cmd}
{it:...} [{cmd:,} {it:options}]

{synoptset 27}{...}
{synopthdr}
{synoptline}
{synopt:{opt dif:ficult}}在非凹区域使用不同的步进算法{p_end}
{synopt:{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}}最大化技术{p_end}
{synopt:{opt iter:ate(#)}}执行最多 {it:#} 次迭代；默认值是
	{cmd:iterate(16000)}{p_end}
{synopt:[{cmd:no}]{opt log}}显示对数似然的迭代日志；
        通常，这是默认设置{p_end}
{synopt:{opt tr:ace}}在迭代日志中显示当前参数向量{p_end}
{synopt:{opt grad:ient}}在迭代日志中显示当前梯度向量{p_end}
{synopt:{opt showstep}}在迭代日志中报告迭代中的步骤{p_end}
{synopt:{opt hess:ian}}在迭代日志中显示当前负 Hessian 矩阵{p_end}
{synopt:{cmdab:showtol:erance}}报告与有效收敛标准进行比较的计算结果{p_end}
{synopt:{opt tol:erance(#)}}系数向量的容忍度；详见 
        {it:{help maximize##tolerance:选项}}了解默认值{p_end}
{synopt:{opt ltol:erance(#)}}对数似然的容忍度；详见
        {it:{help maximize##ltolerance:选项}}了解默认值{p_end}
{synopt:{opt nrtol:erance(#)}}缩放梯度的容忍度；详见
        {it:{help maximize##nrtolerance:选项}}了解默认值{p_end}
{synopt:{opt qtol:erance(#)}}当与算法 {cmd:bhhh}、{cmd:dfp} 或 {cmd:bfgs} 一起指定时，
            q-H 矩阵用于作为收敛的最终检查而不是 {opt nrtolerance()} 和
            H 矩阵；很少使用{p_end}
{synopt:{opt nonrtol:ance}}忽略 {opt nrtolerance()} 选项{p_end}
{synopt:{opth from:(maximize##init_specs:init_specs)}}系数的初始值{p_end}
{synoptline}

{p2colreset}{...}
{marker algorithm_spec}{...}
{p 4 6 2}
{it:algorithm_spec} 是

{p 8 8 2}
{it:algorithm} [ {it:#} [ {it:algorithm} [{it:#}] ] ... ]

{p 4 6 2}
{it:algorithm} 是 {c -(}{opt nr} {c |} {opt bhhh} {c |} {opt dfp} {c |} {opt bfgs}{c )-}

{marker init_specs}{...}
{p 4 6 2}
{it:init_specs} 是以下之一

{p 8 20 2}{it:matname} [{cmd:,} {cmd:skip} {cmd:copy} ]{p_end}

{p 8 20 2}{c -(} [{it:eqname}{cmd::}]{it:name} {cmd:=} {it:#} |
	{cmd:/}{it:eqname} {cmd:=} {it:#} {c )-} [{it:...}]{p_end}

{p 8 20 2}{it:#} [{it:#} {it:...}]{cmd:,} {cmd:copy}{p_end}


{marker description}{...}
{title:描述}

{pstd}
所有 Stata 命令通过使用 {cmd:moptimize()} 和
{cmd:optimize()} 来最大化似然函数；详见
{it:{mansection R MaximizeMethodsandformulas:方法与公式}}在
{bf:[R] 最大化} 中。
命令使用牛顿-拉夫森方法，并在遇到非凹区域时进行步长减半和特殊修正。
有关详细信息，请参见 {manhelp moptimize M-5} 和 {manhelp optimize M-5}。有关
在 ado 文件和 Mata 中编写最大似然估计器的更多信息，请参见 
{manhelp ml R} 和
{help maximize##GPP2010:Gould、Pitblado 和 Poi (2010)}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R MaximizeRemarksandexamples:备注与示例}

        {mansection R MaximizeMethodsandformulas:方法与公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options_max}{...}
{title:最大化选项}

{marker difficult}{...}
{phang}
{opt difficult} 说明由于非凹区域，似然函数可能难以最大化。
当出现“非凹”消息重复时，{opt ml} 的标准步进算法可能无法正常工作。
{opt difficult} 指定在非凹区域中使用不同的步进算法。
并不能保证 {opt difficult} 会比默认值更有效；有时它更好，有时则更差。
您应该只在默认步进器声明收敛且最后一次迭代为“非凹”，
或当默认步进器反复发出“非凹”消息并在对数似然中仅产生微小改善时使用 {opt difficult} 选项。

{phang}
{opt technique(algorithm_spec)} 指定如何最大化似然函数。可用以下算法。
有关详细信息，参见 
{help maximize##GPP2010:Gould、Pitblado 和 Poi (2010)}。

{pmore}
        {cmd:technique(nr)} 指定 Stata 的修改牛顿-拉夫森 (NR) 算法。

{pmore}
        {cmd:technique(bhhh)} 指定 Berndt-Hall-Hall-Hausman (BHHH) 算法。

{pmore}
	{cmd:technique(dfp)} 指定 Davidon-Fletcher-Powell (DFP) 算法。

{pmore}
        {cmd:technique(bfgs)} 指定 Broyden-Fletcher-Goldfarb-Shanno (BFGS) 算法。

{pmore} 默认值为 {cmd:technique(nr)}。

{pmore}
    通过在 {opt technique()} 选项中指定多个算法，可以在算法之间切换。
在默认情况下，使用一种算法进行五次迭代，然后切换到下一个算法。
要指定不同数量的迭代，请在选项中包含数字。例如，指定 {cmd:technique(bhhh 10 nr 1000)}
请求 {cmd:ml} 使用 BHHH 算法进行 10 次迭代，然后进行 1000 次 NR 算法迭代，然后
再切换回 BHHH 进行 10 次迭代，依此类推。该过程将持续到收敛或达到最大迭代次数。

{marker iterate()}{...}
{phang}
{opt iterate(#)} 指定最大迭代次数。
当迭代次数达到 {cmd:iterate()} 时，优化器停止并展示当前结果。
如果在达到该阈值之前已声明收敛，则会在声明收敛时停止。
指定 {cmd:iterate(0)} 有助于查看在系数向量的初始值下评估的结果。
同时指定 {cmd:iterate(0)} 和 {cmd:from()} 允许您查看在指定系数向量下评估的结果；
但并非所有命令都允许 {opt from()} 选项。
对于通过 {cmd:ml} 编程的内部估计器及使用 {cmd:ml} 编程的估计器，{opt iterate(#)} 的默认值是
当前值 {cmd:set maxiter} ({manhelpi set_iter R:set iter})，默认为 {cmd:iterate(16000)}。

{phang}
{opt log} 和 {opt nolog} 指定是否显示显示对数似然进展的迭代日志。
对于大多数命令，日志默认被显示，而 {opt nolog} 则抑制显示；详见
{cmd:set iterlog} 在 {manhelpi set_iter R:set iter} 中。
对于少数命令（例如 {opt svy} 最大似然估计器），您必须指定 {opt log} 才能查看日志。

{phang}
{opt trace} 将当前参数向量的显示添加到迭代日志中。

{phang}
{opt gradient} 将当前梯度向量的显示添加到迭代日志中。

{phang}
{opt showstep} 将迭代中的步骤报告添加到迭代日志中。该选项是为了让 StataCorp 的开发人员在改进 {cmd:ml} 优化器代码时查看步进。
在这一点上，主要提供娱乐。

{phang}
{opt hessian} 将当前负 Hessian 矩阵的显示添加到迭代日志中。

{phang}
{cmd:showtolerance} 将在每次迭代结束时添加计算值，该值与有效收敛标准进行比较。
直到达到收敛，报告的都是最小计算值。

{phang}
{cmd:shownrtolerance} 是 {opt showtolerance} 的同义词。


{hline}
{pstd}
以下是三种收敛容忍度的描述。
当满足 {opt nrtolerance()} 标准，并且 {opt tolerance()} 或 
{opt ltolerance()} 标准也满足时，声明收敛。
{p_end}

{phang}
{marker tolerance}
{opt tolerance(#)} 指定系数向量的容忍度。
当系数向量从一个迭代到下一个迭代的相对变化小于或等于 {opt tolerance()} 时，
就满足 {opt tolerance()} 收敛标准。

{pmore}
{cmd:tolerance(1e-4)} 是通过 {cmd:ml} 编程的估计器的默认值。

{pmore}
{cmd:tolerance(1e-6)} 是默认值。 

{phang}
{marker ltolerance}
{opt ltolerance(#)} 指定对数似然的容忍度。
当对数似然从一个迭代到下一个迭代的相对变化小于或等于 {opt ltolerance()} 时，
就满足 {opt ltolerance()} 收敛标准。

{pmore}
{cmd:ltolerance(0)} 是通过 {help ml_zh} 编程的估计器的默认值。

{pmore}
{cmd:ltolerance(1e-7)} 是默认值。

{phang}
{marker nrtolerance}
{opt nrtolerance(#)} 指定缩放梯度的容忍度。
当 g*inv(H)*g' < {opt nrtolerance()} 时，声明收敛。
默认值是 {cmd:nrtolerance(1e-5)}。

{phang}
{opt qtolerance(#)} 当与算法 {cmd:bhhh}、{cmd:dfp} 或 {cmd:bfgs} 一起指定时，
使用 q-H 矩阵作为收敛的最终检查，而不是 {opt nrtolerance()} 和 H 矩阵。

{pmore}
从 Stata 12 开始，默认情况下，Stata 现在在 q-H 矩阵通过收敛容忍度时计算 H 矩阵，并要求 H 具有凹性并通过 {opt nrtolerance()} 标准，然后才得出收敛发生的结论。

{pmore}
{opt qtolerance()} 提供了一种方法，让用户获得 Stata 的早期行为。

{phang}
{opt nonrtolerance} 指定关闭默认 {opt nrtolerance()} 标准。

{hline}


{marker ml_from}{...}
{phang}
{opt from()} 指定系数的初始值。并非所有 Stata 中的估计器都支持此选项。您可以通过以下三种方式之一指定初始值：指定包含初始值的向量名称（例如 {cmd:from(b0)}，其中 {cmd:b0} 是一个适当地标记的向量）；通过指定系数名称及其值（例如，{cmd:from(age=2.1 /sigma=7.4}）；或者通过指定值的列表（例如，{cmd:from(2.1 7.4, copy)}）。{opt from()} 旨在用于进行自助法（见 {manhelp bootstrap R}）和其他特殊场合（例如，使用 {cmd:iterate(0)}）。即使在 {opt from()} 中指定的值接近最大化似然的值，保存的迭代次数也可能很少。
{opt from()} 中的不良值可能导致收敛问题。

{phang2}
{opt skip} 指定在指定初始化向量中出现但未在模型中找到的参数将被忽略。默认操作是发出错误消息。

{phang2}
{opt copy} 指定值列表或初始化向量按位置而不是按名称复制到初始值向量中。


{marker remarks}{...}
{title:备注}

{pstd}
除非在极少数情况下，您可能需要指定这些选项，除了 {opt nolog}。
{opt nolog} 选项对于减少日志文件中出现的输出量很有用；
另请参见 {cmd:set iterlog} 在 {manhelpi set_iter R:set iter} 中。


{marker results}{...}
{title:存储结果}

{pstd}
最大似然估计器将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测值数量；始终存储{p_end}
{synopt:{cmd:e(k)}}参数数量；始终存储{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量；通常存储{p_end}
{synopt:{cmd:e(k_eq_model)}} 总模型测试中的方程数量；
                 通常存储{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量；通常存储{p_end}
{synopt:{cmd:e(df_m)}}模型自由度；始终存储{p_end}
{synopt:{cmd:e(r2_p)}}伪 R 平方；有时存储{p_end}
{synopt:{cmd:e(ll)}}对数似然；始终存储{p_end}
{synopt:{cmd:e(ll_0)}} 对数似然，仅常数模型；仅在拟合常数模型时存储{p_end}
{synopt:{cmd:e(N_clust)}}簇数；在指定 {cmd:vce(cluster} {it:clustvar}{cmd:)} 时存储；
	见 {findalias frrobust}{p_end}
{synopt:{cmd:e(chi2)}}卡方；通常存储{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值；通常存储{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩；始终存储{p_end}
{synopt:{cmd:e(rank0)}} 常数模型的 {cmd:e(V)} 的秩；在拟合常数模型时存储{p_end}
{synopt:{cmd:e(ic)}} 迭代次数；通常存储{p_end}
{synopt:{cmd:e(rc)}} 返回代码；通常存储{p_end}
{synopt:{cmd:e(converged)}} {cmd:1} 如果收敛，{cmd:0} 否则；通常存储{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}命令名称；始终存储{p_end}
{synopt:{cmd:e(cmdline)}}键入的命令；始终存储{p_end}
{synopt:{cmd:e(depvar)}}因变量名称；始终存储{p_end}
{synopt:{cmd:e(wtype)}}权重类型；在指定或隐含权重时存储{p_end}
{synopt:{cmd:e(wexp)}}权重表达式；在指定或隐含权重时存储{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题；通常由使用 {cmd:ml} 的命令存储{p_end}
{synopt:{cmd:e(clustvar)}}簇变量名称；在指定 
        {cmd:vce(cluster} {it:clustvar}{cmd:)} 时存储；
        见 {findalias frrobust}{p_end}
{synopt:{cmd:e(chi2type)}} {cmd:Wald} 或 {cmd:LR}；模型卡方测试的类型；通常存储{p_end}
{synopt:{cmd:e(vce)}} {it:vcetype} 在 {cmd:vce()} 中指定；在允许 {cmd:vce()} 的命令中存储{p_end}
{synopt:{cmd:e(vcetype)}}用于标注标准误差的标题；有时存储{p_end}
{synopt:{cmd:e(opt)}}优化类型；始终存储{p_end}
{synopt:{cmd:e(which)}} {cmd:max} 或 {cmd:min}；优化器是执行最大化还是最小化；始终存储{p_end}
{synopt:{cmd:e(ml_method)}} {cmd:ml} 方法的类型；由使用 {cmd:ml} 的命令始终存储{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称；始终存储{p_end}
{synopt:{cmd:e(technique)}} {cmd:technique()} 选项的来源；有时存储{p_end}
{synopt:{cmd:e(singularHmethod)}} {cmd:m-marquardt} 或 {cmd:hybrid}；
在 Hessian 奇异时使用的方法；有时存储 (1){p_end}
{synopt:{cmd:e(crittype)}}优化标准；始终存储 (1){p_end}
{synopt:{cmd:e(properties)}}估计器属性；始终存储{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序；通常存储{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量；始终存储{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵；有时存储{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）；通常存储{p_end}
{synopt:{cmd:e(gradient)}}梯度向量；通常存储{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵；始终存储{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差；仅在 {cmd:e(V)} 是稳健的、簇稳健的、自助法或杰克刀方差时存储{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本；始终存储{p_end}
    {hline 20}
{p 4 6 2}
1. 输入 {cmd:ereturn} {cmd:list,} {cmd:all} 查看这些结果；见
{help return_zh:[P] return}。

{pstd}
详细查看任何最大似然估计器的手册条目中的 {it:存储结果} 列表。


{marker reference}{...}
{title:参考}

{marker GPP2010}{...}
{phang}
Gould, W. W., J. Pitblado, 和 B. P. Poi. 2010.
{browse "http://www.stata-press.com/books/ml4.html":{it:使用 Stata 的最大似然估计。} 第4版。}  休斯顿，德克萨斯州：Stata Press。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <maximize.sthlp>}