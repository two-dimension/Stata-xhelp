
{help f_sum:English Version}
{hline}
{* *! version 1.1.2  02mar2015}{...}
    {cmd:sum(}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}对 {it:x} 的累计和，缺失值视为零
	{p_end}
	
{p2col:}例如，在执行命令 {cmd:generate y=sum(x)} 后，
	{cmd:y} 的第 {it:j} 个观测值包含了对 {cmd:x} 的前 {it:j} 个观测值的和。有关替代的和函数，请参见 {manhelp egen D}，
	{helpb egen##total():total()}，它生成等于整体和的常量。{p_end}
{p2col: 定义域:}所有实数或 {it:missing}{p_end}
{p2col: 值域:}-8e+307 到 8e+307（不包括 {it:missing}）{p_end}
{p2colreset}{...}