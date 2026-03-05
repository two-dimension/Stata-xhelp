
{help f_stritrim:English Version}
{hline}
{* *! version 1.0.0  02mar2015}{...}
    {cmd:stritrim(}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}{it:s} 中的多个连续内部空格（ASCII 空格字符 {cmd:char(32)}）被压缩为一个空格{p_end}

{p2col:}{cmd:stritrim("hello}{space 5}{cmd:there")} = {cmd:"hello there"}
{p_end}
{p2col: 域 {it:s}:}字符串{p_end}
{p2col: 范围:}无多个连续内部空格的字符串{p_end}
{p2colreset}{...}