{smcl}
{* *! version 1.2.0  23may2018}{...}
{viewerdialog predict "dialog meqrpoisson_p"}{...}
{viewerdialog estat "dialog meqrpoisson_estat"}{...}
{vieweralsosee "以前文档" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] meqrpoisson" "help meqrpoisson_zh"}{...}
{viewerjumpto "后估计命令" "meqrpoisson postestimation##description"}{...}
{viewerjumpto "预测" "meqrpoisson postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "meqrpoisson postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "meqrpoisson postestimation##examples"}{...}
{viewerjumpto "参考" "meqrpoisson postestimation##reference"}
{help meqrpoisson_postestimation:English Version}
{hline}{...}
{p2colset 1 36 38 2}{...}
{p2col:{bf:[ME] meqrpoisson 后估计} {hline 2}}meqrpoisson 的后估计工具{p_end}
{p2col:}({browse "http://www.stata.com/manuals15/memeqrpoissonpostestimation.pdf":查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}

{pstd}
{cmd:meqrpoisson} 仍然可以使用，但自 Stata 16 以来，它不再是 Stata 的官方部分。这是原始帮助文档，我们将不再更新，因此某些链接可能已无效。

{pstd}
有关 {cmd:meqrpoisson} 的推荐替代方案，请参见 {help mepoisson_zh}。


{marker description}{...}
{title:后估计命令}

{pstd}
在 {cmd:meqrpoisson} 之后，以下后估计命令特别重要：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb estat group}}总结嵌套组的组成{p_end}
{synopt :{helpb estat recovariance}}显示估计的随机效应协方差矩阵{p_end}
{synopt :{helpb me estat sd:estat sd}}以标准差和相关性显示方差分量{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也可用：

{synoptset 18}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含帮助 post_contrast
包含帮助 post_estatic
包含帮助 post_estatsum
包含帮助 post_estatvce
包含帮助 post_estimates
包含帮助 post_hausman
包含帮助 post_lincom
包含帮助 post_lrtest
{synopt:{helpb meqrpoisson_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含帮助 post_marginsplot
包含帮助 post_nlcom
{synopt :{helpb meqrpoisson postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
包含帮助 post_predictnl
包含帮助 post_pwcompare
包含帮助 post_test
包含帮助 post_testnl
{synoptline}
{p2colreset}{...}


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 4 4 2}
获取估计随机效应及其标准误的语法

{p 8 16 2}
{cmd:predict} {dtype}
{it:{help meqrpoisson_postestimation##newvarsspec:newvarsspec}}
{ifin}
{cmd:,}
{opt ref:fects}
[{opth reses:(meqrpoisson_postestimation##newvarsspec:newvarsspec)}
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
{synopt :{opt mu}}预测的均值；默认值{p_end}
{synopt :{cmd:xb}}仅用于模型的固定部分的线性预测{p_end}
{synopt :{cmd:stdp}}固定部分线性预测的标准误{p_end}
{synopt :{opt pea:rson}}Pearson 残差{p_end}
{synopt :{opt dev:iance}}偏差残差{p_end}
{synopt :{opt ans:combe}}Anscombe 残差{p_end}
{synoptline}
{p2colreset}{...}
包含帮助 esample


包含帮助 menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测值，如均值响应；线性预测；标准误；
以及 Pearson、偏差和 Anscombe 残差。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{marker reffects}{...}
{phang}
{opt reffects} 计算随机效应的后验模态估计。默认情况下，计算模型中所有随机效应的估计。然而，如果指定了 {opt relevel(levelvar)} 选项，则仅计算模型中级别 {it:levelvar} 的估计。例如，如果 {cmd:class} 在 {cmd:school} 中嵌套，则输入

{p 12 16 2}{cmd:. predict b*, reffects relevel(school)}{p_end}

{pmore}
将会在学校级别生成随机效应的估计。您必须指定 {it:q} 个新变量，其中 {it:q} 是模型中随机效应项的数量（或级别）。但是，简单地指定 {it:stub}{cmd:*} 让 Stata 为您命名变量 {it:stub}{cmd:1}、{it:stub}{cmd:2}、...、{it:stubq} 这要容易得多。

{phang}
{opth reses:(meqrpoisson_postestimation##newvarsspec:newvarsspec)}
计算随机效应估计的标准误。默认情况下，计算模型中所有随机效应的标准误。然而，如果指定了 {opt relevel(levelvar)} 选项，则仅计算模型中级别 {it:levelvar} 的标准误；请参见 {helpb meqrpoisson postestimation##reffects:reffects} 选项。

{pmore}
您必须指定 {it:q} 个新变量，其中 {it:q} 是模型中随机效应项的数量（或级别）。但是，简单地指定 {it:stub}{cmd:*} 让 Stata 为您命名变量 {it:stub}{cmd:1}、{it:stub}{cmd:2}、...、{it:stubq} 这要容易得多。新变量将具有与相应随机效应变量相同的存储类型。

{pmore}
{cmd:reffects} 和 {cmd:reses()} 选项通常会一次生成多个新变量。当这种情况发生时，生成变量中包含的随机效应（或标准误）对应于 {cmd:meqrpoisson} 输出中列出的方差成分的顺序。尽管如此，检查生成变量的变量标签（例如用 {cmd:describe} 命令）对于解读与模型中各项对应的变量也是很有用的。

{phang}
{opt relevel(levelvar)} 指定获取随机效应及其标准误的模型级别。{it:levelvar} 是模型级别的名称，既可以是描述该级别分组的变量名称，也可以是 {cmd:_all}，这是一个特殊标识，表示包括所有估计数据的组。

{marker mu}{...}
{phang} 
{opt mu}，默认情况下，计算预测均值，即预测计数。默认情况下，这基于包含固定效应和随机效应的线性预测，并且预测均值是以随机效应的值为条件的。如果只想包含模型的固定部分的预测，即希望随机效应设为 0，请使用 {cmd:fixedonly} 选项（请参见 {help meqrpoisson postestimation##fixedonly:below}）。

{phang}
{opt xb} 根据模型中估计的固定效应（系数）计算线性预测。这等同于将模型中的所有随机效应固定为其理论（先验）均值 0。

{phang}
{opt stdp} 计算固定效应线性预测的标准误。

{phang}
{opt pearson} 计算 Pearson 残差。绝对值较大的 Pearson 残差可能表明拟合不佳。默认情况下，残差包括模型的固定部分和随机部分。{opt fixedonly} 选项修改计算，仅包含固定部分。

{phang}
{opt deviance} 计算偏差残差。偏差残差被 {help meqrpoisson postestimation##MN1989:McCullagh and Nelder (1989)} 推荐为检查广义线性模型拟合优度的最佳属性。如果模型正确指定，它们大致呈正态分布。可以将它们绘制与拟合值或协变量作图，以检查模型的拟合。默认情况下，残差包括模型的固定部分和随机部分。{opt fixedonly} 选项修改计算，仅包含固定部分。

{phang}
{opt anscombe} 计算 Anscombe 残差，旨在紧密跟随正态分布。默认情况下，残差包括模型的固定部分和随机部分。{opt fixedonly} 选项修改计算，仅包含固定部分。

{phang}
{opt nooffset} 仅在您为 {cmd:meqrpoisson} 指定了 {cmd:offset(}{help varname_zh:{it:varname_o}}{cmd:)} 或 {cmd:exposure(}{it:varname_e}{cmd:)} 时相关。它会修改 {cmd:predict} 的计算，使其忽略偏移/暴露变量；线性预测视为 xb 而不是 xb + offset 或 xb + exposure，具体视情况而定。

{marker fixedonly}{...}
{phang}
{opt fixedonly} 修改预测，仅包含模型的固定部分，相当于将所有随机效应设为 0；请参见 {helpb meqrpoisson postestimation##mu:mu} 选项。


包含帮助 syntax_margins1

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{cmd:xb}}仅用于模型的固定部分的线性预测；默认值{p_end}
{synopt :{opt ref:fects}}与 {cmd:margins} 不允许同时使用{p_end}
{synopt :{cmd:mu}}与 {cmd:margins} 不允许同时使用{p_end}
{synopt :{cmd:stdp}}与 {cmd:margins} 不允许同时使用{p_end}
{synopt :{opt pea:rson}}与 {cmd:margins} 不允许同时使用{p_end}
{synopt :{opt dev:iance}}与 {cmd:margins} 不允许同时使用{p_end}
{synopt :{opt ans:combe}}与 {cmd:margins} 不允许同时使用{p_end}
{synoptline}
{p2colreset}{...}

包含帮助 notes_margins


包含帮助 menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计线性预测的响应边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse epilepsy}{p_end}
{phang2}{cmd:. meqrpoisson seizures treat lbas lbas_trt lage visit || subject: visit, cov(unstructured) intpoints(9)}{p_end}

{pstd}级别 {cmd:subject} 的随机效应协方差矩阵{p_end}
{phang2}{cmd:. estat recovariance}{p_end}

{pstd}级别 {cmd:subject} 的随机效应相关矩阵{p_end}
{phang2}{cmd:. estat recovariance, correlation}{p_end}

{pstd}随机效应的预测{p_end}
{phang2}{cmd:. predict re_visit re_cons, reffects}{p_end}

{pstd}考虑随机效应的预测计数{p_end}
{phang2}{cmd:. predict n}{p_end}

{pstd}将所有随机效应设为零的预测计数{p_end}
{phang2}{cmd:. predict n_fixed, fixedonly}{p_end}


{marker reference}{...}
{title:参考}

{marker MN1989}{...}
{phang}
McCullagh, P., 和 J. A. Nelder. 1989.
{browse "http://www.stata.com/bookstore/glm.html":{it:广义线性模型}. 第2版.}
伦敦: Chapman & Hall/CRC.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meqrpoisson_postestimation.sthlp>}