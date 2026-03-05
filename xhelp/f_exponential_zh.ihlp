
{help f_exponential:English Version}
{hline}
{* *! version 1.0.1  02mar2015}{...}
    {cmd:exponential(}{it:b}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}累积指数分布，尺度为 {it:b}{p_end}

{p2col:}指数分布的累积分布函数为 

                                             1 - exp(-{it:x}/{it:b})

{p2col:}对于 {it:x} {ul:>} 0 时有效，{it:x} < 0 时为 0，其中 {it:b} 是尺度
而 {it:x} 是指数变量的值。{p_end}
{p2col:}指数分布的均值为 {it:b}，方差为 {it:b}^2.{p_end}
{p2col: 域 {it:b}:}1e-323 到 8e+307{p_end}
{p2col: 域 {it:x}:}-8e+307 到 8e+307；有趣的域是 {it:x} {ul:>} 0{p_end}
{p2col: 范围:}0 到 1{p_end}
{p2colreset}{...}