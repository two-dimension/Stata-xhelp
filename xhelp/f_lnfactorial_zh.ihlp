
{help f_lnfactorial:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:lnfactorial(}{it:n}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}自然对数 {it:n} 的阶乘 = ln({it:n}!) {p_end}

{p2col:}要计算 {it:n}!，使用
	{bind:{cmd:round(exp(lnfactorial(}{it:n}{cmd:)),1)}} 以确保
	结果为整数。阶乘的对数通常比阶乘本身更有用，因为存在溢出问题。
	{p_end}
{p2col: 定义域:}整数 0 到 1e+305 {p_end}
{p2col: 值域:}0 到 8e+307 {p_end}
{p2colreset}{...}