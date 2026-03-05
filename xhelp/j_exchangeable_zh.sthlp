{smcl}
{* *! version 1.1.3  28apr2011}{...}
{vieweralsosee "[XT] xtgee" "help xtgee_zh"}{...}
{vieweralsosee "[XT] xtreg" "help xtreg_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "FAQ: xtgee reports convergence not achieved" "browse http://www.stata.com/support/faqs/stat/xtgee.html"}
{help j_exchangeable:English Version}
{hline}{...}
{title:当通过 {cmd:xtgee, corr(exchangeable)} 进行估计时}
{sf:     }{title:您收到了“未达到收敛”信息}

{pstd}
广义估计方程（GEE）估计是通过迭代加权最小二乘法进行的，其中面板内观测值的权重由估计的相关性矩阵 {bf:R} 的逆决定（详见 {it:方法与公式} 在 {hi:[XT] xtgee} 中）。对于 {cmd:correlation(exchangeable)}，GEE使用矩的矩量法来估计所有 {bf:R} 的非对角元素的单一相关值 {bf:p}。与标准相关矩阵不同，这种对 {bf:R} 的估计不能保证得到正定矩阵。 （{bf:R} 不能被估计为标准相关矩阵，因为该估计要求矩阵的所有元素都是自由参数，而可交换形式限制了矩阵的结构。）

{pstd}
当 {bf:R} 不是正定时，我们就遇到了矛盾。GEE是通过相关矩阵加权数据的，但由于 {bf:R} 不是正定的，它就不是一个相关矩阵。在操作上，当 {bf:R} 不是正定时，其G2逆会产生完全排除某些观测值的权重，从而使主要模型系数的估计无法进行。

{pstd}
在这种情况下，您的模型无法充分拟合数据，以至于相关矩阵 {bf:R} 无法被正确识别，因此 {cmd:xtgee} 声明非收敛。

{pstd}
使用 {cmd:correlation(exchangeable)}，只有当 {bind:{bf:p} >= 0} 时，才能保证 {bf:R} 是正定的。仅在少数情况下，面板内观测值的共同相关性为负时，{bf:R} 才可能不是正定的。{bf:p} 可以为负并且 {bf:R} 保持正定的程度与最大的面板大小成反比。有关此问题的详细讨论，请参见 FAQ {browse "http://www.stata.com/support/faqs/stat/xtgee.html":xtgee 报告未达到收敛}。

{pstd}
为解决此问题，请仔细审查您规范的科学基础，并考虑更改模型规范或在数据的子集上进行估计。

{p 8 11 2}
1) 更改主模型规范中的协变量、家庭或连接函数。

{p 8 11 2}
2) 更改相关结构。在极端情况下，您可以使用 {cmd:fixed} 结构通过选项 {cmd:correlation()} 指定您自己的 {bf:R} 估计。或者，{cmd:correlation(independent)} 始终为正定。

{p 11 11 2}
   您可能决定接受来自非收敛结果的 {bf:R} 估计。如果 {cmd:xtgee} 声明非收敛，则是因为基于矩的 {bf:p} 估计超过了 {cmd:R} 正定所需的下限。最终估计使用的 {bf:p} 值是能够保持 {bf:R} 正定的最小 {bf:p} 的 99%。

{p 8 11 2}
3) 将估计限制在产生平衡面板的数据子集上。（这可能有帮助，但不能保证产生收敛。）

{pstd}
请记住，相关结构的正确规范仅影响参数估计的效率。无论相关结构如何，估计都是一致的。虽然默认标准误差估计的正确覆盖要求相关结构是正确的，但通过添加 {cmd:robust} 选项可以放宽这一要求。当指定 {cmd:robust} 时，不仅参数估计是一致的，它们的标准误差估计也具有正确的覆盖，无论是否指定了“真实”的相关结构。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_exchangeable.sthlp>}