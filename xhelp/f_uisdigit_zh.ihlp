
{help f_uisdigit:English Version}
{hline}
{* *! version 1.0.1  10mar2015}{...}
    {cmd:uisdigit(}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}{cmd:1} 如果 {it:s} 中的第一个 Unicode 字符是 Unicode 十进制数字；否则，{cmd:0}{p_end}

{p2col:}Unicode 十进制数字是根据 Unicode 标准具有 {bf:Nd} 字符属性的 Unicode 字符。 如果字符串以无效的 UTF-8 序列开头，函数将返回 {cmd:-1}。
{p_end}
{p2col: 域 {it:s}:}Unicode 字符串{p_end}
{p2col: 范围:}整数{p_end}
{p2colreset}{...}