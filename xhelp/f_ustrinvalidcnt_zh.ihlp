
{help f_ustrinvalidcnt:English Version}
{hline}
{* *! version 1.0.1  10mar2015}{...}
    {cmd:ustrinvalidcnt(}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}无效 UTF-8 序列的数量在 {it:s}{p_end}

{p2col:}无效的 UTF-8 序列可能包含一个字节或多个字节.{break}

{p2col:}{cmd:ustrinvalidcnt("médiane")} = {cmd:0}{break}
	{cmd:ustrinvalidcnt("médiane"+char(229))} = {cmd:1}{break}
	{cmd:ustrinvalidcnt("médiane"+char(229)+char(174))} = {cmd:1}{break}
	{cmd:ustrinvalidcnt("médiane"+char(174)+char(158))} = {cmd:2}{p_end}
{p2col: 域 {it:s}:}Unicode 字符串{p_end}
{p2col: 范围:}整数{p_end}
{p2colreset}{...}