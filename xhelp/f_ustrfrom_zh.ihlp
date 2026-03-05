
{help f_ustrfrom:English Version}
{hline}
{* *! version 1.0.1  10mar2015}{...}
    {cmd:ustrfrom(}{it:s}{cmd:,}{it:enc}{cmd:,}{it:mode}{cmd:)} 
{p2colset 8 22 22 2}{...}
{p2col: 描述:}将编码为 {it:enc} 的字符串 {it:s} 转换为 UTF-8 编码的 Unicode 字符串{p_end}

{p2col:}{it:mode} 控制如何处理 {it:s} 中的无效字节序列。可能的值为 {cmd:1}，将无效字节序列替换为 Unicode 替换字符 {bf:\ufffd}； {cmd:2}，跳过任何无效字节序列； {cmd:3}，在第一个无效字节序列处停止，并返回空字符串；或 {cmd:4}，将无效序列中的任何字节替换为转义的十六进制数字序列 {bf:%Xhh}。任何其他值将被视为 {cmd:1}。 值 {bf:4} 的一个很好的用例是通过检查 {cmd:ustrfrom(ust, "utf-8", 4)} 的结果来检查 Unicode 字符串 {it:ust} 包含哪些无效字节。{p_end}

{p2col:}另见 {helpb ustrto()}.{p_end}

{p2col 5 22 26 2:}{cmd:ustrfrom("caf"+char(233), "latin1", 1)} = {cmd:"café"}{p_end}
{p2col 5 22 26 2:}{cmd:ustrfrom("caf"+char(233), "utf-8", 1)} = {cmd:"caf"+ustrunescape("\ufffd")}{p_end}
{p2col 5 22 26 2:}{cmd:ustrfrom("caf"+char(233), "utf-8", 2)} = {cmd:"caf"}{p_end}
{p2col 5 22 26 2:}{cmd:ustrfrom("caf"+char(233), "utf-8", 3)} = {cmd:""}{p_end}
{p2col 5 22 26 2:}{cmd:ustrfrom("caf"+char(233), "utf-8", 4)} = {cmd:"caf%XE9"}{p_end}
{p2col: 域 {it:s}:}编码为 {it:enc} 的字符串{p_end}
{p2col: 域 {it:enc}:}Unicode 字符串{p_end}
{p2col: 域 {it:mode}:}整数{p_end}
{p2col: 范围:}Unicode 字符串{p_end}
{p2colreset}{...}