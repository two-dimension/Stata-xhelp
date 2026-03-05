
{help f_laplacetail:English Version}
{hline}
{* *! version 1.0.1  10may2017}{...}
    {cmd:laplacetail(}{it:m}{cmd:,}{it:b}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}逆累积（上尾或生存）Laplace分布，均值为 {it:m} 和尺度参数为 {it:b}{p_end}

{p2col:}{cmd:laplacetail(}{it:m}{cmd:,}{it:b}{cmd:,}{it:x}{cmd:)} = 1 - 
{cmd:laplace(}{it:m}{cmd:,}{it:b}{cmd:,}{it:x}{cmd:)}{p_end}
{p2col: 域 {it:m}:}-8e+307 到 8e+307{p_end}
{p2col: 域 {it:b}:}1e-307 到 8e+307{p_end}
{p2col: 域 {it:x}:}-8e+307 到 8e+307{p_end}
{p2col: 范围：}0 到 1{p_end}
{p2colreset}{...}