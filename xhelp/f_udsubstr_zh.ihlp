
{help f_udsubstr:English Version}
{hline}
{* *! version 1.0.2  12mar2015}{...}
    {cmd:udsubstr(}{it:s}{cmd:,}{it:n1}{cmd:,}{it:n2}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}返回 Unicode 字符串 {it:s} 的子串，从字符 {it:n1} 开始，显示 {it:n2} 列{p_end}

{p2col:}如果 {it:n2} = {cmd:.}（{it:missing}），则返回 Unicode 字符串的其余部分。如果 {it:n2} 
	{mansection U 12.4.2.2DisplayingUnicodecharacters:显示列数}
从 {it:n1} 在 Unicode 字符的中间，则子串在前一个 Unicode 字符处停止{p_end}

{p2col:}{cmd:udsubstr("médiane",2,3)} = {cmd:"édi"}{break}
        {cmd:udsubstr("中值",1,1)} = {cmd:""}{break}
	{cmd:udsubstr("中值",1,2)} = {cmd:"中"}{p_end}
{p2col: 域 {it:s}:}Unicode 字符串{p_end}
{p2col: 域 {it:n1}:}整数 {ul:>} 1{p_end}
{p2col: 域 {it:n2}:}整数 {ul:>} 1{p_end}
{p2col: 范围:}Unicode 字符串{p_end}
{p2colreset}{...}