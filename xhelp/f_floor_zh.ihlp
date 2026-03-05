
{help f_floor:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:floor(}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}唯一的整数 {it:n} 使得
	{it:n} {ul:<} {it:x} < {it:n} + 1;
	{it:x} （不是 "{cmd:.}"）如果 {it:x} 缺失，意味着
	{cmd:floor(.a)} = {cmd:.a}{p_end}

{p2col:}另见 {help ceil():{bf:ceil(}{it:x}{bf:)}},
	{help int():{bf:int(}{it:x}{bf:)}}, 和
        {help round():{bf:round(}{it:x}{bf:)}}.{p_end}
{p2col: 范围:}-8e+307 到 8e+307{p_end}
{p2col: 取值:}整数在 -8e+307 到 8e+307 之间{p_end}
{p2colreset}{...}