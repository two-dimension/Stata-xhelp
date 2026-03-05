
{help missingok_long:English Version}
{hline}
{* *! version 1.0.0  22jun2019}{...}
{phang}
{cmd:missingok} 指定在拟合套索后，估计样本仅基于最终模型中非缺失观察的数据重新定义。在所有情况下，任何在 {it:depvar}、{it:varsofinterest}、{it:alwaysvars} 和 {it:othervars} 变量上有缺失值的观察都将被排除在套索的估计样本之外。默认情况下，对于 {it:varsofinterest} 的系数及其标准误差的计算将使用相同的样本。

{pmore}
当指定 {cmd:missingok} 时，初始估计样本与默认值相同，但用于计算 {it:varsofinterest} 系数的样本可能更大。现在，任何未选择的 {it:othervars} 上缺失值的观察将被添加到估计样本中（前提是最终模型中没有任何变量缺失值）。

{pmore}
当数据完全随机缺失时，{cmd:missingok} 可能会产生更有效的估计。然而，这也导致估计样本会在使用不同选择方法拟合的模型中发生变化。也就是说，当 {it:othervars} 包含缺失值时，使用默认的 {cmd:selection(plugin)} 拟合的模型的估计样本可能与使用例如 {cmd:selection(cv)} 拟合的模型的估计样本不同。