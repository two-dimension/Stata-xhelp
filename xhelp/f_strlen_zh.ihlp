
{help f_strlen:English Version}
{hline}
{* *! version 1.1.3  17may2019}{...}
    {cmd:strlen(}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}ASCII {it:s} 中的字符数或以字节为单位的长度{p_end}

{p2col:}{cmd:strlen()} 仅用于
	{help u_glossary##plainascii:纯 ASCII} 字符，并供希望获取字符串字节长度的程序员使用。
	请注意，任何超出 ASCII 范围的 Unicode 字符（码点大于 127）在 UTF-8 编码中占用的字节数超过 1 字节；例如，
	{cmd:é} 占用 2 字节。{p_end}

{p2col:}要获取
	{help u_glossary##unichar:Unicode 字符串} 中字符的数量，请参见
	{help f_ustrlen_zh:ustrlen()}.{p_end}

{p2col:}{cmd:strlen("ab")} = {cmd:2}{break}
        {cmd:strlen("é")} = {cmd:2}{p_end}
{p2col: 域 {it:s}:}字符串{p_end}
{p2col: 范围：}整数 {ul:>} 0{p_end}
{p2colreset}{...}