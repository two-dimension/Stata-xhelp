
{help f_invpoissontail:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:invpoissontail(}{it:k}{cmd:,}{it:q}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}计算使得在 {it:k} 处评估的反累积 Poisson 分布为 {it:q} 的 Poisson 均值: 如果 {cmd:poissontail(}{it:m}{cmd:,}k{cmd:)} = {it:q}，那么 {cmd:invpoissontail(}{it:k}{cmd:,}{it:q}{cmd:)} = {it:m}{p_end}

{p2col:}反累积 Poisson 分布函数的逆使用 {helpb invgammap()} 进行评估。{p_end}
{p2col: 域 {it:k}:}0 到 2^53-1{p_end}
{p2col: 域 {it:q}:}0 到 1 (不包括1){p_end}
{p2col: 范围:}0 到 2^53 (左侧不包括0){p_end}
{p2colreset}{...}