
{help f_invdunnettprob:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:invdunnettprob(}{it:k}{cmd:,}{it:df}{cmd:,}{it:p}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}逆累积分布的多重范围分布
	在 Dunnett 的多重比较方法中用于 {it:k}
	个范围和 {it:df} 自由度{p_end}
	
{p2col:}如果 {cmd:dunnettprob(}{it:k}{cmd:,}{it:df}{cmd:,}{it:x}{cmd:)} = {it:p},
	那么
	{cmd:invdunnettprob(}{it:k}{cmd:,}{it:df}{cmd:,}{it:p}{cmd:)} = {it:x}。
	{p_end}
	
{p2col: }{cmd:invdunnettprob()} 的计算使用了在 {help density_functions##M1981:Miller (1981)} 中描述的算法。
{p_end}
{p2col: 域 {it:k}:}2 到 1e+6{p_end}
{p2col: 域 {it:df}:}2 到 1e+6{p_end}
{p2col: 域 {it:p}:}0 到 1（右侧不包含）{p_end}
{p2col: 范围:}0 到 8e+307{p_end}
{p2colreset}{...}