
{help f_abbrev:English Version}
{hline}
{* *! version 1.1.5  17may2019}{...}
    {cmd:abbrev(}{it:s},{it:n}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}名称 {it:s}，缩写为长度为 {it:n}{p_end}

{p2col:}长度以 {help u_glossary##disambig:显示列} 的数量来衡量，而不是字符的数量。对于大多数用户而言，显示列的数量等于字符的数量。有关显示列的详细讨论，请参见 {findalias frdiunicode}.{p_end}

{p2col:}如果 {it:s} 的任何字符是一个句点 "{cmd:.}"，并且 {it:n} < 8，则 {it:n} 的值默认为 8。否则，如果 {it:n} < 5，则 {it:n} 默认为 5。如果 {it:n} 是 {it:missing}，则 {cmd:abbrev()} 将返回整个字符串 {it:s}。 {cmd:abbrev()} 通常用于变量名和带有因子变量或时间序列运算符的变量名（即句点情况）。{p_end}

{p2col:}{cmd:abbrev("displacement",8)} 是 {cmd:displa~t}.{p_end}
{p2col: 域 {it:s}:}字符串{p_end}
{p2col: 域 {it:n}:}整数 5 到 32{p_end}
{p2col: 范围:}字符串{p_end}
{p2colreset}{...}