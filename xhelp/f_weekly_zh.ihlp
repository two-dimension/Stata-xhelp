
{help f_weekly:English Version}
{hline}
{* *! version 1.1.2  02mar2015}{...}
    {cmd:weekly(}{it:s1}{cmd:,}{it:s2}[{cmd:,}{it:Y}]{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}与 {it:s2} 和 {it:Y} 基于的 {it:s1} 对应的 {it:e_w} 周期性日期（自1960年第1周以来的周数）; {it:Y} 指定 {it:topyear}; 见 {helpb date()}{p_end}
{p2col: 域 {it:s1}:}字符串{p_end}
{p2col: 域 {it:s2}:}字符串 {cmd:"WY"} 和 {cmd:"YW"}; {cmd:Y} 可以以 {it:##} 为前缀{p_end}
{p2col: 域 {it:Y}:}整数 1000 到 9998（但可能是 2001 到 2099){p_end}
{p2col: 范围:}{cmd:%tw} 日期 0100w1 到 9999w52（整数 -96,720 到 418,079）或 {it:missing}{p_end}
{p2colreset}{...}