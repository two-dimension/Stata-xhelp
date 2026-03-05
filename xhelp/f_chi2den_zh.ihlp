
{help f_chi2den:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:chi2den(}{it:df}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}卡方分布的概率密度，具有 {it:df} 个自由度；
	{cmd:0} 如果 {it:x} < 0{break}
	{cmd:chi2den(}{it:df}{cmd:,}{it:x}{cmd:)} =
        {help gammaden():{bf:gammaden(}{it:df}/2{bf:,}2{bf:,}0{bf:,}{it:x}{bf:)}}{p_end}
{p2col: 定义域 {it:df}:}2e-10 到 2e+17（可能为非整数）{p_end}
{p2col: 定义域 {it:x}:}-8e+307 到 8e+307{p_end}
{p2col: 范围:}0 到 8e+307{p_end}
{p2colreset}{...}