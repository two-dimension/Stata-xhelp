
{help f_soundex:English Version}
{hline}
{* *! version 1.1.4  17may2019}{...}
    {cmd:soundex(}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}字符串的 soundex 代码，{it:s}{p_end}

{p2col:}soundex 代码由一个字母和三个数字组成：
	这个字母是名称的第一个 ASCII 字母，数字编码
	其余的辅音。发音相似的辅音用相同的数字编码。
	超出 {help u_glossary##plainascii:plain ASCII} 范围的 Unicode 字符被
	忽略.{p_end}

{p2col:}{cmd:soundex("Ashcraft")} = {cmd:"A226"}{break}
        {cmd:soundex("Robert")} = {cmd:"R163"}{break}
        {cmd:soundex("Rupert")} = {cmd:"R163"}{p_end}
{p2col: 域 {it:s}:}字符串{p_end}
{p2col: 范围：}字符串{p_end}
{p2colreset}{...}