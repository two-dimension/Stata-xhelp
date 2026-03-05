
{help f_weibullphtail:English Version}
{hline}
{* *! version 1.0.1  02mar2015}{...}
    {cmd:weibullphtail(}{it:a}{cmd:,}{it:b}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}反累积威布尔（比例风险）分布，形状参数为 {it:a}，尺度参数为 {it:b}{p_end}

{p2col:}{cmd:weibullphtail(}{it:a}{cmd:,}{it:b}{cmd:,}{it:x}{cmd:)} =
{cmd:weibullphtail(}{it:a}{cmd:,}{it:b}{cmd:,0,}{it:x}{cmd:)},
其中 {it:a} 是形状参数，{it:b} 是尺度参数，{it:x} 是威布尔（比例风险）随机变量的值.{p_end}
{p2col: 定义域 {it:a}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:b}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:x}:}1e-323 到 8e+307{p_end}
{p2col: 值域:}0 到 1{p_end}
{p2colreset}{...}

    {cmd:weibullphtail(}{it:a}{cmd:,}{it:b}{cmd:,}{it:g}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}反累积威布尔（比例风险）分布，形状参数为 {it:a}，尺度参数为 {it:b}，位置参数为 {it:g}{p_end}
{p2col: 定义域 {it:a}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:b}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:g}:}-8e+307 到 8e+307{p_end}
{p2col: 定义域 {it:x}:}-8e+307 到 8e+307；有趣的定义域是 {it:x} {ul:>} {it:g}{p_end}
{p2col: 值域:}0 到 1{p_end}
{p2colreset}{...}