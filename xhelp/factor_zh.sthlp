{smcl}
{* *! version 1.3.15  12dec2018}{...}
{viewerdialog factor "dialog factor"}{...}
{viewerdialog factormat "dialog factormat"}{...}
{vieweralsosee "[MV] factor" "mansection MV factor"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] factor postestimation" "help factor_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] alpha" "help alpha_zh"}{...}
{vieweralsosee "[MV] canon" "help canon_zh"}{...}
{vieweralsosee "[MV] pca" "help pca_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] Intro 5" "mansection SEM Intro5"}{...}
{findalias assemsfmm}{...}
{findalias assemtfmm}{...}
{viewerjumpto "语法" "factor_zh##syntax"}{...}
{viewerjumpto "菜单" "factor_zh##menu"}{...}
{viewerjumpto "描述" "factor_zh##description"}{...}
{viewerjumpto "PDF文档链接" "factor_zh##linkspdf"}{...}
{viewerjumpto "因子和factormat的选项" "factor_zh##options"}{...}
{viewerjumpto "factormat独有的选项" "factor_zh##options_factormat"}{...}
{viewerjumpto "因子的例子" "factor_zh##examples_factor"}{...}
{viewerjumpto "factormat的例子" "factor_zh##examples_factormat"}{...}
{viewerjumpto "存储的结果" "factor_zh##results"}{...}
{viewerjumpto "参考文献" "factor_zh##reference"}
{help factor:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[MV] factor} {hline 2}}因子分析{p_end}
{p2col:}({mansection MV factor:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
数据的因子分析

{p 8 15 2}
{cmdab:fac:tor} {varlist} {ifin}
[{it:{help factor##weight:权重}}]
[{cmd:,} {it:{help factor##method:方法}}
{it:{help factor##options_table:选项}}]


{pstd}
相关矩阵的因子分析

{p 8 18 2}
{cmd:factormat} {it:matname}{cmd:,} {opt n(#)}
[ {it:{help factor##method:方法}}
{it:{help factor##options_table:选项}}
{it:{help factor##matoptions:factormat选项}}]


{phang}
{it:matname} 是一个正方形的 Stata 矩阵或一个包含相关矩阵或协方差矩阵的行序上三角或下三角的向量。如果提供了协方差矩阵，它将被转换为相关矩阵以进行因子分析。

{synoptset 20 tabbed}{...}
{marker method}{...}
{synopthdr:方法}
{synoptline}
{syntab:模型 2}
{synopt:{opt pf}}主因子；默认选项{p_end}
{synopt:{opt pcf}}主成分因子{p_end}
{synopt:{opt ip:f}}迭代主因子{p_end}
{synopt:{opt ml}}最大似然因子{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab:模型 2}
{synopt:{opt fa:ctors(#)}}保持的最大因子数{p_end}
{synopt:{opt mine:igen(#)}}保持的最小特征值{p_end}
{synopt:{opt cit:erate(#)}}公共性重估迭代
	({cmd:ipf} 仅适用){p_end}

{syntab:报告}
{synopt:{opt bl:anks(#)}}当|载荷| < {it:#}时，将载荷显示为空白{p_end}
{synopt:{opt altdiv:isor}}使用相关矩阵的迹作为报告比例的除数{p_end}

{syntab:最大化}
{synopt:{opt pr:otect(#)}}执行 {it:#} 次优化，并报告最佳解决方案 ({cmd:ml} 仅适用){p_end}
{synopt:{opt r:andom}}使用随机启动值 ({cmd:ml} 仅适用)；很少使用{p_end}
{synopt:{opth "seed(set_seed:seed)"}}随机数种子 ({cmd:ml} 配合 {opt protect()} 或 {opt random}仅适用){p_end}
{synopt:{it:{help factor##maximize:maximize_options}}}控制最大化过程；很少使用 ({cmd:ml} 仅适用){p_end}

{synopt:{opt norot:ated}}即使可用旋转结果，仍显示未旋转的解（仅在重新播放时使用）{p_end}
{synoptline}
{p 4 6 2}
{opt norotated} 不出现在对话框中。
{p_end}

{marker matoptions}{...}
{synopthdr:factormat选项}
{synoptline}
{syntab:模型}
{synopt:{cmdab:sh:ape(}{cmdab:f:ull}{cmd:)}}{it:matname} 是一个正方形对称矩阵；默认选项{p_end}
{synopt:{cmdab:sh:ape(}{cmdab:l:ower}{cmd:)}}{it:matname} 是包含行序下三角（含对角线）的向量{p_end}
{synopt:{cmdab:sh:ape(}{cmdab:u:pper}{cmd:)}}{it:matname} 是包含行序上三角（含对角线）的向量{p_end}
{synopt:{opt nam:es(namelist)}}变量名称；如果 {it:matname} 是三角形，则为必需{p_end}
{synopt:{opt forcepsd}}将 {it:matname} 修改为正半定{p_end}
{p2coldent:* {opt n(#)}}观察数{p_end}
{synopt:{opt sds(matname2)}}变量标准差的向量{p_end}
{synopt:{opt means(matname3)}}变量均值的向量{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt n(#)} 是 {cmd:factormat} 的必需选项。
{p_end}

{p 4 6 2}
{cmd:bootstrap}, {cmd:by}, {cmd:jackknife}, {cmd:rolling}, 和 {cmd:statsby} 
都允许与 {cmd:factor} 一起使用；请参见 {help prefix_zh}。但是，{cmd:bootstrap}
和 {cmd:jackknife} 的结果应谨慎解释；因子 {cmd:factor} 参数的识别涉及数据依赖的限制，可能
导致严重偏差和过度分散的估计
({help factor##MW1995:Milan 和 Whittaker 1995}）。
{p_end}
{p 4 6 2}权重不允许与 {help bootstrap_zh} 前缀一起使用。{p_end}
{p 4 6 2}{cmd:aweight}s 不允许与 {help jackknife_zh} 前缀一起使用。
{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:aweight}s 和 {cmd:fweight}s 允许与 {cmd:factor} 一起使用； 
请参见 {help weight_zh}。
{p_end}
{p 4 6 2}
有关估计后可用特性的更多信息，请参见 {manhelp factor_postestimation R:因子后估计}。{p_end}


{marker menu}{...}
{title:菜单}

    {title:因子}

{phang2}
{bf:统计 > 多变量分析 >}
   {bf:因子和主成分分析 > 因子分析}

    {title:factormat}

{phang2}
{bf:统计 > 多变量分析 >}
   {bf:因子和主成分分析 >}
   {bf:相关矩阵的因子分析}


{marker description}{...}
{title:描述}

{pstd}
{cmd:factor} 和 {cmd:factormat} 对相关矩阵进行因子分析。这些命令产生主因子、迭代主因子、主成分因子和最大似然因子分析。
{cmd:factor} 和 {cmd:factormat} 显示相关矩阵的特征值、因子载荷和变量的独特性。

{pstd}
{cmd:factor} 期望数据为变量形式，允许权重，并可以对子组进行操作。 {cmd:factormat} 用于相关或协方差矩阵。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MV factorQuickstart:快速入门}

        {mansection MV factorRemarksandexamples:备注和示例}

        {mansection MV factorMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在本帮助文件中。


{marker options}{...}
{title:因子和factormat的选项}

{dlgtab:模型 2}

{phang}
{opt pf}, {opt pcf}, {opt ipf}, 和 {opt ml}
指示要执行的估计类型。默认选项为 {opt pf}。

{phang2}
{opt pf}
指定使用主因子方法分析相关矩阵。因子载荷，有时称为因子模式，使用平方多重相关作为公共性的估计值来计算。{opt pf} 为默认选项。

{phang2}
{opt pcf}
指定使用主成分因子方法分析相关矩阵。假设公共性为 1。

{phang2}
{opt ipf}
指定使用迭代主因子法分析相关矩阵。此方法迭代性地重新估计公共性。

{phang2}
{opt ml}
指定最大似然因子方法，假设为多元正态观察值。该估计方法等同于 Rao 的典型因子法，最大化部分相关矩阵的行列式。因此，该解也有意义，作为非正态数据的描述性方法。{opt ml} 不能用于奇异相关矩阵。使用方法 {opt ml} 时必须指定至少三个变量。

{phang}
{opt factors(#)} 和 {opt mineigen(#)} 
指定保持的最大因子数。{opt factors()}
直接指定数量，而 {opt mineigen()} 间接地指定，保持所有特征值大于所指示值的因子。可以单独、一起或都不指定这些选项。

{phang2}
{opt factors(#)}
设置保持的最大因子数，以供后续的后估计命令使用。{opt factor} 始终打印完整的特征值集，但仅为保留的因子打印对应的特征向量。指定的数量大于 {varlist} 中变量的数量相当于指定 {varlist} 中变量的数量，并且是默认选项。

{phang2}
{opt mineigen(#)}
设置保持的特征值的最小值。所有方法的默认值（除了 {opt pcf}）为 0.000005（实质上为零），这意味着与负特征值相关的因子将不会被打印或保留。{opt pcf} 的默认值为 1。许多来源建议使用 {cmd:mineigen(1)}，尽管依据复杂而不确定。如果 {it:#} 小于 0.000005，则重置为 0.000005。

{phang}
{opt citerate(#)}
仅与 {opt ipf} 一起使用，设置重新估计公共性的迭代数。如果未指定 {opt citerate()}，则继续迭代，直到公共性变化很小。使用 {cmd:citerate(0)} 的 {opt ipf} 产生与 {opt pf} 相同的结果。

{dlgtab:报告}

{phang}
{opt blanks(#)}
指定显示小于 {it:#}（绝对值）的因子载荷为空白。

{phang}
{opt altdivisor}
指定报告的比例和累计比例使用相关矩阵的迹 {cmd:trace(e(C))} 作为除数。默认使用所有特征值的总和（即使是负的）作为除数。

{dlgtab:最大化}

{phang}
{opt protect(#)} 
仅与 {opt ml} 一起使用，并请求在平方多重相关系数启动值的基础上，执行 {it:#} 次优化，并报告最佳解。输出还指示是否所有启动值收敛到相同的解。当指定一个大的数字，例如 {cmd:protect(50)} 时，这提供了合理的保证所找到的解是全局的，而不仅仅是局部的最大值。如果还指定了 {opt trace}（参见 {help maximize_zh:[R] 最大化}），将打印每次最大化的参数和可能性。

{phang}
{opt random} 
仅与 {opt ml} 一起使用，请求使用随机启动值。此选项很少使用，应仅在 {opt protect()} 显示存在多个最大值后使用。

{phang}
{opt seed(seed)}
仅与 {opt ml} 一起使用，当{opt random} 或 {opt protect()} 选项也指定时。{opt seed()} 指定随机数种子；参见 {manhelp set_seed R:设置种子}。如果未指定 {opt seed()}，随机数生成器将在最后状态下启动。

{marker maximize}{...}
{phang}
{it:maximize_options}:
{opt iter:ate(#)}, [{cmd:no}]{cmd:log}, {opt tr:ace},
{opt tol:erance(#)}, 和 {opt ltol:erance(#)}, 见
{help maximize_zh:[R] 最大化}。这些选项很少使用。

{pstd}
以下选项可与 {cmd:factor} 一起使用，但在对话框中未显示：

{phang}
{opt norotated}
指定即使可用旋转因子解，也显示未旋转的因子解。{opt norotated} 仅在重新播放结果时使用。


{marker options_factormat}{...}
{title:factormat独有的选项}

{dlgtab:模型}

{marker shape()}{...}
{phang}
{opt shape(shape)}
指定协方差或相关矩阵 {it:matname} 的形状（存储方法）。支持以下形状：

{phang2}
{cmd:full}
指定 k 个变量的相关或协方差结构是一个对称的 k x k 矩阵。这是默认值。

{phang2}
{cmd:lower}
指定 k 个变量的相关或协方差结构是一个具有 k(k+1)/2 元素的向量，按行序下三角顺序排列，

{p 16 20 2}
C(11) C(21) C(22) C(31) C(32) C(33) ... C(k1) C(k2) ... C(kk)

{phang2}
{cmd:upper}
指定 k 个变量的相关或协方差结构是一个具有 k(k+1)/2 元素的向量，按行序上三角顺序排列，

{p 16 20 2}
C(11) C(12) C(13) ... C(1k) C(22) C(23) ... C(2k){...}
... {bind:C(k-1,k-1)} {bind:C(k-1,k)} C(kk)

{phang}
{opt names(namelist)}
指定用于文档化输出和标记估计结果的 k 个不同名称列表，以及作为 {cmd:predict} 的变量名称。如果相关或协方差矩阵处于向量化存储模式（即指定了 {cmd:shape(lower)} 或 {cmd:shape(upper)}），则必须使用 {opt names()}。默认情况下，{cmd:factormat} 验证 {it:matname} 的行和列名称是否与 {opt sds()} 和 {opt means()} 选项的 {it:matname2} 和 {it:matname3} 的列或行名称一致。使用 {opt names()} 选项将关闭此检查。

{phang}
{opt forcepsd} 将矩阵 {it:matname} 修改为正半定（psd），以便成为适当的协方差矩阵。如果 {it:matname} 不是正半定的，它将具有负特征值。通过将负特征值设为 0 并重建，我们得到了 {it:matname} 的最小二乘正半定近似。这种近似是一个奇异协方差矩阵。

{phang}
{opt n(#)},
为必需选项，指定 {it:matname} 所基于的观察数量。

{phang}
{opt sds(matname2)}
指定一个 k x 1 或 1 x k 矩阵，其中包含变量的标准差。行或列名称应与变量名称匹配，除非指定了 {opt names()} 选项。
{opt sds()} 仅在 {it:matname} 为相关矩阵时可以指定。如果数据集中有变量并希望在 {cmd:factormat} 后使用 {cmd:predict}，请指定 {opt sds()}。 {opt sds()} 不会影响 {cmd:factormat} 的计算，但提供的信息使得 {cmd:predict} 不会假设标准差为 1。

{phang}
{opt means(matname3)}
指定一个 k x 1 或 1 x k 矩阵，其中包含变量的均值。行或列名称应与变量名称匹配，除非指定了 {opt names()} 选项。如果数据集中有变量并希望在 {cmd:factormat} 后使用 {cmd:predict}，请指定 {opt means()}。 {opt means()} 不会影响 {cmd:factormat} 的计算，但提供的信息使得 {cmd:predict} 不会假设均值为 0。


{marker examples_factor}{...}
{title:因子的例子}

{pstd}设置{p_end}
{phang2}{cmd:. webuse bg2}{p_end}

{pstd}主因子{p_end}
{phang2}{cmd:. factor bg2cost1-bg2cost6}

{pstd}主因子，保留 2 个因子{p_end}
{phang2}{cmd:. factor bg2cost1-bg2cost6, factors(2)}

{pstd}主成分因子，保留 2 个{p_end}
{phang2}{cmd:. factor bg2cost1-bg2cost6, factors(2) pcf}

{pstd}迭代主因子，保留 2 个{p_end}
{phang2}{cmd:. factor bg2cost1-bg2cost6, factors(2) ipf}

{pstd}最大似然因子，保留 2 个{p_end}
{phang2}{cmd:. factor bg2cost1-bg2cost6, factors(2) ml}


{marker examples_factormat}{...}
{title:factormat的例子}

{pstd}
首先输入相关矩阵，并设置行和列名。

	{cmd:. matrix C = ( 1.000, 0.943,  0.771  \ ///}
	{cmd:               0.943, 1.000,  0.605  \ ///}
	{cmd:               0.771, 0.605,  1.000  ) }

{pstd}
接下来调用 {cmd:factormat}，指定观察数量 {cmd:n()}。

{phang2}
{cmd:. factormat C, n(979) names(视觉 听觉 味觉) fac(1)}

{pstd}上述命令相同，但将 {cmd:C} 作为向量输入。{p_end}

{phang2}
{cmd:. matrix C = ( 1.000, 0.943, 0.771, 1.000, 0.605, 1.000)}

{pstd}
接下来我们使用 {cmd:factormat}，指定存储 {cmd:shape(upper)} 和变量名称选项 {cmd:names()}。

{phang2}
{cmd:. factormat C, n(979) shape(upper) fac(1) names(视觉 听觉 味觉)}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:factor} 和 {cmd:factormat} 将以下结果存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(f)}}保留的因子数{p_end}
{synopt:{cmd:e(evsum)}}所有特征值之和{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(chi2_i)}}"独立与饱和"的似然比检验{p_end}
{synopt:{cmd:e(df_i)}}"独立与饱和"检验的自由度{p_end}
{synopt:{cmd:e(p_i)}}"独立与饱和"的 p 值{p_end}
{synopt:{cmd:e(ll_0)}}无效模型的对数似然（{cmd:ml} 仅适用）{p_end}
{synopt:{cmd:e(ll)}}对数似然 ({cmd:ml} 仅适用){p_end}
{synopt:{cmd:e(aic)}}Akaike 的 AIC ({cmd:ml} 仅适用){p_end}
{synopt:{cmd:e(bic)}}Schwarz 的 BIC ({cmd:ml} 仅适用){p_end}
{synopt:{cmd:e(chi2_1)}}"# 因子与饱和"的似然比检验 ({cmd:ml} 仅适用){p_end}
{synopt:{cmd:e(df_1)}}"# 因子与饱和"检验的自由度 ({cmd:ml} 仅适用){p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:factor}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(method)}}{cmd:pf}, {cmd:pcf}, {cmd:ipf}, 或 {cmd:ml}{p_end}
{synopt:{cmd:e(wtype)}}权重类型（仅 {cmd:factor}）{p_end}
{synopt:{cmd:e(wexp)}}权重表达式（仅 {cmd:factor}）{p_end}
{synopt:{cmd:e(title)}}{cmd:因子分析}{p_end}
{synopt:{cmd:e(mtitle)}}方法描述（例如：{cmd:主因子}）{p_end}
{synopt:{cmd:e(heywood)}}{cmd:Heywood案例}（遇到时）{p_end}
{synopt:{cmd:e(matrixname)}}输入矩阵（仅 {cmd:factormat}）{p_end}
{synopt:{cmd:e(mineigen)}}指定的 {cmd:mineigen()} 选项{p_end}
{synopt:{cmd:e(factors)}}指定的 {cmd:factors()} 选项{p_end}
{synopt:{cmd:e(rngstate)}}使用的随机数状态（仅 {cmd:seed()} 选项）{p_end}
{synopt:{cmd:e(properties)}}{cmd:nob noV eigen}{p_end}
{synopt:{cmd:e(rotate_cmd)}}{cmd:factor_rotate}{p_end}
{synopt:{cmd:e(estat_cmd)}}{cmd:factor_estat}{p_end}
{synopt:{cmd:e(predict)}}{cmd:factor_p}{p_end}
{synopt:{cmd:e(marginsnotok)}}由 {cmd:margins} 禁止的预测{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(sds)}}分析变量的标准差{p_end}
{synopt:{cmd:e(means)}}分析变量的均值{p_end}
{synopt:{cmd:e(C)}}分析的相关矩阵{p_end}
{synopt:{cmd:e(Phi)}}公共因子的方差矩阵{p_end}
{synopt:{cmd:e(L)}}因子载荷{p_end}
{synopt:{cmd:e(Psi)}}独特性（特定因子的方差）{p_end}
{synopt:{cmd:e(Ev)}}特征值{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本（仅 {cmd:factor}）{p_end}
{p2colreset}{...}

{pstd}
在 {cmd:factor} 和 {cmd:factormat} 之后使用 {cmd:rotate} 将存储的项目与估计命令一起存储在 {cmd:e()} 中。有关详细信息，请参见 {manhelp factor_postestimation MV:因子后估计} 和 {manhelp rotate MV} 的
{it:存储的结果}。


{marker reference}{...}
{title:参考文献}

{marker MW1995}{...}
{phang}
Milan, L., 和 J. Whittaker. 1995. 将参数引导法应用于包含奇异值分解的模型。
{it:应用统计} 44: 31-49。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <factor.sthlp>}