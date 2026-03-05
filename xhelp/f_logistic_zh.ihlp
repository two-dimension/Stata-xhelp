
{help f_logistic:English Version}
{hline}
{* *! version 1.0.1  02mar2015}{...}
    {cmd:logistic(}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}累积逻辑分布，其均值为 0，标准差为
                     π/√3{p_end}

{p2col:}{cmd:logistic(}{it:x}{cmd:)} = {cmd:logistic(1,}{it:x}{cmd:)} = 
{cmd:logistic(0,1,}{it:x}{cmd:)}, 其中 {it:x} 是逻辑随机变量的值。{p_end}
{p2col: 定义域 {it:x}:}-8e+307 到 8e+307{p_end}
{p2col: 值域:}0 到 1{p_end}
{p2colreset}{...}

    {cmd:logistic(}{it:s}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}累积逻辑分布，其均值为 0，规模为 {it:s}，标准差
                     为 {it:s} π/√3{p_end}

{p2col:}{cmd:logistic(}{it:s}{cmd:,}{it:x}{cmd:)} = {cmd:logistic(0,}{it:s}{cmd:,}{it:x}{cmd:)},
其中 {it:s} 是规模，{it:x} 是逻辑随机变量的值。{p_end}
{p2col: 定义域 {it:s}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:x}:}-8e+307 到 8e+307{p_end}
{p2col: 值域:}0 到 1{p_end}
{p2colreset}{...}

    {cmd:logistic(}{it:m}{cmd:,}{it:s}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}累积逻辑分布，其均值为 {it:m}，规模为 {it:s}，标准差
                     为 {it:s} π/√3{p_end}
{p2col: 定义域 {it:m}:}-8e+307 到 8e+307{p_end}
{p2col: 定义域 {it:s}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:x}:}-8e+307 到 8e+307{p_end}
{p2col: 值域:}0 到 1{p_end}
{p2colreset}{...}