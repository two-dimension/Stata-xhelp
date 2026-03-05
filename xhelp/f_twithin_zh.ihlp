
{help f_twithin:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:twithin(}{it:d1}{cmd:,} {it:d2}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}{it:true} 如果 {it:d1} < {it:t} < {it:d2}，其中 {it:t} 是
	之前 {cmd:tsset} 设置过的时间变量{p_end}

{p2col:}参见 {helpb tin()} 函数；{cmd:twithin()} 类似，不过范围是排他的。{p_end}
{p2col: 范围 {it:d1}:}日期或时间常量，或以 {it:t} 单位记录的字符串，之前 {cmd:tsset} 设置过，或留空表示没有最小日期
{p_end}
{p2col: 范围 {it:d2}:}日期或时间常量，或以 {it:t} 单位记录的字符串，之前 {cmd:tsset} 设置过，或留空表示没有最大日期
{p_end}
{p2col: 范围:}0 和 1，1 表示 {it:true}{p_end}
{p2colreset}{...}