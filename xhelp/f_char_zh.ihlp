
{help f_char:English Version}
{hline}
{* *! version 1.1.3  02mar2015}{...}
    {cmd:char(}{it:n}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}对应于 ASCII 或扩展 ASCII 码 {it:n} 的字符；如果 {it:n} 不在域内，则为 {cmd:""}{p_end}
	
{p2col:}注意：ASCII 码范围从 0 到 127；扩展 ASCII 码范围从 128 到 255。 在 Stata 14 之前，扩展 ASCII 字符的显示依赖于编码。 例如，在使用 Windows-1252 编码的 Microsoft Windows 上，{cmd:char(128)} 显示欧元符号，而在使用 ISO-Latin-1 编码的 Linux 上，{cmd:char(128)} 显示无效字符符号。 从 Stata 14 开始，Stata 在所有平台上的显示编码为 UTF-8。 {cmd:char(128)} 函数是无效的 UTF-8 序列，因此将显示一个问号。 有两个与 {cmd:char()} 对应的 Unicode 函数：{cmd:uchar()} 和 {cmd:ustrunescape()}。 您可以使用 {cmd:uchar(8364)} 或 {cmd:ustrunescape("\u20AC")} 在所有平台上显示欧元符号。{p_end}
{p2col: 域 {it:n}：}整数 0 到 255{p_end}
{p2col: 范围：}ASCII 字符{p_end}
{p2colreset}{...}