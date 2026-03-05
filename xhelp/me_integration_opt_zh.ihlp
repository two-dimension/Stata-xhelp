
{help me_integration_opt:English Version}
{hline}
{* *! version 1.0.4  29jan2015}{...}
{phang}
{opt intmethod(intmethod)} 指定用于随机效应模型的积分方法。
{cmd:mvaghermite} 执行均值-方差自适应高斯-厄米特求积；
{cmd:mcaghermite} 执行模式-曲率自适应高斯-厄米特求积；
{cmd:ghermite} 执行非自适应高斯-厄米特求积；而
{cmd:laplace} 执行拉普拉斯近似，相当于具有一个积分点的模式-曲率自适应高斯求积。

{pmore}
默认的积分方法是 {cmd:mvaghermite}，除非拟合了交叉随机效应模型，在这种情况下，默认的积分方法是 {cmd:laplace}。 已知拉普拉斯近似会产生偏倚的参数估计；然而，偏倚往往在方差成分的估计中更为显著，而不是在固定效应的估计中。

{pmore}
对于交叉随机效应模型，使用超过一个求积点的估计可能会在小层数的情况下也变得极为耗时。出于这个原因，积分方法默认使用拉普拉斯近似。您可以通过指定不同的积分方法来覆盖此行为。

{phang}
{opt intpoints(#)} 设置求积的积分点数。
默认是 {cmd:intpoints(7)}，这意味着每个随机效应层使用七个求积点。
该选项不允许与 {bf:intmethod(laplace)} 一起使用。

{pmore}
积分点越多，日志似然的近似越准确。 然而，计算时间会随着求积点数量提升到随机效应规范维度的幂次而增加。 在交叉随机效应模型和具有许多层或许多随机系数的模型中，这种增加可能非常显著。
{p_end}