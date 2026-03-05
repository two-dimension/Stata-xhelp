
{help f_ibetatail:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:ibetatail(}{it:a}{cmd:,}{it:b}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}反累积（上尾或生存）beta分布，形状参数为 {it:a} 和 {it:b}；
	{cmd:1} 如果 {it:x} < 0; {cmd:0} 如果 {it:x} > 1{p_end}

{p2col:}{cmd:ibetatail()} 也被称为不完全beta函数（比例）的补数。{p_end}
{p2col: 域 {it:a}:}1e-10 到 1e+17{p_end}
{p2col: 域 {it:b}:}1e-10 到 1e+17{p_end}
{p2col: 域 {it:x}:}-8e+307 到 8e+307；有趣的域是
	0 {ul:<} {it:x} {ul:<} 1{p_end}
{p2col: 范围:}0 到 1{p_end}
{p2colreset}{...}