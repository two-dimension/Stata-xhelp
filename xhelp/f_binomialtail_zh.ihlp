
{help f_binomialtail:English Version}
{hline}
{* *! version 1.1.2  27mar2017}{...}
    {cmd:binomialtail(}{it:n}{cmd:,}{it:k}{cmd:,}{it:p}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}观察到 {helpb floor():{bf:floor(}{it:k}{bf:)}} 或
        更多成功的概率
	in {cmd:floor(}{it:n}{cmd:)} 次试验，当
	一次试验成功的概率为 {it:p}；
        {cmd:1} 如果 {it:k} < 0；或者
        {cmd:0} 如果 {it:k} > {it:n}{p_end}
{p2col: 域 {it:n}:}0 到 1e+17{p_end}
{p2col: 域 {it:k}:}-8e+307 到 8e+307；有趣的域是
        0 {ul:<} {it:k} < {it:n}{p_end}
{p2col: 域 {it:p}:}0 到 1{p_end}
{p2col: 范围:}0 到 1{p_end}
{p2colreset}{...}