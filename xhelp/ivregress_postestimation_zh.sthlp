{smcl}
{* *! version 1.4.9  21may2018}{...}
{viewerdialog predict "dialog ivregress_p"}{...}
{viewerdialog estat "dialog ivregress_estat"}{...}
{vieweralsosee "[R] ivregress postestimation" "mansection R ivregresspostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ivregress" "help ivregress_zh"}{...}
{viewerjumpto "Postestimation commands" "ivregress postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "ivregress_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "ivregress postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "ivregress postestimation##syntax_margins"}{...}
{viewerjumpto "estat" "ivregress postestimation##syntax_estat"}{...}
{viewerjumpto "Examples" "ivregress postestimation##examples"}{...}
{viewerjumpto "Stored results" "ivregress postestimation##results"}{...}
{viewerjumpto "References" "ivregress postestimation##references"}
{help ivregress_postestimation:English Version}
{hline}{...}
{p2colset 1 33 33 2}{...}
{p2col:{bf:[R] ivregress postestimation} {hline 2}}ivregress的后推断工具{p_end}
{p2col:}({mansection R ivregresspostestimation:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后推断命令}

{pstd}
以下后推断命令在 {cmd:ivregress} 后特别重要：

{synoptset 20 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb ivregress postestimation##syntax_estat:estat endogenous}}进行内生性检验{p_end}
{synopt :{helpb ivregress postestimation##syntax_estat:estat firststage}}报告"第一阶段"回归统计信息{p_end}
{synopt :{helpb ivregress postestimation##syntax_estat:estat overid}}进行过识别限制检验{p_end}
{p2coldent:* {helpb estat sbknown}}对已知断点日期进行结构性断点检验{p_end}
{p2coldent:* {helpb estat sbsingle}}对未知断点日期进行结构性断点检验{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
这些命令不适用于 {cmd:svy} 前缀后的情况。
{p_end}
{p 4 6 2}
* {cmd:estat} {cmd:sbknown} 和 {cmd:estat} {cmd:sbsingle} 只能在 {cmd:ivregress} {cmd:2sls} 后使用。
{p_end}

{pstd}
以下标准后推断命令也可用：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含帮助 post_contrast
包含帮助 post_estatsum
包含帮助 post_estatvce
包含帮助 post_svy_estat
包含帮助 post_estimates
包含帮助 post_forecast_star2
包含帮助 post_hausman_star2
包含帮助 post_lincom
{synopt:{helpb ivregress_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含帮助 post_marginsplot
包含帮助 post_nlcom
{synopt :{helpb ivregress postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
包含帮助 post_predictnl
包含帮助 post_pwcompare
包含帮助 post_test
包含帮助 post_testnl
{synoptline}
{p2colreset}{...}
{phang}
+ {cmd:forecast} 和 {cmd:hausman} 不适用于 {cmd:svy} 估计结果。{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R ivregresspostestimationRemarksandexamples:备注和示例}

        {mansection R ivregresspostestimationMethodsandformulas:方法和公式}

{pstd}
以上章节未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic}]

{p 8 16 2}
{cmd:predict} {dtype} 
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{c )-}
{ifin} {cmd:,} {opt sc:ores}

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt r:esiduals}}残差{p_end}
{p2col :{opt stdp}}预测的标准误{p_end}
{p2col :{opt stdf}}预测的标准误{p_end}
{p2col :{opt pr(a,b)}}在外生性和正态误差下{it:Pr}({it:a} < y < {it:b}){p_end}
{p2col :{opt e(a,b)}}在外生性和正态误差下{it:E}(y {c |} {it:a} < y < {it:b}){p_end}
{p2col :{opt ys:tar(a,b)}}在外生性和正态误差下{it:E}(y*), y* = max{c -(}{it:a},min(y,{it:b}){c )-}{p_end}
{synoptline}
{p2colreset}{...}
包含帮助 esample
{p 4 6 2}
{opt stdf} 不允许与 {cmd:svy} 估计结果一起使用。
{p_end}

包含帮助 whereab

包含帮助 menu_predict


{marker des_predict}{...}
{title:预测描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测值，例如线性预测、残差、标准误、概率和期望值。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主}

{phang}{opt xb}，默认计算线性预测。

{phang}{opt residuals} 计算残差，即 y - xb。这些是基于使用内生变量的观察值的估计方程，而不是仪器对内生变量的预测。

{phang}
{opt stdp} 计算预测的标准误，可以视为观察的协变量模式的期望值或均值的标准误。这也被称为拟合值的标准误。

{phang}
{opt stdf} 计算预测的标准误，这是对1个观察的点预测的标准误。通常称为未来或预测值的标准误。由于构造的原因，由 {opt stdf} 生成的标准误总是大于由 {opt stdp} 生成的标准误；请参见 {it:{mansection R regresspostestimationMethodsandformulas:方法和公式}} 在 {hi:[R] regress postestimation} 中。

{phang}
{opt pr(a,b)} 计算 {bind:Pr({it:a} < xb + u < {it:b})}，在外生性假设下，y|x 出现在区间 ({it:a},{it:b}) 的概率，假设误差服从正态分布。

{pmore}
{it:a} 和 {it:b} 可以指定为数字或变量名； {it:lb} 和 {it:ub} 是变量名；{break}
{cmd:pr(20,30)} 计算 {bind:Pr(20 < xb + u < 30)}；{break}
{cmd:pr(}{it:lb}{cmd:,}{it:ub}{cmd:)} 计算 {bind:Pr({it:lb} < xb + u < {it:ub})}; 以及{break}
{cmd:pr(20,}{it:ub}{cmd:)} 计算 {bind:Pr(20 < xb + u < {it:ub})}。

{pmore}
{it:a} 为缺失值 {bind:({it:a} {ul:>} .)} 表示负无穷；
{cmd:pr(.,30)} 计算 {bind:Pr(-infinity < xb + u < 30)}；{break}
{cmd:pr(}{it:lb}{cmd:,30)} 计算
{bind:Pr(-infinity < xb + u < 30)} 在 {bind:{it:lb} {ul:>} . 的观测值中；{break} 
并计算 {bind:Pr({it:lb} < xb + u < 30)} 在其他地方。

{pmore}
{it:b} 为缺失值 {bind:({it:b} {ul:>} .)} 表示正无穷； {cmd:pr(20,.)} 
计算 {bind:Pr(+infinity > xb + u > 20)}； {break}
{cmd:pr(20,}{it:ub}{cmd:)} 计算 {bind:Pr(+infinity > xb + u > 20)} 在 {bind:{it:ub} {ul:>} . 的观测值中；{break}
并计算 {bind:Pr(20 < xb + u < {it:ub})} 在其他地方。
{p_end}

{phang}
{cmd:e(}{it:a}{cmd:,}{it:b}{cmd:)} 计算
{bind:E(xb + u | {it:a} < xb + u < {it:b})}，即在 y|x 落在区间 ({it:a},{it:b}) 条件下的期望值，意味着
y|x 是截断的。 {it:a} 和 {it:b} 按照 {opt pr()} 的方式指定。假设外生性和正态分布的误差。

{phang}
{cmd:ystar(}{it:a}{cmd:,}{it:b}{cmd:)} 计算 E(y*)，其中 
{bind:y* = {it:a}} 如果 {bind:xb + u {ul:<} {it:a}}， {bind:y* = {it:b}} 如果
{bind:xb + u {ul:>} {it:b}}，且 {bind:y* = xb + u} 其他情况下，意味着
y* 被截断。 {it:a} 和 {it:b} 按照 {opt pr()} 的方式指定。假设外生性和正态分布的误差。

{phang}{opt scores} 计算模型的评分。为每个内生回归变量创建一个新评分变量，以及适用于所有外生变量 
和常数项（如果存在）的方程级别评分。

包含帮助 syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt xb}}线性预测；默认值{p_end}
{p2col :{opt pr(a,b)}}在外生性和正态误差下{it:Pr}({it:a} < y < {it:b}){p_end}
{p2col :{opt e(a,b)}}在外生性和正态误差下{it:E}(y {c |} {it:a} < y < {it:b}){p_end}
{p2col :{opt ys:tar(a,b)}}在外生性和正态误差下{it:E}(y*)，y* = max{c -(}{it:a},min(y,{it:b}){c )-}{p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt stdf}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt r:esiduals}}不允许与 {cmd:margins} 一起使用{p_end}
{synoptline}
{p2colreset}{...}

包含帮助 notes_margins

包含帮助 menu_margins


{marker des_margins}{...}
{title:margins 描述}

{pstd}
{cmd:margins} 估计线性预测、概率和期望值的响应边际。


{marker syntax_estat}{...}
{marker estatendog}{marker estatfirst}{marker estatoverid}{...}
{title:estat 语法}

{pstd}进行内生性检验

{p 8 16 2}
{cmd:estat} {cmdab:endog:enous} [{varlist}] [{cmd:,} 
{cmdab:l:ags}{cmd:(}{it:#}{cmd:)} {cmd:forceweights} {cmd:forcenonrobust}]


{pstd}报告“第一阶段”回归统计信息

{p 8 16 2}
{cmd:estat} {cmdab:first:stage} [{cmd:,} {cmd:all} {cmd:forcenonrobust}]


{pstd}进行过识别限制检验

{p 8 16 2}
{cmd:estat} {cmdab:over:id} [{cmd:,} {cmdab:l:ags}{cmd:(}{it:#}{cmd:)} 
{cmd:forceweights} {cmd:forcenonrobust}]


包含帮助 menu_estat


{marker des_estat}{...}
{title:estat 描述}

{pstd} 
{cmd:estat endogenous} 进行测试以确定模型中的内生回归变量是否实际上是外生的。在 GMM 估计后， 
报告 C（差异-萨根）统计量。在使用未经调整的 VCE 的 2SLS 估计后， 
报告 {help ivregress postestimation##D1954:Durbin (1954)} 和
Wu-Hausman ({help ivregress postestimation##W1974:Wu 1974};
{help ivregress postestimation##H1978:Hausman 1978})
统计量。在使用稳健或 VCE 的 2SLS 后，
报告 Wooldridge 的 {help ivregress postestimation##W1995:(1995)}
稳健评分测试和基于稳健回归的测试。在所有情况下，如果检验统计量显著，则被检验变量必须被视为内生的。 {cmd:estat endogenous} 在 LIML 估计后不可用。

{pstd}
{cmd:estat firststage} 报告测量排除的外生变量的相关性的各种统计信息。默认情况下，回归是否有一个或多个内生回归变量决定报告的统计信息。

{pstd}
{cmd:estat overid} 进行过识别限制的检验。如果使用 2SLS 估计，则 
报告萨根的 {help ivregress postestimation##S1958:(1958)} 和
Basmann 的 {help ivregress postestimation##B1960:(1960)} 卡方检验，并且 
报告 Wooldridge 的 {help ivregress postestimation##W1995:(1995)} 稳健评分检验；如果使用 LIML 估计，则 
报告 Anderson 和 Rubin 的 {help ivregress postestimation##AR1950:(1950)}
卡方检验和 Basmann 的 F 检验；如果使用 GMM 估计，则报告 Hansen 的 {help ivregress postestimation##H1982:(1982)} J 统计量
卡方检验。统计显著的检验统计量始终表明工具变量可能无效。


{marker options_estat_endog}{...}
{title:estat endogenous 的选项}

{phang}
{opt lags(#)} 指定用于预白化时的滞后数，以计算内生性评分检验的异方差和自相关一致（HAC）版本。指定
{cmd:lags(0)} 请求不进行预白化。此选项仅在模型通过 2SLS 估计且在拟合模型时请求 HAC 协方差矩阵时有效。默认值为 {cmd:lags(1)}。

{phang}
{opt forceweights} 请求即使在之前的估计中使用了 {cmd:aweight}s、{cmd:pweight}s 或 
{cmd:iweight}s，也计算内生性检验。默认情况下，仅对未加权或频率加权估计后进行这些检验。报告的临界值可能不适用于加权数据，因此用户必须判断这些临界值是否适合特定应用。

{phang}
{opt forcenonrobust} 请求即使在估计时间使用了稳健 VCE，也在 2SLS 估计后执行 Durbin 和 Wu-Hausman 检验。此选项仅在模型通过 2SLS 估计的情况下可用。


{marker options_estat_firststage}{...}
{title:estat firststage 的选项}

{phang}
{opt all} 请求报告所有第一阶段拟合优度统计，无论模型是否包含一个或多个内生回归变量。默认情况下，如果模型包含一个内生回归变量，则报告第一阶段的 R²、调整后的 R²、部分 R² 和 F 统计量，而如果模型包含多个内生回归变量，则改为报告 Shea 的部分 R² 和调整后的部分 R²。

{phang}
{opt forcenonrobust} 请求，即使在估计时间使用了稳健 VCE，也报告最小特征根统计量及其临界值。报告的临界值假设误差是独立同分布的正态分布，因此用户必须确定这些临界值是否适合特定应用。


{marker options_estat_overid}{...}
{title:estat overid 的选项}

{phang} 
{opt lags(#)} 指定用于预白化时的滞后数，以计算过识别限制分数检验的异方差和自相关一致（HAC）版本。指定
{cmd:lags(0)} 请求不进行预白化。此选项仅在模型通过 2SLS 估计且在拟合模型时请求 HAC 协方差矩阵时有效。默认值为 {cmd:lags(1)}。

{phang}
{opt forceweights} 请求，即使在之前的估计中使用了 {cmd:aweight}s、{cmd:pweight}s 或 
{cmd:iweight}s，也计算过识别限制检验。默认情况下，仅对未加权或频率加权估计后进行这些检验。报告的临界值可能不适用于加权数据，因此用户必须判断这些临界值是否适合特定应用。

{phang}
{opt forcenonrobust} 请求，即使在估计时间使用了稳健 VCE，也在 2SLS 或 LIML 估计后进行 Sargan 和 Basmann 的过识别限制检验。这些检验假设误差是独立同分布的正态分布，因此用户必须判断这些临界值是否适合特定应用。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse hsng2}{p_end}

{pstd}通过 2SLS 拟合模型并获取第一阶段回归诊断{p_end}
{phang2}{cmd:. ivregress 2sls rent pcturban (hsngval = faminc i.region)}{p_end}
{phang2}{cmd:. estat firststage}{p_end}

{pstd}获取萨根和巴斯曼的过识别限制检验{p_end}
{phang2}{cmd:. estat overid}

{pstd}检验 {cmd:hsngval} 是否可以视为外生{p_end}
{phang2}{cmd:. estat endogenous}{p_end}

{pstd}通过 GMM 拟合一个包含两个内生回归变量的模型并获取所有第一阶段回归诊断{p_end}
{phang2}{cmd:. ivregress gmm rent (hsngval pcturban = faminc i.region)}{p_end}
{phang2}{cmd:. estat firststage, all}{p_end}

{pstd}获取汉森的 J 统计量{p_end}
{phang2}{cmd:. estat overid}{p_end}

{pstd}检验 {cmd:hsngval} 是否可以视为外生{p_end}
{phang2}{cmd:. estat endogenous hsngval}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
在 2SLS 估计后， {cmd:estat endogenous} 存储以下结果在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(durbin)}}Durbin 卡方统计量{p_end}
{synopt:{cmd:r(p_durbin)}}Durbin 卡方统计量的 p 值{p_end}
{synopt:{cmd:r(wu)}}Wu-Hausman F 统计量{p_end}
{synopt:{cmd:r(p_wu)}}Wu-Hausman F 统计量的 p 值{p_end}
{synopt:{cmd:r(df)}}自由度{p_end}
{synopt:{cmd:r(wudf_r)}}Wu-Hausman F 的分母自由度{p_end}
{synopt:{cmd:r(r_score)}}稳健评分统计量{p_end}
{synopt:{cmd:r(p_r_score)}}稳健评分统计量的 p 值{p_end}
{synopt:{cmd:r(hac_score)}}HAC 评分统计量{p_end}
{synopt:{cmd:r(p_hac_score)}}HAC 评分统计量的 p 值{p_end}
{synopt:{cmd:r(lags)}}用于预白化的滞后{p_end}
{synopt:{cmd:r(regF)}}基于回归的 F 统计量{p_end}
{synopt:{cmd:r(p_regF)}}基于回归的 F 统计量的 p 值{p_end}
{synopt:{cmd:r(regFdf_n)}}基于回归的 F 的分子自由度{p_end}
{synopt:{cmd:r(regFdf_r)}}基于回归的 F 的分母自由度{p_end}

{pstd}
在 GMM 估计后， {cmd:estat endogenous} 存储以下结果在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(C)}}C 卡方统计量{p_end}
{synopt:{cmd:r(p_C)}}C 卡方统计量的 p 值{p_end}
{synopt:{cmd:r(df)}}自由度{p_end}

{pstd}
{cmd:estat firststage} 存储以下结果在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(mineig)}}最小特征根统计量{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(mineigcv)}}最小特征根统计量的临界值{p_end}
{synopt:{cmd:r(multiresults)}}Shea 的部分 R² 统计量{p_end}
{synopt:{cmd:r(singleresults)}}第一阶段 R² 和 F 统计量{p_end}

{pstd}
在 2SLS 估计后， {cmd:estat overid} 存储以下结果在 {cmd:r()} 中：

{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(lags)}}用于预白化的滞后{p_end}
{synopt:{cmd:r(df)}}卡方自由度{p_end}
{synopt:{cmd:r(score)}}评分卡方统计量{p_end}
{synopt:{cmd:r(p_score)}}评分卡方统计量的 p 值{p_end}
{synopt:{cmd:r(basmann)}}巴斯曼卡方统计量{p_end}
{synopt:{cmd:r(p_basmann)}}巴斯曼卡方统计量的 p 值{p_end}
{synopt:{cmd:r(sargan)}}萨根卡方统计量{p_end}
{synopt:{cmd:r(p_sargan)}}萨根卡方统计量的 p 值{p_end}

{pstd}
在 LIML 估计后， {cmd:estat overid} 存储以下结果在 {cmd:r()} 中：

{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(ar)}}Anderson-Rubin 卡方统计量{p_end}
{synopt:{cmd:r(p_ar)}}Anderson-Rubin 卡方统计量的 p 值{p_end}
{synopt:{cmd:r(ar_df)}}卡方自由度{p_end}
{synopt:{cmd:r(basmann)}}巴斯曼 F 统计量{p_end}
{synopt:{cmd:r(p_basmann)}}巴斯曼 F 统计量的 p 值{p_end}
{synopt:{cmd:r(basmann_df_n)}}F 分子自由度{p_end}
{synopt:{cmd:r(basmann_df_d)}}F 分母自由度{p_end}

{pstd}
在 GMM 估计后， {cmd:estat overid} 存储以下结果在 {cmd:r()} 中：

{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(HansenJ)}}汉森 J 卡方统计量{p_end}
{synopt:{cmd:r(p_HansenJ)}}汉森 J 卡方统计量的 p 值{p_end}
{synopt:{cmd:r(J_df)}}卡方自由度{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker AR1950}{...}
{phang}
Anderson, T. W. 和 H. Rubin. 1950.
完整的随机方程系统中单个方程参数估计的渐近性质。
{it:Annals of Mathematical Statistics} 21: 570-582.

{marker B1960}{...}
{phang}
Basmann, R. L. 1960.
关于一般经典线性可识别性检验统计量的有限样本分布。
{it:Journal of the American Statistical Association} 55: 650-659.

{marker D1954}{...}
{phang}
Durbin, J. 1954.
变量中的误差。
{it:Review of the International Statistical Institute} 22: 23-32.

{marker H1982}{...}
{phang}
Hansen, L. P. 1982.
广义矩估计量的大样本性质。
{it:Econometrica} 50: 1029-1054.

{marker H1978}{...}
{phang}
Hausman, J. A. 1978.
计量经济学中的模型检验。
{it:Econometrica} 46: 1251-1271.

{marker S1958}{...}
{phang}
Sargan, J. D. 1958.
使用工具变量估计经济关系。
{it:Econometrica} 26: 393-415.

{marker W1995}{...}
{phang}
Wooldridge, J. M. 1995.
通过两阶段最小二乘法估计的线性模型的评分诊断。
在 {it:Advances in Econometrics and Quantitative Economics: Essays in Honor}
{it:of Professor C. R. Rao},
编辑 G. S. Maddala, P. C. B. Phillips, 和 T. N. Srinivasan, 66-87.
牛津: Blackwell.

{marker W1974}{...}
{phang}
Wu, D.-M. 1974.
随机回归变量与干扰项之间独立性的替代检验：有限样本结果。
{it: Econometrica} 42: 529-546.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ivregress_postestimation.sthlp>}