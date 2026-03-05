
{help f_nbinomial:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:nbinomial(}{it:n}{cmd:,}{it:k}{cmd:,}{it:p}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}负二项分布的累积概率{p_end}

{p2col:}{it:n} 可以是非整数。当 {it:n} 是整数时，{cmd:nbinomial()} 返回在第 {it:n} 次成功之前观察到 {it:k} 次或更少失败的概率，当一次试验成功的概率为 {it:p}。{p_end}

{p2col:}负二项分布函数是使用 {helpb ibeta()} 进行评估的。{p_end}
{p2col: 定义域 {it:n}:}1e-10 到 1e+17（可以是非整数）{p_end}
{p2col: 定义域 {it:k}:}0 到 2^53-1{p_end}
{p2col: 定义域 {it:p}:}0 到 1（左侧不包括）{p_end}
{p2col: 范围:}0 到 1{p_end}
{p2colreset}{...}