
{help stop_long:English Version}
{hline}
{* *! version 1.0.0  22jun2019}{...}
{phang}
{opt stop(#)} 指定了一个容忍度，该容忍度是 lambda 迭代的停止标准。默认值为 1e-5。此子选项在选择方法为 {cmd:selection(plugin)} 时不适用。估计从最大网格值 lambda_{gmax} 开始，并向最小网格值 lambda_{gmin} 迭代。当两个相邻的 lambda 网格值所产生的偏差的相对差异小于 {opt stop(#)} 时，迭代停止，并且不再评估更小的 lambda。满足该容忍度的 lambda 值称为 lambda_{stop}。通常，这个停止标准在迭代到达 lambda_{gmin} 之前就已满足。

{pmore}
将 {opt stop(#)} 设置为更大值意味着迭代会更早地在更大 lambda_{stop} 处停止。要为所有 lambda 网格值生成系数估计，可以指定 {cmd:stop(0)}。但请注意，对于较小的 lambda，计算可能会非常耗时。在时间方面，当使用 {cmd:selection(cv)} 和 {cmd:selection(adaptive)} 时，{opt stop(#)} 的最佳值是允许计算出足够多的 lambda 以识别 CV 函数最小值的最大值。在将 {opt stop(#)} 设置为更大值时，要注意默认的 lambda* 选择过程 {cmd:stopok} 的后果。您可能希望通过使用 {cmd:strict} 来覆盖 {cmd:stopok} 行为。