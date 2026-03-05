
{help f_weibullden:English Version}
{hline}
{* *! version 1.0.2  23aug2017}{...}
    {cmd:weibullden(}{it:a}{cmd:,}{it:b}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}威布尔分布的概率密度函数，形状参数为 {it:a}，尺度参数为 {it:b}{p_end}

{p2col:}{cmd:weibullden(}{it:a}{cmd:,}{it:b}{cmd:,}{it:x}{cmd:)} =
{cmd:weibullden(}{it:a}{cmd:,}{it:b}{cmd:,0,}{it:x}{cmd:)},
其中 {it:a} 是形状参数，{it:b} 是尺度参数，{it:x} 是威布尔随机变量的值。{p_end}
{p2col: 域 {it:a}:}1e-323 到 8e+307{p_end}
{p2col: 域 {it:b}:}1e-323 到 8e+307{p_end}
{p2col: 域 {it:x}:}1e-323 到 8e+307{p_end}
{p2col: 范围:}0 到 8e+307{p_end}
{p2colreset}{...}

    {cmd:weibullden(}{it:a}{cmd:,}{it:b}{cmd:,}{it:g}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}威布尔分布的概率密度函数，形状参数为 {it:a}，尺度参数为 {it:b}，位置参数为 {it:g}{p_end}
{p2col: 域 {it:a}:}1e-323 到 8e+307{p_end}
{p2col: 域 {it:b}:}1e-323 到 8e+307{p_end}
{p2col: 域 {it:g}:}-8e+307 到 8e+307{p_end}
{p2col: 域 {it:x}:}-8e+307 到 8e+307；有趣的域是 {it:x} {ul:>} {it:g}{p_end}
{p2col: 范围:}0 到 8e+307{p_end}
{p2colreset}{...}