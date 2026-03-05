
{help f_el:English Version}
{hline}
{* *! version 1.1.3  22may2018}{...}
    {cmd:el(}{it:s}{cmd:,}{it:i}{cmd:,}{it:j}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}{it:s}{cmd:[floor(}{it:i}{cmd:),floor(}{it:j}{cmd:)]}, 为名为 {it:s} 的矩阵的
	  {it:i},{it:j} 元素；
	  如果 {it:i} 或 {it:j} 超出范围或如果矩阵
          {it:s} 不存在，则缺失{p_end}
{p2col: 域 {it:s}:}包含矩阵名称的字符串{p_end}
{p2col: 域 {it:i}:}标量 1 到 {cmd:c(max_matdim)}{p_end}
{p2col: 域 {it:j}:}标量 1 到 {cmd:c(max_matdim)}{p_end}
{p2col: 范围:}标量 -8e+307 到 8e+307 或 {it:missing}{p_end}
{p2colreset}{...}