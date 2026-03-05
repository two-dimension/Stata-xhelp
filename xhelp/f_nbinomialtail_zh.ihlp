
{help f_nbinomialtail:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:nbinomialtail(}{it:n}{cmd:,}{it:k}{cmd:,}{it:p}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}负二项分布的反向累积概率{p_end}

{p2col:}当 {it:n} 是整数时，{cmd:nbinomialtail()} 返回在 {it:n} 次成功之前观察到 {it:k} 次或更多失败的概率，当一次试验的成功概率为 {it:p} 时。{p_end}

{p2col:}负二项分布反函数是使用 {helpb ibetatail()} 进行评估的。{p_end}
{p2col: 定义域 {it:n}:}1e-10 到 1e+17（可以是非整数）{p_end}
{p2col: 定义域 {it:k}:}0 到 2^53-1{p_end}
{p2col: 定义域 {it:p}:}0 到 1（左侧不包括）{p_end}
{p2col: 范围:}0 到 1{p_end}
{p2colreset}{...}