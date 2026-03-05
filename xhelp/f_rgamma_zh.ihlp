
{help f_rgamma:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:rgamma(}{it:a}{cmd:, }{it:b}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}gamma({it:a},{it:b}) 随机变数，其中 {it:a} 是伽马形状参数，{it:b} 是尺度参数{p_end}

{p2col:}生成伽马变量的方法来自于 
	{help rgamma()##AD1974:Ahrens 和 Dieter (1974)},
        {help rgamma()##B1983:Best (1983)}, 和
        {help rgamma()##SL1980:Schmeiser 和 Lal (1980)}.{p_end}
{p2col: 域 {it:a}:}1e-4 到 1e+8{p_end}
{p2col: 域 {it:b}:}{cmd:c(smallestdouble)} 到 {cmd:c(maxdouble)}{p_end}
{p2col: 范围:}0 到 {cmd:c(maxdouble)}{p_end}
{p2colreset}{...}