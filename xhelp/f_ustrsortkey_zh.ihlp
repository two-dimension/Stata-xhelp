
{help f_ustrsortkey:English Version}
{hline}
{* *! version 1.0.2  13mar2015}{...}
    {cmd:ustrsortkey(}{it:s}[{cmd:,}{it:loc}]{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}生成一个以空字节结尾的字节数组，可以被 {help sort_zh} 命令使用，以产生与 {cmd:ustrcompare()} 相同的顺序。{p_end}

{p2col:}如果发生错误，函数可能返回一个空数组。结果依赖于区域设置。如果未指定 {it:loc}，将使用 {mansection U 12.4.2.4LocalesinUnicode:默认区域设置}。结果也对变音符号和大小写敏感。如果需要不同的行为，例如不区分大小写的结果，应使用扩展函数 {cmd:ustrsortkeyex()}。有关详细信息和示例，请参见 {findalias frunicodesort}。{p_end}
{p2col: 域 {it:s}:}Unicode 字符串{p_end}
{p2col: 域 {it:loc}:}Unicode 字符串{p_end}
{p2col: 范围:}以空字节结尾的字节数组{p_end}
{p2colreset}{...}