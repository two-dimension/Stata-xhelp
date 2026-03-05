
{help f_strproper:English Version}
{hline}
{* *! version 1.0.3  17may2019}{...}
    {cmd:strproper(}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}一个字符串，其中第一个 ASCII 字母和其后紧接着的非字母字符后的字母会被大写；所有其他 ASCII 字母将被转换为小写{p_end}

{p2col:}{cmd:strproper()} 实现了一种 {help u_glossary##titlecase:titlecasing} 的形式，仅适用于 {help u_glossary##plainascii:plain ASCII} 字符串。超出 ASCII 范围的 Unicode 字符将被视为非字母字符。要对包含超出纯 ASCII 范围的 Unicode 字符的字符串进行标题格式化，或者实现语言敏感的标题格式化规则，请参见 {help f_ustrtitle_zh:ustrtitle()}。{p_end}

{p2col:}{cmd:strproper("mR. joHn a. sMitH")} = {cmd:"Mr. John A. Smith"}{break}
	{cmd:strproper("jack o'reilly")} = {cmd:"Jack O'Reilly"}{break}
	{cmd:strproper("2-cent's worth")} = {cmd:"2-Cent'S Worth"}{break}
	{cmd:strproper("vous êtes")} = {cmd:"Vous êTes"}{p_end}
{p2col: 域 {it:s}:}字符串{p_end}
{p2col: 范围：}字符串{p_end}
{p2colreset}{...}