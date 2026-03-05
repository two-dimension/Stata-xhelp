
{help f_ustrltrim:English Version}
{hline}
{* *! version 1.0.2  13mar2015}{...}
    {cmd:ustrltrim(}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}移除Unicode字符串 {it:s} 的开头Unicode空白字符和空格{p_end}
	
{p2col:}请注意，除了 {cmd:char(32)}，ASCII字符
	{cmd:char(9)}, {cmd:char(10)}, {cmd:char(11)}, {cmd:char(12)} 以及
	{cmd:char(13)} 也是Unicode标准中的空白字符。{p_end}

{p2col:}{cmd:ustrltrim(" this")} = {cmd:"this"}{break}
        {cmd:ustrltrim(char(9)+"this")} = {cmd:"this"}{break}
	{cmd:ustrltrim(ustrunescape("\u1680")+" this")} = {cmd:"this"}{p_end}
{p2col: 领域 {it:s}:}Unicode字符串{p_end}
{p2col: 范围：}Unicode字符串{p_end}
{p2colreset}{...}