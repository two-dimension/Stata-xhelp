
{help f_ustrreverse:English Version}
{hline}
{* *! version 1.0.2  12mar2015}{...}
    {cmd:ustrreverse(}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}反转 Unicode 字符串 {it:s}{p_end}

{p2col:}该函数不考虑 Unicode 字符的等价性。因此，分解形式的 Unicode 字符不会作为一个整体被反转。无效的 UTF-8 序列将被替换为 Unicode 替换字符 {bf:\ufffd}.{p_end}

{p2col:}{cmd:ustrreverse("médiane")} = {cmd:"enaidém"}{p_end}
{p2col: 域 {it:s}:}Unicode 字符串{p_end}
{p2col: 范围：}反转的 Unicode 字符串{p_end}
{p2colreset}{...}