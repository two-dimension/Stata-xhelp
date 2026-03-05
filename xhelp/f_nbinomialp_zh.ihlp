
{help f_nbinomialp:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:nbinomialp(}{it:n}{cmd:,}{it:k}{cmd:,}{it:p}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}负二项分布概率{p_end}

{p2col:}当 {it:n} 是一个整数时，{cmd:nbinomialp()} 返回在成功概率为 {it:p} 的情况下，在第 {it:n} 次成功之前观察到恰好 {help floor():{bf:floor(}{it:k}{bf:)}} 次失败的概率。{p_end}
{p2col: 域 {it:n}:}1e-10 到 1e+6（可以是非整数）{p_end}
{p2col: 域 {it:k}:}0 到 1e+10{p_end}
{p2col: 域 {it:p}:}0 到 1（左侧不包含）{p_end}
{p2col: 范围:}0 到 1{p_end}
{p2colreset}{...}