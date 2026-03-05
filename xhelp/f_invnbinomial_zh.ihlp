
{help f_invnbinomial:English Version}
{hline}
{* *! version 1.1.1  23feb2015}{...}
    {cmd:invnbinomial(}{it:n}{cmd:,}{it:k}{cmd:,}{it:q}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}负二项参数的值，{it:p}，使得 
	{it:q = }{cmd:nbinomial(}{it:n}{cmd:,}{it:k}{cmd:,}{it:p}{cmd:)}{p_end}

{p2col:}{cmd:invnbinomial()} 是使用 {helpb invibeta()} 进行评估的。{p_end}
{p2col: 定义域 {it:n}:}1e-10 到 1e+17（可以是非整数）{p_end}
{p2col: 定义域 {it:k}:}0 到 2^53-1{p_end}
{p2col: 定义域 {it:q}:}0 到 1（不包括1）{p_end}
{p2col: 值域:}0 到 1{p_end}
{p2colreset}{...}