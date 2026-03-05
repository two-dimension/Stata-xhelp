
{help f_mdyhms:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:mdyhms(}{it:M}{cmd:,}{it:D}{cmd:,}{it:Y}{cmd:,}{it:h}{cmd:,}{it:m}{cmd:,}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}与 {it:M}、{it:D}、{it:Y}、{it:h}、{it:m}、{it:s} 相对应的 {it:e_tc} 时间日期（自1960年1月1日 00:00:00.000以来的毫秒）{p_end}
{p2col: 域 {it:M}：}整数 1 到 12{p_end}
{p2col: 域 {it:D}：}整数 1 到 31{p_end}
{p2col: 域 {it:Y}：}整数 0100 到 9999（但可能是 1800 到 2100){p_end}
{p2col: 域 {it:h}：}整数 0 到 23{p_end}
{p2col: 域 {it:m}：}整数 0 到 59{p_end}
{p2col: 域 {it:s}：}实数 0.000 到 59.999{p_end}
{p2col: 范围：}时间日期从 01jan0100 00:00:00.000 到 31dec9999 23:59:59.999（整数 -58,695,840,000,000 到 253,717,919,999,999）和 {it:missing}{p_end}
{p2colreset}{...}