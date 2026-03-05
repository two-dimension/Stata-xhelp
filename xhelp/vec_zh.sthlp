{smcl}
{* *! version 1.3.7  12dec2018}{...}
{viewerdialog vec "dialog vec"}{...}
{vieweralsosee "[TS] vec" "mansection TS vec"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] vec postestimation" "help vec postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] var" "help var_zh"}{...}
{vieweralsosee "[TS] var svar" "help svar_zh"}{...}
{vieweralsosee "[TS] vec intro" "help vec_intro_zh"}{...}
{viewerjumpto "Syntax" "vec_zh##syntax"}{...}
{viewerjumpto "Menu" "vec_zh##menu"}{...}
{viewerjumpto "Description" "vec_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "vec_zh##linkspdf"}{...}
{viewerjumpto "Options" "vec_zh##options"}{...}
{viewerjumpto "Examples" "vec_zh##examples"}{...}
{viewerjumpto "Stored results" "vec_zh##results"}{...}
{viewerjumpto "Reference" "vec_zh##reference"}
{help vec:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[TS] vec} {hline 2}}向量误差修正模型{p_end}
{p2col:}({mansection TS vec:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{p 8 13 2}
{cmd:vec} {depvarlist} {ifin} [{cmd:,} {it:选项}]

{synoptset 31 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt r:ank(#)}}使用 {it:#} 个协整方程；默认值为 {cmd:rank(1)}{p_end}
{synopt :{opt la:gs(#)}}在基础 VAR 模型中使用 {it:#} 个最大滞后期{p_end}
{synopt :{opt t:rend}{cmd:(}{opt c:onstant}{cmd:)}}在模型中包括一个不受限制的常数项；默认值{p_end}
{synopt :{opt t:rend}{cmd:(}{opt rc:onstant}{cmd:)}}在模型中包括一个受限制的常数项{p_end}
{synopt :{opt t:rend}{cmd:(}{opt t:rend}{cmd:)}}在协整方程中加入线性趋势，并在未差分数据中加入二次趋势{p_end}
{synopt :{opt t:rend}{cmd:(}{opt rt:rend}{cmd:)}}在模型中包括一个受限制的趋势{p_end}
{synopt :{opt t:rend}{cmd:(}{opt n:one}{cmd:)}}不包括趋势或常数项{p_end}
{synopt :{opt bc:onstraints(constraints_bc)}}对子协整向量施加 {it:constraints_bc}{p_end}
{synopt :{opt ac:onstraints(constraints_ac)}}对子调整参数施加 {it:constraints_ac}{p_end}

{syntab:高级模型}
{synopt :{opth si:ndicators(varlist:varlist_si)}}包括归一化的季节性指示变量 {it:varlist_si}{p_end}
{synopt :{opt noreduce}}不检查和修正因子滞后的共线性{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt nobt:able}}不报告协整方程中的参数{p_end}
{synopt :{opt noid:test}}不报告对过度识别限制的似然比测试{p_end}

{synopt :{opt al:pha}}在单独的表中报告调整参数{p_end}
{synopt :{opt pi}}以 Pi=(alpha)(beta)' 的形式报告参数{p_end}
{synopt :{opt nopt:able}}不报告 Pi 矩阵的元素{p_end}
{synopt :{opt m:ai}}在移动平均影响矩阵中报告参数{p_end}
{synopt :{opt noet:able}}不报告调整和短期参数{p_end}
{synopt :{opt dforce}}强制报告短期、beta 和 alpha 参数，即使 beta 中的参数未被识别；高级选项{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help vec##display_options:display_options}}}控制列和列格式、行间距和行宽{p_end}

{syntab:最优化}
{synopt :{it:{help vec##maximize_options:maximize_options}}}控制最优化过程；很少使用{p_end}

包含帮助 shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}{cmd:vec} 不允许数据中的缺失值。{p_end}
{p 4 6 2}在使用 {cmd:vec} 之前，您必须 {cmd:tsset} 数据；请参见 {help tsset_zh:[TS] tsset}。{p_end}
{p 4 6 2}{it:varlist} 必须至少包含两个变量，并且可以包含时间序列操作符；请参见 {help tsvarlist_zh}。{p_end}
{p 4 6 2}{cmd:by}、{cmd:fp}、{cmd:rolling}、{cmd:statsby} 和 {cmd:xi} 是允许的；请参见 {help prefix_zh}。{p_end}
{p 4 6 2}{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}请参见 {manhelp vec_postestimation TS:vec postestimation} 了解估计后可用的功能。{p_end}

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > 向量误差修正模型 (VECM)}

{marker description}{...}
{title:描述}

{pstd}
{cmd:vec} 通过使用 Johansen 的 ({help vec##J1995:1995}) 最大似然法拟合一种向量自回归类型，其中一些变量是协整的。可以在协整方程或调整项中施加约束。请参见 {manhelp vec_intro TS:vec intro} 以获取与 {cmd:vec} 结合使用的命令列表。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS vecQuickstart:快速开始}

        {mansection TS vecRemarksandexamples:备注和示例}

        {mansection TS vecMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。

{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt rank(#)} 指定协整方程的数量；{cmd:rank(1)} 为默认值。

{phang}
{opt lags(#)} 指定在基础 VAR 模型中包含的最大滞后期。VECM 中的最大滞后期比相应的水平 VAR 模型中的最大滞后期少 1；滞后数必须大于零，但必须足够小，以便模型占用的自由度少于观察值的数量。默认值为 {cmd:lags(2)}。

{phang}
{opt trend(trend_spec)} 指定要在模型中包含的 Johansen 的五种趋势规格之一。这些规格在 {it:{mansection TS vecRemarksandexamplesSpecificationofconstantsandtrends:常数和趋势的规格}}中讨论。默认值为 {cmd:trend(constant)}。

{phang}
{opt bconstraints(constraints_bc)} 指定要施加在协整方程参数上的约束。当没有对调整参数施加约束时，即未指定 {opt aconstraints()} 选项，默认是根据 Johansen 的归一化施加在协整方程参数上的约束。当对调整参数施加约束时，默认值是不对协整方程参数施加约束。

{phang}
{opt aconstraints(constraints_ac)} 指定要施加在调整参数上的约束。默认情况下，对调整参数不施加约束。

{dlgtab:高级模型}

{phang}
{opth sindicators:(varlist:varlist_si)} 指定要在模型中包含的归一化季节性指示变量。这个选项中指定的指示变量必须已按 {help vec##J1995:Johansen (1995)} 中讨论的方式进行归一化。如果指示变量未被正确归一化，协整向量的估计器将不会收敛到由 {help vec##J1995:Johansen (1995)} 得出的渐近分布。有关这些变量处理的更多细节，请参见 {it:{mansection TS vecMethodsandformulas:方法和公式}} 中的内容。{opt sindicators()} 不能与 {cmd:trend(none)} 或 {cmd:trend(rconstant)} 选项同时指定。

{phang} 
{opt noreduce} 使 {opt vec} 跳过对因变量滞后的共线性检查和修正。默认情况下，{opt vec} 检查当前的滞后规格是否导致 {opt vec} 执行的某些回归中包含完美共线的变量；如果是这样，则降低最大滞后期，直到消除完美共线性。

{dlgtab:报告}

{phang}
{opt level(#)}；参见 {bf:{help estimation options##level():[R] 估计选项}}。

{phang}
{opt nobtable} 抑制对协整方程中参数的估计表的报告。默认情况下，{opt vec} 显示协整方程中参数的估计表。

{phang}
{opt noidtest} 抑制对过度识别限制的似然比测试报告，当模型被过度识别时默认会报告。

{phang}
{opt alpha} 显示调整参数的单独估计表，默认情况下未显示。

{phang}
{opt pi} 显示 Pi=(alpha)(beta)' 中参数的单独估计表，默认情况下未显示。

{phang}
{opt noptable} 抑制 Pi 矩阵中元素的估计表的显示，默认情况下当协整方程中的参数未被识别时，自动显示。

{phang}
{opt mai} 显示移动平均影响矩阵中参数的单独估计表，默认情况下未显示。

{phang}
{opt noetable} 抑制包含估计调整参数和短期参数信息的主要估计表的显示，默认情况下会显示。

{phang}
{opt dforce} 显示短期、beta 和 alpha 参数的估计表 — 如果请求的话，当 beta 中的参数未被识别时。默认情况下，当指定的约束没有识别协整方程中的参数时，将仅显示 Pi 和 MAI 的估计表。

{phang}
{opt nocnsreport}；参见 {helpb estimation options##nocnsreport:[R] 估计选项}。

{marker display_options}{...}
{phang}
{it:display_options}:
{opt noci}、{opt nopv:alues}、{opt vsquish}、{opth cformat(%fmt)}、{opt pformat(%fmt)}、{opt sformat(%fmt)}，以及 {opt nolstretch}；
请参见 {helpb estimation options##display_options:[R] 估计选项}。

{marker maximize_options}{...}
{dlgtab:最优化}

{phang}
{it:maximize_options}: {opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、{opt toltr:ace}、{opt tol:erance(#)}、{opt ltol:erance(#)}、{opt af:rom(matrix_a)}，以及 {opt bf:rom(matrix_b)}；
请参见 {help maximize_zh:[R] 最优化}。

{phang2}
{cmd:toltrace} 显示每次迭代的对数似然和系数向量的相对差异。此选项在未定义约束或指定了 {cmd:nolog} 的情况下不可用。

{phang2}
{opt afrom(matrix_a)} 指定一个 1 x (K*r) 的行向量，作为调整参数的起始值，K 为内生变量的数量，r 为在 {cmd:rank()} 选项中指定的协整方程数量。起始值的顺序应与在 {cmd:e(alpha)} 中报告的顺序一致。此选项在未定义约束的情况下不可用。

{phang2}
{opt bfrom(matrix_b)} 指定一个 1 x (m1*r) 的行向量，作为协整方程参数的起始值，其中 m1 为趋势增强系统中的变量数量，r 为在 {cmd:rank()} 选项中指定的协整方程数量。（有关 m1 的更多详细信息，请参见 {it:{mansection TS vecMethodsandformulas:方法和公式}} 中的内容。）起始值的顺序应与在 {cmd:e(betavec)} 中报告的顺序一致。对于某些趋势规格，{cmd:e(beta)} 包含的参数估计不是直接从优化算法中获得的。{cmd:bfrom()} 应仅指定在 {cmd:e(betavec)} 中报告的参数的起始值。此选项在未定义约束的情况下不可用。

{pstd}
以下选项可以在 {opt vec} 中使用，但未在对话框中显示：

{phang}
{opt coeflegend}；请参见 {helpb estimation options##coeflegend:[R] 估计选项}。

{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse rdinc}

{pstd}拟合一个向量误差修正模型（VECM），假设变量中有二次趋势和一个趋势平稳的协整方程{p_end}
{phang2}{cmd:. vec ln_ne ln_se}{p_end}

{pstd}使用 3 个滞后期拟合 VECM{p_end}
{phang2}{cmd:. vec ln_ne ln_se, lags(3)}{p_end}

{pstd}拟合一个 VECM，假设所有均值和趋势为零{p_end}
{phang2}{cmd:. vec ln_ne ln_se, trend(none)}{p_end}

{pstd}拟合一个 VECM，并在单独的表中报告调整参数{p_end}
{phang2}{cmd:. vec ln_ne ln_se, alpha}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse urates}

{pstd}拟合一个 VECM，包括模型中的受限制常数（变量中无线性趋势），包括 2 个协整方程，并使用 4 个滞后期{p_end}
{phang2}{cmd:. vec missouri indiana kentucky illinois, trend(rconstant)}
             {cmd:rank(2) lags(4)}

{pstd}重放结果，并且不报告协整方程中的参数{p_end}
{phang2}{cmd:. vec, nobtable}{p_end}
    {hline}

{marker results}{...}
{title:存储结果}

{pstd}
{cmd:vec} 将以下内容存储在 {cmd:e()} 中：

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(k_rank)}}无限制参数的数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)} 中方程的数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量的数量{p_end}
{synopt:{cmd:e(k_ce)}}协整方程的数量{p_end}
{synopt:{cmd:e(n_lags)}}滞后期的数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(chi2_res)}}过度识别限制测试的值{p_end}
{synopt:{cmd:e(df_lr)}}过度识别限制测试的自由度{p_end}
{synopt:{cmd:e(beta_iden)}}{cmd:1} 如果 beta 中的参数被识别，{cmd:0} 否则{p_end}
{synopt:{cmd:e(beta_icnt)}}施加于 beta 的独立约束的数量{p_end}
{synopt:{cmd:e(k_}{it:#}{cmd:)}}方程 {it:#} 中的变量数量{p_end}
{synopt:{cmd:e(df_m}{it:#}{cmd:)}}方程 {it:#} 中的模型自由度{p_end}
{synopt:{cmd:e(r2_}{it:#}{cmd:)}}方程 {it:#} 的 R 平方{p_end}
{synopt:{cmd:e(chi2_}{it:#}{cmd:)}}方程 {it:#} 的卡方统计量{p_end}
{synopt:{cmd:e(rmse_}{it:#}{cmd:)}}方程 {it:#} 的均方根误差{p_end}
{synopt:{cmd:e(aic)}}AIC 值{p_end}
{synopt:{cmd:e(hqic)}}HQIC 值{p_end}
{synopt:{cmd:e(sbic)}}SBIC 值{p_end}
{synopt:{cmd:e(tmin)}}最小时间{p_end}
{synopt:{cmd:e(tmax)}}最大时间{p_end}
{synopt:{cmd:e(detsig_ml)}}估计的协方差矩阵的行列式{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(converge)}}{cmd:1} 如果切换算法收敛，{cmd:0} 如果未收敛{p_end}

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:vec}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(trend)}}指定的趋势{p_end}
{synopt:{cmd:e(tsfmt)}}时间变量的格式{p_end}
{synopt:{cmd:e(tvar)}}在组内表示时间的变量{p_end}
{synopt:{cmd:e(endog)}}内生变量{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(eqnames)}}方程名称{p_end}
{synopt:{cmd:e(cenames)}}协整方程名称{p_end}
{synopt:{cmd:e(reduce_opt)}}{cmd:noreduce}，如果指定了 {cmd:noreduce}{p_end}
{synopt:{cmd:e(reduce_lags)}}模型被减少到的最大滞后列表{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(aconstraints)}}施加于 alpha 的约束{p_end}
{synopt:{cmd:e(bconstraints)}}施加于 beta 的约束{p_end}
{synopt:{cmd:e(sindicators)}}季节性指示变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}} {opt margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}} {opt margins} 不允许的预测{p_end}
{synopt:{cmd:e(marginsdefault)}} {cmd:margins} 的默认 {opt predict()} 规格{p_end}

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}短期参数的估计值{p_end}
{synopt:{cmd:e(V)}}短期参数估计的 VCE{p_end}
{synopt:{cmd:e(beta)}}beta 的估计值{p_end}
{synopt:{cmd:e(V_beta)}}beta 的 VCE{p_end}
{synopt:{cmd:e(betavec)}}直接获得的 beta 的估计值{p_end}
{synopt:{cmd:e(pi)}} pi hat 的估计值{p_end}
{synopt:{cmd:e(V_pi)}} pi hat 的 VCE{p_end}
{synopt:{cmd:e(alpha)}} alpha 的估计值{p_end}
{synopt:{cmd:e(V_alpha)}} alpha hat 的 VCE{p_end}
{synopt:{cmd:e(omega)}} omega hat 的估计值{p_end}
{synopt:{cmd:e(mai)}} mai 的估计值{p_end}
{synopt:{cmd:e(V_mai)}} mai hat 的 VCE{p_end}

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{marker reference}{...}
{title:参考文献}

{marker J1995}{...}
{phang}
Johansen, S. 1995.
{it:基于似然的协整向量自回归模型的推断}。
牛津：牛津大学出版社。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <vec.sthlp>}