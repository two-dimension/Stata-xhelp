
{help f_rnormal:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:rnormal()}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}标准正态（高斯）随机变量，即，来自均值为 0 和标准差为 1 的正态分布的变量{p_end}
{p2col: 范围:}{cmd:c(mindouble)} 到 {cmd:c(maxdouble)}{p_end}

    {cmd:rnormal(}{it:m}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}正态({it:m},1)（高斯）随机变量，其中 {it:m} 是均值，标准差为 1{p_end}
{p2col: 领域 {it:m}:}{cmd:c(mindouble)} 到 {cmd:c(maxdouble)}{p_end}
{p2col: 范围:}{cmd:c(mindouble)} 到 {cmd:c(maxdouble)}{p_end}
{p2colreset}{...}

    {cmd:rnormal(}{it:m}{cmd:,}{it: s}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}正态({it:m},{it:s})（高斯）随机变量，其中 {it:m} 是均值，{it:s} 是标准差{p_end}

{p2col:}生成正态（高斯）随机变量的方法取自 {help rnormal()##K1998:Knuth (1998, 122-128)}; {help rnormal()##MMB1964:Marsaglia, MacLaren, and Bray (1964)}; 和 {help rnormal()##W1977:Walker (1977)}.{p_end}
{p2col: 领域 {it:m}:}{cmd:c(mindouble)} 到 {cmd:c(maxdouble)}{p_end}
{p2col: 领域 {it:s}:}0 到 {cmd:c(maxdouble)}{p_end}
{p2col: 范围:}{cmd:c(mindouble)} 到 {cmd:c(maxdouble)}{p_end}
{p2colreset}{...}