
{help f_uchar:English Version}
{hline}
{* *! version 1.0.3  17may2019}{...}
    {cmd:uchar(}{it:n}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}对应于 Unicode 代码点 {it:n} 的 Unicode 字符，或者如果 {it:n} 超出 Unicode 代码点范围则返回空字符串{p_end}

{p2col:}注意，{cmd:uchar()} 接受 Unicode {help u_glossary##codep:代码点} 的十进制值。{cmd:ustrunescape()} 接受转义的十六进制数字字符串表示的 Unicode 代码点。例如，{cmd:uchar(8364)} 和 {cmd:ustrunescape("\u20ac")} 都会产生欧元符号。{p_end}
{p2col: 域 {it:n}:}整数 {ul:>} 0{p_end}
{p2col: 范围：}Unicode 字符{p_end}
{p2colreset}{...}