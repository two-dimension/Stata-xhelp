
{help f_weibullphden:English Version}
{hline}
{* *! version 1.0.2  23aug2017}{...}
    {cmd:weibullphden(}{it:a}{cmd:,}{it:b}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}韦布尔（比例危险）分布的概率密度函数，形状参数为 {it:a}，尺度参数为 {it:b}{p_end}

{p2col:}{cmd:weibullphden(}{it:a}{cmd:,}{it:b}{cmd:,}{it:x}{cmd:)} =
{cmd:weibullphden(}{it:a}{cmd:,}{it:b}{cmd:,0,}{it:x}{cmd:)},
其中 {it:a} 为形状参数，{it:b} 为尺度参数，{it:x} 为韦布尔（比例危险）随机变量的值。{p_end}
{p2col: 定义域 {it:a}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:b}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:x}:}1e-323 到 8e+307{p_end}
{p2col: 范围：}0 到 8e+307{p_end}
{p2colreset}{...}

    {cmd:weibullphden(}{it:a}{cmd:,}{it:b}{cmd:,}{it:g}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}韦布尔（比例危险）分布的概率密度函数，形状参数为 {it:a}，尺度参数为 {it:b}，位置参数为 {it:g}{p_end}
{p2col: 定义域 {it:a}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:b}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:g}:}-8e+307 到 8e+307{p_end}
{p2col: 定义域 {it:x}:}-8e+307 到 8e+307；有趣的定义域是 {it:x} {ul:>} {it:g}{p_end}
{p2col: 范围：}0 到 8e+307{p_end}
{p2colreset}{...}