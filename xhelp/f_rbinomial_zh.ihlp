
{help f_rbinomial:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:rbinomial(}{it:n}{cmd:,}{it: p}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}二项分布({it:n},{it:p}) 随机变数，其中
	{it:n} 是实验次数，{it:p} 是成功概率{p_end}

{p2col:}除了使用生成给定分布的随机变数的标准方法外，{cmd:rbinomial()} 还使用了
	{help rbinomial()##K1982:Kachitvichyanukul (1982)} ，
        {help rbinomial()##KS1988:Kachitvichyanukul 和 Schmeiser (1988)}，
	和 {help rbinomial()##K1986:Kemp (1986)} 的专门算法。{p_end}
{p2col: 域 {it:n}:}1 至 1e+11{p_end}
{p2col: 域 {it:p}:}1e-8 至 1-1e-8{p_end}
{p2col: 范围：}0 至 {it:n}{p_end}
{p2colreset}{...}