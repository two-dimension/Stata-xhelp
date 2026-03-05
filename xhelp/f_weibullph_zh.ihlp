
{help f_weibullph:English Version}
{hline}
{* *! version 1.0.1  02mar2015}{...}
    {cmd:weibullph(}{it:a}{cmd:,}{it:b}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}具有形状 {it:a} 和尺度 {it:b} 的累积 Weibull（比例风险）分布{p_end}

{p2col:}{cmd:weibullph(}{it:a}{cmd:,}{it:b}{cmd:,}{it:x}{cmd:)} =
{cmd:weibullph(}{it:a}{cmd:,}{it:b}{cmd:,0,}{it:x}{cmd:)},
其中 {it:a} 是形状，{it:b} 是尺度，{it:x} 是 Weibull 随机变量的值。{p_end}
{p2col: 域 {it:a}:}1e-323 至 8e+307{p_end}
{p2col: 域 {it:b}:}1e-323 至 8e+307{p_end}
{p2col: 域 {it:x}:}1e-323 至 8e+307{p_end}
{p2col: 范围：}0 至 1{p_end}
{p2colreset}{...}

    {cmd:weibullph(}{it:a}{cmd:,}{it:b}{cmd:,}{it:g}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}具有形状 {it:a}、尺度 {it:b} 和位置 {it:g} 的累积 Weibull（比例风险）分布{p_end}
{p2col: 域 {it:a}:}1e-323 至 8e+307{p_end}
{p2col: 域 {it:b}:}1e-323 至 8e+307{p_end}
{p2col: 域 {it:g}:}-8e+307 至 8e+307{p_end}
{p2col: 域 {it:x}:}-8e+307 至 8e+307; 有趣的域是 {it:x} {ul:>} {it:g}{p_end}
{p2col: 范围：}0 至 1{p_end}
{p2colreset}{...}