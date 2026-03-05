
{help f_invnftail:English Version}
{hline}
{* *! version 1.1.2  23mar2018}{...}
    {cmd:invnFtail(}{it:df1}{cmd:,}{it:df2}{cmd:,}{it:np}{cmd:,}{it:p}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}反向累积（上尾或生存）非中心 F 分布：如果
	{cmd:nFtail(}{it:df1}{cmd:,}{it:df2}{cmd:,}{it:np}{cmd:,}{it:f}{cmd:)} =
	{it:p}，则
	{cmd:invnFtail(}{it:df1}{cmd:,}{it:df2}{cmd:,}{it:np}{cmd:,}{it:p}{cmd:)}
	= {it:f}{p_end}
{p2col: 范围 {it:df1}:}1e-323 到 8e+307（可能不是整数）{p_end}
{p2col: 范围 {it:df2}:}1e-323 到 8e+307（可能不是整数）{p_end}
{p2col: 范围 {it:np}:}0 到 1,000{p_end}
{p2col: 范围 {it:p}:}0 到 1{p_end}
{p2col: 值域:}0 到 8e+307{p_end}
{p2colreset}{...}