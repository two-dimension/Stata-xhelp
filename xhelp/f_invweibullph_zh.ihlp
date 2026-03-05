
{help f_invweibullph:English Version}
{hline}
{* *! version 1.0.1  02mar2015}{...}
    {cmd:invweibullph(}{it:a}{cmd:,}{it:b}{cmd:,}{it:p}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}具有形状参数 {it:a} 和规模参数 {it:b} 的逆累积威布尔（比例风险）分布：如果 {cmd:weibullph(}{it:a}{cmd:,}{it:b}{cmd:,}{it:x}{cmd:)} = {it:p}，则 {cmd:invweibullph(}{it:a}{cmd:,}{it:b}{cmd:,}{it:p}{cmd:)} = {it:x}{p_end}
{p2col: 定义域 {it:a}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:b}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:p}:}0 到 1{p_end}
{p2col: 范围：}1e-323 到 8e+307{p_end}
{p2colreset}{...}

    {cmd:invweibullph(}{it:a}{cmd:,}{it:b}{cmd:,}{it:g}{cmd:,}{it:p}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}具有形状参数 {it:a}、规模参数 {it:b} 和位置参数 {it:g} 的逆累积威布尔（比例风险）分布：如果 {cmd:weibullph(}{it:a}{cmd:,}{it:b}{cmd:,}{it:g}{cmd:,}{it:x}{cmd:)} = {it:p}，则 {cmd:invweibullph(}{it:a}{cmd:,}{it:b}{cmd:,}{it:g}{cmd:,}{it:p}{cmd:)} = {it:x}{p_end}
{p2col: 定义域 {it:a}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:b}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:g}:}-8e+307 到 8e+307{p_end}
{p2col: 定义域 {it:p}:}0 到 1{p_end}
{p2col: 范围：}{it:g}+{cmd:c(epsdouble)} 到 8e+307{p_end}
{p2colreset}{...}