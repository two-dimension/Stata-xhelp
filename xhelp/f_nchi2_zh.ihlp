
{help f_nchi2:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:nchi2(}{it:df}{cmd:,}{it:np}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}累积非中心卡方分布；
	{cmd:0} 如果 {it:x} < 0{p_end}

{p2col:}{it:df} 表示自由度，{it:np} 是非中心性参数，{it:x} 是卡方值。{p_end}

{p2col:}{cmd:nchi2(}{it:df}{cmd:,0,}{it:x}{cmd:)} = 
         {cmd:chi2(}{it:df}{cmd:,}{it:x}{cmd:)}, 但 {cmd:chi2()} 是
	 用于中心卡方分布的首选函数。
{p_end}
{p2col: 域 {it:df}:}2e-10 至 1e+6（可能非整数）{p_end}
{p2col: 域 {it:np}:}0 至 10,000{p_end}
{p2col: 域 {it:x}:}-8e+307 到 8e+307；有趣的域是
	{it:x} {ul:>} 0{p_end}
{p2col: 范围：}0 到 1{p_end}
{p2colreset}{...}