
{help f_strdup:English Version}
{hline}
{* *! version 1.1.2  02mar2015}{...}
    {cmd:strdup(}{it:s1}{cmd:,}{it:n}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}不存在 {cmd:strdup()} 函数；相反，使用乘法运算符来创建字符串的多个副本{p_end}

{p2col:}{cmd:"hello" * 3} = {cmd:"hellohellohello"}{break}
	{cmd:3 * "hello"} = {cmd:"hellohellohello"}{break}
	{cmd:0 * "hello"} = {cmd:""}{break}
	{cmd:"hello" * 1} = {cmd:"hello"}{break}
	{cmd:"Здравствуйте " * 2} = {cmd:"Здравствуйте Здравствуйте "}{p_end}
{p2col: 域 {it:s1}:}字符串{p_end}
{p2col: 域 {it:n}:}非负整数 0, 1, 2, ...{p_end}
{p2col: 范围：}字符串{p_end}
{p2colreset}{...}