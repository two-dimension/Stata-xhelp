
{help f_invnf:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:invnF(}{it:df1}{cmd:,}{it:df2}{cmd:,}{it:np}{cmd:,}{it:p}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}非中心F分布的逆累积分布: 如果 
        {cmd:nF(}{it:df1}{cmd:,}{it:df2}{cmd:,}{it:np}{cmd:,}{it:f}{cmd:)}
	= {it:p}, 则
	{cmd:invnF(}{it:df1}{cmd:,}{it:df2}{cmd:,}{it:np}{cmd:,}{it:p}{cmd:)} =
	{it:f}{p_end}
{p2col: 域 {it:df1}:}1e-6 到 1e+6（可能是非整数）{p_end}
{p2col: 域 {it:df2}:}1e-6 到 1e+6（可能是非整数）{p_end}
{p2col: 域 {it:np}:}0 到 10,000{p_end}
{p2col: 域 {it:p}:}0 到 1{p_end}
{p2col: 范围:}0 到 8e+307{p_end}
{p2colreset}{...}