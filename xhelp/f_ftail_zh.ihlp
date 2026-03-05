
{help f_ftail:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:Ftail(}{it:df1}{cmd:,}{it:df2}{cmd:,}{it:f}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}逆累积（上尾或生存）F 分布，具有 {it:df1} 个分子和 {it:df2} 个分母自由度；如果 {it:f} < 0，则为 {cmd:1}{p_end}

{p2col:}{cmd:Ftail(}{it:df1}{cmd:,}{it:df2}{cmd:,}{it:f}{cmd:)} =
	1 - {cmd:F(}{it:df1}{cmd:,}{it:df2}{cmd:,}{it:f}{cmd:)}{p_end}
{p2col: 域 {it:df1}:}2e-10 到 2e+17（可能是非整数的）{p_end}
{p2col: 域 {it:df2}:}2e-10 到 2e+17（可能是非整数的）{p_end}
{p2col: 域 {it:f}:}-8e+307 到 8e+307；有趣的域是 {it:f} {ul:>} 0{p_end}
{p2col: 范围：}0 到 1{p_end}
{p2colreset}{...}