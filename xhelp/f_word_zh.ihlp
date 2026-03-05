
{help f_word:English Version}
{hline}
{* *! version 1.1.2  02mar2015}{...}
    {cmd:word(}{it:s}{cmd:,}{it:n}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}提取字符串 {it:s} 中的第 {it:n} 个单词；如果 {it:n} 缺失则返回 {it:missing} ({cmd:""})){p_end}

{p2col:}正数从 {it:s} 的开头开始计数单词，负数则从 {it:s} 的末尾开始计数单词。 ({cmd:1} 是 {it:s} 中的第一个单词，{cmd:-1} 是 {it:s} 中的最后一个单词。) 一个单词是一组以空格开始和结束的字符。这与 Unicode 单词不同，后者是基于一组 {browse "http://www.unicode.org/reports/tr29/#Word_Boundaries":单词边界规则} 或多种语言的词典（中文、日文和泰文）的语言单位。{p_end}
{p2col: 域 {it:s}:}字符串{p_end}
{p2col: 域 {it:n}:}整数{p_end}
{p2col: 范围：}字符串{p_end}
{p2colreset}{...}