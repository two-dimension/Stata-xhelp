
{help robust_long:English Version}
{hline}
{* *! version 1.0.0  22jun2019}{...}
{marker robust}{...}
{phang}
{cmd:vce(robust)} 是这些模型中唯一可用的方差-协方差估计器。该方法的矩估计量对于部分消除模型的大样本方差具有三明治结构，这种结构被称为“稳健”方差估计器。仅在某些特定假设下，例如正确指定的参数模型，稳健形式才能被简化。对于部分消除模型，通常不会使用此类假设，因此只有稳健的 VCE 可用。