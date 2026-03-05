
{help f_substr:English Version}
{hline}
{* *! version 1.1.4  17may2019}{...}
    {cmd:substr(}{it:s}{cmd:,}{it:n1}{cmd:,}{it:n2}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}从 {it:s} 中提取子字符串，起始位置为 {it:n1}，长度为 {it:n2}{p_end}

{p2col:}{cmd:substr()} 仅用于处理 {help u_glossary##plainascii:plain ASCII} 字符，并供希望从字符串中提取字节子集的程序员使用。对于纯 ASCII 文本，{it:n1} 是起始字符，{it:n2} 是字符串的字符长度。对于程序员而言，{cmd:substr()} 本质上是一个基于字节的函数。对于纯 ASCII 字符，这两者是等效的，但您可以操作超出该范围的字节值。请注意，任何超出 ASCII 范围的 Unicode 字符（代码点大于 127）在 UTF-8 编码中占用超过 1 个字节；例如，{cmd:é} 占用 2 个字节。{p_end}

{p2col:}要获取 {help u_glossary##unichar:Unicode strings} 的子字符串，请参见 {help f_usubstr_zh:usubstr()}。{p_end}

{p2col:}如果 {it:n1} < 0，{it:n1} 被解释为距离字符串末尾的距离；如果 {it:n2} = {cmd:.} （{it:missing}），则返回字符串的其余部分。{p_end}

{p2col:}{cmd:substr("abcdef",2,3)} = {cmd:"bcd"}{break}
        {cmd:substr("abcdef",-3,2)} = {cmd:"de"}{break}
	{cmd:substr("abcdef",2,.)} = {cmd:"bcdef"}{break}
	{cmd:substr("abcdef",-3,.)} = {cmd:"def"}{break}
	{cmd:substr("abcdef",2,0)} = {cmd:""}{break}
	{cmd:substr("abcdef",15,2)} = {cmd:""}{p_end}
{p2col: 域 {it:s}:}字符串{p_end}
{p2col: 域 {it:n1}:}整数 >= 1 和 <= -1{p_end}
{p2col: 域 {it:n2}:}整数 >= 1{p_end}
{p2col: 范围：}字符串{p_end}
{p2colreset}{...}