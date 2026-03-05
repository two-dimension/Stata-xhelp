
{smcl}
{* *! version 1.2.2  17may2019}{...}
    {cmd:strupper(}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{help f_strupper:English Version}
{hline}
{p2col: 描述：}将字符串 {it:s} 中的 ASCII 字符转换为大写字母{p_end}

{p2col:}超出 {help u_glossary##plainascii:纯 ASCII} 范围的 Unicode 字符将被忽略。{p_end}

{p2col:}{cmd:strupper("this")} = {cmd:"THIS"}{break}
	{cmd:strupper("café")} = {cmd:"CAFé"}{p_end}
{p2col: 域 {it:s}:}字符串{p_end}
{p2col: 范围：}具有大写字母的字符串{p_end}
{p2colreset}{...}