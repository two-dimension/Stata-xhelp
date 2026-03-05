
{help f_ustrtitle:English Version}
{hline}
{* *! version 1.0.2  12mar2015}{...}
    {cmd:ustrtitle(}{it:s}[{cmd:,}{it:loc}]{cmd:)} 
{p2colset 8 22 22 2}{...}
{p2col: 描述:}一个字符串，其首字符为Unicode单词大写，其余字符为小写{p_end}

{p2col:}如果未指定 {it:loc}，则使用
	{mansection U 12.4.2.4LocalesinUnicode:默认区域设置}。请注意，Unicode单词与通过函数 {helpb word()} 生成的Stata单词不同。Stata单词是一个用空格分隔的标记。Unicode单词是基于一组
	{browse "http://www.unicode.org/reports/tr29/#Word_Boundaries":单词边界规则} 或某些语言（如中文、日文和泰文）的字典的语言单位。标题大小写也依赖于区域设置并且与上下文有关；例如，在荷兰语中，小写的"ij"被视为一个双字母组合。它的标题大小写为"IJ"。{p_end}

{p2col:}{cmd:ustrtitle("vous êtes", "fr")} = {cmd:"Vous Êtes"}{break}
	{cmd:ustrtitle("mR. joHn a. sMitH")} = {cmd:"Mr. John A. Smith"}{break}
	{cmd:ustrtitle("ijmuiden", "en")} = {cmd:"Ijmuiden"}{break}
	{cmd:ustrtitle("ijmuiden", "nl")} = {cmd:"IJmuiden"}{p_end}
{p2col: 域 {it:s}:}Unicode字符串{p_end}
{p2col: 域 {it:loc}:}Unicode字符串{p_end}
{p2col: 范围:}Unicode字符串{p_end}
{p2colreset}{...}