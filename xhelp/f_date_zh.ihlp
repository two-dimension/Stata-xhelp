
{help f_date:English Version}
{hline}
{* *! version 1.1.3  15may2018}{...}
    {cmd:date(}{it:s1}{cmd:,}{it:s2}[{cmd:,}{it:Y}]{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}与 {it:s2} 和 {it:Y} 基于 {it:s1} 的对应日期（自1960年1月1日起的天数）
           {p_end}

{p2col:}{it:s1} 包含以字符串记录的日期，几乎可以使用任何格式。月份可以以全拼、缩写（至三个字符）或数字表示；年份可以包含或不包含世纪；允许使用空格和标点符号。

{p2col:}{it:s2} 是 {cmd:M}、{cmd:D} 和 [{it:##}]{it:Y} 的任意排列，顺序定义了 {it:s1} 中月份、日期和年份出现的顺序。{it:##}（如指定）表示 {it:s1} 中两位数年份的默认世纪。例如，{it:s2}={cmd:"MD19Y"} 将把 {it:s1}={cmd:"11/15/91"} 转换为 15nov1991。

{p2col:}{it:Y} 提供了一种处理两位数年份的替代方法。当遇到两位数年份时，将返回不超过 {it:Y} 的最大年份 {it:topyear}。

                            {cmd:date("1/15/08","MDY",1999)} = 15jan1908
                            {cmd:date("1/15/08","MDY",2019)} = 15jan2008

                            {cmd:date("1/15/51","MDY",2000)} = 15jan1951
                            {cmd:date("1/15/50","MDY",2000)} = 15jan1950
                            {cmd:date("1/15/49","MDY",2000)} = 15jan1949

                            {cmd:date("1/15/01","MDY",2050)} = 15jan2001
                            {cmd:date("1/15/00","MDY",2050)} = 15jan2000

{p2col:}如果既未指定 {it:##} 也未指定 {it:Y}，当遇到两位数年份时，{cmd:date()} 将返回 {it:missing}。有关更多信息，请参阅 {help datetime translation##twodigit:{it:处理两位数年份}} 在 {helpb datetime translation:[D] 日期时间转换} 中。{p_end}
{p2col: 域 {it:s1}:}字符串{p_end}
{p2col: 域 {it:s2}:}字符串{p_end}
{p2col: 域 {it:Y}:}整数 1000 至 9998（但可能为 2001 至 2099）{p_end}
{p2col: 范围:}{cmd:%td} 日期 01jan0100 至 31dec9999（整数 -679,350 至 2,936,549）或 {it:missing}{p_end}
{p2colreset}{...}