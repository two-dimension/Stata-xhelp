{smcl}
{* *! version 1.3.4  21mar2013}{...}
{viewerdialog predict "dialog xtmixed_p"}{...}
{viewerdialog estat "dialog xtmixed_estat"}{...}
{vieweralsosee "[XT] xtmixed" "help xtmixed_zh"}{...}
{viewerjumpto "描述" "xtmixed postestimation##description"}{...}
{viewerjumpto "特殊兴趣后估计命令" "xtmixed postestimation##special"}{...}
{viewerjumpto "" "--"}{...}
{viewerjumpto "预测语法" "xtmixed postestimation##syntax_predict"}{...}
{viewerjumpto "预测选项" "xtmixed postestimation##options_predict"}{...}
{viewerjumpto "" "--"}{...}
{viewerjumpto "estat group 语法" "xtmixed postestimation##syntax_estat_group"}{...}
{viewerjumpto "estat recovariance 语法" "xtmixed postestimation##syntax_estat_recov"}{...}
{viewerjumpto "estat recovariance 选项" "xtmixed postestimation##options_estat_recov"}{...}
{viewerjumpto "estat icc 语法" "xtmixed postestimation##syntax_estat_icc"}{...}
{viewerjumpto "estat icc 选项" "xtmixed postestimation##option_estat_icc"}{...}
{viewerjumpto "" "--"}{...}
{viewerjumpto "示例" "xtmixed postestimation##examples"}{...}
{viewerjumpto "保存的结果" "xtmixed postestimation##saved_results"}
{help xtmixed_postestimation:English Version}
{hline}{...}
{pstd}
{cmd:xtmixed} 已重命名为 {help mixed_zh}; 请参见
{manhelp mixed_postestimation ME:mixed postestimation}。
{cmd:xtmixed} 继续有效，但从 Stata 13 起，它不再是 Stata 的正式部分。
这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。

{hline}

{title:标题}

{p2colset 5 36 38 2}{...}
{p2col :{hi:[XT] xtmixed postestimation} {hline 2}}xtmixed 的后估计工具{p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
以下后估计命令在 {cmd:xtmixed} 之后特别重要：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb xtmixed postestimation##estatgroup:estat group}}总结嵌套组的组成{p_end}
{synopt :{helpb xtmixed postestimation##estatcov:estat recovariance}}显示估计的随机效应协方差矩阵{p_end}
{synopt :{helpb xtmixed postestimation##estaticc:estat icc}}估计组内相关{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也可用：

{synoptset 14}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
{synopt:{bf:{help estat_zh}}}AIC, BIC, VCE 和估计样本摘要{p_end}
INCLUDE help post_estimates
INCLUDE help post_lincom
INCLUDE help post_lrtest
INCLUDE help post_margins
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb xtmixed postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker special}{...}
{title:特殊兴趣后估计命令}

{pstd}
{cmd:estat group} 报告组数量以及每个模型级别的最小、平均和最大组规模。模型级别由数据中的相应组变量识别。由于组被视为嵌套，因此此摘要中的信息可能与您自己 {cmd:tabulate} 每个组变量所得到的信息不同。

{pstd}
{cmd:estat recovariance} 显示每个级别随机效应的估计方差-协方差矩阵。随机效应可以是随机截距，此时矩阵的相应行和列标记为 _cons，或随机系数，此时标签为数据中相关变量的名称。

{pstd}
{cmd:estat icc} 显示模型每个嵌套级别的响应对的组内相关性。对于随机截距模型或在随机效应协变量等于零的条件下的随机系数模型，可以获得组内相关性。它们不适用于交叉效应模型或具有除独立结构之外的残差误差结构。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测语法}

{p 4 4 2}
获取随机效应的最佳线性无偏预测（BLUP）或 BLUP 的标准误差的语法

{p 8 16 2}
{cmd:predict} {dtype} {{it:stub}{cmd:*}{c |}{it:{help newvarlist_zh}}} {ifin}
{cmd:,} {{opt ref:fects} | {opt reses}} [{opt l:evel(levelvar)}]

{p 4 4 2}
在最大似然估计后获取评分的语法

{p 8 16 2}
{cmd:predict} {dtype} {c -(}{it:stub}{cmd:*}|{it:{help newvarlist_zh}}{c )-}
{ifin} {cmd:,} {cmdab:sc:ores}

{p 4 4 2}
获取其他预测的语法

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} 
[{cmd:,} {it:statistic} {opt l:evel(levelvar)}]


{synoptset 13 tabbed}{...}
{synopthdr :统计量}
{synoptline}
{syntab :主}
{synopt :{cmd:xb}}xb，模型的 {it:fixed} 部分的线性预测{p_end}
{synopt :{cmd:stdp}}固定部分线性预测 xb 的标准误差{p_end}
{synopt :{opt fit:ted}}拟合值，固定部分的线性预测加上基于预测随机效应的贡献
{p_end}
{synopt :{opt r:esiduals}}残差，响应减去拟合值
{p_end}
{p2coldent :* {opt rsta:ndard}}标准化残差{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help unstarred


INCLUDE help menu_predict


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主}

{phang}
{opt xb} 计算模型固定部分的线性预测。

{phang}
{opt stdp} 计算固定部分线性预测的标准误差。

{phang}
{opt level(levelvar)} 指定要获得随机效应预测的模型级别；有关详细信息，请参见下文。{it:levelvar} 是模型级别的名称，可以是描述该级别分组的变量名称或 {cmd:_all}，用于包括所有估计数据的特殊组。

{marker reffects}{...}
{phang}
{opt reffects} 计算随机效应的最佳线性无偏预测（BLUP）。默认情况下，会计算模型中所有随机效应的 BLUP。然而，如果指定了 {opt level(levelvar)} 选项，则仅计算模型中级别 {it:levelvar} 的 BLUP。例如，如果 {cmd:class} 嵌套在 {cmd:school} 中，则

{p 12 16 2}{cmd:. predict b*, reffects level(school)}{p_end}

将用于在 {cmd:school} 级别获得 BLUP。您必须指定 {it:q} 个新变量，其中 {it:q} 是模型（或级别）中随机效应项的数量。然而，更简单的办法是只需指定 {it:stub}{cmd:*}，让 Stata 为您命名变量 {it:stub}{cmd:1}...{it:stubq}。

{phang}
{opt reses} 计算随机效应的最佳线性无偏预测（BLUP）的标准误差。默认情况下，会计算模型中所有 BLUP 的标准误差。然而，如果指定了 {opt level(levelvar)} 选项，则仅计算模型中级别 {it: levelvar} 的标准误差；请参见 {helpb xtmixed postestimation##reffects:reffects} 选项。
您必须指定 {it:q} 个新变量，其中 {it:q} 是模型（或级别）中随机效应项的数量。然而，更简单的办法是只需指定 {it:stub}{cmd:*}，让 Stata 为您命名变量 {it:stub}{cmd:1}...{it:stubq}。

{pmore}
选项 {opt reses} 在使用稳健/聚类方差估计后不可用。

{pmore}
{cmd:reffects} 和 {cmd:reses} 选项通常会一次生成多个新变量。当这种情况发生时，生成的变量中的随机效应（或标准误差）对应于 {cmd:xtmixed} 输出中列出方差分量的顺序。尽管如此，检查生成变量的变量标签（例如使用 {cmd:describe} 命令）在解读哪个变量对应模型中的哪个项时也可能很有用。

{phang}
{cmd:scores} 计算模型中每个参数（包括回归系数和方差分量）的参数级别评分。参数的评分是对该参数的对数似然（或对数伪似然）的第一导数。为每个最高级别组计算一个评分，并放置在该组的最后一条记录中。评分以 {cmd:e(b)} 中存储的估计度量计算。

{pmore}
{cmd:scores} 在限制最大似然（REML）估计后不可用。

{phang}
{opt fitted} 计算拟合值，它等于固定部分的线性预测 {it:plus} 基于预测随机效应的贡献，或在混合模型符号中为 xb + Zu。默认情况下，拟合值考虑模型中所有级别的随机效应，但是，如果指定了 {opt level(levelvar)} 选项，那么拟合值是从最上级别开始到并包括级别 {it:levelvar} 进行拟合。例如，如果 {cmd:class} 嵌套在 {cmd:school} 中，则

{p 12 16 2}{cmd:. predict yhat1, fitted level(school)}{p_end}

将生成学校级别的预测。换句话说，预测将纳入学校特定的随机效应，而不包括每个学校中嵌套的每个班级的随机效应。

{phang}
{opt residuals} 计算残差，等于响应减去拟合值。默认情况下，拟合值考虑模型中所有级别的随机效应，但是，如果指定了 {opt level(levelvar)} 选项，则拟合值是从最上级别开始到并包括级别 {it:levelvar} 进行拟合。

{phang}
{opt rstandard} 计算标准化残差，等于残差乘以估计的误差协方差矩阵的逆平方根。


{marker syntax_estat_group}{...}
{marker estatgroup}{...}
{title:estat group 语法}

{p 8 14 2}
{cmd:estat} {opt gr:oup} 


INCLUDE help menu_estat


{marker syntax_estat_recov}{...}
{marker estatcov}{...}
{title:estat recovariance 语法}

{p 8 14 2}
{cmd:estat} {opt recov:ariance} [{cmd:,} {opt l:evel(levelvar)}
          {opt corr:elation} {help matlist_zh:{it:matlist_options}}]


INCLUDE help menu_estat


{marker options_estat_recov}{...}
{title:estat recovariance 选项}

{phang}
{opt level(levelvar)} 指定要显示的随机效应协方差矩阵的模型级别。默认情况下，显示模型中所有级别的协方差矩阵。{it:levelvar} 是模型级别的名称，可以是描述该级别分组的变量名称或 {cmd:_all}，用于包括所有估计数据的特殊组。

{phang}
{opt correlation} 将协方差矩阵显示为相关矩阵。

{phang}
{it:matlist_options} 控制如何显示矩阵。有关详细信息，请参阅 {help matlist_zh:[P] matlist}。


{marker syntax_estat_icc}{...}
{marker estaticc}{...}
{title:estat icc 语法}

{p 8 14 2}
{cmd:estat} {opt icc} [{cmd:,} {opt l:evel(#)}] 

          
INCLUDE help menu_estat


{marker option_estat_icc}{...}
{title:estat icc 选项}

{phang}
{opt level(#)}
指定置信区间的置信水平，单位为百分比。默认值为 {cmd:level(95)} 或通过 {helpb set level} 设置的值。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse pig}{p_end}
{phang2}{cmd:. xtmixed weight week || id: week, covariance(unstructured)}
                {cmd:variance}{p_end}

{pstd}id 级别的随机效应协方差矩阵{p_end}
{phang2}{cmd:. estat recovariance}{p_end}

{pstd}id 级别的随机效应相关矩阵{p_end}
{phang2}{cmd:. estat recovariance, correlation}{p_end}

{pstd}随机效应的 BLUPS{p_end}
{phang2}{cmd:. predict u1 u0, reffects}{p_end}

{pstd}BLUPs 的标准误差{p_end}
{phang2}{cmd:. predict s1 s0, reses}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse productivity, clear}{p_end}
{phang2}{cmd:. xtmixed gsp private emp hwy water other unemp || region: ||}
             {cmd:state:}{p_end}

{pstd}总结嵌套组的组成{p_end}
{phang2}{cmd:. estat group}{p_end}

{pstd}在地区级别的拟合值{p_end}
{phang2}{cmd:. predict gsp_region, fitted level(region)}{p_end}

{pstd}对数似然评分{p_end}
{phang2}{cmd:. predict double sc*, scores}{p_end}

{pstd}计算残差组内相关{p_end}
{phang2}{cmd:. estat icc}{p_end}

    {hline}


{marker saved_results}{...}
{title:保存的结果}

{pstd}
{cmd:estat recovariance} 将最后显示的随机效应协方差矩阵保存在 {cmd:r(cov)} 中，如果显示为相关矩阵，则保存在 {cmd:r(corr)} 中。
{p_end}

{pstd}
{cmd:estat icc} 将以下内容保存在 {cmd:r()} 中：

{synoptset 13 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(icc}{it:#}{cmd:)}}级别-{it:#} 的组内相关{p_end}
{synopt:{cmd:r(se}{it:#}{cmd:)}}级别-{it:#} 的组内相关的标准误差{p_end}
{synopt:{cmd:r(level)}}置信区间的置信水平{p_end}
{p2colreset}{...}

{synoptset 13 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(label}{it:#}{cmd:)}}级别 {it:#} 的标签{p_end}
{p2colreset}{...}

{synoptset 13 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(ci}{it:#}{cmd:)}}级别-{it:#} 的组内相关的置信区间向量（下限和上限）{p_end}
{p2colreset}{...}

{pstd}
对于 {it:G} 级别的嵌套模型，{it:#} 可以是任何介于 2 和 {it:G} 之间的整数。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtmixed_postestimation.sthlp>}