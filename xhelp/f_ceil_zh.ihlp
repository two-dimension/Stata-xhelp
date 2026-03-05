
{help f_ceil:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:ceil(}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}唯一的整数 {it:n} 满足
	{bind:{it:n} - 1 < {it:x} {ul:<} {it:n}};
	{it:x}（若 {it:x} 为缺失，则不为 "{cmd:.}"），意味着
	{cmd:ceil(.a)} = {cmd:.a}{p_end}

{p2col:}另请参见 {help floor():{bf:floor(}{it:x}{bf:)}},
	{help int():{bf:int(}{it:x}{bf:)}}, 以及
        {help round():{bf:round(}{it:x}{bf:)}}.{p_end}
{p2col: 定义域:}-8e+307 到 8e+307{p_end}
{p2col: 值域:}整数在 -8e+307 到 8e+307 之间{p_end}
{p2colreset}{...}