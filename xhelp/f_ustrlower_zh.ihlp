
{help f_ustrlower:English Version}
{hline}
{* *! version 1.0.2  12mar2015}{...}
    {cmd:ustrlower(}{it:s}[{cmd:,}{it:loc}]{cmd:)} 
{p2colset 8 22 22 2}{...}
{p2col: 描述：}将Unicode字符串 {it:s} 中的所有字符转换为小写，
	在给定的区域设置 {it:loc}{p_end}

{p2col:}如果未指定 {it:loc} ，则使用
	{mansection U 12.4.2.4LocalesinUnicode:默认区域设置}。
	相同的 {it:s} 但不同的 {it:loc} 可能产生不同的结果；
	例如，在英语中，“I”的小写字母是“i”，而在土耳其语中是无点的“i”。
	同一Unicode字符可以根据其周围字符映射为不同的Unicode字符；
	例如，希腊大写字母西格玛Σ有两种小写形式：
	如果它是单词的最后一个字符，则是ς，否则是σ。
	结果的字节数可能比输入Unicode字符串更长或更短。{p_end}

{p2col:}{cmd:ustrlower("MÉDIANE","fr")} = {cmd:"médiane"}{break}
	{cmd:ustrlower("ISTANBUL","tr")} = {cmd:"ıstanbul"}{break}
	{cmd:ustrlower("ὈΔΥΣΣΕΎΣ")} = {cmd:"ὀδυσσεύς"}{p_end}
{p2col: 域 {it:s}:}Unicode字符串{p_end}
{p2col: 域 {it:loc}:}区域设置名称{p_end}
{p2col: 范围：}Unicode字符串{p_end}
{p2colreset}{...}