
{help f_dgammapdadx:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:dgammapdadx(}{it:a}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}二阶部分导数
	的累积伽马分布
	{cmd:gammap(}{it:a}{cmd:,}{it:x}{cmd:)}
	相对于 {it:a} 和 {it:x} 的导数，其中 {it:a} > 0;
	{cmd:0} 如果 {it:x} < 0{p_end}
{p2col: 领域 {it:a}:}1e-7 到 1e+17{p_end}
{p2col: 领域 {it:x}:}-8e+307 到 8e+307; 有趣的领域是
	{it:x} {ul:>} 0{p_end}
{p2col: 值域:}-0.04 到 8e+307{p_end}
{p2colreset}{...}