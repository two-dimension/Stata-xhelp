{smcl}
{* *! version 1.2.3  16jun2014}{...}
{viewerdialog predict "dialog xtmepoisson_p"}{...}
{viewerdialog estat "dialog xtmepoisson_estat"}{...}
{vieweralsosee "[XT] xtmepoisson" "help xtmepoisson_zh"}{...}
{viewerjumpto "Description" "xtmepoisson postestimation##description"}{...}
{viewerjumpto "Special-interest postestimation commands" "xtmepoisson postestimation##special"}{...}
{viewerjumpto "" "--"}{...}
{viewerjumpto "Syntax for predict" "xtmepoisson postestimation##syntax_predict"}{...}
{viewerjumpto "Options for predict" "xtmepoisson postestimation##options_predict"}{...}
{viewerjumpto "" "--"}{...}
{viewerjumpto "Syntax for estat group" "xtmepoisson postestimation##syntax_estat_group"}{...}
{viewerjumpto "Syntax for estat recovariance" "xtmepoisson postestimation##syntax_estat_recov"}{...}
{viewerjumpto "Options for estat recovariance" "xtmepoisson postestimation##options_estat_recov"}{...}
{viewerjumpto "" "--"}{...}
{viewerjumpto "Examples" "xtmepoisson postestimation##examples"}{...}
{viewerjumpto "Saved results" "xtmepoisson postestimation##saved_results"}{...}
{viewerjumpto "Reference" "xtmepoisson postestimation##reference"}
{help xtmepoisson_postestimation:English Version}
{hline}{...}
{pstd}
{cmd:xtmepoisson} 已重命名为 {help meqrpoisson_zh}; 见 {manhelp meqrpoisson_postestimation ME:meqrpoisson postestimation}。
{cmd:xtmepoisson} 仍然可以使用，但自 Stata 13 起不再是 Stata 的官方部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。

{hline}

{title:标题}

{p2colset 5 40 42 2}{...}
{p2col :{hi:[XT] xtmepoisson postestimation} {hline 2}}xtmepoisson 的后估计工具{p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
在 {cmd:xtmepoisson} 后有以下特别关注的后估计命令：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb xtmepoisson postestimation##estatgroup:estat group}}总结嵌套组的组成{p_end}
{synopt :{helpb xtmepoisson postestimation##estatcov:estat recovariance}}显示估计的随机效应协方差矩阵{p_end}
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
{synopt :{helpb xtmepoisson postestimation##predict:predict}}预测、残差、影响统计以及其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker special}{...}
{title:特别关注的后估计命令}

{pstd}
{cmd:estat group} 报告组的数量以及每个模型层的最小、平均和最大组大小。模型层由数据中相应的组变量标识。由于组被视为嵌套，因此此摘要中的信息可能与您自己 {cmd:tabulate} 每个组变量所得到的信息有所不同。

{pstd}
{cmd:estat recovariance} 显示每个层的随机效应的估计方差-协方差矩阵。随机效应可以是随机截距，此时矩阵的相应行和列标记为 _cons，或随机系数，此时标签为数据中相关变量的名称。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 4 4 2}
获取估计随机效应或其标准误的语法

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
{syntab :主要}
{synopt :{opt m:u}}预测的均值；默认值{p_end}
{synopt :{cmd:xb}}xb，模型固定部分的线性预测{p_end}
{synopt :{cmd:stdp}}固定部分线性预测 xb 的标准误{p_end}
{synopt :{opt p:earson}}Pearson 残差{p_end}
{synopt :{opt d:eviance}}偏差残差{p_end}
{synopt :{opt a:nscombe}}Anscombe 残差{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主要}

{phang}
{opt reffects} 计算随机效应的后验模态估计。默认情况下，将计算模型中所有随机效应的估计。但是，如果指定 {opt level(levelvar)} 选项，则仅计算模型中级别 {it:levelvar} 的估计。例如，如果 {cmd:class} 嵌套在 {cmd:school} 中，则

{p 12 16 2}{cmd:. predict b*, reffects level(school)}{p_end}

{pmore}
将会在 {cmd:school} 级别上生成随机效应的估计。您必须指定 {it:q} 个新变量，其中 {it:q} 是模型（或级别）中的随机效应项的数量。但是，指定 {it:stub}{cmd:*} 让 Stata 为您命名变量 {it:stub}{cmd:1}、{it:stub}{cmd:2}、...、{it:stubq} 要容易得多。

{phang}
{opt reses} 计算通过使用 {opt reffects} 选项获得的随机效应估计的标准误。默认情况下，将计算模型中所有随机效应的标准误。但是，如果指定 {opt level(levelvar)} 选项，则仅计算模型中级别 {it:levelvar} 的标准误。例如，如果 {cmd:class} 嵌套在 {cmd:school} 中，则

{p 12 16 2}{cmd:. predict se*, reses level(school)}{p_end}

{pmore}
将在 {cmd:school} 级别上生成标准误。您必须指定 {it:q} 个新变量，其中 {it:q} 是模型（或级别）中的随机效应项的数量。但是，指定 {it:stub}{cmd:*} 让 Stata 为您命名变量 {it:stub}{cmd:1}、{it:stub}{cmd:2}、...、{it:stubq} 要容易得多。

{pmore}
{cmd:reffects} 和 {cmd:reses} 选项通常会一次生成多个新变量。当这种情况发生时，生成的变量中包含的随机效应（或标准误）与 {cmd:xtmepoisson} 输出中列出的方差成分的顺序相对应。尽管如此，检查生成变量的变量标签（例如使用 {cmd:describe} 命令）在解读哪些变量对应于模型中的哪些项时可能是有用的。

{phang}
{opt level(levelvar)} 指定要获取预测的随机效应及其标准误的模型层。{it:levelvar} 是模型层的名称，或描述该层分组的变量名称，或 {cmd:_all}，这是一个特殊的指定，表示包括所有估计数据的组。

{marker mu}{...}
{phang} 
{opt mu}（默认）计算预测的均值，即预测计数。默认情况下，这是基于包括 {it:both} 固定效应和随机效应的线性预测，预测的均值以估计的随机效应的值为条件。如果您希望仅包含模型的固定部分来生成预测，即希望将随机效应设为零，请使用 {opt fixedonly} 选项（见 {help xtmepoisson postestimation##fixedonly:below}）。

{phang}
{opt xb} 计算模型固定部分的线性预测。 

{phang}
{opt stdp} 计算固定部分线性预测的标准误。

{phang}
{opt pearson} 计算 Pearson 残差。绝对值较大的 Pearson 残差可能表示拟合不足。默认情况下，残差包括模型的固定部分和随机部分。{opt fixedonly} 选项将计算修改为仅包括固定部分。

{phang}
{opt deviance} 计算偏差残差。偏差残差被推荐为 {help xtmepoisson postestimation##MN1989:McCullagh 和 Nelder (1989)} 在检查 GLM 拟合优度方面具有最佳属性。当模型正确指定时，它们大约呈正态分布。它们可以相对于拟合值或相对于协变量进行绘图，以检查模型的拟合。默认情况下，残差包括模型的固定部分和随机部分。{opt fixedonly} 选项将计算修改为仅包括固定部分。

{phang}
{opt anscombe} 计算 Anscombe 残差，这些残差设计上与正态分布紧密相随。默认情况下，残差包括模型的固定部分和随机部分。{opt fixedonly} 选项将计算修改为仅包括固定部分。

{marker fixedonly}{...}
{phang}
{opt fixedonly} 修改预测，仅包含模型的固定部分，等同于将所有随机效应设为零；见 {helpb xtmepoisson postestimation##mu:mu} 选项。

{phang}
{opt nooffset} 仅在您为 {cmd:xtmepoisson} 指定了 {cmd:offset(}{help varname_zh:{it:varname_o}}{cmd:)} 或 {cmd:exposure(}{it:varname_e}{cmd:)} 时相关。它修改 {cmd:predict} 进行的计算，以便忽略偏置/曝光变量；线性预测视为 xb (+ Zu)，而不是 xb (+ Zu) + offset (或 + ln(exposure))。


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
{opt level(levelvar)} 指定要显示的随机效应协方差矩阵的模型层。默认情况下，显示模型中所有层的协方差矩阵。{it:levelvar} 是模型层的名称，可以是描述该层分组的变量名称，也可以是 {cmd:_all}，这是一个特殊的指定，表示包括所有估计数据的组。

{phang}
{opt correlation} 将协方差矩阵显示为相关矩阵。

{phang}
{it:matlist_options} 控制矩阵（或矩阵）的显示方式。有关详细信息，请参见 {help matlist_zh:[P] matlist}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse epilepsy}{p_end}
{phang2}{cmd:. xtmepoisson seizures treat lbas lbas_trt lage visit || subject: visit, cov(unstructured) intpoints(9)}{p_end}

{pstd}级别 {cmd:subject} 的随机效应协方差矩阵{p_end}
{phang2}{cmd:. estat recovariance}{p_end}

{pstd}级别 {cmd:subject} 的随机效应相关矩阵{p_end}
{phang2}{cmd:. estat recovariance, correlation}{p_end}

{pstd}随机效应的预测{p_end}
{phang2}{cmd:. predict re_visit re_cons, reffects}{p_end}

{pstd}预测的计数，考虑随机效应{p_end}
{phang2}{cmd:. predict n}{p_end}

{pstd}预测的计数，将所有随机效应设为零{p_end}
{phang2}{cmd:. predict n_fixed, fixedonly}{p_end}
    {hline}


{marker saved_results}{...}
{title:保存的结果}

{pstd}
{cmd:estat recovariance} 将最后显示的随机效应协方差矩阵保存在 {cmd:r(cov)} 中，或者如果作为相关矩阵显示，则保存在 {cmd:r(corr)} 中。


{marker reference}{...}
{title:参考文献}

{marker MN1989}{...}
{phang}
McCullagh, P. 和 J. A. Nelder. 1989.
{browse "http://www.stata.com/bookstore/glm.html":{it:广义线性模型}. 第 2 版.}
伦敦: Chapman & Hall/CRC。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtmepoisson_postestimation.sthlp>}