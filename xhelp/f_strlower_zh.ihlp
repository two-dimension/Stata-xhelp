
{help f_strlower:English Version}
{hline}
{* *! version 1.1.3  17may2019}{...}
    {cmd:strlower(}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}将字符串 {it:s} 中的 ASCII 字符转换为小写{p_end}

{p2col:}Unicode 字符超出
	{help u_glossary##plainascii:plain ASCII} 
	范围的字符将被忽略。{p_end}

{p2col:}{cmd:strlower("THIS")} = {cmd:"this"}{break}
 	{cmd:strlower("CAFÉ")} = {cmd:"cafÉ"}{p_end}
{p2col: 域 {it:s}:}字符串{p_end}
{p2col: 范围：}小写字符的字符串{p_end}
{p2colreset}{...}