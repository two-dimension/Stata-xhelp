
{help f_strreverse:English Version}
{hline}
{* *! version 1.2.2  17may2019}{...}
    {cmd:strreverse(}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}反转 ASCII 字符串 {it:s}{p_end}

{p2col:}{cmd:strreverse()} 仅用于
	{help u_glossary##plainascii:普通 ASCII} 字符。
	对于超出 ASCII 范围的 Unicode 字符（代码点大于 127），
	{help u_glossary##encode:编码} 字节将被反转。{p_end}

{p2col:}要反转 
	{help u_glossary##unichar:Unicode 字符串} 的字符，请参见
	{help f_ustrreverse_zh:ustrreverse()}.{p_end}

{p2col:}{cmd:strreverse("hello")} = {cmd:"olleh"}{p_end}
{p2col: 域 {it:s}:}ASCII 字符串{p_end}
{p2col: 范围：}反转后的 ASCII 字符串{p_end}
{p2colreset}{...}