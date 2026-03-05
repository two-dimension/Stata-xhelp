{smcl}
{* *! version 1.0.6  11mar2013}{...}
{vieweralsosee "[ME] me" "mansection ME me"}{...}
{vieweralsosee "[ME] meglm" "mansection ME meglm"}{...}
{vieweralsosee "[ME] mixed" "mansection ME mixed"}{...}
{viewerjumpto "为什么我的混合效应模型 LR 检验是保守的" "j_mixedlr_zh##remarks1"}{...}
{viewerjumpto "混合模型比较检验的分布理论" "j_mixedlr_zh##remarks2"}{...}
{viewerjumpto "我如何解释这个保守检验的结果？" "j_mixedlr_zh##remarks3"}{...}
{viewerjumpto "参考文献" "j_mixedlr_zh##references"}
{help j_mixedlr:English Version}
{hline}{...}
{marker remarks1}{...}
{title:为什么我的混合效应模型 LR 检验是保守的？}

{pstd}
您已经执行了一个似然比（LR）检验，比较两个嵌套的混合效应模型，无论是 1) 与根据 {help me_zh:mixed-effects command} 输出底部呈现的边际回归进行比较，还是 2) 通过 {cmd:lrtest} 比较两个混合效应模型。以下讨论的是第一种情况，但同样适用于第二种情况。

{marker remarks2}{...}
{title:混合模型比较检验的分布理论}

{pstd}
在 {help me_zh:mixed-effects command} 输出底部呈现的 LR 检验是将拟合的混合模型与没有组级随机效应的标准回归进行比较。例如，对于 {help melogit_zh}，您正在与标准逻辑回归进行比较。这个 LR 检验评估混合模型的所有随机效应参数是否同时为零。

{pstd}
当只需测试一个随机效应参数时，该参数，即方差成分，被限制为大于零。因为零假设是这个参数确实为零，而这个假设在参数空间的边界上，因此 LR 检验统计量的分布是一个包含 chi2(0)（在零处的点质量）和 chi2(1)（在一处的点质量）的 50:50 混合分布。因此，在一参数情况下，显著性水平可以相应调整，并且不会显示测试是保守的警告。有关适当理论，请参见 {help j_mixedlr##SL1987:Self and Liang (1987)}，或查看 {help j_mixedlr##GCD2001:Gutierrez, Carter, and Drukker (2001)}，以获取针对 Stata 的具体讨论。

{pstd}
然而，当需要测试多个随机效应参数时，情况变得更加复杂。考虑一个模型，其中我们有两个随机系数，并且有一个非结构化的协方差矩阵

{pmore}
{space 16}{c TLC}{space 13}{c TRC}{break} 
{space 16}{c | } {it:v}_11{space 3}{it:v}_12{space 1}{c |}{break}
{space 16}{c | } {it:v}_12{space 3}{it:v}_22{space 1}{c |}{break}
{space 16}{c BLC}{space 13}{c BRC}{break}

{pstd}
由于混合模型的“随机”成分由三个参数（{it:v}_11,{it:v}_12,{it:v}_22）组成，因此 LR 比较检验似乎应分布为 chi2(3)。然而，需要考虑两个复杂情况。首先，方差 {it:v}_11 和 {it:v}_22 被限制为正值，测试它们与零对比会呈现上述相同的边界条件。其次，像 {it:v}_11 = 0 的约束隐含地也将协方差 {it:v}_12 限制为零，从技术角度来看，尚不清楚需要限制多少个参数以将模型简化为没有组级随机效应的模型。

{pstd}
由于这些复杂情况，尚未开发出适当且足够通用的计算方法来处理多于一个参数的情况。理论（例如， {help j_mixedlr##SL1994:Stram and Lee [1994]}）和实证研究（例如， {help j_mixedlr##MB1988:McLachlan and Basford [1988]}）已经证明，无论 LR 检验统计量的分布如何，其尾概率都被限制在等于完全受限参数数量（在上面的例子中是三个）的卡方分布之上。

{pstd}
{help me_zh:混合效应命令}使用此参考分布，即具有完全自由度的卡方检验，来产生保守检验。

{marker remarks3}{...}
{title:我如何解释这个保守检验的结果？}

{pstd}
报告的 LR 检验显著性水平是实际显著性水平的上限。因此，在报告水平的基础上拒绝零假设将意味着在实际水平上也拒绝零假设。

{marker references}{...}
{title:参考文献}

{marker GCD2001}{...}
{phang}
Gutierrez, R. G., S. Carter, and D. M. Drukker. 2001.
sg160: 关于边界值似然比检验。  
{browse "http://www.stata.com/products/stb/journals/stb60.pdf":{it:Stata Technical Bulletin} 60}: 15-18.
重印于 {it:Stata Technical Bulletin Reprints}, vol. 10, pp. 269-273.
College Station, TX: Stata Press.{p_end}

{marker MB1988}{...}
{phang}McLachlan, G. J., and K. E. Basford. 1988.  {it:混合模型}.
纽约：Dekker.{p_end}

{marker SL1987}{...}
{phang}Self, S. G., and K.-Y. Liang. 1987. 非标准条件下最大似然估计量和似然比检验的渐近性质。  {it:美国统计协会杂志} 
82: 605-610.{p_end}

{marker SL1994}{...}
{phang}Stram, D. O., and J. W. Lee. 1994. 长期混合效应模型中的方差成分检验。 {it:生物统计学} 50: 1171-1177.{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_mixedlr.sthlp>}