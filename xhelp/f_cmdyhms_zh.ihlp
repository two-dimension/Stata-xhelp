
{help f_cmdyhms:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:Cmdyhms(}{it:M}{cmd:,}{it:D}{cmd:,}{it:Y}{cmd:,}{it:h}{cmd:,}{it:m}{cmd:,}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}对应于 {it:M}、{it:D}、{it:Y}、{it:h}、{it:m}、{it:s} 的 {it:e_tC} 日期时间（自 1960年1月1日 00:00:00.000 起的毫秒，含闰秒）{p_end}
{p2col: 域 {it:M}:}整数 1 到 12{p_end}
{p2col: 域 {it:D}:}整数 1 到 31{p_end}
{p2col: 域 {it:Y}:}整数 0100 到 9999（但通常是 1800 到 2100）{p_end}
{p2col: 域 {it:h}:}整数 0 到 23{p_end}
{p2col: 域 {it:m}:}整数 0 到 59{p_end}
{p2col: 域 {it:s}:}实数 0.000 到 60.999{p_end}
{p2col: 范围:}日期时间从 0100年1月1日 00:00:00.000 到 9999年12月31日 23:59:59.999
           （整数 -58,695,840,000,000 到 >253,717,919,999,999）和
           {it:missing}{p_end}
{p2colreset}{...}