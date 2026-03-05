
{help f_strrpos:English Version}
{hline}
{* *! version 1.0.5  17may2019}{...}
    {cmd:strrpos(}{it:s1}{cmd:,}{it:s2}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}在 {it:s1} 中最后找到 {it:s2} 的位置；否则，返回 {cmd:0}{p_end}
		     
{p2col:}{cmd:strrpos()} 仅用于处理
	{help u_glossary##plainascii:plain ASCII} 字符，供希望获得 {it:s2} 最后字节位置的程序员使用。
	注意，任何超出 ASCII 范围的 Unicode 字符（代码点大于 127）在 UTF-8 编码中占用多个字节；例如，{cmd:é} 占用 2 个字节。{p_end}

{p2col:}要查找 {it:s2} 在 {help u_glossary##unichar:Unicode 字符串} 中的最后字符位置，请参见
	{help f_ustrrpos_zh:ustrrpos()}.{p_end}

{p2col:}{cmd:strrpos("this","is")} = {cmd:3}{break}
	{cmd:strrpos("this is","is")} = {cmd:6}{break}
	{cmd:strrpos("this is","it")} = {cmd:0}{p_end}
{p2col: 域 {it:s1}:}待搜索的字符串{p_end}
{p2col: 域 {it:s2}:}搜索的字符串{p_end}
{p2col: 范围：}整数 {ul:>} 0{p_end}
{p2colreset}{...}