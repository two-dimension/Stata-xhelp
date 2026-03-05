
{help f_ustrupper:English Version}
{hline}
{* *! version 1.0.2  12mar2015}{...}
    {cmd:ustrupper(}{it:s}[{cmd:,}{it:loc}]{cmd:)} 
{p2colset 8 22 22 2}{...}
{p2col: 描述：}在给定的语言环境 {it:loc} 下，将字符串 {it:s} 中的所有字符转换为大写字母。{p_end}

{p2col:}如果未指定 {it:loc}，将使用
	{mansection U 12.4.2.4LocalesinUnicode:默认语言环境}。相同的 {it:s} 但不同的 {it:loc} 可能会产生不同的结果；例如，在英语中，“i”的大写字母是“I”，而在土耳其语中则是带点的“I”。结果的字节长度可能与输入字符串不同；例如，德文字母 ß（代码点 {bf:\u00df}）的大写形式是两个大写字母“SS”。{p_end}

{p2col:}{cmd:ustrupper("médiane","fr")}  = {cmd:"MÉDIANE"}{break}
        {cmd:ustrupper("Rußland", "de")} = {cmd:"RUSSLAND"}{break} 
        {cmd:ustrupper("istanbul", "tr")} = {cmd:"İSTANBUL"}{p_end}
{p2col: 域 {it:s}:}Unicode 字符串{p_end}
{p2col: 域 {it:loc}:}语言环境名称{p_end}
{p2col: 范围：}Unicode 字符串{p_end}
{p2colreset}{...}