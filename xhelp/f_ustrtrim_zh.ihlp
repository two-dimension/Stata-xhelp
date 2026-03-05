
{help f_ustrtrim:English Version}
{hline}
{* *! version 1.0.1  12mar2015}{...}
    {cmd:ustrtrim(}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}去除 Unicode 字符串 {it:s} 中前导和尾随的 Unicode 空白字符和空格 {p_end}

{p2col:}请注意，除了 {cmd:char(32)}，ASCII 字符
	{cmd:char(9)}、{cmd:char(10)}、{cmd:char(11)}、{cmd:char(12)} 和
	{cmd:char(13)} 在 Unicode 标准中也被视为空白字符。{p_end}

{p2col:}{cmd:ustrtrim(" this ")} = {cmd:"this"}{break}
        {cmd:ustrtrim(char(11)+" this ")+char(13)} = {cmd:"this"}{break}
	{cmd:ustrtrim(" this "+ustrunescape("\u2000"))} = {cmd:"this"}{p_end}
{p2col: 域 {it:s}:}Unicode 字符串{p_end}
{p2col: 范围:}Unicode 字符串{p_end}
{p2colreset}{...}