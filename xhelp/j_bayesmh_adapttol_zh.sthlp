{smcl}
{* *! version 1.0.0  16mar2015}{...}
{vieweralsosee "[BAYES] bayesmh" "mansection BAYES bayesmh"}
{help j_bayesmh_adapttol:English Version}
{hline}{...}
{title:适应性容忍度未满足}

{pstd}
在参数估计表的底部，您可能会看到一条关于至少一个参数块的适应性容忍度未满足的注释。适应性是 Metropolis-Hastings 采样的一部分，因此不适用于使用 Gibbs 采样更新的参数块。

{pstd}
此注释并不一定表示存在问题。它只是通知您，选项 {cmd:adaptation(tarate())} 中指定的默认目标接受率在选项 {cmd:adaptation(tolerance())} 中指定的容忍度内未能达到。默认目标接受率对应于单个参数块的理论渐近最优接受率 0.44 和多个参数块的 0.234。该比率是为特定模型类别推导的，并不一定代表所有模型的最优比率。如果您的 MCMC 已收敛，您可以安全忽略此注释。否则，您需要进一步调查您的模型。一种解决方案是增加烧入期，这会自动增加适应期，或者更具体地说，增加由选项 {cmd:adaptation(maxiter())} 控制的自适应迭代次数。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_bayesmh_adapttol.sthlp>}