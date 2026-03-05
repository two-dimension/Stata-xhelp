
{help f_logit:English Version}
{hline}
{* *! version 1.1.2  02mar2015}{...}
    {cmd:logit(}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}变量 {it:x} 的赔率比的对数,{break}
	{cmd:logit(}{it:x}{cmd:)} = ln{c -(}{it:x}/(1-{it:x}){c )-}{p_end}
{p2col: 定义域:}0 到 1（不包括）{p_end}
{p2col: 值域:}-8e+307 到 8e+307 或 {it:missing}{p_end}
{p2colreset}{...}