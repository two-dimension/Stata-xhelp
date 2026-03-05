
{help sel_opts_long_p:English Version}
{hline}
{* *! version 1.0.0  22jun2019}{...}
{phang3}
{cmd:stopok}、{cmd:strict} 和 {cmd:gridminok} 指定当 CV 函数没有识别的最小值时的处理方式。最小值在 lambda* 处被识别，当较大和较小相邻 lambda 的 CV 函数值都大于在 lambda* 处的值时。 当 CV 函数具有识别的最小值时，这些选项的效果相同：所选择的 lambda* 是给出最小值的 lambda。然而，在某些情况下，CV 函数随着 lambda 的减少而单调下降，并且永远不会上升以识别最小值。当 CV 函数没有识别的最小值时，{cmd:stopok} 和 {cmd:gridminok} 在 lambda* 中做出其他选择，而 {cmd:strict} 不做任何选择。当未指定 {cmd:stopok}、{cmd:strict} 或 {cmd:gridminok} 时，默认值为 {cmd:stopok}。对于每一个这些选项，估计结果始终保留，并且可以选择和评估备选的 lambda*。

{p 16 20 2}
{cmd:stopok} 指定当 CV 函数没有识别的最小值且达到了 {opt stop(#)} 停止容忍度时，所选择的 lambda* 是 lambda_{stop}，即满足停止标准的 lambda。lambda_{stop} 是为其估计了系数的最小 lambda，并假设 lambda_{stop} 的 CV 函数值接近真实的最小值。当没有识别的最小值且未满足 {opt stop(#)} 标准时，会发出错误。

{p 16 20 2}
{cmd:strict} 要求 CV 函数必须具有识别的最小值，如果没有，则会发出错误。

{p 16 20 2}
{cmd:gridminok} 是一个很少使用的选项，它指定当 CV 函数没有识别的最小值且未满足 {opt stop(#)} 停止标准时，选择 lambda_{gmin}，即 lambda 网格的最小值，作为所选的 lambda*。

{pmore3}
{cmd:gridminok} 的选择标准比默认的 {cmd:stopok} 要松散，而 {cmd:stopok} 又比 {cmd:strict} 松散。使用 {cmd:strict} 时，仅选择识别的最小值。使用 {cmd:stopok} 时，选择识别的最小值或 lambda_{stop}。使用 {cmd:gridminok} 时，按此顺序选择识别的最小值、lambda_{stop} 或 lambda_{gmin}。