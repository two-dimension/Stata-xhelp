
{help f_dgammapdxdx:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:dgammapdxdx(}{it:a}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}累计伽马分布的二阶偏导数
	{cmd:gammap(}{it:a}{cmd:,}{it:x}{cmd:)}
相对于 {it:x} 的导数，适用于 {it:a} > 0；
	{cmd:0} 当 {it:x} < 0{p_end}
{p2col: 定义域 {it:a}:}1e-10 到 1e+17{p_end}
{p2col: 定义域 {it:x}:}-8e+307 到 8e+307；有趣的定义域是
	{it:x} {ul:>} 0{p_end}
{p2col: 值域：}0 到 1e+40{p_end}
{p2colreset}{...}