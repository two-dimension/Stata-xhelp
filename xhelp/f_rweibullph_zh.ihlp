
{help f_rweibullph:English Version}
{hline}
{* *! version 1.0.2  17may2017}{...}
    {cmd:rweibullph(}{it:a}{cmd:,}{it:b}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}具有形状 {it:a} 和尺度 {it:b} 的 Weibull（比例风险）变数{p_end}

{p2col:}变数 {it:x} 通过 {it:x} = 
         {cmd:invweibullphtail(}{it:a}{cmd:,}{it:b}{cmd:,0,}{it:u}{cmd:)} 生成，其中 {it:u} 是一个均匀随机数 (0,1)。{p_end}
{p2col: 域 {it:a}:}0.01 到 1e+6{p_end}
{p2col: 域 {it:b}:}1e-323 到 8e+307{p_end}
{p2col: 范围:}1e-323 到 8e+307{p_end}
{p2colreset}{...}

    {cmd:rweibullph(}{it:a}{cmd:,}{it:b}{cmd:,}{it:g}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}具有形状 {it:a}、尺度 {it:b} 和位置 {it:g} 的 Weibull（比例风险）变数{p_end}

{p2col:}变数 {it:x} 通过 {it:x} = 
         {cmd:invweibullphtail(}{it:a}{cmd:,}{it:b}{cmd:,}{it:g}{cmd:,}{it:u}{cmd:)} 生成，其中 {it:u} 是一个均匀随机数 (0,1)。{p_end}
{p2col: 域 {it:a}:}0.01 到 1e+6{p_end}
{p2col: 域 {it:b}:}1e-323 到 8e+307{p_end}
{p2col: 域 {it:g}:}-8e-307 到 8e+307{p_end}
{p2col: 范围:}{it:g}+{cmd:c(epsdouble)} 到 8e+307{p_end}
{p2colreset}{...}