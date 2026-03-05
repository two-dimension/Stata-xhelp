
{help f_logistictail:English Version}
{hline}
{* *! version 1.0.1  02mar2015}{...}
    {cmd:logistictail(}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}反累积分布函数，均值为 0，标准差为
                     π/√3{p_end}

{p2col:}{cmd:logistictail(}{it:x}{cmd:)} = {cmd:logistictail(1,}{it:x}{cmd:)} = 
{cmd:logistictail(0,1,}{it:x}{cmd:)}, 其中 {it:x} 是 Logistic 随机变量的值.{p_end}
{p2col: 定义域 {it:x}:}-8e+307 到 8e+307{p_end}
{p2col: 值域：}0 到 1{p_end}
{p2colreset}{...}

    {cmd:logistictail(}{it:s}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}反累积分布函数，均值为 0，尺度为 {it:s}，标准差为
                     {it:s} π/√3{p_end}

{p2col:}{cmd:logistictail(}{it:s}{cmd:,}{it:x}{cmd:)} = {cmd:logistictail(0,}{it:s}{cmd:,}{it:x}{cmd:)},
其中 {it:s} 是尺度，{it:x} 是 Logistic 随机变量的值.{p_end}
{p2col: 定义域 {it:s}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:x}:}-8e+307 到 8e+307{p_end}
{p2col: 值域：}0 到 1{p_end}
{p2colreset}{...}

    {cmd:logistictail(}{it:m}{cmd:,}{it:s}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}反累积分布函数，均值为 {it:m}，尺度为 {it:s}，标准差为
                     {it:s} π/√3{p_end}
{p2col: 定义域 {it:m}:}-8e+307 到 8e+307{p_end}
{p2col: 定义域 {it:s}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:x}:}-8e+307 到 8e+307{p_end}
{p2col: 值域：}0 到 1{p_end}
{p2colreset}{...}