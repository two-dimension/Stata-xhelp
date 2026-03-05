
{help f_wordcount:English Version}
{hline}
{* *! version 1.1.2  02mar2015}{...}
    {cmd:wordcount(}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}字符串 {it:s} 中的单词数{p_end}

{p2col:}一个单词是一组字符，它以空格开始和结束，或以字符串的开始或结束为起始或终止。这与 Unicode 单词不同，后者是基于一组
	{browse "http://www.unicode.org/reports/tr29/#Word_Boundaries":单词边界规则} 
	或多个语言（中文、日文和泰文）的字典的语言单位。
	{p_end}
{p2col: 域 {it:s}:}字符串{p_end}
{p2col: 范围:}非负整数 0, 1, 2, ...{p_end}
{p2colreset}{...}