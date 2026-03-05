
{help ciw_twosamplesdes:English Version}
{hline}
{* *! version 1.0.0  27feb2019}{...}
{phang}
{opth n(numlist)} 指定用于计算置信区间宽度和置信区间宽度概率的研究中总受试者的数量。

{phang}
{opth n1(numlist)} 指定用于计算置信区间宽度和置信区间宽度概率的对照组受试者数量。

{phang}
{opth n2(numlist)} 指定用于计算置信区间宽度和置信区间宽度概率的实验组受试者数量。

{phang}
{opth nratio(numlist)} 指定实验组相对于对照组的样本大小比率，即 {cmd:N2/N1}，适用于两样本置信区间。默认值为 {cmd:nratio(1)}，表示两个组之间的均等分配。

{phang}
{cmd:compute(N1}|{cmd:N2)} 请求 {cmd:ciwidth} 命令在计算两样本置信区间时根据另一个组的样本大小计算其中一个组的样本大小，而不是总样本大小。要计算对照组样本大小，必须指定 {cmd:compute(N1)} 并在 {cmd:n2()} 中指定实验组样本大小。或者，要计算实验组样本大小，必须指定 {cmd:compute(N2)} 并在 {cmd:n1()} 中指定对照组样本大小。

{phang}
{opt nfractional} 指定允许使用小数样本大小。当指定该选项时，中间计算中使用小数样本大小，并在输出中显示。 
{p_end}