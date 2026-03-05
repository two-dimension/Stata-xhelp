
{help f_npnt:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:npnt(}{it:df}{cmd:,}{it:t}{cmd:,}{it:p}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}非中心 Student's t 分布的非中心性参数 {it:np}：
	if {cmd:nt(}{it:df}{cmd:,}{it:np}{cmd:,}{it:t}{cmd:)} =
	{it:p}，则 {cmd:npnt(}{it:df}{cmd:,}{it:t}{cmd:,}{it:p}{cmd:)}
	= {it:np}{p_end}
{p2col: 范围 {it:df}:}1e-100 到 1e+8（可能是非整数）{p_end}
{p2col: 范围 {it:t}:}-8e+307 到 8e+307{p_end}
{p2col: 范围 {it:p}:}0 到 1{p_end}
{p2col: 值域:}-1,000 到 1,000{p_end}
{p2colreset}{...}