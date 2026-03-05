
{help sel_opts_long:English Version}
{hline}
{* *! version 1.0.0  22jun2019}{...}
{phang2}
{cmd:stopok}、{cmd:strict} 和 {cmd:gridminok} 指定在 CV 函数没有识别到最小值时该做什么。当在 lambda* 处的 CV 函数在其相邻的更大和更小的 lambda 下的值都大于 lambda* 时，会识别出一个最小值。当 CV 函数有一个识别出的最小值时，{cmd:stopok}、{cmd:strict} 和 {cmd:gridminok} 的作用是相同的：选定的 lambda* 是给出最小值的 lambda。

{pmore2}
然而，在某些情况下，当 lambda 逐渐减小时，CV 函数单调下降，并且始终不会上升以识别出一个最小值。当 CV 函数没有识别出最小值时，{cmd:stopok} 和 {cmd:gridminok} 会做出替代选择，而 {cmd:strict} 不做任何选择。当没有指定 {cmd:stopok}、{cmd:strict} 或 {cmd:gridminok} 时，默认为 {cmd:stopok}。使用这些子选项时，估计结果始终保留在原位，并且可以选择和评估替代 lambda*。

{phang3}
{cmd:stopok} 指定当 CV 函数没有识别出最小值并且达到 {opt stop(#)} 对 lambda 的停止容忍度时，选定的 lambda* 是 lambda_{stop}，满足停止标准的 lambda。lambda_{stop} 是估计系数的最小 lambda，假定 lambda_{stop} 的 CV 函数值接近真实最小值。当没有识别出最小值并且未达到 {opt stop(#)} 标准时，将发出错误。

{phang3}
{cmd:strict} 要求 CV 函数必须有一个识别出的最小值。如果没有，将发出错误。

{phang3}
{cmd:gridminok} 是一个不常用的子选项，指定当 CV 函数没有识别出的最小值且未满足 {opt stop(#)} 停止标准时，选择 lambda_{gmin}，即 lambda 网格的最小值，作为选定的 lambda*。

{pmore2}
{cmd:gridminok} 选择标准比默认的 {cmd:stopok} 更宽松，而 {cmd:stopok} 又比 {cmd:strict} 更宽松。使用 {cmd:strict} 时，只选择识别出的最小值。使用 {cmd:stopok} 时，选择识别出的最小值或 lambda_{stop}。使用 {cmd:gridminok} 时，选择识别出的最小值，或者 lambda_{stop}，或者 lambda_{gmin}，依此顺序。