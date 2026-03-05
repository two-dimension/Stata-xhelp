
{help f_strtoname:English Version}
{hline}
{* *! version 1.1.4  12mar2015}{...}
    {cmd:strtoname(}{it:s}[{cmd:,}{it:p}]{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}{it:s} 转换为 Stata 13 兼容名称{p_end}

{p2col:}{cmd:strtoname()} 的结果是一个长度被截断到
	{ccl namelenchar} 字节的名称。{it:s} 中每个不允许出现在 Stata 名称中的字符都被转换为下划线字符 {cmd:_}。如果 {it:s} 的第一个字符是数字字符，并且 {it:p} 不是 0，则结果会以一个下划线作为前缀。
	Stata 14 名称可以包含 32 个字符；详见 {findalias frnames}.{p_end}

{p2col:}{cmd:strtoname("name")} = {cmd:"name"}{break}
        {cmd:strtoname("a name")} = {cmd:"a_name"}{break}
	{cmd:strtoname("5",1)} = {cmd:"_5"}{break}
	{cmd:strtoname("5:30",1)} = {cmd:"_5_30"}{break}
	{cmd:strtoname("5",0)} = {cmd:"5"}{break}
	{cmd:strtoname("5:30",0)} = {cmd:"5_30"}{p_end}
{p2col: 域 {it:s}:}字符串{p_end}
{p2col: 域 {it:p}:}整数 0 或 1{p_end}
{p2col: 范围:}字符串{p_end}
{p2colreset}{...}