
{smcl}
{* *! version 1.0.0  22jun2019}{...}
{phang}
{cmd:or} 报告估计的系数并转换为赔率比，即 e^{alpha}。标准误差和置信区间也类似地进行了转换。 {cmd:or} 是默认选项。
{help or_long:English Version}
{hline}

{phang}
{cmd:coef} 报告估计的系数 alpha，而不是赔率比 (e^{alpha})。此选项影响结果的显示方式，而不是估计方式。 {cmd:coef} 可以在估计时指定，也可以在重新播放先前估计结果时指定。