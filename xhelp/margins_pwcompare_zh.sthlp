{smcl}
{* *! version 1.0.15  30may2019}{...}
{viewerdialog margins "dialog margins"}{...}
{vieweralsosee "[R] margins, pwcompare" "mansection R margins,pwcompare"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] contrast" "help contrast_zh"}{...}
{vieweralsosee "[R] margins" "help margins_zh"}{...}
{vieweralsosee "[R] margins, contrast" "help margins_contrast_zh"}{...}
{vieweralsosee "[R] margins postestimation" "help margins_postestimation_zh"}{...}
{vieweralsosee "[R] pwcompare" "help pwcompare_zh"}{...}
{viewerjumpto "Syntax" "margins pwcompare##syntax"}{...}
{viewerjumpto "Menu" "margins pwcompare##menu"}{...}
{viewerjumpto "Description" "margins pwcompare##description"}{...}
{viewerjumpto "Suboptions" "margins pwcompare##suboptions"}{...}
{viewerjumpto "Examples" "margins pwcompare##examples"}{...}
{viewerjumpto "Stored results" "margins pwcompare##results"}
{help margins_pwcompare:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[R] margins, pwcompare} {hline 2}}边际的成对比较
{p_end}
{p2col:}({mansection R margins,pwcompare:查看完整PDF手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:margins} [{it:{help fvvarlist_zh:marginlist}}] 
{ifin}
[{it:{help margins pwcompare##weight:weight}}]
[{cmd:,} 
{opt pwcomp:are}
{it:{help margins##response_options:margins_options}}] 

{p 8 16 2}
{cmd:margins} [{it:{help fvvarlist_zh:marginlist}}] 
{ifin}
[{it:{help margins pwcompare##weight:weight}}]
[{cmd:,} 
{opt pwcomp:are}{cmd:(}{it:{help margins_pwcompare##pwcompare_options:suboptions}}{cmd:)}
{it:{help margins##response_options:margins_options}}] 

{pstd}
其中 {it:marginlist} 是出现在当前估计结果中的因素变量或交互的列表。变量可以带有或不带 {cmd:i.} 前缀，并且您可以使用任何因子变量的语法：

		. {cmd:margins i.sex i.group i.sex#i.group, pwcompare}

		. {cmd:margins sex group sex#i.group, pwcompare}

		. {cmd:margins sex##group, pwcompare}

{marker pwcompare_options}{...}
{synoptset 20 tabbed}{...}
{synopthdr:子选项}
{synoptline}
{syntab :成对比较}
{synopt:{opt ci:effects}}显示带有置信区间的效应表；
     默认选项{p_end}
{synopt:{opt pv:effects}}显示带有p值的效应表{p_end}
{synopt:{opt eff:ects}}显示带有置信区间和p值的效应表{p_end}
{synopt:{opt cim:argins}}显示带有置信区间的边际及其效应表{p_end}
{synopt:{opt group:s}}显示带有组代码的边际效应表{p_end}
{synopt:{opt sort}}对每个术语中的边际或对比进行排序{p_end}
{synoptline}

{marker weight}{...}
{pstd}
允许使用 {cmd:fweight}s, {cmd:aweight}s, {cmd:iweight}s 和 {cmd:pweight}s；
请参见 {help weight_zh}.


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后估计}


{marker description}{...}
{title:描述}

{pstd}
使用 {opt pwcompare} 选项的 {cmd:margins} 执行边际的成对比较。{cmd:margins, pwcompare} 扩展了 {cmd:pwcompare} 的能力，以适用于任何非线性响应、预测边际或其他可以通过 {cmd:margins} 估计的边际。

{marker suboptions}{...}
{title:子选项}

{dlgtab:成对比较}

{phang} 
{opt cieffects}
指定报告带有标准误差和置信区间的成对比较的表格。这是默认选项。

{phang} 
{opt pveffects} 
指定报告带有标准误差、检验统计量和p值的成对比较的表格。

{phang}
{opt effects}
指定报告带有标准误差、检验统计量、p值和置信区间的成对比较的表格。

{phang}
{opt cimargins} 
指定报告带有标准误差和置信区间的边际表格。

{phang}
{opt groups} 
指定报告带有标准误差和组代码的边际表格。具有相同字母的边际在指定的显著性水平下没有显著差异。

{phang}
{opt sort} 
指定报告的表格按边际或对比在每个术语中进行排序。


{marker examples}{...}
{title:示例}

{pstd}
这些示例旨在快速参考。如需有关 {cmd:margins,} {cmd:pwcompare} 的概念概述及示例讨论，请参见 {it:{mansection R margins,pwcompareRemarksandexamples:备注和示例}} 中的 {bf:[R] margins, pwcompare}。

{pstd}设置{p_end}
{phang2}{cmd:. webuse nhanes2}{p_end}
{phang2}{cmd:. logistic highbp sex##agegrp##c.bmi}{p_end}

{pstd}在六个年龄组中，根据条件高血压的平均预测概率的成对比较{p_end}
{phang2}{cmd:. margins agegrp, pwcompare}{p_end}

{pstd}带有组代码的预测边际，表示没有显著差异的边际{p_end}
{phang2}{cmd:. margins agegrp, pwcompare(group)}{p_end}

{pstd}使用Bonferroni方法进行多重比较的边际成对比较{p_end}
{phang2}{cmd:. margins agegrp, pwcompare(group) mcompare(bonferroni)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:margins,} {cmd:pwcompare} 在 {cmd:r()} 中存储以下额外结果：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(k_terms)}}参与成对比较的术语数量{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(cmd)}}{cmd:pwcompare}{p_end}
{synopt:{cmd:r(cmd2)}}{cmd:margins}{p_end}
{synopt:{cmd:r(group{it:#})}}{cmd:r(b)}中的第 {it:#} 个边际的组代码{p_end}
{synopt:{cmd:r(mcmethod_vs)}}{it:method}来自 {opt mcompare()}{p_end}
{synopt:{cmd:r(mctitle_vs)}}来自 {opt mcompare()}的{it:method}标题{p_end}
{synopt:{cmd:r(mcadjustall_vs)}}{cmd:adjustall} 或空{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(b)}}边际估计{p_end}
{synopt:{cmd:r(V)}}边际估计的方差-协方差矩阵{p_end}
{synopt:{cmd:r(b_vs)}}边际差异估计{p_end}
{synopt:{cmd:r(V_vs)}}边际差异估计的方差-协方差矩阵{p_end}
{synopt:{cmd:r(error_vs)}}边际差异可估计性代码；{break}
	{cmd:0} 意味着可估计的,{break}
	{cmd:8} 意味着不可估计{p_end}
{synopt:{cmd:r(table_vs)}}矩阵
	包含边际差异及其标准误、检验统计量、p值和置信区间{p_end}
{synopt:{cmd:r(L)}}生成边际差异的矩阵{p_end}
{p2colreset}{...}

{pstd}
带有 {opt post} 选项的 {cmd:margins,} {cmd:pwcompare} 还会在 {cmd:e()} 中存储以下额外结果：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(k_terms)}}参与成对比较的术语数量{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:pwcompare}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:margins}{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}边际估计{p_end}
{synopt:{cmd:e(V)}}边际估计的方差-协方差矩阵{p_end}
{synopt:{cmd:e(b_vs)}}边际差异估计{p_end}
{synopt:{cmd:e(V_vs)}}边际差异估计的方差-协方差矩阵{p_end}
{synopt:{cmd:e(error_vs)}}边际差异可估计性代码；{break}
	{cmd:0} 意味着可估计的,{break}
	{cmd:8} 意味着不可估计{p_end}
{synopt:{cmd:e(L)}}生成边际差异的矩阵{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <margins_pwcompare.sthlp>}