{smcl}
{* *! version 1.0.2  01jun2018}{...}
{vieweralsosee "[BAYES] bayes" "mansection BAYES bayes"}
{help j_bayes_displayre:English Version}
{hline}{...}
{title:为什么并非所有随机效应都显示？}

{pstd}
您在使用 {help bayes_zh} 或 {help bayesmh_zh} 时指定了 {cmd:showreffects} 选项，但并非所有随机效应都被显示。当包括随机效应的参数总数超过当前的最大矩阵维度（{helpb creturn##max_matdim:c(max_dim)}）时，会发生这种情况。显示和存储在 {cmd:e(b)} 中的参数数量不能超过 {cmd:c(max_matdim)}。您可以在回放时使用 {cmd:showreffects()} 和 {cmd:show()} 选项，或者在估计后使用 {helpb bayesstats summary} 来显示其余随机效应的子集。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_bayes_displayre.sthlp>}