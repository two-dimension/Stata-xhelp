
{help f_reldif:English Version}
{hline}
{* *! version 1.1.2  02mar2015}{...}
    {cmd:reldif(}{it:x}{cmd:,}{it:y}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}“相对”差异  |{it:x}-{it:y}|/(|{it:y}|+1);
		{cmd:0} 如果两个参数都是相同类型的扩展缺失值;
		{it:missing} 如果只有一个参数缺失或者两个参数是不同类型的
			{it:missing}{p_end}
{p2col: 域 {it:x}:}-8e+307 到 8e+307 或 {it:missing}{p_end}
{p2col: 域 {it:y}:}-8e+307 到 8e+307 或 {it:missing}{p_end}
{p2col: 范围:}-8e+307 到 8e+307 或 {it:missing}{p_end}
{p2colreset}{...}