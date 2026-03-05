
{help f_rhypergeometric:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:rhypergeometric(}{it:N}{cmd:,}{it: K}{cmd:,}{it: n}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}超几何随机变量{p_end}

{p2col:}分布参数为整数值，其中 {it:N} 为总体大小，{it:K} 为 
	具有感兴趣属性的总体元素数量，{it:n} 为样本大小。  

{p2col:}除了使用标准方法从给定分布生成随机变量外，{cmd:rhypergeometric()} 使用了
        {help rhypergeometric()##K1982:Kachitvichyanukul (1982)} 和 
	{help rhypergeometric()##KS1985:Kachitvichyanukul and Schmeiser (1985)} 的专用算法。
	{p_end}
{p2col: 域 {it:N}:}2 到 1e+6{p_end}
{p2col: 域 {it:K}:}1 到 {it:N-1}{p_end}
{p2col: 域 {it:n}:}1 到 {it:N-1}{p_end}
{p2col: 范围:}{cmd:max(}0{cmd:,}{it:n-N+K}{cmd:)} 到 
	{cmd:min(}{it:K,n}{cmd:)}{p_end}
{p2colreset}{...}