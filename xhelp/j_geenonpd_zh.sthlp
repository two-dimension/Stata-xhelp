{smcl}
{* *! version 1.1.4  28apr2011}{...}
{vieweralsosee "[XT] xtgee" "help xtgee_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "FAQ: xtgee reports convergence not achieved" "browse http://www.stata.com/support/faqs/stat/xtgee.html"}
{help j_geenonpd:English Version}
{hline}{...}
{title:使用 {cmd:xtgee} 进行估计时收到 “未实现收敛” 消息}

{pstd}
广义估计方程（GEE）估计通过迭代加权最小二乘法进行，其中面板内的观察值通过估计的相关矩阵的逆加权 {bf:R} （见 {it:方法与公式} 在 {hi:[XT] xtgee} 中）。由于 {bf:R} 可以有多种不同形式（例如，自相关、平稳、无结构等），并且估计过程必须能够很好地适应不平衡面板，因此 GEE 对该矩阵元素的估计是基于时刻的。与标准相关矩阵不同，GEE 对 {bf:R} 的估计未必保证得到正定矩阵。 （{bf:R} 不能被估计为标准相关矩阵，因为该估计器要求矩阵的所有元素为自由参数，而 {cmd:xtgee} 允许的指定形式限制了矩阵的结构。）

{pstd}
当 {bf:R} 不是正定时，我们就出现了矛盾。GEE 通过相关矩阵对数据进行加权，但因为 {bf:R} 不是正定的，它就不是一个相关矩阵。在操作上，当 {bf:R} 不是正定时，它的 G2 逆将产生完全排除某些观察值的权重，进而影响主要模型系数的估计。

{pstd}
在这种情况下，您的模型未能足够好地拟合数据，以使相关矩阵 {bf:R} 能被正确识别，并且 {cmd:xtgee} 声明不收敛。

{pstd}
为了解决这个问题，请仔细审查您规范的科学基础，并考虑更改模型规范或在数据的子集上进行估计。

{p 8 11 2}
1) 更改主模型规范中的协变量、家族或链接。

{p 8 11 2}
2) 更改相关结构。在极端情况下，您可以使用选项 {cmd:correlation()} 的 {cmd:fixed} 结构指定您自己的 {bf:R} 估计。或者，{cmd:correlation(independent)} 始终是正定的。

{p 8 11 2}
3) 限制估计到生成平衡面板的数据子集。（这可能有所帮助，但不能保证产生收敛。）

{pstd}
请记住，相关结构的正确规范仅影响参数估计的有效性。无论相关结构如何，估计都是一致的。虽然默认标准误差估计的正确覆盖要求有正确的相关结构，但通过添加 {cmd:robust} 选项可以放宽这一要求。当指定 {cmd:robust} 时，不仅参数估计是一致的，其标准误差估计的覆盖也是正确的，无论是否指定“真实”的相关结构。  
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_geenonpd.sthlp>}