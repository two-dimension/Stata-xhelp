
{help f_nftail:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:nFtail(}{it:df1}{cmd:,}{it:df2}{cmd:,}{it:np}{cmd:,}{it:f}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}反向累积分布（上尾或生存）非中心 F 分布，具有 {it:df1} 的分子和 {it:df2} 的分母自由度，以及非中心参数 {it:np}；当 {it:f} < 0 时返回 {cmd:1}{p_end}

{p2col:}{cmd:nFtail()} 的计算基于非中心 beta 和 F 分布之间的关系，使用 {cmd:nibeta()}。有关更多详细信息，请参阅 {help density functions##JKB1995:Johnson, Kotz, and Balakrishnan (1995)}。{p_end}
{p2col: 范围 {it:df1}:}1e-323 到 8e+307（可能是非整数）{p_end}
{p2col: 范围 {it:df2}:}1e-323 到 8e+307（可能是非整数）{p_end}
{p2col: 范围 {it:np}:}0 到 1,000{p_end}
{p2col: 范围 {it:f}:}-8e+307 到 8e+307；有趣的范围是 {it:f} {ul:>} 0{p_end}
{p2col: 取值范围:}0 到 1{p_end}
{p2colreset}{...}