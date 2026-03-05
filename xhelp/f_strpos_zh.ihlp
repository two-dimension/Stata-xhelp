
{help f_strpos:English Version}
{hline}
{* *! version 1.1.4  17may2019}{...}
    {cmd:strpos(}{it:s1}{cmd:,}{it:s2}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}在 {it:s1} 中首次找到 {it:s2} 的位置；如果未找到，返回 {cmd:0}{p_end}
		     
{p2col:}{cmd:strpos()} 仅用于 {help u_glossary##plainascii:plain ASCII} 字符，并供希望获取 {it:s2} 字节位置的程序员使用。
注意，任何超出 ASCII 范围的 Unicode 字符（代码点大于 127）在 UTF-8 编码中占用多个字节；例如，{cmd:é} 占用 2 个字节.{p_end}

{p2col:}要查找 {it:s2} 在 {help u_glossary##unichar:Unicode string} 中的字符位置，请参阅
	{help f_ustrpos_zh:ustrpos()}.{p_end}


{p2col:}{cmd:strpos("this","is")} = {cmd:3}{break}
	{cmd:strpos("this","it")} = {cmd:0}{p_end}
{p2col: 域 {it:s1}:}字符串（待搜索）{p_end}
{p2col: 域 {it:s2}:}字符串（待搜索）{p_end}
{p2col: 范围:}整数 {ul:>} 0{p_end}
{p2colreset}{...}