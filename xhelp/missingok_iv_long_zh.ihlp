
{help missingok_iv_long:English Version}
{hline}
{* *! version 1.0.0  22jun2019}{...}
{phang}
{cmd:missingok} 指定在拟合套索之后，估计样本仅基于最终模型中的非缺失观测重新定义。在所有情况下，对于 {it:depvar}、{it:exovars}、{it:endovars}、{it:instrumvars}、{it:alwaysvars} 和 {it:othervars} 的任何具有缺失值的观测都将从套索的估计样本中省略。默认情况下，用于计算 {it:exovars} 和 {it:endovars} 的系数及其标准误差的样本是相同的。

{pmore}
当指定 {cmd:missingok} 时，初始估计样本与默认样本相同，但用于计算 {it:exovars} 和 {it:endovars} 系数的样本可以更大。现在任何缺失值的 {it:instrumvars} 和未选择的 {it:othervars} 的观测将被添加到估计样本中（前提是最终模型中的任何变量没有缺失值）。

{pmore}
{cmd:missingok} 在数据完全随机缺失时可能会产生更有效的估计。然而，它的结果是，当所选变量在使用不同选择方法拟合的模型中有所不同时，估计样本可能会发生变化。也就是说，当 {it:instrumvars} 和 {it:othervars} 包含缺失值时，使用默认的 {cmd:selection(plugin)} 拟合的模型的估计样本可能与使用例如 {cmd:selection(cv)} 拟合的模型的估计样本不同。