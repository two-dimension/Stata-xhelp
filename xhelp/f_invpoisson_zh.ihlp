
{help f_invpoisson:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:invpoisson(}{it:k}{cmd:,}{it:p}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}使得在 {it:k} 处评估的累积泊松分布为 {it:p} 的泊松均值：如果
	{cmd:poisson(}{it:m}{cmd:,}k{cmd:)} = {it:p}，则
	{cmd:invpoisson(}{it:k}{cmd:,}{it:p}{cmd:)} = {it:m}{p_end}

{p2col:}逆泊松分布函数使用 {helpb invgammaptail()} 进行评估。{p_end}
{p2col: 域 {it:k}:}0 到 2^53-1{p_end}
{p2col: 域 {it:p}:}0 到 1（不包含1）{p_end}
{p2col: 范围：}1.110e-16 到 2^53{p_end}
{p2colreset}{...}