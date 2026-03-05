
{help f_usubstr:English Version}
{hline}
{* *! version 1.0.2  12mar2015}{...}
    {cmd:usubstr(}{it:s}{cmd:,}{it:n1}{cmd:,}{it:n2}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}Unicode 字符串 {it:s} 的子串，从 
	{it:n1} 开始，长度为 {it:n2}{p_end}
	
{p2col:}如果 {it:n1} < 0，{it:n1} 会被解释为距离 {it:s} 最后一个字符的距离；
如果 {it:n2} = {cmd:.} ({it:missing}),
则返回 Unicode 字符串的剩余部分。{p_end}
	
{p2col:}{cmd:usubstr("médiane",2,3)} = {cmd:"édi"}{break}
        {cmd:usubstr("médiane",-3,2)} = {cmd:"an"}{break}
	{cmd:usubstr("médiane",2,.)} = {cmd:"édiane"}{p_end}
{p2col: 域 {it:s}:}Unicode 字符串{p_end}
{p2col: 域 {it:n1}:}整数 {ul:>} 1 和 {ul:<} -1{p_end}
{p2col: 域 {it:n2}:}整数 {ul:>} 1{p_end}
{p2col: 范围：}Unicode 字符串{p_end}
{p2colreset}{...}