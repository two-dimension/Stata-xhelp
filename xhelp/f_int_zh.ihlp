
{help f_int:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:int(}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}通过向 0 截断 {it:x} 获得的整数
                    （因此，
                     {cmd:int(5.2)} = 5 和 
	             {cmd:int(-5.8)} = -5）； 如果 {it:x}
		     为缺失值，则 {it:x} （不是 "{cmd:.}"），意味着 {cmd:int(.a)} = {cmd:.a}{p_end}

{p2col:}获得离 {it:x} 最近的整数的一种方法是 
        {cmd:int(}{it:x}{cmd:+sign(}{it:x}{cmd:)/2)}，这对于 {it:x} {ul:>} 0 简化为
	{cmd:int(}{it:x}{cmd:+0.5)}。但是，建议使用
	{cmd:round()} 函数。另请参阅
	{help round():{bf:round(}{it:x}{bf:)}},
	{help ceil():{bf:ceil(}{it:x}{bf:)}}, 和
        {help floor():{bf:floor(}{it:x}{bf:)}}.{p_end}
{p2col: 范围：}-8e+307 到 8e+307{p_end}
{p2col: 值域：}在 -8e+307 到 8e+307 之间的整数{p_end}
{p2colreset}{...}