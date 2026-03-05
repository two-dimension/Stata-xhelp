
{help f_chi2tail:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:chi2tail(}{it:df}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}反累积分布（上尾或生存）卡方分布，具有
	{it:df} 自由度；如果 {it:x} < 0，则为 {cmd:1}{p_end}

{p2col:}{cmd:chi2tail(}{it:df}{cmd:,}{it:x}{cmd:)} =
	      1 - {cmd:chi2(}{it:df}{cmd:,}{it:x}{cmd:)}{p_end}
{p2col: 定义域 {it:df}:}2e-10 到 2e+17（可能不是整数值）{p_end}
{p2col: 定义域 {it:x}:}-8e+307 到 8e+307；有趣的定义域是
	{it:x} {ul:>} 0{p_end}
{p2col: 范围:}0 到 1{p_end}
{p2colreset}{...}