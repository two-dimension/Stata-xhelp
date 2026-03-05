
{help f_yearly:English Version}
{hline}
{* *! version 1.1.2  02mar2015}{...}
    {cmd:yearly(}{it:s1}{cmd:,}{it:s2}[{cmd:,}{it:Y}]{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}与基于 {it:s2} 和 {it:Y} 的 {it:s1} 对应的年日期 ({it:e_y})； {it:Y} 指定 {it:topyear}；请参见 {helpb date()}{p_end}
{p2col: 域 {it:s1}:}字符串{p_end}
{p2col: 域 {it:s2}:}字符串 {cmd:"Y"}； {cmd:Y} 可以以 {it:##} 为前缀{p_end}
{p2col: 域 {it:Y}:}整数 1000 到 9998（但可能是 2001 到 2099）{p_end}
{p2col: 范围：}{cmd:%ty} 日期 0100 到 9999（整数 0100 到 9999）或 {it:missing}{p_end}
{p2colreset}{...}