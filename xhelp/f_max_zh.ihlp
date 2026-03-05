
{help f_max:English Version}
{hline}
{* *! version 1.1.2  02mar2015}{...}
    {cmd:max(}{it:x1}{cmd:,}{it:x2}{cmd:,}{it:...}{cmd:,}{it:xn}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:} {it:x1}、{it:x2}、...、{it:xn} 的最大值{p_end}

{p2col:}除非所有参数均为 {it:missing}，否则将忽略缺失值。{break}
    {cmd:max(2,10,.,7)} = {cmd:10}{break}
    {cmd:max(.,.,.)} = {cmd:.}{p_end}
{p2col: 域 {it:x1}:} -8e+307 到 8e+307 或 {it:missing}{p_end}
{p2col: 域 {it:x2}:} -8e+307 到 8e+307 或 {it:missing}{p_end}
{p2col:...}{p_end}
{p2col: 域 {it:xn}:} -8e+307 到 8e+307 或 {it:missing}{p_end}
{p2col: 范围:} -8e+307 到 8e+307 或 {it:missing}{p_end}
{p2colreset}{...}