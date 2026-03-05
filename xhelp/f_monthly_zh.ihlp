
{help f_monthly:English Version}
{hline}
{* *! version 1.1.2  02mar2015}{...}
    {cmd:monthly(}{it:s1}{cmd:,}{it:s2}[{cmd:,}{it:Y}]{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}对应于 {it:s1} 的 {it:e_m} 月度日期（自 1960m1 起的月份），基于 {it:s2} 和 {it:Y}； {it:Y} 指定 {it:topyear}；请参阅 {helpb date()}{p_end}
{p2col: 域 {it:s1}:}字符串{p_end}
{p2col: 域 {it:s2}:}字符串 {cmd:"MY"} 和 {cmd:"YM"}； {cmd:Y} 可以前缀为 {it:##}{p_end}
{p2col: 域 {it:Y}:}整数 1000 到 9998（但可能是 2001 到 2099）{p_end}
{p2col: 范围：}{cmd:%tm} 日期 0100m1 到 9999m12（整数 -22,320 到 96,479）或 {it:missing}{p_end}
{p2colreset}{...}