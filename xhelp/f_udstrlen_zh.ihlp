
{help f_udstrlen:English Version}
{hline}
{* *! version 1.0.2  12mar2015}{...}
    {cmd:udstrlen(}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}所需的显示列数，用于在 Stata 结果窗口中显示 Unicode 字符串 {it:s}{p_end}

{p2col:}CJK（中文、日文和韩文）编码中的 Unicode 字符通常需要两列{mansection U 12.4.2.2DisplayingUnicodecharacters:display columns}；拉丁字符通常需要一列。任何无效的 UTF-8 序列需要一列。{p_end}

{p2col:}{cmd:udstrlen("中值")} = {cmd:4}{break}
	{cmd:ustrlen("中值")} = {cmd:2}{break}
	{cmd:strlen("中值")} = {cmd:6}{p_end}
{p2col: 域 {it:s}:}Unicode 字符串{p_end}
{p2col: 范围：}整数 {ul:>} 0{p_end}
{p2colreset}{...}