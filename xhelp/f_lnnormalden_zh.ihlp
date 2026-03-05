
{help f_lnnormalden:English Version}
{hline}
{* *! version 1.2.1  02mar2015}{...}
    {cmd:lnnormalden(}{it:z}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}标准正态密度的自然对数{p_end}
{p2col: 定义域:}-1e+154 到 1e+154{p_end}
{p2col: 值域:}-5e+307 到 -0.91893853 = {cmd:lnnormalden(0)}{p_end}
{p2colreset}{...}

    {cmd:lnnormalden(}{it:x}{cmd:,}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}自然对数
	正态密度，均值为 0，标准差为 
	{it:s}{p_end}

{p2col:}{cmd:lnnormalden(}{it:x}{cmd:,1)} =
        {cmd:lnnormalden(}{it:x}{cmd:)} 并且{break}
	{cmd:lnnormalden(}{it:x}{cmd:,}{it:s}{cmd:)} =
        {cmd:lnnormalden(}{it:x/s}{cmd:)} - ln({it:s}){p_end}
{p2col: 定义域 {it:x}:}-8e+307 到 8e+307{p_end}
{p2col: 定义域 {it:s}:}1e-323 到 8e+307{p_end}
{p2col: 值域:}-5e+307 到 742.82799{p_end}
{p2colreset}{...}

    {cmd:lnnormalden(}{it:x}{cmd:,}{it:m}{cmd:,}{it:s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}自然对数正态密度，均值为 
	{it:m}，标准差为 {it:s}{p_end}

{p2col:}{cmd:lnnormalden(}{it:x}{cmd:,0,}{it:s}{cmd:)} =
	{cmd:lnnormalden(}{it:x}{cmd:,}{it:s}{cmd:)}
     并且 {cmd:lnnormalden(}{it:x}{cmd:,}{it:m}{cmd:,}{it:s}{cmd:)} =
	{cmd:lnnormalden(}({it:x}-{it:m})/{it:s}{cmd:) -}
	ln({it:s}){p_end}
{p2col: 定义域 {it:x}:}-8e+307 到 8e+307{p_end}
{p2col: 定义域 {it:m}:}-8e+307 到 8e+307{p_end}
{p2col: 定义域 {it:s}:}1e-323 到 8e+307{p_end}
{p2col: 值域:}1e-323 到 8e+307{p_end}
{p2colreset}{...}