
{help f_ustrlen:English Version}
{hline}
{* *! version 1.0.4  17may2019}{...}
    {cmd:ustrlen(}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}Unicode 字符串 {it:s} 中的字符数{p_end}

{p2col:}无效的 UTF-8 序列被视为一个 Unicode 字符。一个无效的 UTF-8 序列可以包含一个字节或多个字节。注意，任何超过 {help u_glossary##plainascii:plain ASCII} 范围的 Unicode 字符（代码点大于 127）在 UTF-8 编码中占用超过 1 字节；例如，{cmd:é} 占用 2 个字节。{p_end}

{p2col:}{cmd:ustrlen("médiane")} = {cmd:7}{break}
    {cmd:strlen("médiane")} = {cmd:8}{p_end}
{p2col: 域 {it:s}:}Unicode 字符串{p_end}
{p2col: 范围：}整数 {ul:>} 0{p_end}
{p2colreset}{...}