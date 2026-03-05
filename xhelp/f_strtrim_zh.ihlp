
{help f_strtrim:English Version}
{hline}
{* *! version 1.2.0  02mar2015}{...}
    {cmd:strtrim(}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}{it:s} 去除首尾空格（ASCII 空格字符 {bf:char(32)}）；相当于 {cmd:strltrim(strrtrim(}{it:s}{cmd:))}{p_end}

{p2col:}{cmd:strtrim(" this ")} = {cmd:"this"}{p_end}
{p2col: 域 {it:s}:}字符串{p_end}
{p2col: 范围:}没有首尾空格的字符串{p_end}
{p2colreset}{...}