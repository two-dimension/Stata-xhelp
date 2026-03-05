
{help f_ustrrpos:English Version}
{hline}
{* *! version 1.0.0  24mar2015}{...}
    {cmd:ustrrpos(}{it:s1}{cmd:,}{it:s2}[{cmd:,}{it:n}]{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}在 {it:s1} 中 {it:s2} 最后出现的位置；否则为 {cmd:0}{p_end}

{p2col:}如果指定了 {it:n} 并且大于 0，则仅搜索 {it:s1} 中第一个 Unicode 字符与第 {it:n} 个 Unicode 字符之间的部分。执行搜索之前，{it:s1} 或 {it:s2} 中的无效 UTF-8 序列将被替换为 Unicode 替代字符 {bf:\ufffd}。{p_end}

{p2col:}{cmd:ustrrpos("enchanté", "n")} = {cmd:6}{break}
	{cmd:ustrrpos("enchanté", "n", 5)} = {cmd:2}{break}
	{cmd:ustrrpos("enchanté", "n", 6)} = {cmd:6}{break}
        {cmd:ustrrpos("enchanté", "ne")} = {cmd:0}{p_end}
{p2col: 域 {it:s1}:}Unicode 字符串（待搜索）{p_end}
{p2col: 域 {it:s2}:}Unicode 字符串（待搜索的内容）{p_end}
{p2col: 域 {it:n}:}整数{p_end}
{p2col: 范围：}整数{p_end}
{p2colreset}{...}