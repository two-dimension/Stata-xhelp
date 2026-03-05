
{help f_igaussiantail:English Version}
{hline}
{* *! version 1.0.0  16may2016}{...}
    {cmd:igaussiantail(}{it:m}{cmd:,}{it:a}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}反累积（上尾或生存）逆高斯分布，均值为 {it:m}，形状参数为 {it:a}；{cmd:1} 如果 x {ul:<} 0{p_end}

{p2col:}{cmd:igaussiantail(}{it:m}{cmd:,}{it:a}{cmd:,}{it:x}{cmd:)} = 1 - 
{cmd:igaussian(}{it:m}{cmd:,}{it:a}{cmd:,}{it:x}{cmd:)}{p_end}
{p2col: 域 {it:m}:}1e-323 到 8e+307{p_end}
{p2col: 域 {it:a}:}1e-323 到 8e+307{p_end}
{p2col: 域 {it:x}:}-8e+307 到 8e+307{p_end}
{p2col: 值域：}0 到 1{p_end}
{p2colreset}{...}