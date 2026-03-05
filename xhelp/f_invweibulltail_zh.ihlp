
{help f_invweibulltail:English Version}
{hline}
{* *! version 1.0.1  02mar2015}{...}
    {cmd:invweibulltail(}{it:a}{cmd:,}{it:b}{cmd:,}{it:p}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}逆向累积威布尔分布，具有形状参数 {it:a} 和尺度参数 {it:b}: 如果 {cmd:weibulltail(}{it:a}{cmd:,}{it:b}{cmd:,}{it:x}{cmd:)} = {it:p}, 则 {cmd:invweibulltail(}{it:a}{cmd:,}{it:b}{cmd:,}{it:p}{cmd:)} = {it:x}{p_end}
{p2col: 域 {it:a}:}1e-323 到 8e+307{p_end}
{p2col: 域 {it:b}:}1e-323 到 8e+307{p_end}
{p2col: 域 {it:p}:}0 到 1{p_end}
{p2col: 范围:}1e-323 到 8e+307{p_end}
{p2colreset}{...}

    {cmd:invweibulltail(}{it:a}{cmd:,}{it:b}{cmd:,}{it:g}{cmd:,}{it:p}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}逆向累积威布尔分布，具有形状参数 {it:a}、尺度参数 {it:b} 和位置参数 {it:g}: 如果 {cmd:weibulltail(}{it:a}{cmd:,}{it:b}{cmd:,}{it:g}{cmd:,}{it:x}{cmd:)} = {it:p}, 则 {cmd:invweibulltail(}{it:a}{cmd:,}{it:b}{cmd:,}{it:g}{cmd:,}{it:p}{cmd:)} = {it:x}{p_end}
{p2col: 域 {it:a}:}1e-323 到 8e+307{p_end}
{p2col: 域 {it:b}:}1e-323 到 8e+307{p_end}
{p2col: 域 {it:g}:}-8e+307 到 8e+307{p_end}
{p2col: 域 {it:p}:}0 到 1{p_end}
{p2col: 范围:}{it:g}+{cmd:c(epsdouble)} 到 8e+307{p_end}
{p2colreset}{...}