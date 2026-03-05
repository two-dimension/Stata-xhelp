
{help f_ustrtoname:English Version}
{hline}
{* *! version 1.0.2  12mar2015}{...}
    {cmd:ustrtoname(}{it:s}[{cmd:,}{it:p}]{cmd:)} 
{p2colset 8 22 22 2}{...}
{p2col: 描述：}将字符串 {it:s} 转换为 Stata 名称{p_end}

{p2col:}{cmd:ustrtoname()} 结果是一个长度被截断到 {ccl namelenchar} 个字符的名称。字符串 {it:s} 中每个不允许出现在 Stata 名称中的字符都被转换为下划线字符 {cmd:_}。如果 {it:s} 的第一个字符是数字字符，并且 {it:p} 不是 0，则结果前面会加一个下划线。

{p2col:}{cmd:ustrtoname("name",1)} = {cmd:"name"}{break}
          {cmd:ustrtoname("the médiane")} = {cmd:"the_médiane"}{break}
          {cmd:ustrtoname("0médiane")} = {cmd:"_0médiane"}{break}
          {cmd:ustrtoname("0médiane", 1)} = {cmd:"_0médiane"}{break}
          {cmd:ustrtoname("0médiane", 0)} = {cmd:"0médiane"}{p_end}
{p2col: 域 {it:s}:}Unicode 字符串{p_end}
{p2col: 域 {it:p}:}整数 0 或 1{p_end}
{p2col: 范围：}Unicode 字符串{p_end}