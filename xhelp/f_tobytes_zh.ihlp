
{help f_tobytes:English Version}
{hline}
{* *! version 1.0.1  10mar2015}{...}
    {cmd:tobytes(}{it:s}[{cmd:,}{it:n}]{cmd:)} 
{p2colset 8 22 22 2}{...}
{p2col: 描述:}转义的十进制或十六进制数字字符串，最多可达200字节的 {it:s}{p_end}
	
{p2col:}转义的十进制数字字符串形式为 {bf:\dDDD}。转义的十六进制数字字符串形式为 {bf:\xhh}。 如果未指定 {it:n} 或 {it:n} 为0，则生成十进制形式。否则，生成十六进制形式。{p_end}

{p2col:}{cmd:tobytes("abc")} = {cmd:"\d097\d098\d099"}{break}
	{cmd:tobytes("abc", 1)} = {cmd:"\x61\x62\x63"}{break}
	{cmd:tobytes("café")} = {cmd:"\d099\d097\d102\d195\d169"}{p_end}
{p2col: 域 {it:s}:}Unicode 字符串{p_end}
{p2col: 域 {it:n}:}整数{p_end}
{p2col: 范围:}字符串{p_end}
{p2colreset}{...}