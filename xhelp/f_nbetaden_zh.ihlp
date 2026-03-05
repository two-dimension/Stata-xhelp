
{help f_nbetaden:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:nbetaden(}{it:a}{cmd:,}{it:b}{cmd:,}{it:np}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}非中心贝塔分布的概率密度函数； {cmd:0} 如果 {it:x} < 0 或 {it:x} > 1
		     {p_end}
		     
{p2col:}{it:a} 和 {it:b} 是形状参数，{it:np} 是非中心性参数，{it:x} 是贝塔随机变量的值。{p_end}

{p2col:}{cmd:nbetaden(}{it:a}{cmd:,}{it:b}{cmd:,0,}{it:x}{cmd:)} =
         {cmd:betaden(}{it:a}{cmd:,}{it:b}{cmd:,}{it:x}{cmd:)}，但是 
	 {helpb betaden()} 是用于中心贝塔分布的首选函数。 {cmd:nbetaden()} 是根据 
         {help f_nbetaden##JKB1995:Johnson, Kotz, and Balakrishnan (1995)} 中描述的算法计算的。
	 {p_end}
{p2col: 定义域 {it:a}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:b}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:np}:}0 到 1,000{p_end}
{p2col: 定义域 {it:x}:}-8e+307 到 8e+307；有趣的定义域是
	0 {ul:<} {it:x} {ul:<} 1{p_end}
{p2col: 值域：}0 到 8e+307{p_end}
{p2colreset}{...}