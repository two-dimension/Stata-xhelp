{smcl}
{* *! version 1.3.0  23may2018}{...}
{viewerdialog predict "dialog meqrlogit_p"}{...}
{viewerdialog estat "dialog meqrlogit_estat"}{...}
{vieweralsosee "以前的文档" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] meqrlogit" "help meqrlogit_zh"}{...}
{viewerjumpto "后估计命令" "meqrlogit postestimation##description"}{...}
{viewerjumpto "预测" "meqrlogit postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "meqrlogit postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "meqrlogit postestimation##examples"}{...}
{viewerjumpto "参考" "meqrlogit postestimation##reference"}
{help meqrlogit_postestimation:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[ME] meqrlogit 后估计} {hline 2}}meqrlogit 的后估计工具{p_end}
{p2col:}({browse "http://www.stata.com/manuals15/memeqrlogitpostestimation.pdf":查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{pstd}
{cmd:meqrlogit} 继续有效，但从 Stata 16 开始，它不再是 Stata 的官方部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。

{pstd}
请参见 {help melogit_zh} 以获取 {cmd:meqrlogit} 的推荐替代方案。


{marker description}{...}
{title:后估计命令}

{pstd}
以下后估计命令在使用 {cmd:meqrlogit} 后特别重要：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb estat group}}总结嵌套组的组成{p_end}
{synopt :{helpb estat icc}}估计类内相关性{p_end}
{synopt :{helpb estat recovariance}}显示估计的随机效应协方差矩阵{p_end}
{synopt :{helpb me estat sd:estat sd}}显示方差成分作为标准差和相关性{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也可用：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_hausman
INCLUDE help post_lincom
INCLUDE help post_lrtest
{synopt:{helpb meqrlogit_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb meqrlogit postestimation##predict:predict}}预测值、残差、影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 4 4 2}
获取估计随机效应及其标准误的语法

{p 8 16 2}
{cmd:predict} {dtype}
{it:{help meqrlogit_postestimation##newvarsspec:newvarsspec}}
{ifin}
{cmd:,} {opt ref:fects}
[{opth reses:(meqrlogit_postestimation##newvarsspec:newvarsspec)}
{opt relev:el(levelvar)}]


{p 4 4 2}
获取其他预测的语法

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} 
[{cmd:,} {it:statistic}
{opt nooff:set}
{opt fixed:only}]


{marker newvarsspec}{...}
{phang}
{it:newvarsspec} 是 {it:stub}{cmd:*} 或 {it:{help newvarlist_zh}}。

{synoptset 13 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主要}
{synopt :{opt mu}}均值响应；默认值{p_end}
{synopt :{cmd:xb}}仅用于模型的固定部分的线性预测{p_end}
{synopt :{cmd:stdp}}固定部分线性预测的标准误{p_end}
{synopt :{opt pea:rson}}皮尔逊残差{p_end}
{synopt :{opt dev:iance}}偏差残差{p_end}
{synopt :{opt ans:combe}}安斯科姆残差{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含诸如均值响应、线性预测、标准误以及皮尔逊、偏差和安斯科姆残差等预测值。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{marker reffects}{...}
{phang}
{opt reffects} 计算随机效应的后验模态估计。默认情况下，模型中的所有随机效应的估计都会计算。但是，如果指定了 {opt relevel(levelvar)} 选项，则仅计算模型中级别 {it:levelvar} 的估计。例如，如果 {cmd:class} 嵌套在 {cmd:school} 中，则输入

{p 12 16 2}{cmd:. predict b*, reffects relevel(school)}{p_end}

{pmore}
将产生在学校级别的随机效应估计。您必须指定 {it:q} 个新变量，其中 {it:q} 是模型（或级别）中随机效应项的数量。然而，更简单的方法是只需指定 {it:stub}{cmd:*}，让 Stata 为您命名变量 {it:stub}{cmd:1}、{it:stub}{cmd:2}、...、{it:stubq}。

{phang}
{opth reses:(meqrlogit_postestimation##newvarsspec:newvarsspec)}
计算随机效应估计的标准误。默认情况下，模型中所有随机效应的标准误都会计算。但是，如果指定了 {opt relevel(levelvar)} 选项，则仅计算模型中级别 {it:levelvar} 的标准误；请参见 {helpb meqrlogit postestimation##reffects:reffects} 选项。

{pmore}
您必须指定 {it:q} 个新变量，其中 {it:q} 是模型（或级别）中随机效应项的数量。然而，更简单的方法是只需指定 {it:stub}{cmd:*}，让 Stata 为您命名变量 {it:stub}{cmd:1}、{it:stub}{cmd:2}、...、{it:stubq}。新变量将与相应的随机效应变量具有相同的存储类型。

{pmore}
{cmd:reffects} 和 {cmd:reses()} 选项通常会一次生成多个新变量。当发生这种情况时，生成变量中包含的随机效应（或标准误）对应于 {cmd:meqrlogit} 输出中列出方差成分的顺序。尽管如此，检查生成变量的标签（例如使用 {cmd:describe} 命令）对于解读哪些变量对应于模型中的哪些项是有帮助的。

{phang}
{opt relevel(levelvar)} 指定要获得随机效应及其标准误的模型级别。{it:levelvar} 是模型级别的名称，既可以是描述该级别分组的变量名称，也可以是 {cmd:_all}，这是一个特殊的标识，表示由所有估计数据组成的组。

{marker mu}{...}
{phang} 
{opt mu}，默认情况下，计算预测均值。默认情况下，这基于包括固定效应和随机效应的线性预测，并且预测均值是条件于随机效应的值。如果您希望仅包含模型的固定部分的预测，即希望随机效应设置为 0，请使用 {cmd:fixedonly} 选项（请参见 {help meqrlogit postestimation##fixedonly:below}）。

{phang}
{opt xb} 基于模型中估计的固定效应（系数）计算线性预测。这等同于将模型中的所有随机效应固定为其理论（先验）均值 0。

{phang}
{opt stdp} 计算固定效应线性预测的标准误。

{phang}
{opt pearson} 计算皮尔逊残差。绝对值较大的皮尔逊残差可能表明拟合欠佳。默认情况下，残差包括模型的固定部分和随机部分。{opt fixedonly} 选项将计算修改为仅包含固定部分。

{phang}
{opt deviance} 计算偏差残差。偏差残差被推荐为
{help meqrlogit postestimation##MN1989:McCullagh and Nelder (1989)}
检查广义线性模型拟合优度的最佳特性。如果模型被正确指定，它们大约呈正态分布。它们可以绘制与拟合值或与协变量的关系，以检查模型的拟合情况。默认情况下，残差包括模型的固定部分和随机部分。{opt fixedonly} 选项将计算修改为仅包含固定部分。

{phang}
{opt anscombe} 计算安斯科姆残差，旨在紧密遵循正态分布。默认情况下，残差包括模型的固定部分和随机部分。{opt fixedonly} 选项将计算修改为仅包含固定部分。

{phang}
{opt nooffset} 仅在您为 {cmd:meqrlogit} 指定了 {opth offset(varname)} 时相关。它修改 {cmd:predict} 进行的计算，以忽略偏移变量；线性预测被视为 xb 而不是 xb + 偏移。

{marker fixedonly}{...}
{phang}
{opt fixedonly} 修改预测以仅包括模型的固定部分，相当于将所有随机效应设为 0；请参见 {helpb meqrlogit postestimation##mu:mu} 选项。


INCLUDE help syntax_margins1

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{cmd:xb}}仅用于模型固定部分的线性预测；默认值{p_end}
{synopt :{opt ref:fects}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt reses}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{cmd:mu}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{cmd:stdp}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt pea:rson}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt dev:iance}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt ans:combe}}与 {cmd:margins} 不允许使用{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计线性预测的响应边际。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse bangladesh}{p_end}
{phang2}{cmd:. meqrlogit c_use urban age child* || district: urban, covariance(unstructured)}{p_end}

{pstd}级别 {cmd:district} 的随机效应协方差矩阵{p_end}
{phang2}{cmd:. estat recovariance}{p_end}

{pstd}级别 {cmd:district} 的随机效应相关矩阵{p_end}
{phang2}{cmd:. estat recovariance, correlation}{p_end}

{pstd}随机效应的预测{p_end}
{phang2}{cmd:. predict re_urban re_cons, reffects}{p_end}

{pstd}计算条件类内相关性{p_end}
{phang2}{cmd:. estat icc}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse towerlondon, clear}{p_end}
{phang2}{cmd:. meqrlogit dtlm difficulty i.group || family: || subject:}{p_end}

{pstd}总结嵌套组的组成{p_end}
{phang2}{cmd:. estat group}{p_end}

{pstd}包含随机效应的预测概率{p_end}
{phang2}{cmd:. predict p}{p_end}

{pstd}忽略主体和家庭效应的预测概率{p_end}
{phang2}{cmd:. predict p_fixed, fixedonly}{p_end}

{pstd}计算残差类内相关性{p_end}
{phang2}{cmd:. estat icc}{p_end}

    {hline}


{marker reference}{...}
{title:参考}

{marker MN1989}{...}
{phang}
McCullagh, P., 和 J. A. Nelder. 1989.
{browse "http://www.stata.com/bookstore/glm.html":{it:广义线性模型}. 第2版.}
伦敦：Chapman & Hall/CRC。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meqrlogit_postestimation.sthlp>}