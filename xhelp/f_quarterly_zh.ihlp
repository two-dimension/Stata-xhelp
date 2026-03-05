
{help f_quarterly:English Version}
{hline}
{* *! version 1.1.2  02mar2015}{...}
    {cmd:quarterly(}{it:s1}{cmd:,}{it:s2}[{cmd:,}{it:Y}]{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}与 {it:s1} 对应的 {it:e_q} 季度日期（自 1960q1 开始的季度），基于 {it:s2} 和 {it:Y}; {it:Y} 指定 {it:topyear}; 详见 {helpb date()}{p_end}
{p2col: 域 {it:s1}:}字符串{p_end}
{p2col: 域 {it:s2}:}字符串 {cmd:"QY"} 和 {cmd:"YQ"}; {cmd:Y} 可以加前缀 {it:##}{p_end}
{p2col: 域 {it:Y}:}整数 1000 到 9998（但可能是 2001 到 2099）{p_end}
{p2col: 范围:}{cmd:%tq} 日期 0100q1 到 9999q4（整数 -7,440 到 32,159）或 {it:missing}{p_end}
{p2colreset}{...}