
{help f_chi2:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:chi2(}{it:df}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}累积卡方分布，具有 {it:df} 自由度；
	{cmd:0} 如果 {it:x} < 0{p_end}

{p2col:}{cmd:chi2(}{it:df}{cmd:,}{it:x}{cmd:)} =
	{help gammap():{bf:gammap(}{it:df}/2{bf:,}{it:x}/2{bf:)}}{p_end}
{p2col: 范围 {it:df}:}2e-10 到 2e+17（可能为非整数值）{p_end}
{p2col: 范围 {it:x}:}-8e+307 到 8e+307；有趣的范围是
	{it:x} {ul:>} 0{p_end}
{p2col: 范围:}0 到 1{p_end}
{p2colreset}{...}