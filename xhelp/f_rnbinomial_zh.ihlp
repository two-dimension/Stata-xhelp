
{help f_rnbinomial:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:rnbinomial(}{it:n}{cmd:,}{it: p}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}负二项随机变量{p_end}

{p2col:}如果 {it:n} 为整数值，{cmd:rnbinomial()} 返回在第 {it:n} 次成功之前的失败次数，
其中单次试验的成功概率为 {it:p}。 
{it:n} 也可以是非整数值。{p_end}
{p2col: 域 {it:n}:}1e-4 到 1e+5{p_end}
{p2col: 域 {it:p}:}1e-4 到 1-1e-4{p_end}
{p2col: 范围:}0 到 2^53-1{p_end}
{p2colreset}{...}