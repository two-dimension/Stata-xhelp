
{help f_invtukeyprob:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:invtukeyprob(}{it:k}{cmd:,}{it:df}{cmd:,}{it:p}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}逆累积分布 Tukey 的学生化范围分布，具有 {it:k} 个范围和 {it:df} 个自由度{p_end}

{p2col:}如果 {it:df} 是缺失值，则使用正态分布而不是学生 t 分布。
如果 {cmd:tukeyprob(}{it:k}{cmd:,}{it:df}{cmd:,}x{cmd:)} = {it:p}，则 
{cmd:invtukeyprob(}{it:k}{cmd:,}{it:df}{cmd:,}{it:p}{cmd:)} = x.{p_end}

{p2col:}{cmd:invtukeyprob()} 的计算是基于 {help density_functions##M1981:Miller (1981)} 中描述的算法。
{p_end}
{p2col: 定义域 {it:k}:}2 到 1e+6{p_end}
{p2col: 定义域 {it:df}:}2 到 1e+6{p_end}
{p2col: 定义域 {it:p}:}0 到 1{p_end}
{p2col: 值域:}0 到 8e+307{p_end}
{p2colreset}{...}