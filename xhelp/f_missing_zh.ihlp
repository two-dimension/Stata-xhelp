
{help f_missing:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:missing(}{it:x1}{cmd:,}{it:x2}{cmd:,}{it:...}{cmd:,}{it:xn}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}{cmd:1} 如果任何一个参数的结果为
        {it:missing}; 否则，{cmd:0}{p_end}

{p2col:}Stata 有两个缺失值的概念：
	数值缺失值（{cmd:.}、{cmd:.a}、{cmd:.b}，...，
	{cmd:.z}）和字符串缺失值（{cmd:""}）。 
	{cmd:missing()} 如果任何表达式 {it:xi} 结果为 {it:missing}，则返回 {cmd:1}（表示 {it:true}）。 
	如果 {it:x} 是数值类型，则 {cmd:missing(}{it:x}{cmd:)} 等价于 {it:x} {ul:>} {cmd:.}。如果 {it:x} 是字符串类型，则 {cmd:missing(}{it:x}{cmd:)} 等价于 {it:x}{cmd:==""}。
	 {p_end}
{p2col: 定义域 {it:xi}:}任何字符串或数值表达式{p_end}
{p2col: 取值范围:}0 和 1{p_end}
{p2colreset}{...}