
{help f_e:English Version}
{hline}
{* *! version 1.1.4  27mar2017}{...}
    {cmd:e(}{it:name}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}存储结果的值
             {cmd:e(}{it:name}{cmd:)}; 见 {findalias frresult}{p_end}

{p2col 8 22 26 2:}{cmd:e(}{it:name}{cmd:)} = 如果存储的结果不存在则为标量缺失{p_end}
{p2col 8 22 26 2:}{cmd:e(}{it:name}{cmd:)} = 如果存储的结果是一个矩阵，则为指定矩阵{p_end}
{p2col 8 22 26 2:}{cmd:e(}{it:name}{cmd:)} = 如果存储的结果是标量，则为标量数值{p_end}
{p2col: 域:}名称{p_end}
{p2col: 范围:}字符串、标量、矩阵或 {it:missing}{p_end}
{p2colreset}{...}

    {cmd:e(sample)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}{cmd:1} 如果观察值在估计样本中，否则为 {cmd:0}{p_end}
{p2col: 范围:}0 到 1{p_end}
{p2colreset}{...}