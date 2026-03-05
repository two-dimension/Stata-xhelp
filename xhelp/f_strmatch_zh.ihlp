
{help f_strmatch:English Version}
{hline}
{* *! version 1.1.6  17may2019}{...}
    {cmd:strmatch(}{it:s1}{cmd:,}{it:s2}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}{cmd:1} 如果 {it:s1} 匹配模式 {it:s2}；
                     否则，返回 {cmd:0}{p_end}

{p2col:}{cmd:strmatch("17.4","1??4")} 返回 {cmd:1}。在 {it:s2} 中，{cmd:"?"}
	表示这里可以匹配一个字符，而 {cmd:"*"} 表示这里可以匹配零个或多个字符。请注意，{help u_glossary##unichar:Unicode 字符}
	可能包含多个字节；因此，使用 {cmd:"*"} 与 Unicode 字符结合使用时，可能会偶尔导致在非字符边界上出现的匹配。

{p2col:}另见 {helpb regexm()}、{cmd:regexr()}，
和 {cmd:regexs()}.{p_end}

{p2col:}{cmd:strmatch("café", "caf?")} = {cmd:1}{p_end}
{p2col: 域 {it:s1}:}字符串{p_end}
{p2col: 域 {it:s2}:}字符串{p_end}
{p2col: 范围:}整数 0 或 1{p_end}
{p2colreset}{...}