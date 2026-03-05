
{help tolerance_long:English Version}
{hline}
{* *! version 1.0.0  22jun2019}{...}
{phang}
{opt cvtolerance(#)} 是一个很少使用的选项，用于改变识别最小 CV 函数的容差。对于线性模型，当 CV 函数在至少三个较小的 lambda 中相对差异大于 {it:#} 时，声明最小已经被识别，前提是 CV 函数超过一个名义最小值。对于非线性模型，则需要至少五个较小的 lambda。默认值为 1e-3。将 {it:#} 设置为更大的值会使识别最小值的标准更严格，并能更有把握地确认声明的最小值是真正的最小值，但这也意味着模型可能需要为额外的较小 lambda 进行拟合，这可能会耗费时间。有关此容差和其他容差的更多信息，请参见 {mansection LASSO lassoMethodsandformulas:{it:方法和公式}} 的 {bf:[LASSO] lasso}。

{phang}
{opt tolerance(#)} 是一个很少使用的选项，用于指定系数的收敛容差。当每个系数的相对变化小于此容差时，即认为收敛。默认值为 {cmd:tolerance(1e-7)}。

{phang}
{opt dtolerance(#)} 是一个很少使用的选项，用于改变系数的收敛标准。当指定 {opt dtolerance(#)} 时，收敛标准是基于偏差的变化，而不是系数估计值的变化。当偏差的相对变化小于 {it:#} 时，声明收敛。通常，通过不指定此选项而使用默认的 {cmd:tolerance(1e-7)} 标准或为 {opt tolerance(#)} 指定更小的值，可以获得更准确的系数估计值。