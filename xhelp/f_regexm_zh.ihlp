
{help f_regexm:English Version}
{hline}
{* *! version 1.1.5  17may2019}{...}
    {cmd:regexm(}{it:s}{cmd:,}{it:re}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}进行正则表达式匹配，并且如果 ASCII 字符串 {it:s} 满足正则表达式 {it:re}，则返回 {cmd:1}；否则返回 {cmd:0}{p_end}

{p2col:}正则表达式语法基于 Henry Spencer 的 NFA 算法，并且几乎与 POSIX.2 标准相同。 {it:s} 和 {it:re} 中不能包含二进制 0 ({bf:\0})。{p_end}

{p2col:}{cmd:regexm()} 仅用于处理 {help u_glossary##plainascii:plain ASCII} 字符。对于超出纯 ASCII 范围的 Unicode 字符，匹配基于 {help u_glossary##disambig:bytes}。有关基于字符的匹配，请参见 {help f_ustrregexm_zh:ustrregexm()}。{p_end}
{p2col: 域 {it:s}:}ASCII 字符串{p_end}
{p2col: 域 {it:re}:}正则表达式{p_end}
{p2col: 范围:}ASCII 字符串{p_end}
{p2colreset}{...}

    {cmd:regexr(}{it:s1}{cmd:,}{it:re}{cmd:,}{it:s2}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}将 ASCII 字符串 {it:s1} 中与 {it:re} 匹配的第一个子字符串替换为 ASCII 字符串 {it:s2}，并返回结果字符串{p_end}

{p2col:}如果 {it:s1} 中没有与 {it:re} 匹配的子字符串，则返回未更改的 {it:s1}。 {it:s1} 和 {cmd:regexr()} 的结果最多可以包含 1,100,000 个字符。 {it:s1}、{it:re} 和 {it:s2} 中不能包含二进制 0 ({bf:\0})。{p_end}

{p2col:}{cmd:regexr()} 仅用于处理 {help u_glossary##plainascii:plain ASCII} 字符。对于超出纯 ASCII 范围的 Unicode 字符，匹配基于 {help u_glossary##disambig:bytes}，结果限制为 1,100,000 字节。有关基于字符的匹配，请参见 {helpb f_ustrregexrf:ustrregexrf()} 或 {helpb f_ustrregexra:ustrregexra()}。{p_end}
{p2col: 域 {it:s1}:}ASCII 字符串{p_end}
{p2col: 域 {it:re}:}正则表达式{p_end}
{p2col: 域 {it:s2}:}ASCII 字符串{p_end}
{p2col: 范围:}ASCII 字符串{p_end}
{p2colreset}{...}

    {cmd:regexs(}{it:n}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}先前 {cmd:regexm()} 匹配中的子表达式 {it:n}，其中 {bind:0 {ul:<} {it:n} < 10}{p_end}

{p2col:}子表达式 0 被保留用于满足正则表达式的整个字符串。返回的子表达式最多可以包含 1,100,000 个字符（字节）{p_end}
{p2col: 域 {it:n}:}0 到 9{p_end}
{p2col: 范围:}ASCII 字符串{p_end}
{p2colreset}{...}