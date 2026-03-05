
{help f_ustrright:English Version}
{hline}
{* *! version 1.0.1  10mar2015}{...}
    {cmd:ustrright(}{it:s}{cmd:,}{it:n}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}Unicode 字符串 {it:s} 的最后 {it:n} 个 Unicode 字符{p_end}

{p2col:}无效的 UTF-8 序列会被替换为 Unicode 替代字符 {bf:\ufffd}.{p_end}

{p2col:}{cmd:ustrright("Экспериментальные",3)} = {cmd:"ные"}{break}
        {cmd:ustrright("Экспериментальные",5)} = {cmd:"льные"}{p_end}
{p2col: 域 {it:s}:}Unicode 字符串{p_end}
{p2col: 域 {it:n}:}整数{p_end}
{p2col: 范围：}Unicode 字符串{p_end}
{p2colreset}{...}