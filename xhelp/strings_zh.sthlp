
{smcl}
{* *! version 1.0.4  08mar2015}{...}
{findalias asfrstr}{...}
{title:标题}
{help strings:English Version}
{hline}

{p 4 13 2}
{findalias frstr}


{title:描述}

{pstd}
字符串是一系列字符，通常用双引号括起来。引号本身不被视为字符串的一部分，而是用来标记字符串的开始和结束。以下是有效字符串的示例：

{cmd}        "Hello, world"
        "String"
        "string"
        " string"
        "string "
        ""
        "x/y+3"
        "1.2"{txt}

{pstd}
以上所有字符串都是不同的。大小写很重要。前导和尾随空格也很重要。还要注意，{cmd:"1.2"}是一个字符串而不是数字，因为它被引号括起来。

{pstd}
在没有引号的情况下，字符串无法被分隔，但在输入数据时，有一些情况可以不使用引号。在这些情况下，未分隔的字符串会去掉前导和尾随空格。有引号的字符串始终按原样接受。

{pstd}
特殊字符串 {cmd:""}，通常称为空字符串，被Stata视为缺失值。由一个句点组成的字符串 {cmd:"."} 没有特别的意义。

{pstd}
除了使用双引号来括起字符串外，Stata还允许复合双引号： {cmd:`"} 和 {cmd:"'}. 你可以输入 {cmd:"}{it:string}{cmd:"} 或者 {cmd:`"}{it:string}{cmd:"'}，尽管用户很少输入 {cmd:`"}{it:string}{cmd:"'}. 复合双引号对程序员而言特别有兴趣，因为它们可以嵌套，并提供一种方式让引用的字符串本身也可以包含双引号（简单或复合）。请参见 {findalias frdoubleq}。

{pstd}
Stata提供两种类型的字符串： {cmd:str}{it:#}s 和 {cmd:strL}s。{cmd:str}{it:#}s 是固定长度的字符串存储类型。一个 {cmd:str36} 字符串可以容纳36个字符。Stata允许 {cmd:str1}、{cmd:str2}、{cmd:str3}，……，{cmd:str2045}。{cmd:strL}s 是Stata的长字符串，最长可达20亿个字符。{cmd:strL}s 可以容纳二进制字符串，而 {cmd:str}{it:#}s 只能容纳文本字符。有关更多信息，请参见 {findalias frstrs} 和 {findalias frstrl}。如果你的字符串包含Unicode字符，请参见 {findalias frunicode}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <strings.sthlp>}