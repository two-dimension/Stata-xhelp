
{help f_halfyearly:English Version}
{hline}
{* *! version 1.1.2  02mar2015}{...}
    {cmd:halfyearly(}{it:s1}{cmd:,}{it:s2}[{cmd:,}{it:Y}]{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}对应于基于 {it:s2} 和 {it:Y} 的 {it:s1} 的 {it:e_h} 半年日期（自1960年第一半年起的半年数）;
           {it:Y} 指定 {it:topyear}；请参见 {helpb date()}{p_end}
{p2col: 域 {it:s1}:}字符串{p_end}
{p2col: 域 {it:s2}:}字符串 {cmd:"HY"} 和 {cmd:"YH"}; {cmd:Y} 可以以 {it:##} 为前缀{p_end}
{p2col: 域 {it:Y}:}整数 1000 到 9998（但可能是 2001 到 2099）{p_end}
{p2col: 范围:}{cmd:%th} 日期 0100h1 到 9999h2（整数 -3,720 到 16,079）
           或 {it:missing}{p_end}
{p2colreset}{...}