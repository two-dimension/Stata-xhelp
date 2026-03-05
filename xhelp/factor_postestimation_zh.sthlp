{smcl}
{* *! version 1.3.6  04jun2018}{...}
{viewerdialog predict "dialog factor_p"}{...}
{viewerdialog estat "dialog factor_estat"}{...}
{viewerdialog loadingplot "dialog loadingplot"}{...}
{viewerdialog rotate "dialog rotate"}{...}
{viewerdialog scoreplot "dialog scoreplot"}{...}
{viewerdialog screeplot "dialog screeplot"}{...}
{vieweralsosee "[MV] factor postestimation" "mansection MV factorpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] factor" "help factor_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] rotate" "help rotate_zh"}{...}
{vieweralsosee "[MV] scoreplot" "help scoreplot_zh"}{...}
{vieweralsosee "[MV] screeplot" "help screeplot_zh"}{...}
{viewerjumpto "Postestimation commands" "factor postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "factor_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "factor postestimation##syntax_predict"}{...}
{viewerjumpto "estat" "factor postestimation##syntax_estat"}{...}
{viewerjumpto "Examples" "factor postestimation##examples"}{...}
{viewerjumpto "Stored results" "factor postestimation##results"}{...}
{viewerjumpto "References" "factor postestimation##references"}
{help factor_postestimation:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[MV] factor postestimation} {hline 2}}因子和因子矩阵的后续估计工具
{p_end}
{p2col:}({mansection MV factorpostestimation:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后续估计命令}

{pstd}
在执行{cmd:factor}和{cmd:factormat}之后，以下后续估计命令特别重要：

{synoptset 21 tabbed}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{synopt:{helpb factor postestimation##anti:estat anti}}抗影像相关和协方差矩阵{p_end}
{synopt:{helpb factor postestimation##common:estat common}}公共因子的相关矩阵{p_end}
{synopt:{helpb factor postestimation##factors:estat factors}}不同因子数量的AIC和BIC模型选择标准{p_end}
{synopt:{helpb factor postestimation##kmo:estat kmo}}凯泽-迈耶-奥尔金抽样充足性测度{p_end}
{synopt:{helpb factor postestimation##residuals:estat residuals}}相关残差矩阵{p_end}
{synopt:{helpb factor postestimation##rotatecomp:estat rotatecompare}}比较旋转和未旋转的负载{p_end}
{synopt:{helpb factor postestimation##smc:estat smc}}每个变量与其余变量的平方多重相关{p_end}
{synopt:{helpb factor postestimation##structure:estat structure}}变量与公共因子之间的相关{p_end}
{p2coldent:+ {helpb factor postestimation##summarize:estat summarize}}估计样本摘要{p_end}
{synopt:{help scoreplot_zh:loadingplot}}绘制因子负载{p_end}
{synopt:{help rotate_zh}}旋转因子负载{p_end}
{synopt:{help scoreplot_zh}}绘制评分变量{p_end}
{synopt:{help screeplot_zh}}绘制特征值图{p_end}
{synoptline}
{p 4 6 2}
+ {cmd:estat summarize}在{cmd:factormat}后不可用。
{p_end}

{pstd}
以下标准后续估计命令也可用：

{p2coldent:命令}描述{p_end}
{synoptline}
{p2coldent:* {help estimates_zh}}结果的分类{p_end}
{p2coldent:+ {helpb factor postestimation##predict:predict}}预测回归或巴特利特评分{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:estimates table}不被允许，且{cmd:estimates stats}仅在使用{cmd:ml}因子方法时允许。
{p_end}

{p 4 6 2}
+ 在{cmd:factormat}之后使用{cmd:predict}仅在内存中存在与{cmd:factormat}中指定的变量名称匹配的变量时有效。除非提供了{cmd:means()}和{cmd:sds()}选项，{cmd:predict}假定均值为零，标准差为一。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection MV factorpostestimationRemarksandexamples:备注和示例}

        {mansection MV factorpostestimationMethodsandformulas:方法和公式}

{pstd}
上述章节未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {{it:{help newvarlist##stub*:stub}}{cmd:*} | {newvar:list}} {ifin}
[{cmd:,} {it:statistic} {it:options}]

{synoptset 16 tabbed}{...}
{p2coldent:statistic}描述{p_end}
{synoptline}
{syntab:主要}
{p2col:{opt r:egression}}回归评分方法；默认值{p_end}
{p2col:{opt b:artlett}}巴特利特评分方法{p_end}
{synoptline}

{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opt norot:ated}}即使旋转结果可用，也使用未旋转的结果{p_end}
{synopt:{opt not:able}}抑制评分系数的表格{p_end}
{synopt:{opth for:mat(%fmt)}}评分系数的显示格式{p_end}
{synoptline}
{p2colreset}{...}


INCLUDE help menu_predict


{marker desc_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict}创建包含预测的新变量，例如通过回归方法或巴特利特方法评分的因子。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt regression}
生成由回归方法评分的因子。这是默认值。

{phang}
{opt bartlett}
生成由巴特利特方法评分的因子
({help factor postestimation##B1937:1937},
 {help factor postestimation##B1938:1938})。该方法生成无偏因子，但它们可能不如由默认回归方法生成的因子准确。回归评分因子在真实因子中的均方误差最小，但可能存在偏倚。

{phang}
{opt norotated}
指定评分为未旋转因子，即使您之前已发出过{cmd:rotate}命令。默认值是优先使用旋转因子，如果可用则使用未旋转因子。

{phang}
{opt notable}
抑制评分系数的表格。

{phang}
{opth format(%fmt)}
指定评分系数的显示格式。


{marker syntax_estat}{...}
{title:estat的语法}

{marker anti}{...}
{pstd}
抗影像相关/协方差矩阵

{p 8 12 2}
{cmd:estat anti}
[{cmd:,} {opt nocorr} {opt nocov} {opth for:mat(%fmt)}]


{marker common}{...}
{pstd}
公共因子的相关性

{p 8 12 2}
{cmd:estat} {cmdab:com:mon}
[{cmd:,} {opt norot:ated} {opth for:mat(%fmt)}]


{marker factors}{...}
{pstd}
模型选择标准

{p 8 12 2}
{cmd:estat} {cmdab:fac:tors}
[{cmd:,} {opt fac:tors(#)} {opt det:ail}]


{marker kmo}{...}
{pstd}
样本充足性测量

{p 8 12 2}
{cmd:estat kmo}
[{cmd:,} {opt nov:ar} {opth for:mat(%fmt)}]


{marker residuals}{...}
{pstd}
相关矩阵的残差

{p 8 12 2}
{cmd:estat} {cmdab:res:iduals}
[{cmd:,} {opt f:itted} {opt o:bs} {opt sr:esiduals} {opth for:mat(%fmt)}]


{marker rotatecomp}{...}
{pstd}
旋转和未旋转负载的比较

{p 8 12 2}
{cmd:estat} {cmdab:rot:atecompare} [{cmd:,} {opth for:mat(%fmt)}]


{marker smc}{...}
{pstd}
平方多重相关

{p 8 12 2}
{cmd:estat smc}
[{cmd:,} {opth for:mat(%fmt)}]


{marker structure}{...}
{pstd}
变量与公共因子之间的相关性

{p 8 12 2}
{cmd:estat} {cmdab:str:ucture}
[{cmd:,} {opt norot:ated} {opth for:mat(%fmt)}]


{marker summarize}{...}
{pstd}
总结估计样本的变量

{p 8 12 2}
{cmd:estat} {cmdab:su:mmarize}
[{cmd:,} {opt lab:els} {opt nohea:der} {opt nowei:ghts}]


INCLUDE help menu_estat


{marker desc_estat}{...}
{title:estat的描述}

{pstd}
{cmd:estat anti}
显示抗影像相关和抗影像协方差矩阵。这些是所有变量对的偏协方差和偏相关矩阵，保持所有其他变量不变。

{pstd}
{cmd:estat common}
显示公共因子的相关矩阵。对于正交因子负载，公共因子不相关，因此显示的是单位矩阵。{cmd:estat common}在倾斜旋转后更受关注。

{pstd}
{cmd:estat factors}
显示模型选择标准（AIC和BIC），用于具有1, 2, ..., #因子的模型。每个模型通过最大似然估计（即使用{cmd:ml}选项的{cmd:factor}）进行估计。

{pstd}
{cmd:estat kmo}
指定凯泽-迈耶-奥尔金（KMO）抽样充足性测度的显示。KMO值介于0和1之间，较小值表示整体上变量之间的共同性不足以进行因子分析。从历史上看，KMO值（{help factor_postestimation##K1974:Kaiser 1974}）的标签如下：

	    0.00到0.49    不可接受
	    0.50到0.59    可怜
	    0.60到0.69    中等
	    0.70到0.79    中等偏上
	    0.80到0.89    良好
	    0.90到1.00    卓越

{pstd}
{cmd:estat residuals}
显示观察到的相关的原始或标准化残差，相对于拟合的（重建的）相关矩阵。

{pstd}
{cmd:estat rotatecompare}
显示未旋转的因子负载和最近的旋转因子负载。

{pstd}
{cmd:estat smc}
显示每个变量与所有其他变量之间的平方多重相关。SMC是共性理论的下限，因此是独特性的上限。{cmd:pf}因子方法通过{cmd:smc}估计共性。

{pstd}
{cmd:estat structure}
显示因子结构，即变量与公共因子之间的相关性。

{pstd}
{cmd:estat summarize}
显示因子分析中估计样本的变量的摘要统计。这条子命令在{cmd:factormat}后不可用。


{marker options_estat}{...}
{title:estat的选项}

{dlgtab:主要}

{phang}
{opt nocorr},
与{cmd:estat anti}一起使用的选项，
抑制抗影像相关矩阵的显示。

{phang}
{opt nocov},
与{cmd:estat anti}一起使用的选项，
抑制抗影像协方差矩阵的显示。

{phang}
{opth format(%fmt)}
指定显示格式。各个子命令之间的默认值不同。

{phang}
{opt norotated},
与{cmd:estat common}和{cmd:estat structure}一起使用的选项，
请求显示和返回的结果基于未旋转的原始因子解决方案，而不是基于最后的旋转（正交或倾斜）。

{phang}
{opt factors(#)},
与{cmd:estat factors}一起使用的选项，
指定摘要表中包含的最多因子数量。

{phang}
{opt detail},
与{cmd:estat factors}一起使用的选项，
展示每次运行{cmd:factor}（或{cmd:factormat}）的输出，这些输出用于计算AIC和BIC值。

{phang}
{opt novar},
与{cmd:estat kmo}一起使用的选项，
抑制因子分析中的变量的KMO抽样充足性测度，仅显示总体KMO测度。

{phang}
{opt fitted},
与{cmd:estat residuals}一起使用的选项，
基于保留因子显示拟合（重建的）相关矩阵。

{phang}
{opt obs},
与{cmd:estat residuals}一起使用的选项，
显示观察到的相关矩阵。

{phang}
{opt sresiduals},
与{cmd:estat residuals}一起使用的选项，
显示相关的标准化残差矩阵。
在解释这些残差时要小心；请见{help factor postestimation##JS1988:J{c o:}reskog和S{c o:}rbom (1988)}。

{phang}
{opt labels}、{opt noheader}和{opt noweights}
与通用{cmd:estat summarize}命令相同；见{helpb estat summarize:[R] estat summarize}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse bg2}{p_end}
{phang2}{cmd:. factor bg2cost1-bg2cost6}

{pstd}相关矩阵的残差{p_end}
{phang2}{cmd:. estat residuals}

{pstd}估计样本{p_end}
{phang2}{cmd:. estat summ}

{pstd}方差最大化旋转{p_end}
{phang2}{cmd:. rotate}

{pstd}如果保留> 2因子，则使用前2个因子{p_end}
{phang2}{cmd:. rotate, factors(2)}

{pstd}Promax旋转{p_end}
{phang2}{cmd:. rotate, promax}

{pstd}倾斜的oblimin旋转{p_end}
{phang2}{cmd:. rotate, oblimin(0.5) oblique}

{pstd}评分前两个旋转因子{p_end}
{phang2}{cmd:. predict f1 f2}

{pstd}评分前两个未旋转因子{p_end}
{phang2}{cmd:. predict raw1 raw2, norotate}

{pstd}特征值图{p_end}
{phang2}{cmd:. screeplot}

{pstd}因子评分图{p_end}
{phang2}{cmd:. scoreplot}

{pstd}因子负载散点图{p_end}
{phang2}{cmd:. loadingplot}


{marker results}{...}
{title:存储的结果}

{pstd}
设{it:p}为变量数量，{it:f}为因子数量。

{pstd}
{cmd:predict}除了生成变量外，还在{cmd:r()}中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(method)}}{cmd:regression}或{cmd:Bartlett}{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(scoef)}}p x f评分系数矩阵{p_end}

{pstd}
{cmd:estat anti}在{cmd:r()}中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(acov)}}p x p抗影像协方差矩阵{p_end}
{synopt:{cmd:r(acorr)}}p x p抗影像相关矩阵{p_end}

{pstd}
{cmd:estat common}在{cmd:r()}中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(Phi)}}f x f公共因子的相关矩阵{p_end}

{pstd}
{cmd:estat factors}在{cmd:r()}中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(stats)}}k x 5矩阵，包含1到k因子的模型的对数似然、自由度、AIC和BIC，通过最大似然估计得出{p_end}

{pstd}
{cmd:estat kmo}在{cmd:r()}中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:r(kmo)}}凯泽-迈耶-奥尔金抽样充足性测度{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(kmow)}}每个变量的KMO测度列向量{p_end}

{pstd}
{cmd:estat residuals}在{cmd:r()}中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(fit)}}相关的拟合矩阵，帽子C = 帽子Lambda帽子Phi帽子Lambda' + 帽子Psi{p_end}
{synopt:{cmd:r(res)}}原始残差矩阵C - 帽子C{p_end}
{synopt:{cmd:r(SR)}}标准化残差（仅限{cmd:sresiduals}选项）{p_end}

{pstd}
{cmd:estat smc}在{cmd:r()}中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(smc)}}变量与所有其他变量的平方多重相关向量{p_end}

{pstd}
{cmd:estat structure}在{cmd:r()}中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(st)}}p x f变量与公共因子之间的相关矩阵{p_end}

{pstd}
请参见{helpb estat summarize:[R] estat summarize}以获取
{help estat_summarize##results:存储的结果}关于{cmd:estat summarize}的信息。

{pstd}
在{cmd:factor}和{cmd:factormat}之后，{cmd:rotate}会添加到现有的{cmd:e()}中：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:e(r_f)}}旋转解中的因子数{p_end}
{synopt:{cmd:e(r_fmin)}}旋转标准值{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:e(r_class)}}{cmd:正交}或{cmd:倾斜}{p_end}
{synopt:{cmd:e(r_criterion)}}旋转标准{p_end}
{synopt:{cmd:e(r_ctitle)}}旋转的标题{p_end}
{synopt:{cmd:e(r_normalization)}}{cmd:凯泽}或{cmd:无}{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:e(r_L)}}旋转负载{p_end}
{synopt:{cmd:e(r_T)}}旋转{p_end}
{synopt:{cmd:e(r_Phi)}}公共因子之间的相关性{p_end}
{synopt:{cmd:e(r_Ev)}}公共因子的解释方差{p_end}

{pstd}
旋转解中的因子按{cmd:e(r_Ev)}的递减顺序排列。
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker B1937}{...}
{phang}
Bartlett, M. S. 1937. 心理因素的统计概念。
   {it:英国心理学杂志} 28: 97-104.

{marker B1938}{...}
{phang}
------. 1938. 估计心理因素的方法。
    {it:自然，伦敦} 141: 609-610.

{marker JS1988}{...}
{phang}
J{c o:}reskog, K. G., 和 D. S{c o:}rbom. 1988.
{it:PRELIS: 多元数据筛选和数据概述的程序。}
{it:LISREL的预处理器}. 第2版. 印第安纳州莫尔斯维尔: 科学软件.

{marker K1974}{...}
{phang}
Kaiser, H. F. 1974. 因子简单性的索引。
{it:心理计量学} 39: 31-36.

{marker T1951}{...}
{phang}
Thomson, G. H. 1951. {it:人类能力的因子分析}。
    伦敦: 伦敦大学出版社。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <factor_postestimation.sthlp>}