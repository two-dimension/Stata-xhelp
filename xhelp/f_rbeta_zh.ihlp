
{help f_rbeta:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:rbeta(}{it:a}{cmd:,}{it: b}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}beta({it:a},{it:b}) 随机变量，其中
	{it:a} 和 {it:b} 是 beta 分布的形状参数{p_end}

{p2col:}除了使用从给定分布生成随机变量的标准方法外， {cmd:rbeta()} 还使用 
	Johnk（{help rbeta()##G2003:Gentle 2003}）、 
	Atkinson 和 Wittaker（{help rbeta()##AW1970:1970}，
                               {help rbeta()##AW1976:1976}）、 
	{help rbeta()##D1986:Devroye (1986)} 以及 
	{help rbeta()##SB1980:Schmeiser and Babu (1980)} 的专门算法。{p_end}
{p2col: 域 {it:a}:}0.05 到 1e+5{p_end}
{p2col: 域 {it:b}:}0.15 到 1e+5{p_end}
{p2col: 范围：}0 到 1（不包括）{p_end}
{p2colreset}{...}