
{help f_invlogit:English Version}
{hline}
{* *! version 1.1.3  27mar2017}{...}
    {cmd:invlogit(}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}{it:x} 的 logit 函数的反函数{break}
	{cmd:invlogit(}{it:x}{cmd:)} = exp({it:x})/{1 + exp({it:x})}{p_end}
{p2col: 定义域：}-8e+307 到 8e+307{p_end}
{p2col: 值域：}0 到 1 或 {it:missing}{p_end}
{p2colreset}{...}