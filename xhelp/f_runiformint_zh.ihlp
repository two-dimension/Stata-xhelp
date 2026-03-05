
{help f_runiformint:English Version}
{hline}
{* *! version 1.0.1  02mar2015}{...}
    {cmd:runiformint(}{it:a}{cmd:,}{it:b}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}在区间 [{it:a},{it:b}] 上均匀分布的随机整数变量{p_end}

{p2col:}如果 {it:a} 或 {it:b} 不是整数，
           {cmd:runiformint(}{it:a}{cmd:,}{it:b}{cmd:)} 返回
	   {cmd:runiformint(floor(}{it:a}{cmd:), floor(}{it:b}{cmd:))}.{p_end}
{p2col: 域 {it:a}:}-2^53 到 2^53（可以是非整数）{p_end}
{p2col: 域 {it:b}:}-2^53 到 2^53（可以是非整数）{p_end}
{p2col: 范围:}-2^53 到 2^53{p_end}
{p2colreset}{...}