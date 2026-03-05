
{help f_soundex_nara:English Version}
{hline}
{* *! version 1.1.4  17may2019}{...}
    {cmd:soundex_nara(}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}返回字符串 {it:s} 的美国人口普查音标编码。{p_end}

{p2col:}音标编码由一个字母和三个数字组成：
	字母为姓名的第一个 ASCII 字母，数字则编码
	剩余的辅音。相似的辅音由相同的数字编码。
	超出 {help u_glossary##plainascii:plain ASCII} 范围的 Unicode 字符会被
	忽略。{p_end}

{p2col:}{cmd:soundex_nara("Ashcraft")} = {cmd:"A261"}{p_end}
{p2col: 域 {it:s}:}字符串{p_end}
{p2col: 范围：}字符串{p_end}
{p2colreset}{...}