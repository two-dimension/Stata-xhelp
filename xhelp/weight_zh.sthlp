{smcl}
{* *! version 1.1.7  15may2018}{...}
{findalias asfrsyntaxwt}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrwest}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] 调查" "help survey_zh"}{...}
{vieweralsosee "[U] 11 语言语法" "help language_zh"}{...}
{viewerjumpto "备注" "weight_zh##remarks"}{...}
{viewerjumpto "fweights" "weight_zh##fweights"}{...}
{viewerjumpto "pweights" "weight_zh##pweights"}{...}
{viewerjumpto "aweights" "weight_zh##aweights"}{...}
{viewerjumpto "iweights" "weight_zh##iweights"}{...}
{viewerjumpto "示例" "weight_zh##examples"}
{help weight:English Version}
{hline}{...}
{title:标题}

{pstd}
{findalias frsyntaxwt} {hline 2} 权重


{marker remarks}{...}
{title:备注}

{pstd}
大多数 Stata 命令可以处理加权数据。Stata 允许四种类型的权重：

{p 4 8 2}1.  {cmd:fweight}s，或频率权重，是表示重复观测数量的权重。

{p 4 8 2}2.  {cmd:pweight}s，或抽样权重，是表示由于抽样设计而被包含在观察中的概率的逆的权重。

{p 4 8 2}3.  {cmd:aweight}s，或分析权重，是与观测方差成反比的权重；即，假设第 j 个观测的方差为 sigma^2/w_j，其中 w_j 为权重。通常，观测值代表平均值，权重则是导致该平均值的元素数量。对于大多数 Stata 命令，{cmd:aweight}s 的记录规模是无关紧要的；Stata 在使用它们时会自动重新缩放，使其总和为 N，即数据中的观测数量。

{p 4 8 2}4.  {cmd:iweight}s，或重要性权重，是表示观察在某种模糊意义上的“重要性”的权重。
{cmd:iweight}s 没有正式的统计定义；支持 {cmd:iweight}s 的任何命令将定义它们的具体处理方式。
通常，它们是供希望生成特定计算的程序员使用的。

{pstd}
一般语法为

{p 12 12 2}
{it:command} {it:...} {cmd:[}{it:weightword}{cmd:=}{it:exp}{cmd:]} {it:...}

    例如：

{phang2}{cmd:. anova y x1 x2 x1*x2 [fweight=pop]}

{phang2}{cmd:. regress avgy avgx1 avgx2 [aweight=cellpop]}

{phang2}{cmd:. regress y x1 x2 x3 [pweight=1/prob]}

{phang2}{cmd:. scatter y x [aweight=y2], mfcolor(none)}

{pstd}
你输入方括号。

{pstd}
Stata 允许使用缩写： {cmd:fw} 代表 {cmd:fweight}，{cmd:aw} 代表 {cmd:aweight}，等等。你可以输入

{phang2}{cmd:. anova y x1 x2 x1*x2 [fw=pop]}

{phang2}{cmd:. regress avgy avgx1 avgx2 [aw=cellpop]}

{phang2}{cmd:. regress y x1 x2 x3 [pw=1/prob]}

{phang2}{cmd:. scatter y x [aw=y2], mfcolor(none)}

{pstd}
此外，每个命令都有自己对“自然”权重类型的定义。
如果你输入

{phang2}{cmd:. regress avgy avgx1 avgx2 [w=cellpop]}

{pstd}
命令会告诉你它假设的权重类型，并像你指定那种权重一样执行请求。

{pstd}
某些权重类型有同义词。 {cmd:fweight} 也可以被称为 {cmd:frequency}（缩写为 {cmd:freq}）。 {cmd:aweight} 可以称为 {cmd:cellsize}（缩写为 {cmd:cell}）：

{phang2}{cmd:. anova y x1 x2 x1*x2 [freq=pop]}

{phang2}{cmd:. regress avgy avgx1 avgx2 [cell=cellpop]}


{marker fweights}{...}
{title:{cmd:fweight}s}

{pstd}
频率 {cmd:fweight}s 表示重复数据。权重告知命令每个观测实际代表多少观测。
{cmd:fweight}s 允许以更简约的方式存储数据。权重变量包含正整数。命令的结果与重复每个观测若干次然后以未加权的方式运行命令的结果相同。


{marker pweights}{...}
{title:{cmd:pweight}s}

{pstd}
抽样 {cmd:pweight}s 指示该观测被抽样的概率的逆。允许 {cmd:pweight}s 的命令通常提供 {cmd:vce(cluster} {it:clustvar}{cmd:)} 选项。这些可以结合使用以针对非分层聚类抽样数据生成估计。如果你必须还处理分层问题，请查看 {manhelp Survey SVY}。


{marker aweights}{...}
{title:{cmd:aweight}s}

{pstd}
分析 {cmd:aweight}s 适用于处理包含平均值的数据。例如，你有关于一组人的平均收入和平均特征。权重变量包含计算平均值的人的数量（或与该数量成比例的数值）。


{marker iweights}{...}
{title:{cmd:iweight}s}

{pstd}
该权重没有正式的统计定义，是一个包罗万象的类别。该权重以某种方式反映观察的“重要性”，支持这种权重的任何命令将确切地定义这样的权重是如何处理的。


{marker examples}{...}
{title:示例}

{phang2}{cmd:. webuse hanley}{p_end}
{pstd}接下来的四个命令是等价的{p_end}
{phang2}{cmd:. roctab disease rating [fweight=pop]}{p_end}
{phang2}{cmd:. roctab disease rating [fw=pop]}{p_end}
{phang2}{cmd:. roctab disease rating [freq=pop]}{p_end}
{phang2}{cmd:. roctab disease rating [weight=pop]}

{phang2}{cmd:. webuse total}{p_end}
{phang2}{cmd:. total heartatk [pw=swgt], over(sex)}

{phang2}{cmd:. webuse byssin}{p_end}
{phang2}{cmd:. anova prob workplace smokes race workplace#smokes [aw=pop]}

{phang2}{cmd:. webuse nhanes2f}{p_end}
{phang2}{cmd:. svyset psuid [pw=finalwgt], strata(stratid)}{p_end}
{phang2}{cmd:. svy: ologit health female black age c.age#c.age}{p_end}
{phang2}{cmd:. ologit health female black age c.age#c.age [iw=finalwgt]}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <weight.sthlp>}