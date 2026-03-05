{smcl}
{* *! version 1.2.5  31may2018}{...}
{viewerdialog predict "dialog mca_p"}{...}
{viewerdialog estat "dialog mca_estat"}{...}
{viewerdialog mcaplot "dialog mcaplot"}{...}
{viewerdialog mcaprojection "dialog mcaprojection"}{...}
{viewerdialog screeplot "dialog screeplot"}{...}
{vieweralsosee "[MV] mca postestimation" "mansection MV mcapostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] mca" "help mca_zh"}{...}
{vieweralsosee "[MV] mca postestimation plots" "help mca postestimation plots"}{...}
{vieweralsosee "[MV] screeplot" "help screeplot_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] ca" "help ca_zh"}{...}
{vieweralsosee "[MV] ca postestimation" "help ca_postestimation_zh"}{...}
{viewerjumpto "Postestimation commands" "mca postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "mca_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "mca postestimation##syntax_predict"}{...}
{viewerjumpto "estat" "mca postestimation##syntax_estat"}{...}
{viewerjumpto "Examples" "mca postestimation##examples"}{...}
{viewerjumpto "Stored results" "mca postestimation##results"}
{help mca_postestimation:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[MV] mca postestimation} {hline 2}}mca 的后估计工具
{p_end}
{p2col:}({mansection MV mcapostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {cmd:mca} 后，有以下后估计命令特别重要：

{synoptset 21}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{synopt:{helpb mca postestimation plots##mcaplot:mcaplot}}类别坐标的图{p_end}
{synopt:{helpb mca postestimation plots##mcaprojection:mcaprojection}}MCA 维度投影图{p_end}
{synopt:{helpb mca postestimation##syntax_estat:estat coordinates}}类别坐标的显示{p_end}
{synopt:{helpb mca postestimation##syntax_estat:estat subinertia}}活跃变量的惯性矩阵（仅适用于 JCA 之后）{p_end}
{synopt:{helpb mca postestimation##syntax_estat:estat summarize}}估计样本概述{p_end}
{synopt:{help screeplot_zh}}绘制主要惯性（特征值）{p_end}
{synoptline}
{p 4 6 2}


{pstd}
还可以使用以下标准后估计命令：

{synoptset 21 tabbed}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{p2coldent:* {help estimates_zh}}列出估计结果{p_end}
{synopt:{helpb mca postestimation##predict:predict}}行和类别坐标{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* 所有 {cmd:estimates} 子命令均可用，除了 {opt table} 和 {opt stats}。
{p_end}


{marker linkspdf}{...}
{title:PDF 文档的链接}

        {mansection MV mcapostestimationRemarksandexamples:说明和示例}

        {mansection MV mcapostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {it:{help newvar_zh}} {ifin} [{cmd:,} {it:statistic} {opt norm:alize(norm)} {opt dim:ensions(#)}]

{p 8 16 2}
{cmd:predict} {dtype} {{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help varlist_zh:newvarlist}}} {ifin} [{cmd:,}
{it:statistic} {opt norm:alize(norm)} {opth dim:ensions(numlist)}]

{synoptset 22 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主要}
{synopt:{opt row:scores}}行得分（坐标），默认值{p_end}
{synopt:{opth sc:ore(varname)}} MCA 变量 {it:varname} 的得分（坐标）{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 22}{...}
{synopthdr:norm}
{synoptline}
{synopt:{opt st:andard}}使用标准化{p_end}
{synopt:{opt p:rincipal}}使用主成分标准化{p_end}
{synoptline}
{p2colreset}{...}


INCLUDE help menu_predict


{marker desc_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新的变量，包含预测结果，例如行得分和 MCA 变量的得分（坐标）。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}{opt rowscores}
指定计算行得分（行坐标）。返回的行得分基于多重对应分析的指示矩阵方法，即使在原始 {cmd:mca} 估计中指定了其他方法。计算行得分的样本可以超过估计样本；例如，可以包含补充行（变量）。{cmd:score()} 和 {cmd:rowscores} 是互斥的。
{cmd:rowscores} 是默认值。

{phang}{opth score(varname)}
指定要计算得分的前一个 MCA 的变量名称。该变量可以是常规分类变量、交叉变量或补充变量。
{cmd:score()} 和 {cmd:rowscores} 是互斥的。

{dlgtab:选项}

{phang}{opt normalize(norm)}
指定得分（坐标）的标准化方式。
{cmd:normalize(}{cmdab:s:tandard}{cmd:)} 返回标准化的坐标。
{cmd:normalize(}{cmdab:p:rincipal}{cmd:)} 返回主成分得分。默认是估计时使用的标准化方法，若未指定方法，则为 {cmd:normalize(standard)}。

{phang}{opt dimensions(#)} 或 {opth dimensions(numlist)}
指定计算得分（坐标）的维度。指定的维度数量应等于 {it:{help newvarlist_zh}} 中变量的数量。如果未指定 {cmd:dimensions()}，则返回维度 1,...,{it:k} 的得分，其中 {it:k} 是 {it:newvarlist} 中变量的数量。 {it:newvarlist} 中的变量数量不应超过在估计中提取的维度数量。


{marker syntax_estat}{...}
{title:estat 的语法}

{pstd}类别坐标的显示

{p 8 14 2}
{cmd:estat} {opt co:ordinates} [{varlist}] [{cmd:,}
{it:{help mca_postestimation##coordinates_options:coordinates_options}}]


{pstd}活跃变量的惯性矩阵（仅适用于 JCA 之后）

{p 8 14 2}
{cmd:estat} {opt sub:inertia}


{pstd}估计样本概述

{p 8 14 2}
{cmd:estat} {opt su:mmarize} [{cmd:,}
{it:{help mca_postestimation##summarize_options:summarize_options}}]


{pstd}
注意： {it:varlist} 中的变量必须来自前一个 {cmd:mca}，并且可以是常规分类变量或交叉变量。 {it:varlist} 中的变量也可以从补充变量中选择。


{marker coordinates_options}{...}
{synoptset 22}{...}
{synopthdr:coordinates_options}
{synoptline}
{synopt:{cmdab:norm:alize(}{cmdab:s:tandard)}}标准坐标{p_end}
{synopt:{cmdab:norm:alize(}{cmdab:p:rincipal)}}主成分坐标{p_end}
{synopt:{opt st:ats}}包含质量、距离和惯性{p_end}
{synopt:{opth for:mat(%fmt)}}显示格式；默认为 {cmd:format(%9.4f)}{p_end}
{synoptline}
{p2colreset}{...}


{marker summarize_options}{...}
{synoptset 22 tabbed}{...}
{synopthdr:summarize_options}
{synoptline}
{syntab:主要}
{synopt:{opt c:rossed}}总结交叉和未交叉的变量{p_end}
{synopt:{opt lab:els}}显示变量标签{p_end}
{synopt:{opt nohea:der}}抑制标题{p_end}
{synopt:{opt nowei:ghts}}忽略权重{p_end}
{synoptline}
{p2colreset}{...}


INCLUDE help menu_estat


{marker desc_estat}{...}
{title:estat 的描述}

{pstd}
{cmd:estat coordinates} 显示类别坐标，可选列统计信息。

{pstd}
{cmd:estat subinertia} 显示活跃变量的惯性矩阵（仅适用于 JCA 之后）。

{pstd}
{cmd:estat summarize} 显示估计样本中 MCA 变量的摘要信息。


{marker options_estat_coordinates}{...}
{title:estat 坐标的选项}

{phang}{opt normalize(norm)}
指定得分（坐标）的标准化方式。
{cmd:normalize(standard)} 返回标准化的坐标。
{cmd:normalize(principal)} 返回主成分得分。
默认是估计时使用的标准化方法，或 {cmd:normalize(standard)}，如果未指定任何方法。

{phang}{opt stats}
在表中包含列质量、列到中心点的距离和列惯性。

{phang}{opth format(%fmt)}
指定矩阵的显示格式，例如，{cmd:format(%8.3f)}。
默认是 {cmd:format(%9.4f)}。


{marker options_estat_summarize}{...}
{title:estat 总结的选项}

{dlgtab:主要}

{phang}{opt crossed}
指定如果在 MCA 中使用了交叉变量，则对交叉变量进行总结，而不是对构成它们的交叉变量进行总结。默认是对构成变量和单个分类变量进行总结，这些变量被用于 MCA。

{phang}{opt labels}
显示变量标签。

{phang}{opt noheader}
抑制标题。

{phang}{opt noweights}
忽略权重（如果有）。当存在权重时，默认是对所有变量（除了权重变量本身）进行加权总结。对权重变量进行不加权总结。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse issp93}{p_end}
{phang2}{cmd:. mca A B C D, dimensions(2) suppl(age edu) method(joint)}{p_end}

{pstd}预测列坐标和行坐标{p_end}
{phang2}{cmd:. predict a1 a2, score(A)}{p_end}
{phang2}{cmd:. predict r1 r2, rowscores norm(principal)}{p_end}

{pstd}查看坐标和子惯性{p_end}
{phang2}{cmd:. estat coord, stats}{p_end}
{phang2}{cmd:. estat subinertia}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat summarize} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(stats)}}k x 4 矩阵的均值、标准差、最小值和最大值{p_end}

{pstd}
{cmd:estat coordinates} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(norm)}}坐标的标准化方法{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(Coord)}}列坐标{p_end}
{synopt:{cmd:r(Stats)}}列统计信息：质量、距离和惯性
           （选项 {cmd:stats} 仅限）{p_end}

{pstd}
{cmd:estat subinertia} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(inertia_sub)}}变量逐变量惯性{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mca_postestimation.sthlp>}