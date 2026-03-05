
{help f_ustrrtrim:English Version}
{hline}
{* *! version 1.0.2  12mar2015}{...}
    {cmd:ustrrtrim(}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}移除Unicode字符串 {it:s} 的尾部Unicode空白字符和空格{p_end}

{p2col:}请注意，除了 {cmd:char(32)}，ASCII字符 {bf:char(9)}、{bf:char(10)}、{bf:char(11)}、{bf:char(12)} 和 {bf:char(13)} 在Unicode标准中也被视为空白字符。{p_end}

{p2col:}{cmd:ustrrtrim("this ")} = {cmd:"this"}{break}
        {cmd:ustrltrim("this"+char(10))} = {cmd:"this"}{break}		     
	{cmd:ustrrtrim("this "+ustrunescape("\u2000"))} = {cmd:"this"}{p_end}
{p2col: 域 {it:s}：}Unicode字符串{p_end}
{p2col: 范围：}Unicode字符串{p_end}
{p2colreset}{...}