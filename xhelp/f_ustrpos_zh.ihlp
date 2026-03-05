
{help f_ustrpos:English Version}
{hline}
{* *! version 1.0.0  24mar2015}{...}
    {cmd:ustrpos(}{it:s1}{cmd:,}{it:s2}[{cmd:,}{it:n}]{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}在 {it:s1} 中首次找到 {it:s2} 的位置；否则，返回 {cmd:0}{p_end}

{p2col:}如果指定了 {it:n} 且大于 0，则搜索将在 {it:s1} 的第 {it:n} 个 Unicode 字符处开始。在搜索执行之前，{it:s1} 或 {it:s2} 中的无效 UTF-8 序列将被替换为 Unicode 替换字符 {bf:\ufffd}。{p_end}

{p2col:}{cmd:ustrpos("médiane", "édi")} = {cmd:2}{break}
	{cmd:ustrpos("médiane", "édi", 3)} = {cmd:0}{break}
	{cmd:ustrpos("médiane", "éci")} = {cmd:0}{p_end}
{p2col: 域 {it:s1}:}Unicode 字符串（待搜索）{p_end}
{p2col: 域 {it:s2}:}Unicode 字符串（搜索的内容）{p_end}
{p2col: 域 {it:n}:}整数{p_end}
{p2col: 范围：}整数{p_end}
{p2colreset}{...}