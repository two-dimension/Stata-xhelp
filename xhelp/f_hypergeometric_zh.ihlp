
{help f_hypergeometric:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:hypergeometric(}{it:N}{cmd:,}{it:K}{cmd:,}{it:n}{cmd:,}{it:k}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}超几何分布的累积概率{p_end}

{p2col:}{it:N} 是总体大小，{it:K} 是具有相关属性的总体元素数量，{it:n} 是样本大小。返回的是从样本大小为 {it:n} 中观察到 {it:k} 或更少具有相关属性的元素的概率。{p_end}
{p2col: 域 {it:N}:}2 到 1e+5{p_end}
{p2col: 域 {it:K}:}1 到 {it:N}-1{p_end}
{p2col: 域 {it:n}:}1 到 {it:N}-1{p_end}
{p2col: 域 {it:k}:}{cmd:max(}0{cmd:,}{it:n-N+K}{cmd:)} 到 
	{cmd:min(}{it:K}{cmd:,}{it:n}{cmd:)}{p_end}
{p2col: 范围：}0 到 1{p_end}
{p2colreset}{...}