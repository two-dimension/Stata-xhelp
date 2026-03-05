{smcl}
{* *! version 1.0.0  16mar2015}{...}
{vieweralsosee "[BAYES] bayesmh" "mansection BAYES bayesmh"}
{help j_bayesmh_adaptsim:English Version}
{hline}{...}
{title:在模拟过程中继续适应}

{pstd}
在参数估计表的底部，您可能会看到关于在模拟过程中继续适应的注释。适应是 Metropolis-Hastings 采样的一部分，因此不适用于使用 Gibbs 采样更新的参数块。当您通过使用选项 {cmd:adaptation(maxiter())} 增加自适应迭代次数而没有相应地增加使用选项 {cmd:burnin()} 的燃烧期长度时，通常会看到此消息。

{pstd}
此注释并不一定表示存在问题。它只是通知您，在燃烧期后，提议分布仍处于适应期。这通常发生在所谓的连续适应中，例如减少适应，当允许参数在燃烧和模拟期间持续适应，但随着算法的进行，适应程度逐渐减小。默认情况下，{cmd:bayesmh} 不执行减少适应，因此在模拟期间会通知您适应继续进行。{cmd:bayesmh} 的默认适应设置选择为在燃烧期结束后停止适应，无论适应容忍度是否达到。（有关更多信息，请参见 {help j_bayesmh_adapttol_zh:适应容忍度未满足}。）您可以通过在选项 {cmd:adaptation(gamma())} 中指定非默认值（0）来请求减少适应。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_bayesmh_adaptsim.sthlp>}