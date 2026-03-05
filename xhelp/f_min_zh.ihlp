
{help f_min:English Version}
{hline}
{* *! version 1.1.2  02mar2015}{...}
    {cmd:min(}{it:x1}{cmd:,}{it:x2}{cmd:,}{it:...}{cmd:,}{it:xn}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}返回 {it:x1}, {it:x2}, ..., {it:xn} 的最小值{p_end}
	
{p2col:}除非所有参数都是 {it:missing}，否则会忽略缺失值。{break}
	{cmd:min(2,10,.,7)} = {cmd:2}{break}
	{cmd:min(.,.,.)} = {cmd:.}{p_end}
{p2col: 范围 {it:x1}:}-8e+307 到 8e+307 或 {it:missing}{p_end}
{p2col: 范围 {it:x2}:}-8e+307 到 8e+307 或 {it:missing}{p_end}
{p2col:...}{p_end}
{p2col: 范围 {it:xn}:}-8e+307 到 8e+307 或 {it:missing}{p_end}
{p2col: 范围:}-8e+307 到 8e+307 或 {it:missing}{p_end}
{p2colreset}{...}