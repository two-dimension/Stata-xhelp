
{help f_logisticden:English Version}
{hline}
{* *! version 1.0.1  02mar2015}{...}
    {cmd:logisticden(}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}均值为 0 和标准差为
                     pi/sqrt(3} 的逻辑分布的密度{p_end}

{p2col:}{cmd:logisticden(}{it:x}{cmd:)} = {cmd:logisticden(1,}{it:x}{cmd:)} = 
{cmd:logisticden(0,1,}{it:x}{cmd:)}, 其中 {it:x} 是一个逻辑随机变量的值。{p_end}
{p2col: 定义域 {it:x}:}-8e+307 到 8e+307{p_end}
{p2col: 值域:}0 到 0.25{p_end}
{p2colreset}{...}

    {cmd:logisticden(}{it:s}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}均值为 0，刻度为 {it:s} 的逻辑分布的密度，以及标准差为
                     {it:s} pi/sqrt(3){p_end}

{p2col:}{cmd:logisticden(}{it:s}{cmd:,}{it:x}{cmd:)} = {cmd:logisticden(0,}{it:s}{cmd:,}{it:x}{cmd:)},
其中 {it:s} 是刻度，{it:x} 是一个逻辑随机变量的值。{p_end}
{p2col: 定义域 {it:s}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:x}:}-8e+307 到 8e+307{p_end}
{p2col: 值域:}0 到 8e+307{p_end}
{p2colreset}{...}

    {cmd:logisticden(}{it:m}{cmd:,}{it:s}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}均值为 {it:m}，刻度为 {it:s} 的逻辑分布的密度，以及标准差为
                     {it:s} pi/sqrt(3){p_end}
{p2col: 定义域 {it:m}:}-8e+307 到 8e+307{p_end}
{p2col: 定义域 {it:s}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:x}:}-8e+307 到 8e+307{p_end}
{p2col: 值域:}0 到 8e+307{p_end}
{p2colreset}{...}