
{help f_subinstr:English Version}
{hline}
{* *! version 1.1.4  17may2019}{...}
    {cmd:subinstr(}{it:s1}{cmd:,}{it:s2}{cmd:,}{it:s3}{cmd:,}{it:n}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}{it:s1}，其中{it:s1}中前{it:n}个出现的{it:s2}已被{it:s3}替换{p_end}
	
{p2col:}{cmd:subinstr()} 仅适用于{help u_glossary##plainascii:普通 ASCII} 字符，并供希望进行基于字节的替换的程序员使用。
注意，任何超出 ASCII 范围的 Unicode 字符（代码点大于 127）在 UTF-8 编码中占用超过 1 个字节；例如，{cmd:é} 占用 2 个字节。{p_end}

{p2col:}要在{help u_glossary##unichar:Unicode 字符串}中执行基于字符的替换，请参见{help f_usubinstr_zh:usubinstr()}。{p_end}

{p2col:}如果{it:n}为{it:missing}，将替换所有出现的内容。

{p2col:}另请参见 {helpb regexm()}、{cmd:regexr()} 和 {cmd:regexs()}。{p_end}

{p2col 5 22 26 2:}{cmd:subinstr("this is the day","is","X",1)} = 
	          {cmd:"thX is the day"}{p_end}
{p2col 5 22 26 2:}{cmd:subinstr("this is the hour","is","X",2)} =
	          {cmd:"thX X the hour"}{p_end}
{p2col 5 22 26 2:}{cmd:subinstr("this is this","is","X",.)} = 
	          {cmd:"thX X thX"}{p_end}
{p2col: 域 {it:s1}:}字符串（要替换的内容）{p_end}
{p2col: 域 {it:s2}:}字符串（被替换的内容）{p_end}
{p2col: 域 {it:s3}:}字符串（替换成的内容）{p_end}
{p2col: 域 {it:n}:}整数 {ul:>} 0 或 {it:missing}{p_end}
{p2col: 范围:}字符串{p_end}
{p2colreset}{...}