{smcl}
{* *! version 1.1.8  05mar2013}{...}
{vieweralsosee "[ME] me" "mansection ME me"}{...}
{vieweralsosee "[ME] meglm" "mansection ME meglm"}{...}
{vieweralsosee "[ME] mixed" "mansection ME mixed"}
{help j_chibar:English Version}
{hline}{...}
{title:什么是 chibar2？}

{pstd}
显示的似然比（LR）检验正在对参数空间的边界进行检验。您可能正通过使用 LR 检验来测试估计的方差成分（始终大于零的东西）是否不同于零。

{pstd}
暂且假设正在比较的两个模型仅在于有关的方差成分而有所不同，在这种情况下，检验统计量将显示为 "chibar(01)"。在这种情况下，所关注参数的最大似然估计的极限分布为一个正态分布，该分布在边界处被一半切掉——此处为零。因此，LR 检验统计量的分布不是通常的自由度为 1 的卡方分布，而是自由度为 0（即在零处的点质量）和自由度为 1 的卡方分布的 50:50 混合。

{pstd}
LR 检验的 p 值考虑到了这一点，如果确定您的估计值足够接近零，以至于在效用上可以视为零，则 p 值将设置为 1。否则，所显示的 p 值设置为自由度为 1 的卡方分布大于计算得出的 LR 检验统计量的概率的一半。

{pstd}
有时您在测试一个方差成分是否为零 {it: 除了} 测试 {it:k} 个其他参数（不受边界条件影响）是否为零。这种情况在比较 {help me_zh:mixed-effects models} 时经常出现。对于此类检验，似然比检验统计量的分布是具有 {it:k} 和 {it:k}+1 自由度的卡方分布的 50:50 混合，在输出中显示为 "chibar(4_5)"，例如。对于 chibar(01)，显著性水平相应调整。

{pstd}
最后，如果您测试多个受边界影响的参数，理论将更加复杂，通常难以解决。当这种情况发生时，Stata 要么显示被标记为 {help j_mixedlr_zh:保守} 的显著性水平，要么根本不显示 LR 检验。 
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_chibar.sthlp>}