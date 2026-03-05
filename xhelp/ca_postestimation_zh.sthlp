{smcl}
{* *! version 1.4.4  19oct2017}{...}
{viewerdialog predict "dialog ca_p"}{...}
{viewerdialog estat "dialog ca_estat"}{...}
{viewerdialog cabiplot "dialog cabiplot"}{...}
{viewerdialog caprojection "dialog caprojection"}{...}
{viewerdialog screeplot "dialog screeplot"}{...}
{vieweralsosee "[MV] ca postestimation" "mansection MV capostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] ca" "help ca_zh"}{...}
{vieweralsosee "[MV] ca postestimation plots" "help ca postestimation plots"}{...}
{vieweralsosee "[MV] screeplot" "help screeplot_zh"}{...}
{viewerjumpto "Postestimation commands" "ca postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "ca_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "ca postestimation##syntax_predict"}{...}
{viewerjumpto "estat" "ca postestimation##syntax_estat"}{...}
{viewerjumpto "Examples" "ca postestimation##examples"}{...}
{viewerjumpto "Stored results" "ca postestimation##results"}
{help ca_postestimation:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[MV] ca postestimation} {hline 2}}CA后续工具
{cmd:ca} 和 {cmd:camat}
{p_end}
{p2col:}({mansection MV capostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后续命令}

{pstd}
在执行 {cmd:ca} 和 {cmd:camat} 后，以下后续命令尤其重要：

{synoptset 21 tabbed}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{synopt:{helpb ca postestimation plots##cabiplot:cabiplot}}行和列点的双变量图{p_end}
{synopt:{helpb ca postestimation plots##caprojection:caprojection}}CA维度投影图{p_end}
{synopt:{helpb ca postestimation##estat:estat coordinates}}显示行和列坐标{p_end}
{synopt:{helpb ca postestimation##estat:estat distances}}显示行和列特征之间的卡方距离{p_end}
{synopt:{helpb ca postestimation##estat:estat inertia}}显示单元格的惯性贡献{p_end}
{synopt:{helpb ca postestimation##estat:estat loadings}}显示特征与轴的相关性{p_end}
{synopt:{helpb ca postestimation##estat:estat profiles}}显示行和列特征{p_end}
{p2coldent:* {helpb ca postestimation##estat:estat summarize}}估计样本摘要{p_end}
{synopt:{helpb ca postestimation##estat:estat table}}显示拟合的对应表{p_end}
{synopt:{help screeplot_zh}}绘制奇异值图{p_end}
{synoptline}
{p 4 6 2}
* {cmd:estat summarize} 在 {cmd:camat} 后不可用。

{pstd}
以下标准后续命令也可用：

{p2coldent:命令}描述{p_end}
{synoptline}
{p2coldent:* {help estimates_zh}}结果目录{p_end}
{p2coldent:+ {helpb ca postestimation##predict:predict}}拟合值、行坐标或列坐标{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* 所有 {cmd:estimates} 子命令，除了 {opt table} 和 {opt stats} 都可用。
{p_end}
{p 4 6 2}
+ {cmd:predict} 在 {cmd:camat} 后不可用。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MV capostestimationRemarksandexamples:备注和示例}

        {mansection MV capostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic}]

{synoptset 15 tabbed}{...}
{synopthdr:统计量}
{synoptline}
{syntab:主要}
{synopt:{opt f:it}}拟合值；默认值{p_end}
{synopt:{opt row:score(#)}}第 {it:#} 维的行得分{p_end}
{synopt:{opt col:score(#)}}第 {it:#} 维的列得分{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{cmd:predict} 在 {cmd:camat} 后不可用。


INCLUDE help menu_predict


{marker desc_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含诸如拟合值和行或列得分的新变量。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}{opt fit}
指定计算对应分析模型的拟合值。 {opt fit} 显示根据对应分析模型得到的拟合值 p_{ij}。 {opt fit} 为默认选项。

{phang}{opt rowscore(#)}
生成第 {it:#} 维的行得分，即来自标准化行坐标的适当元素。

{phang}{opt colscore(#)}
生成第 {it:#} 维的列得分，即来自标准化列坐标的适当元素。


{marker syntax_estat}{...}
{marker estat}{...}
{title:estat的语法}

{pstd}
显示行和列坐标

{p 8 14 2}
{cmd:estat} {opt co:ordinates} [{cmd:,} {opt norow} {opt nocol:umn}
	{opth for:mat(%fmt)}]


{pstd}
显示行和列特征之间的卡方距离

{p 8 14 2}
{cmd:estat} {opt di:stances} [{cmd:,} {opt norow} {opt nocol:umn}
	{opt ap:prox} {opth for:mat(%fmt)}]


{pstd}
显示单元格的惯性贡献

{p 8 14 2}
{cmd:estat} {opt in:ertia} [{cmd:,} {opt to:tal} {opt nosc:ale}
	{opth for:mat(%fmt)}]


{pstd}
显示特征与轴的相关性

{p 8 14 2}
{cmd:estat} {opt lo:adings} [{cmd:,} {opt norow} {opt nocol:umn}
	{opth for:mat(%fmt)}]


{pstd}
显示行和列特征

{p 8 14 2}
{cmd:estat} {opt pr:ofiles} [{cmd:,} {opt norow} {opt nocol:umn}
	{opth for:mat(%fmt)}]


{pstd}
显示摘要信息

{p 8 14 2}
{cmd:estat} {opt su:mmarize} [{cmd:,} {opt lab:els} {opt nohea:der}
	{opt nowei:ghts}]


{pstd}
显示拟合对应表

{p 8 14 2}
{cmd:estat} {opt ta:ble} [{cmd:,}
	{opt fit} {opt obs} {opt in:dependence} {opt nosc:ale}
	{opth for:mat(%fmt)}]


{synoptset 16}{...}
{synopthdr}
{synoptline}
{synopt:{opt norow}}抑制行结果的显示{p_end}
{synopt:{opt nocol:umn}}抑制列结果的显示{p_end}
{synopt:{opth for:mat(%fmt)}}显示格式；默认为
	{cmd:format(%9.4f)}{p_end}
{synopt:{opt ap:prox}}显示拟合（近似）特征之间的距离{p_end}
{synopt:{opt to:tal}}添加行和列边际{p_end}
{synopt:{opt nosc:ale}}显示卡方贡献；默认情况下惯性 = 卡方/N 
	（使用 {cmd:estat inertia} 时） {p_end}
{synopt:{opt lab:els}}显示变量标签{p_end}
{synopt:{opt nohea:der}}抑制标题显示{p_end}
{synopt:{opt nowei:ghts}}忽略权重{p_end}
{synopt:{opt fit}}显示来自对应分析模型的拟合值{p_end}
{synopt:{opt obs}}显示对应表（“观察到的表”）{p_end}
{synopt:{opt in:dependence}}显示在独立性假定下的期望值{p_end}
{synopt:{opt nosc:ale}}抑制条目按1进行缩放（使用 {cmd:estat table} 时） {p_end}
{synoptline}
{p2colreset}{...}


INCLUDE help menu_estat


{marker desc_estat}{...}
{title:estat的描述}

{pstd}
{cmd:estat coordinates}
显示行和列坐标。

{pstd}
{cmd:estat distances}
显示行特征和列特征之间的卡方距离。此外，还显示行和列特征与各自中心（边际分布）之间的卡方距离。可选地，使用拟合特征而不是观察到的特征。

{pstd}
{cmd:estat inertia}
显示单元格的惯性（卡方/N）贡献。

{pstd}
{cmd:estat loadings}
显示行和列特征与轴的相关性，类似于主成分分析的负荷。

{pstd}
{cmd:estat profiles}
显示行和列特征；行（列）特征是给定列（行）时行（列）的条件分布。这相当于在 {cmd:tabulate} 命令中指定 {cmd:row} 和 {cmd:column} 选项；参见 {manhelp tabulate_twoway R:tabulate twoway}。

{pstd}
{cmd:estat summarize}
显示关于估计样本中行和列变量的摘要信息。

{pstd}
{cmd:estat table}
显示拟合的对应表。可选地，显示观察到的“对应表”和独立性假设下的期望表。


{marker options_estat}{...}
{title:estat的选项}

{phang}{opt norow},
与 {cmd:estat coordinates}、{cmd:estat distances} 和
{cmd:estat profiles} 一起使用的选项，抑制行结果的显示。

{phang}{opt nocolumn},
与 {cmd:estat coordinates}、{cmd:estat distances} 和
{cmd:estat profiles} 一起使用的选项，抑制列结果的显示。

{phang}{opth format(%fmt)},
与许多 {cmd:estat} 的子命令一起使用的选项，指定矩阵的显示格式，例如 {cmd:format(%8.3f)}。默认值为 {cmd:format(%9.4f)}。

{phang}{opt approx},
与 {cmd:estat distances} 一起使用的选项，计算拟合特征之间的距离。默认情况下计算观察到的特征之间的距离。

{phang}{opt total},
与 {cmd:estat inertia} 一起使用的选项，向惯性或卡方（卡方/N）贡献表中添加行和列边际。

{phang}{opt noscale},
用于 {cmd:estat inertia} 的选项，显示卡方贡献而不是惯性（= 卡方/N）贡献。 （见下文与 {cmd:estat table} 一起使用的 {opt noscale} 的描述。）

{phang}{opt labels},
与 {cmd:estat summarize} 一起使用的选项，显示变量标签。

{phang}{opt noheader},
与 {cmd:estat summarize} 一起使用的选项，抑制标题显示。

{phang}{opt noweights},
与 {cmd:estat summarize} 一起使用的选项，忽略权重（如果有）。默认情况下，当存在权重时，对除了权重变量自身之外的所有变量执行加权 {cmd:summarize}。对权重变量执行无权重 {cmd:summarize}。

{phang}{opt fit},
与 {cmd:estat table} 一起使用的选项，
显示对应分析模型的拟合值。
如果未指定 {cmd:obs} 和 {cmd:independence}，则隐含 {cmd:fit}。

{phang}{opt obs},
与 {cmd:estat table} 一起使用的选项，显示具有非负条目的观察表（“对应表”）。

{phang}{opt independence},
与 {cmd:estat table} 一起使用的选项，显示在行和列假定独立时的期望值 p(ij)，p(ij) = r(i) c(j)，其中 r(i) 是行 i 的质量，c(j) 是列 j 的质量。

{phang}{opt noscale},
与 {cmd:estat table} 一起使用的选项，将显示表标准化为原始表条目的总和。默认情况下，将表缩放到总和为1。 （见上文与 {cmd:estat inertia} 一起使用的 {opt noscale} 的描述。）


{marker examples}{...}
{title:示例}

    设置
        {cmd:. webuse ca_smoking}

    估计CA
        {cmd:. ca rank smoking}

    后续统计信息
        {cmd:. estat distances}
        {cmd:. estat distances, fit}
        {cmd:. estat inertia}
        {cmd:. estat inertia, total noscale}
        {cmd:. estat profiles, nocolumn}
        {cmd:. estat table, fit obs}

    预测变量
        {cmd:. predict fitted, fit}
        {cmd:. predict pers_score, rowscore(1)}
        {cmd:. predict smok_score, colscore(1)}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:estat distances} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(Dcolumns)}}列之间以及列与列中心之间的卡方距离{p_end}
{synopt:{cmd:r(Drows)}}行之间以及行与行中心之间的卡方距离{p_end}

{pstd}
{cmd:estat inertia} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(Q)}}（平方）惯性（或卡方）贡献矩阵{p_end}

{pstd}
{cmd:estat loadings} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(LC)}}列负荷{p_end}
{synopt:{cmd:r(LR)}}行负荷{p_end}

{pstd}
{cmd:estat profiles} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(Pcolumns)}}列特征（列标准化为1）{p_end}
{synopt:{cmd:r(Prows)}}行特征（行标准化为1）{p_end}

{pstd}
{cmd:estat table} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(Fit)}}拟合（重建）值{p_end}
{synopt:{cmd:r(Fit0)}}拟合（重建）值，假设行和列变量独立{p_end}
{synopt:{cmd:r(Obs)}}对应表{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ca_postestimation.sthlp>}