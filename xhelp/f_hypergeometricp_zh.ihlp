
{help f_hypergeometricp:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:hypergeometricp(}{it:N}{cmd:,}{it:K}{cmd:,}{it:n}{cmd:,}{it:k}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}超几何分布中，从大小为 {it:N} 的总体中，抽取大小为 {it:n} 的样本，其中含有 {it:K} 个具有所需属性的元素，得到 {it:k} 个成功的超几何概率{p_end}

{p2col:}成功是获得具有所需属性的元素。{p_end}
{p2col: 域 {it:N}:}2 到 1e+5{p_end}
{p2col: 域 {it:K}:}1 到 {it:N}-1{p_end}
{p2col: 域 {it:n}:}1 到 {it:N}-1{p_end}
{p2col: 域 {it:k}:}{cmd:max(}0{cmd:,}{it:n-N+K}{cmd:)} 到 
{cmd:min(}{it:K}{cmd:,}{it:n}{cmd:)}{p_end}
{p2col: 范围：}0 到 1（右侧不包括）{p_end}
{p2colreset}{...}