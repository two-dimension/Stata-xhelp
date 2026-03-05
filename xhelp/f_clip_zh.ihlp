
{help f_clip:English Version}
{hline}
{* *! version 1.1.2  02mar2015}{...}
    {cmd:clip(}{it:x}{cmd:,}{it:a}{cmd:,}{it:b}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}{it:x} 如果 
	{it:a} < {it:x} < {it:b}, {it:b} 如果 {it:x} {ul:>} {it:b}, {it:a} 如果 
	{it:x} {ul:<} {it:a}, 或 {it:missing} 如果 {it:x} 为缺失值 
	或 {it:a} > {it:b}; {it:x} 如果 {it:x} 为缺失值{p_end}

{p2col:}如果 {it:a} 或 {it:b} 为缺失值， 
	这被解读为 {it:a} = -inf 或 {it:b} = +inf， 
	分别.{p_end}
{p2col: 输入域 {it:x}:}-8e+307 到 8e+307{p_end}
{p2col: 输入域 {it:a}:}-8e+307 到 8e+307{p_end}
{p2col: 输入域 {it:b}:}-8e+307 到 8e+307{p_end}
{p2col: 输出范围:}-8e+307 到 8e+307{p_end}
{p2colreset}{...}