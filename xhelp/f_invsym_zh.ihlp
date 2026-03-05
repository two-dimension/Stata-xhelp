
{help f_invsym:English Version}
{hline}
{* *! version 1.1.2  27mar2017}{...}
    {cmd:invsym(}{it:M}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}如果 {it:M} 是正定的，则返回 {it:M} 的逆
{p_end}

{p2col:}如果 {it:M} 不是正定的，则行会被反转，直到对角线项为零或负数；与这些项对应的行和列将被设置为0，从而产生一个 g2 逆。结果的行名来源于 {it:M} 的列名，结果的列名来源于 {it:M} 的行名。
{p_end}
{p2col: 定义域:}{it:n} x {it:n} 对称矩阵{p_end}
{p2col: 值域:}{it:n} x {it:n} 对称矩阵{p_end}
{p2colreset}{...}