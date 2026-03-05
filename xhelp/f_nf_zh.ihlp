
{help f_nf:English Version}
{hline}
{* *! version 1.1.2  02mar2015}{...}
    {cmd:nF(}{it:df1}{cmd:,}{it:df2}{cmd:,}{it:np}{cmd:,}{it:f}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}累积非中心 F 分布，具有 {it:df1} 自由度（分子）和 {it:df2} 自由度（分母），以及非中心性参数 {it:np}；当 {it:f} < 0 时 {cmd:0}{p_end}

{p2col:}{cmd:nF(}{it:df1}{cmd:,}{it:df2}{cmd:,0,}{it:f}{cmd:)} =
        {cmd:F(}{it:df1}{cmd:,}{it:df2}{cmd:,}{it:f}{cmd:)}{p_end}

{p2col:}{cmd:nF()} 是使用 {helpb nibeta()} 计算的，这基于非中心 beta 分布与非中心 F 分布之间的关系：{p_end}
{p2col:}{cmd:nF(}{it:df1}{cmd:,}{it:df2}{cmd:,}{it:np}{cmd:,}{it:f}{cmd:)}
	={break}
	{cmd:nibeta(}{it:df1}/2{cmd:,} {it:df2}/2{cmd:,} {it:np}{cmd:,} {it:df1}*{it:f}/{({it:df1}*{it:f})+{it:df2}}}{cmd:)}.
{p_end}
{* 在 nibeta() 中添加空格以帮助分隔组}
{p2col: 域 {it:df1}:}2e-10 到 1e+8（可能是非整数）{p_end}
{p2col: 域 {it:df2}:}2e-10 到 1e+8（可能是非整数）{p_end}
{p2col: 域 {it:np}:}0 到 10,000{p_end}
{p2col: 域 {it:f}:}-8e+307 到 8e+307{p_end}
{p2col: 范围:}0 到 1{p_end}
{p2colreset}{...}