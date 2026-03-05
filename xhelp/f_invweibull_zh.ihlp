
{help f_invweibull:English Version}
{hline}
{* *! version 1.0.1  02mar2015}{...}
    {cmd:invweibull(}{it:a}{cmd:,}{it:b}{cmd:,}{it:p}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}逆累积威布尔分布，形状参数为 {it:a}，尺度参数为 {it:b}：如果 {cmd:weibull(}{it:a}{cmd:,}{it:b}{cmd:,}{it:x}{cmd:)} = {it:p}，那么
{cmd:invweibull(}{it:a}{cmd:,}{it:b}{cmd:,}{it:p}{cmd:)} = {it:x}{p_end}
{p2col: 范围 {it:a}:}1e-323 到 8e+307{p_end}
{p2col: 范围 {it:b}:}1e-323 到 8e+307{p_end}
{p2col: 范围 {it:p}:}0 到 1{p_end}
{p2col: 值域：}1e-323 到 8e+307{p_end}
{p2colreset}{...}

    {cmd:invweibull(}{it:a}{cmd:,}{it:b}{cmd:,}{it:g}{cmd:,}{it:p}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}逆累积威布尔分布，形状参数为 {it:a}，尺度参数为 {it:b}，位置参数为 {it:g}：如果
{cmd:weibull(}{it:a}{cmd:,}{it:b}{cmd:,}{it:g}{cmd:,}{it:x}{cmd:)} = {it:p}，那么
{cmd:invweibull(}{it:a}{cmd:,}{it:b}{cmd:,}{it:g}{cmd:,}{it:p}{cmd:)} = {it:x}{p_end}
{p2col: 范围 {it:a}:}1e-323 到 8e+307{p_end}
{p2col: 范围 {it:b}:}1e-323 到 8e+307{p_end}
{p2col: 范围 {it:g}:}-8e+307 到 8e+307{p_end}
{p2col: 范围 {it:p}:}0 到 1{p_end}
{p2col: 值域：}{it:g}+{cmd:c(epsdouble)} 到 8e+307{p_end}
{p2colreset}{...}