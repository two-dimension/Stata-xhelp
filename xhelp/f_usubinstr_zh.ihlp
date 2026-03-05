
{help f_usubinstr:English Version}
{hline}
{* *! version 1.0.1  10mar2015}{...}
    {cmd:usubinstr(}{it:s1}{cmd:,}{it:s2}{cmd:,}{it:s3}{cmd:,}{it:n}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}替换 Unicode 字符串 {it:s1} 中前 {it:n} 次出现的 Unicode 字符串 {it:s2} 为 Unicode 字符串 {it:s3}{p_end}
	
{p2col:}如果 {it:n} 为 {it:missing}，则替换所有出现的字符串。在 {it:s1}、{it:s2} 或 {it:s3} 中的无效 UTF-8 序列将在进行替换之前被替换为 Unicode 替换字符 {bf:\ufffd}.{p_end}

{p2col 5 22 26 2:}{cmd:usubinstr("de très près","ès","es",1)} = {cmd:"de tres près"}{p_end}
{p2col 5 22 26 2:}{cmd:usubinstr("de très près","ès","X",2)} = {cmd:"de trX prX"}{p_end}
{p2col: 域 {it:s1}:}Unicode 字符串（用于替换进）{p_end}
{p2col: 域 {it:s2}:}Unicode 字符串（用于替换出）{p_end}
{p2col: 域 {it:s3}:}Unicode 字符串（用于替代）{p_end}
{p2col: 域 {it:n}:}整数 {ul:>} 0 或 {it:missing}{p_end}
{p2col: 范围：}Unicode 字符串{p_end}
{p2colreset}{...}