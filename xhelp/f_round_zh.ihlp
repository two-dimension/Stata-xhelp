
{help f_round:English Version}
{hline}
{* *! version 1.1.3  21mar2018}{...}
    {cmd:round(}{it:x}{cmd:,}{it:y}{cmd:)} 或 {cmd:round(}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}{it:x} 按 {it:y} 的单位取整，或者如果省略参数 {it:y} 则为 {it:x} 取最近的整数；
	如果 {it:x} 缺失（意味着 {cmd:round(.a)} = {cmd:.a} 并且
	{cmd:round(.a,}{it:y}{cmd:)} = {cmd:.a} 如果 {it:y} 不缺失），
	如果 {it:y} 缺失，则返回 "{cmd:.}"{p_end}

{p2col:}对于 {it:y} = 1，或者省略 {it:y}，这意味着取 {it:x} 的最接近的整数；{cmd:round(5.2,1)} 为 5，{cmd:round(4.8,1)} 也是 5；{cmd:round(-5.2,1)} 为 -5，{cmd:round(-4.8,1)} 也是 -5。取整定义对 {it:y} != 1 进行了一般化。例如，{it:y} = 0.01 时，{it:x} 被舍入到小数点后两位；{cmd:round(sqrt(2),.01)} 为 1.41。{it:y} 也可以大于 1；{cmd:round(28,5)} 为 30，表示 28 被舍入到最近的 5 的倍数。对于 {it:y} = 0，该函数定义为返回未修改的 {it:x}。另请参阅
	{help int():{bf:int(}{it:x}{bf:)}},
        {help ceil():{bf:ceil(}{it:x}{bf:)}}, 和
	{help floor():{bf:floor(}{it:x}{bf:)}}.{p_end}
{p2col: 定义域 {it:x}:}-8e+307 到 8e+307{p_end}
{p2col: 定义域 {it:y}:}-8e+307 到 8e+307{p_end}
{p2col: 范围:}-8e+307 到 8e+307{p_end}
{p2colreset}{...}