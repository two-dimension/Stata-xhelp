
{help f_nchi2den:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:nchi2den(}{it:df}{cmd:,}{it:np}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}非中心卡方分布的概率密度; {cmd:0} 如果 {it:x} <= 0{p_end}
	
{p2col:}{it:df} 表示自由度, {it:np} 是非中心参数, 而 {it:x} 是卡方值.{p_end}

{p2col:}{cmd:nchi2den(}{it:df}{cmd:,0,}{it:x}{cmd:)} = 
         {cmd:chi2den(}{it:df}{cmd:,}{it:x}{cmd:)}, 但是 {helpb chi2den()} 是
	 使用中心卡方分布的首选函数。
{p_end}
{p2col: 定义域 {it:df}:}2e-10 到 1e+6 (可能非整数){p_end}
{p2col: 定义域 {it:np}:}0 到 10,000{p_end}
{p2col: 定义域 {it:x}:}-8e+307 到 8e+307{p_end}
{p2col: 范围:}0 到 8e+307{p_end}
{p2colreset}{...}