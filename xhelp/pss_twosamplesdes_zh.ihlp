
{help pss_twosamplesdes:English Version}
{hline}
{phang}
{opth n(numlist)} 指定用于功效或效应大小确定的研究中受试者的总数。如果指定了 {cmd:n()}，则计算功效。如果同时指定了 {cmd:n()} 和 {cmd:power()} 或 {cmd:beta()}，则计算在研究中可能检测到的最小效应大小。

{phang}
{opth n1(numlist)} 指定用于功效或效应大小确定的对照组受试者数量。

{phang}
{opth n2(numlist)} 指定用于功效或效应大小确定的实验组受试者数量。

{phang}
{opth nratio(numlist)} 指定实验组相对于对照组的样本量比 {cmd:N2/N1}，用于两样本检验。默认值为 {cmd:nratio(1)}，意味着两个组之间的均等分配。

{phang}
{cmd:compute(N1}|{cmd:N2)} 请求 {cmd:power} 命令在两样本检验中计算一个组的样本数量，而不是总样本大小。要计算对照组的样本量，必须指定 {cmd:compute(N1)} 并在 {cmd:n2()} 中提供实验组样本数量。或者，要计算实验组的样本量，必须指定 {cmd:compute(N2)} 并在 {cmd:n1()} 中提供对照组样本数量。

{phang}
{cmd:nfractional} 指定允许使用分数样本量。当指定此选项时，分数样本量将在中间计算中使用，并在输出中显示。
{p_end}