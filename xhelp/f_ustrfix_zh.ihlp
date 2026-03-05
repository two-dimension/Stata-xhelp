
{help f_ustrfix:English Version}
{hline}
{* *! version 1.0.3  08mar2015}{...}
    {cmd:ustrfix(}{it:s}[{cmd:,}{it:rep}]{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}用一个 Unicode 字符替换每个无效的 UTF-8 序列{p_end}
	
{p2col:}在单参数情况下，使用 Unicode 替换字符 {bf:\ufffd}。在双参数情况下，使用 {it:rep} 的第一个 Unicode 字符。如果 {it:rep} 以无效的 UTF-8 序列开头，则使用 Unicode 替换字符 {bf:\ufffd}。请注意，无效的 UTF-8 序列可以包含一个字节或多个字节。{p_end}

{p2col 5 22 26 2:}{cmd:ustrfix(char(200))} = {cmd:ustrunescape("\ufffd")}{p_end}
{p2col 5 22 26 2:}{cmd:ustrfix("ab"+char(200)+"cdé", "")} = {cmd:"abcdé"}{p_end}
{p2col 5 22 26 2:}{cmd:ustrfix("ab"+char(229)+char(174)+"cdé", "é")} = {cmd:"abécdé"}{p_end}
{p2col: 域 {it:s}:}Unicode 字符串{p_end}
{p2col: 域 {it:rep}:}Unicode 字符{p_end}
{p2col: 范围：}Unicode 字符串{p_end}
{p2colreset}{...}