
{help f_cauchytail:English Version}
{hline}
{* *! version 1.0.2  10may2017}{...}
    {cmd:cauchytail(}{it:a}{cmd:,}{it:b}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}反向累积（上尾或生存）Cauchy 分布，其位置参数为 {it:a} 和尺度参数为 {it:b}{p_end}

{p2col:}{cmd:cauchytail(}{it:a}{cmd:,}{it:b}{cmd:,}{it:x}{cmd:)} = 1 - 
{cmd:cauchy(}{it:a}{cmd:,}{it:b}{cmd:,}{it:x}{cmd:)}{p_end}
{p2col: 领域 {it:a}:}-1e+300 到 1e+300{p_end}
{p2col: 领域 {it:b}:}1e-100 到 1e+300{p_end}
{p2col: 领域 {it:x}:}-8e+307 到 8e+307{p_end}
{p2col: 范围：}0 到 1{p_end}
{p2colreset}{...}