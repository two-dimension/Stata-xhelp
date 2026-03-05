
{help f_ustrword:English Version}
{hline}
{* *! version 1.0.2  25mar2015}{...}
    {cmd:ustrword(}{it:s}{cmd:,}{it:n}[{cmd:,}{it:loc}]{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}返回Unicode字符串 {it:s} 中的第 {it:n} 个Unicode单词{p_end}

{p2col:}正数 {it:n} 从 {it:s} 的开头计数Unicode单词，负数 {it:n} 从 {it:s} 的末尾计数Unicode单词。例如，{it:n} 等于 1 时返回 {it:s} 中的第一个单词，而 {it:n} 等于 -1 时返回 {it:s} 中的最后一个单词。如果未指定 {it:loc}，将使用 {mansection U 12.4.2.4LocalesinUnicode:默认语言环境}。Unicode单词与通过 {help f_word_zh:word()} 函数生成的Stata单词不同。Stata单词是以空格分割的标记。Unicode单词是基于一组 {browse "http://www.unicode.org/reports/tr29/#Word_Boundaries":单词边界规则} 或一些语言（中文、日文和泰文）的字典的语言单位。 如果 {it:n} 大于 {it:cnt} 或小于 {it:-cnt} ，函数返回 {it:missing} ({cmd:""})，其中 {it:cnt} 是 {it:s} 中包含的单词数。 {it:cnt} 可以通过 {cmd:ustrwordcount()} 获得。如果发生错误，函数也会返回 {it:missing} ({cmd:""})。{p_end}

{p2col 5 22 26 2:}{cmd:ustrword("Parlez-vous français", 1, "fr")} = {cmd:"Parlez"}{p_end}
{p2col 5 22 26 2:}{cmd:ustrword("Parlez-vous français", 2, "fr")} = {cmd:"-"}{p_end}
{p2col 5 22 26 2:}{cmd:ustrword("Parlez-vous français",-1, "fr")} = {cmd:"français"}{p_end}
{p2col 5 22 26 2:}{cmd:ustrword("Parlez-vous français",-2, "fr")} = {cmd:"vous"}{p_end}
{p2col: 域 {it:s}:}Unicode字符串{p_end}
{p2col: 域 {it:loc}:}Unicode字符串{p_end}
{p2col: 域 {it:n}:}整数{p_end}
{p2col: 范围:}Unicode字符串{p_end}
{p2colreset}{...}