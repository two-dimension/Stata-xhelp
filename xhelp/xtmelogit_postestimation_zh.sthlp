{smcl}
{* *! version 1.5.3  16jun2014}{...}
{viewerdialog predict "dialog xtmelogit_p"}{...}
{viewerdialog estat "dialog xtmelogit_estat"}{...}
{vieweralsosee "[XT] xtmelogit" "help xtmelogit_zh"}{...}
{viewerjumpto "描述" "xtmelogit postestimation##description"}{...}
{viewerjumpto "特殊兴趣后验命令" "xtmelogit postestimation##special"}{...}
{viewerjumpto "" "--"}{...}
{viewerjumpto "预测的语法" "xtmelogit postestimation##syntax_predict"}{...}
{viewerjumpto "预测的选项" "xtmelogit postestimation##options_predict"}{...}
{viewerjumpto "" "--"}{...}
{viewerjumpto "estat group 的语法" "xtmelogit postestimation##syntax_estat_group"}{...}
{viewerjumpto "estat recovariance 的语法" "xtmelogit postestimation##syntax_estat_recov"}{...}
{viewerjumpto "estat recovariance 的选项" "xtmelogit postestimation##options_estat_recov"}{...}
{viewerjumpto "estat icc 的语法" "xtmelogit postestimation##syntax_estat_icc"}{...}
{viewerjumpto "estat icc 的选项" "xtmelogit postestimation##option_estat_icc"}{...}
{viewerjumpto "" "--"}{...}
{viewerjumpto "示例" "xtmelogit postestimation##examples"}{...}
{viewerjumpto "保存的结果" "xtmelogit postestimation##saved_results"}{...}
{viewerjumpto "参考文献" "xtmelogit postestimation##reference"}
{help xtmelogit_postestimation:English Version}
{hline}{...}
{pstd}
{cmd:xtmelogit} 已更名为 {help meqrlogit_zh}；详见 {manhelp meqrlogit_postestimation ME:meqrlogit postestimation}。{cmd:xtmelogit} 继续有效，但自 Stata 13 起不再是 Stata 的正式组成部分。这是原始帮助文件，我们将不再对此进行更新，因此某些链接可能不再有效。

{hline}

{title:标题}

{p2colset 5 38 40 2}{...}
{p2col :{hi:[XT] xtmelogit postestimation} {hline 2}}xtmelogit 的后验工具{p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
以下后验命令在 {cmd:xtmelogit} 之后特别重要：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb xtmelogit postestimation##estatgroup:estat group}}总结嵌套组的组成{p_end}
{synopt :{helpb xtmelogit postestimation##estatcov:estat recovariance}}显示估计的随机效应协方差矩阵{p_end}
{synopt :{helpb xtmelogit postestimation##estaticc:estat icc}}估计类内相关{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后验命令也可用：

{synoptset 14}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
{synopt:{bf:{help estat_zh}}}AIC、BIC、VCE 和估计样本摘要{p_end}
INCLUDE help post_estimates
INCLUDE help post_lincom
INCLUDE help post_lrtest
INCLUDE help post_margins
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb xtmelogit postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker special}{...}
{title:特殊兴趣后验命令}

{pstd}
{cmd:estat group} 报告每个模型层次的组数及最小、平均和最大组大小。模型层次由数据中的相应组变量识别。由于组被视为嵌套，因此该摘要中的信息可能与您自己 {cmd:tabulate} 每个组变量时所得到的信息不同。

{pstd}
{cmd:estat recovariance} 显示每层的随机效应的估计方差-协方差矩阵。随机效应可以是随机截距，此时矩阵的相应行和列标记为 _cons；或是随机系数，此时标签为数据中相关变量的名称。

{pstd}
{cmd:estat icc} 显示每层的潜在线性响应的类内相关。类内相关可用于随机截距模型或在随机效应协变量等于零时用于随机系数模型。它们在交叉效应模型中不可用。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 4 4 2}
获取估计的随机效应或其标准误的语法

{p 8 16 2}
{cmd:predict} {dtype} {{it:stub}{cmd:*}{c |}{it:{help newvarlist_zh}}} {ifin}
{cmd:,} {{opt ref:fects} | {opt reses}} [{opt l:evel(levelvar)}]

{p 4 4 2}
获取其他预测的语法

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} 
[{cmd:,} {it:statistic} {opt fixed:only} {opt nooff:set}]


{synoptset 13 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :Main}
{synopt :{opt m:u}}预测的均值；默认{p_end}
{synopt :{cmd:xb}}xb，线性预测的 {it:fixed} 部分{p_end}
{synopt :{cmd:stdp}}固定部分线性预测的标准误 xb{p_end}
{synopt :{opt p:earson}}皮尔逊残差{p_end}
{synopt :{opt d:eviance}}偏差残差{p_end}
{synopt :{opt a:nscombe}}安斯科姆残差{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:Main}

{phang}
{opt reffects} 计算随机效应的后验模态估计。默认情况下，计算模型中所有随机效应的估计。然而，如果指定了 {opt level(levelvar)} 选项，则仅计算模型中级别 {it:levelvar} 的估计。例如，如果 {cmd:class} 嵌套在 {cmd:school} 中，则

{p 12 16 2}{cmd:. predict b*, reffects level(school)}{p_end}

{pmore}
将会在 {cmd:school} 层计算随机效应估计。您必须指定 {it:q} 个新变量，其中 {it:q} 是模型（或层级）中的随机效应项的数量。然而，简单指定 {it:stub}{cmd:*} 并让 Stata 为您命名变量 {it:stub}{cmd:1}、{it:stub}{cmd:2}、...、{it:stubq} 更为方便。

{phang}
{opt reses} 计算通过使用 {opt reffects} 选项获得的随机效应估计的标准误。默认情况下，计算模型中所有随机效应的标准误。然而，如果指定了 {opt level(levelvar)} 选项，则仅计算模型中级别 {it:levelvar} 的标准误。例如，如果 {cmd:class} 嵌套在 {cmd:school} 中，则

{p 12 16 2}{cmd:. predict se*, reses level(school)}{p_end}

{pmore}
将在 {cmd:school} 层输出标准误。您必须指定 {it:q} 个新变量，其中 {it:q} 是模型（或层级）中的随机效应项的数量。然而更简单的办法是直接指定 {it:stub}{cmd:*} 并让 Stata 为您命名变量 {it:stub}{cmd:1}、{it:stub}{cmd:2}、...、{it:stubq}。

{pmore}
{cmd:reffects} 和 {cmd:reses} 选项通常会一次生成多个新变量。当这种情况发生时，生成变量中的随机效应（或标准误）对应于 {cmd:xtmelogit} 输出中方差成分的列出顺序。然而，检查生成变量的变量标签（例如使用 {cmd:describe} 命令）在辨别哪些变量对应于模型中的哪些项时会很有帮助。

{phang}
{opt level(levelvar)} 指定获得随机效应及其标准误的模型层级。{it:levelvar} 是模型层级的名称，可以是描述该层级分组的变量名称，也可以是 {cmd:_all}，这是一个特殊标识，指代包含所有估计数据的组。

{phang} 
{opt mu}（默认）计算预测的均值。默认情况下，这基于包括 {it:both} 固定效应和随机效应的线性预测，并且预测的均值是基于估计的随机效应的值。若要获得仅包括模型固定部分的预测，意味着随机效应设为零，请使用 {opt fixedonly} 选项。

{phang}
{opt xb} 计算模型固定部分的线性预测。

{phang}
{opt stdp} 计算固定部分线性预测的标准误。

{phang}
{opt pearson} 计算皮尔逊残差。绝对值较大的皮尔逊残差可能表明拟合不足。默认情况下，残差包括模型的固定部分和随机部分。{opt fixedonly} 选项将计算修改为仅包含固定部分。

{phang}
{opt deviance} 计算偏差残差。偏差残差由 {help xtmelogit postestimation##MN1989:McCullagh and Nelder (1989)} 推荐，具有最佳的拟合优度检验属性。如果模型正确指定，它们大约是正态分布的。它们可以与拟合值或协变量绘制以检查模型的拟合程度。默认情况下，残差包括模型的固定部分和随机部分。{opt fixedonly} 选项将计算修改为仅包含固定部分。

{phang}
{opt anscombe} 计算安斯科姆残差，这些残差旨在紧密遵循正态分布。默认情况下，残差包括模型的固定部分和随机部分。{opt fixedonly} 选项将计算修改为仅包含固定部分。

{phang}
{opt fixedonly} 修改预测为仅包含模型的固定部分，相当于将所有随机效应设为零；见上文。

{phang}
{opt nooffset} 仅在您为 {cmd:xtmelogit} 指定了 {opth offset(varname)} 时相关。它修改 {cmd:predict} 的计算，以使其忽略偏移变量；线性预测被视为 xb (+ Zu) 而不是 xb (+ Zu) + offset。


{marker syntax_estat_group}{...}
{marker estatgroup}{...}
{title:estat group 的语法}

{p 8 14 2}
{cmd:estat} {opt gr:oup} 


INCLUDE help menu_estat


{marker syntax_estat_recov}{...}
{marker estatcov}{...}
{title:estat recovariance 的语法}

{p 8 14 2}
{cmd:estat} {opt recov:ariance} [{cmd:,} {opt l:evel(levelvar)}
          {opt corr:elation} {help matlist_zh:{it:matlist_options}}]


INCLUDE help menu_estat


{marker options_estat_recov}{...}
{title:estat recovariance 的选项}

{phang}
{opt level(levelvar)} 指定要显示的随机效应协方差矩阵的模型层级。默认情况下，显示模型中所有层的协方差矩阵。{it:levelvar} 是模型层级的名称，可以是描述该层级分组的变量名称，也可以是 {cmd:_all}，这是一个特殊标识，指代包含所有估计数据的组。

{phang}
{opt correlation} 将协方差矩阵显示为相关矩阵。

{phang}
{it:matlist_options} 控制矩阵（或矩阵）的显示方式。有关详细信息，请参见 {help matlist_zh:[P] matlist}。


{marker syntax_estat_icc}{...}
{marker estaticc}{...}
{title:estat icc 的语法}

{p 8 14 2}
{cmd:estat} {opt icc} [{cmd:,} {opt l:evel(#)}]


INCLUDE help menu_estat


{marker option_estat_icc}{...}
{title:estat icc 的选项}

{phang}
{opt level(#)}
指定置信区间的置信水平（以百分比表示）。默认值为 {cmd:level(95)}，或者由 {helpb set level} 设置。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse bangladesh}{p_end}
{phang2}{cmd:. xtmelogit c_use urban age child* || district: urban, covariance(unstructured)}{p_end}

{pstd}层级 {cmd:district} 的随机效应协方差矩阵{p_end}
{phang2}{cmd:. estat recovariance}{p_end}

{pstd}层级 {cmd:district} 的随机效应相关矩阵{p_end}
{phang2}{cmd:. estat recovariance, correlation}{p_end}

{pstd}随机效应的预测{p_end}
{phang2}{cmd:. predict re_urban re_cons, reffects}{p_end}

{pstd}计算条件类内相关{p_end}
{phang2}{cmd:. estat icc}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse towerlondon, clear}{p_end}
{phang2}{cmd:. xtmelogit dtlm difficulty i.group || family: || subject:}{p_end}

{pstd}总结嵌套组的组成{p_end}
{phang2}{cmd:. estat group}{p_end}

{pstd}预测概率，结合随机效应{p_end}
{phang2}{cmd:. predict p}{p_end}

{pstd}预测概率，忽略被试和家庭效应{p_end}
{phang2}{cmd:. predict p_fixed, fixedonly}{p_end}

{pstd}计算剩余类内相关{p_end}
{phang2}{cmd:. estat icc}{p_end}

    {hline}


{marker saved_results}{...}
{title:保存的结果}

{pstd}
{cmd:estat recovariance} 将最后显示的随机效应协方差矩阵保存在 {cmd:r(cov)} 中，或者如果它以相关矩阵显示，则保存在 {cmd:r(corr)} 中。

{pstd}
{cmd:estat icc} 将以下内容保存在 {cmd:r()} 中：

{synoptset 13 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(icc}{it:#}{cmd:)}}层级-{it:#} 的类内相关{p_end}
{synopt:{cmd:r(se}{it:#}{cmd:)}}层级-{it:#} 的类内相关的标准误{p_end}
{synopt:{cmd:r(level)}}置信区间的置信水平{p_end}
{p2colreset}{...}

{synoptset 13 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(label}{it:#}{cmd:)}}层级 {it:#} 的标签{p_end}
{p2colreset}{...}

{synoptset 13 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(ci}{it:#}{cmd:)}}层级-{it:#} 的类内相关的置信区间（下限和上限）向量{p_end}
{p2colreset}{...}

{pstd}
对于 {it:G} 级嵌套模型，{it:#} 可以是 2 到 {it:G} 之间的任何整数。


{marker reference}{...}
{title:参考文献}

{marker MN1989}{...}
{phang}
McCullagh, P., 和 J. A. Nelder. 1989.
{browse "http://www.stata.com/bookstore/glm.html":{it:广义线性模型}. 第 2 版.}
伦敦：Chapman & Hall/CRC。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtmelogit_postestimation.sthlp>}