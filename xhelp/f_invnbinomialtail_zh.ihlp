
{help f_invnbinomialtail:English Version}
{hline}
{* *! version 1.1.1  23feb2015}{...}
    {cmd:invnbinomialtail(}{it:n}{cmd:,}{it:k}{cmd:,}{it:q}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}负二项参数的值， {it:p}，满足 
	{it:q = }{cmd:nbinomialtail(}{it:n}{cmd:,}{it:k}{cmd:,}{it:p}{cmd:)}
	{p_end}

{p2col:}{cmd:invnbinomialtail()} 是使用 {helpb invibetatail()} 进行计算的。
	{p_end}
{p2col: 域 {it:n}:}1e-10 到 1e+17（可以是非整数）{p_end}
{p2col: 域 {it:k}:}1 到 2^53-1{p_end}
{p2col: 域 {it:q}:}0 到 1（不包括1）{p_end}
{p2col: 范围:}0 到 1（不包括1）{p_end}
{p2colreset}{...}