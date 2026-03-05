
{help f_normalden:English Version}
{hline}
{* *! version 1.2.1  02mar2015}{...}
    {cmd:normalden(}{it:z}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}标准正态密度{p_end}
{p2col: 定义域：}-8e+307 到 8e+307{p_end}
{p2col: 值域：}0 到 0.39894 ...{p_end}
{p2colreset}{...}

    {cmd:normalden(}{it:x}{cmd:,}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}均值为 0 且标准差为 {it:s} 的正态密度{p_end}

{p2col:}{cmd:normalden(}{it:x}{cmd:,}{cmd:1)} =
    {cmd:normalden(}{it:x}{cmd:)} 并且{break}
    {cmd:normalden(}{it:x}{cmd:,}{it:s}{cmd:)} =
        {cmd:normalden(}{it:x}/{it:s}{cmd:)}/{it:s}{p_end}
{p2col: 定义域 {it:x}:}-8e+307 到 8e+307{p_end}
{p2col: 定义域 {it:s}:}1e-308 到 8e+307{p_end}
{p2col: 值域：}0 到 8e+307{p_end}
{p2colreset}{...}

    {cmd:normalden(}{it:x}{cmd:,}{it:m}{cmd:,}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}均值为 {it:m} 且标准差为 {it:s} 的正态密度{p_end}

{p2col:}{cmd:normalden(}{it:x}{cmd:,0,}{it:s}{cmd:)} =
    {cmd:normalden(}{it:x}{cmd:,}{it:s}{cmd:)} 并且{break}
    {cmd:normalden(}{it:x}{cmd:,}{it:m}{cmd:,}{it:s}{cmd:)} =
    {cmd:normalden(}({it:x}-{it:m})/{it:s}{cmd:)}/{it:s}{p_end}
{p2col: 定义域 {it:x}:}-8e+307 到 8e+307{p_end}
{p2col: 定义域 {it:m}:}-8e+307 到 8e+307{p_end}
{p2col: 定义域 {it:s}:}1e-308 到 8e+307{p_end}
{p2col: 值域：}0 到 8e+307{p_end}
{p2colreset}{...}