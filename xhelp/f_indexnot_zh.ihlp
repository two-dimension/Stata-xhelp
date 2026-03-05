
{help f_indexnot:English Version}
{hline}
{* *! version 1.1.4  17may2019}{...}
    {cmd:indexnot(}{it:s1}{cmd:,}{it:s2}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}在 ASCII 字符串 {it:s1} 中，第一个未在 ASCII 字符串 {it:s2} 中找到的字符的位置，或者如果 {it:s1} 中的所有字符都在 {it:s2} 中找到，则返回 {cmd:0}{p_end}

{p2col:}{cmd:indexnot()} 仅打算用于 {help u_glossary##plainascii:纯 ASCII} 字符串。对于超出纯 ASCII 范围的 Unicode 字符，位置和字符以 {help u_glossary##disambig:字节} 的形式给出，而不是字符。{p_end}
{p2col: 域 {it:s1}:}ASCII 字符串（待搜索）{p_end}
{p2col: 域 {it:s2}:}ASCII 字符串（用于搜索的字符）{p_end}
{p2col: 范围:}整数 {ul:>} 0{p_end}
{p2colreset}{...}