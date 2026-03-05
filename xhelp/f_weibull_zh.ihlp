
{help f_weibull:English Version}
{hline}
{* *! version 1.0.1  02mar2015}{...}
    {cmd:weibull(}{it:a}{cmd:,}{it:b}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}具有形状 {it:a} 和规模 {it:b} 的累积 Weibull 分布{p_end}

{p2col:}{cmd:weibull(}{it:a}{cmd:,}{it:b}{cmd:,}{it:x}{cmd:)} =
{cmd:weibull(}{it:a}{cmd:,}{it:b}{cmd:,0,}{it:x}{cmd:)},
其中 {it:a} 是形状，{it:b} 是规模，{it:x} 是 Weibull 随机变量的值。{p_end}
{p2col: 定义域 {it:a}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:b}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:x}:}1e-323 到 8e+307{p_end}
{p2col: 范围:}0 到 1{p_end}
{p2colreset}{...}

    {cmd:weibull(}{it:a}{cmd:,}{it:b}{cmd:,}{it:g}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}具有形状 {it:a}、规模 {it:b} 和位置 {it:g} 的累积 Weibull 分布{p_end}
{p2col: 定义域 {it:a}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:b}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:g}:}-8e+307 到 8e+307{p_end}
{p2col: 定义域 {it:x}:}-8e+307 到 8e+307; 有趣的定义域是 {it:x} {ul:>} {it:g}{p_end}
{p2col: 范围:}0 到 1{p_end}
{p2colreset}{...}