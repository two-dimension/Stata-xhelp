
{help f_poisson:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:poisson(}{it:m}{cmd:,}{it:k}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}观察到 {cmd:floor(}{it:k}{cmd:)} 或更少的结果概率，这些结果服从均值为 {it:m} 的泊松分布 {p_end}

{p2col:}泊松分布函数的评估使用 {helpb gammaptail()}.{p_end}
{p2col: 域 {it:m}:}1e-10 到 2^53-1 {p_end}
{p2col: 域 {it:k}:}0 到 2^53-1 {p_end}
{p2col: 范围：}0 到 1 {p_end}
{p2colreset}{...}