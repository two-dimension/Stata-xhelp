
{help f_mod:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:mod(}{it:x}{cmd:,}{it:y}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:} {it:x} 关于 {it:y} 的取模{break}
        {bind:{cmd:mod(}{it:x}{cmd:,}{it:y}{cmd:)} = {it:x} - {it:y}*{cmd:floor(}{it:x}/{it:y}{cmd:)}}{break}
	{cmd:mod(}{it:x}{cmd:,0)} = {cmd:.}{p_end}
{p2col: 域 {it:x}:}-8e+307 到 8e+307{p_end}
{p2col: 域 {it:y}:}0 到 8e+307{p_end}
{p2col: 范围:}0 到 8e+307{p_end}
{p2colreset}{...}