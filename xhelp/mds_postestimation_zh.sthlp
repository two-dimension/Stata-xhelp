{smcl}
{* *! version 1.2.8  31may2018}{...}
{viewerdialog predict "dialog mds_p"}{...}
{viewerdialog estat "dialog mds_estat"}{...}
{viewerdialog mdsconfig "dialog mdsconfig"}{...}
{viewerdialog mdsshepard "dialog mdsshepard"}{...}
{viewerdialog screeplot "dialog screeplot"}{...}
{vieweralsosee "[MV] mds postestimation" "mansection MV mdspostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] mds" "help mds_zh"}{...}
{vieweralsosee "[MV] mds postestimation plots" "help mds postestimation plots"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] mdslong" "help mdslong_zh"}{...}
{vieweralsosee "[MV] mdsmat" "help mdsmat_zh"}{...}
{vieweralsosee "[MV] screeplot" "help screeplot_zh"}{...}
{viewerjumpto "Postestimation commands" "mds postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "mds_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "mds postestimation##syntax_predict"}{...}
{viewerjumpto "estat" "mds postestimation##syntax_estat"}{...}
{viewerjumpto "Examples" "mds postestimation##examples"}{...}
{viewerjumpto "Stored results" "mds postestimation##results"}
{help mds_postestimation:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[MV] mds postestimation} {hline 2}}mds、mdsmat和mdslong的后估计工具
{p_end}
{p2col:}({mansection MV mdspostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行{cmd:mds}、{cmd:mdsmat}和{cmd:mdslong}后，以下后估计命令特别重要：

{synoptset 22 tabbed}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{synopt:{helpb mds postestimation##estat:estat config}}近似配置的坐标{p_end}
{synopt:{helpb mds postestimation##estat:estat correlations}}异质性与近似距离之间的相关性{p_end}
{synopt:{helpb mds postestimation##estat:estat pairwise}}成对异质性、近似距离和原始残差{p_end}
{synopt:{helpb mds postestimation##estat:estat quantiles}}每个对象的残差的分位数{p_end}
{synopt:{helpb mds postestimation##estat:estat stress}}Kruskal应力（损失）度量（仅在经典MDS之后）{p_end}
{p2coldent:+ {helpb mds postestimation##estat:estat summarize}}估计样本摘要{p_end}
{synopt:{helpb mds postestimation plots##mdsconfig:mdsconfig}}近似配置的图形{p_end}
{synopt:{helpb mds postestimation plots##mdsshepard:mdsshepard}}Shepard图{p_end}
{synopt:{help screeplot_zh}}绘制特征值图（仅在经典MDS之后）{p_end}
{synoptline}
{p 4 6 2}
+ {cmd:estat summarize}在{cmd:mdsmat}之后不可用。

{pstd}
以下标准后估计命令也可用：

{p2coldent:命令}描述{p_end}
{synoptline}
{p2coldent:* {help estimates_zh}}估计结果的目录{p_end}
{synopt:{helpb mds postestimation##predict:predict}}近似配置、差异、异质性、距离和残差{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* 除了{opt table}和{opt stats}，所有{cmd:estimates}子命令均可用。
{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MV mdspostestimationRemarksandexamples:备注和示例}

        {mansection MV mdspostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help varlist_zh:newvarlist}}} {ifin}
[{cmd:,} {it:statistic} {it:options}]

{synoptset 30 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主要}
{synopt:{opt con:fig}}近似配置；指定{cmd:dimension()}或更少的变量{p_end}
{synopt:{opt pair:wise(pstats)}}选择的成对统计；必须指定相同数量的变量{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 22}{...}
{p2coldent:{it:pstats}}描述{p_end}
{synoptline}
{synopt:{opt disp:arities}}差异 = 转换（异质性）{p_end}
{synopt:{opt diss:imilarities}}异质性{p_end}
{synopt:{opt dist:ances}}配置点之间的欧几里得距离{p_end}
{synopt:{opt rr:esiduals}}原始残差 = 异质性 - 距离{p_end}
{synopt:{opt tr:esiduals}}转换残差 = 差异 - 距离{p_end}
{synopt:{opt we:ights}}权重{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 22 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{p2coldent:* {cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}保存结果到{it:filename}；使用{cmd:replace}覆盖现有的{it:filename}{p_end}
{synopt:{opt full}}为所有对象对创建预测；{opt pairwise()}仅限{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* 在{cmd:mdsmat}之后，若选择了{opt pairwise()}，以及在{cmd:mdslong}中选择{opt config}时，均需使用{opt saving()}。
{p_end}


包括帮助菜单_predict


{marker desc_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict}创建包含预测的新变量，例如在欧几里得空间中的近似配置和所选的成对统计。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}{cmd:config}
生成包含欧几里得空间中近似配置的新变量。指定与近似维数相同数量的新变量（由{cmd:mds}、{cmd:mdsmat}或{cmd:mdslong}的{cmd:dimension()}选项决定），但也可以指定更少的。
{cmd:estat config}显示相同的信息，但不将信息存储在变量中。在{cmd:mdsmat}和{cmd:mdslong}之后，您还必须指定{cmd:saving()}选项。

{phang}{opt pairwise(pstats)}
生成包含成对统计的新变量。新变量的数量应与指定的统计数量相同。允许以下统计：

{phang3}{cmd:disparities}
生成差异，即变换的异质性。如果未进行变换（现代MDS与{cmd:transform(identity)}），则差异与异质性相同。

{phang3}{cmd:dissimilarities}
生成在MDS中使用的异质性。如果{cmd:mds}、{cmd:mdslong}或{cmd:mdsmat}是在相似性数据上调用的，则返回其关联的异质性。

{phang3}{cmd:distances}
生成拟合配置点之间的（未平方的）欧几里得距离。

{phang3}{cmd:rresiduals}
生成原始残差：异质性 - 距离。

{phang3}{cmd:tresiduals}
生成转换残差：差异 - 距离。

{phang3}{cmd:weights}
生成权重。缺失的接近值由零权重表示。

{pmore}
{cmd:estat pairwise}显示一些相同的信息，但不将信息存储在变量中。

{pmore}
在{cmd:mds}和{cmd:mdsmat}之后，您还必须指定{cmd:saving()}选项。对于n个对象，成对数据集具有n(n-1)/2个观察值。除了三个请求的变量外，{cmd:predict}还生成变量{it:id}{cmd:1}和{it:id}{cmd:2}，用于标识对象对。
在{cmd:mds}中，{it:id}是识别变量的名称（{cmd:id()}选项），而在{cmd:mdsmat}中，则为"{cmd:Category}"。

{phang}{cmd:saving(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}
在{cmd:mdsmat}之后，若选择了{opt pairwise()}时，以及在{cmd:mdslong}中选择{opt config}时，均需使用。{opt saving()}指示生成的变量将在新Stata数据集中创建，并保存到名为{it:filename}的文件中。除非指定{opt saving()}，否则变量将在当前数据集中生成。

{pmore}{opt replace}
指示在{cmd:saving()}中指定的{it:filename}可以被覆盖。

{phang}{opt full}
为所有对象对（j1,j2）创建预测。默认情况下，仅为j1>j2的对生成预测。{opt full}仅能与{opt pairwise()}一起指定。


{marker syntax_estat}{...}
{marker estat}{...}
{title:estat的语法}

{pstd}
列出近似配置的坐标

{p 8 14 2}
{cmd:estat} {cmdab:con:fig} [{cmd:,}
{opt max:length(#)} {opth for:mat(%fmt)}]


{pstd}
列出Pearson和Spearman相关性

{p 8 14 2}
{cmd:estat} {cmdab:cor:relations} [{cmd:,}
{opt max:length(#)} {opth for:mat(%fmt)} {opt notrans:form} {opt notot:al}]


{pstd}
列出成对统计：差异、距离和残差

{p 8 14 2}
{cmd:estat} {cmdab:pair:wise} [{cmd:,}
{opt max:length(#)} {opt notrans:form} {opt f:ull} {opt s:eparator}]


{pstd}
列出残差的分位数

{p 8 14 2}
{cmd:estat} {cmdab:qua:ntiles} [{cmd:,}
{opt max:length(#)} {opth for:mat(%fmt)} {opt notot:al} {opt notrans:form}]


{pstd}
显示Kruskal应力（损失）度量（仅在经典MDS之后）

{p 8 14 2}
{cmd:estat} {cmdab:str:ess} [,
{opt max:length(#)} {opth for:mat(%fmt)} {opt notot:al} {opt notrans:form}]


{pstd}
总结MDS中的变量

{p 8 14 2}
{cmd:estat} {cmdab:su:mmarize} [{cmd:,} {opt lab:els}]


{synoptset 16}{...}
{synopthdr}
{synoptline}
{synopt:{opt max:length(#)}}显示对象名称的最大字符数；默认值为{cmd:12}{p_end}
{synopt:{opth for:mat(%fmt)}}显示格式{p_end}
{synopt:{opt notot:al}}抑制整体摘要统计的显示{p_end}
{synopt:{opt notrans:form}}使用异质性而不是差异{p_end}
{synopt:{opt f:ull}}显示所有对（j1,j2）；默认仅为（j1>j2）{p_end}
{synopt:{opt s:eparator}}绘制分隔线{p_end}
{synopt:{opt lab:els}}显示变量标签{p_end}
{synoptline}
{p2colreset}{...}


包括帮助菜单_estat


{marker desc_estat}{...}
{title:estat的描述}

{pstd}{cmd:estat config}
列出近似配置的坐标。

{pstd}{cmd:estat correlations}
列出差异或异质性与每个对象的欧几里得距离之间的Pearson和Spearman相关性。

{pstd}{cmd:estat pairwise}
列出成对统计：差异、距离和残差。

{pstd}{cmd:estat quantiles}
列出每个对象的残差的分位数。

{pstd}{cmd:estat stress}
显示每个对象的Kruskal应力（损失）度量（仅在经典MDS之后）。

{pstd}{cmd:estat summarize}
总结MDS中的变量，报告在计算相似性或异质性之前变量是否以及如何发生变换。


{marker options_estat}{...}
{title:estat的选项}

{phang}{opt maxlength(#)},
与除{cmd:estat summarize}外的所有选项一起使用，指定要显示的对象名称的最大字符数；默认值为{cmd:maxlength(12)}。

{phang}{opth format(%fmt)},
与{cmd:estat config}、{cmd:estat correlations}、{cmd:estat quantiles}和{cmd:estat stress}一起使用，指定显示格式；默认值在子命令之间有所不同。

{phang}{opt nototal},
与{cmd:estat correlations}、{cmd:estat quantiles}和{cmd:estat stress}一起使用，抑制整体摘要统计。

{phang}{opt notransform},
与{cmd:estat correlations}、{cmd:estat pairwise}、{cmd:estat quantiles}和{cmd:estat stress}一起使用，指定使用未经转换的异质性而不是已转换的异质性（差异）。

{phang}{opt full},
与{cmd:estat pairwise}一起使用，显示所有对（j1,j2）的行。默认情况下，仅显示j1>j2的对。

{phang}{opt separator},
与{cmd:estat pairwise}一起使用，在与对象对的第一个对象的变化对应的行块之间绘制分隔线。

{phang}{opt labels},
与{cmd:estat summarize}一起使用，显示变量标签。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}

{pstd}执行经典的多维尺度缩放，标准化变量{p_end}
{phang2}{cmd:. mds price-gear, id(make) dim(2) std}

{pstd}列出近似配置的坐标{p_end}
{phang2}{cmd:. estat config}

{pstd}列出差异与欧几里得距离之间的相关性{p_end}
{phang2}{cmd:. estat correlations}

{pstd}列出转换残差的分位数{p_end}
{phang2}{cmd:. estat quantiles}

{pstd}列出成对差异、距离和残差{p_end}
{phang2}{cmd:. estat pairwise}

{pstd}显示每个对象的Kruskal应力度量{p_end}
{phang2}{cmd:. estat stress}

{pstd}显示变量的摘要{p_end}
{phang2}{cmd:. estat summarize}
 
{pstd}生成包含近似配置的新变量{p_end}
{phang2}{cmd:. predict d1 d2, config}

{pstd}保存到另一个数据集中包含成对差异、异质性和距离的变量{p_end}
{phang2}{cmd:. predict disp diss dist, pairwise(disp diss dist) saving(gd3)}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:estat correlations}将以下内容存储在{cmd:r()}中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(R)}}每个对象的统计；包含观测数、Pearson相关性和Spearman相关性列{p_end}
{synopt:{cmd:r(T)}}整体统计；观测数、Pearson相关性和Spearman相关性{p_end}

{pstd}
{cmd:estat quantiles}将以下内容存储在{cmd:r()}中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(dtype)}}{cmd:adjusted}或{cmd:raw}; 异质性变换{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(Q)}}每个对象的统计；包含观测数、最小值、p25、p50、p75和最大值的列{p_end}
{synopt:{cmd:r(T)}}整体统计；观测数、最小值、p25、p50、p75和最大值{p_end}

{pstd}
{cmd:estat stress}将以下内容存储在{cmd:r()}中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(dtype)}}{cmd:adjusted}或{cmd:raw}; 异质性变换{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(S)}}每个对象的Kruskal应力/损失度量{p_end}
{synopt:{cmd:r(T)}}1 x 1矩阵，包含整体Kruskal应力/损失度量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mds_postestimation.sthlp>}