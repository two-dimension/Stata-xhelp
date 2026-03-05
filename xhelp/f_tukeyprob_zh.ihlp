
{help f_tukeyprob:English Version}
{hline}
{* *! version 1.1.3  12mar2015}{...}
    {cmd:tukeyprob(}{it:k}{cmd:,}{it:df}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}累积Tukey的学生化范围分布，具有{it:k}个范围和{it:df}个自由度；
	{cmd:0} 如果 {it:x} < 0{p_end}

{p2col:}如果 {it:df} 是缺失值，则使用正态分布而不是学生t分布.{p_end}

{p2col:}{cmd:tukeyprob()} 是使用在 {help density_functions##M1981:Miller (1981)} 中描述的算法计算的.{p_end}
{p2col: 范围 {it:k}:}2 到 1e+6{p_end}
{p2col: 范围 {it:df}:}2 到 1e+6{p_end}
{p2col: 范围 {it:x}:}-8e+307 到 8e+307{p_end}
{p2col: 范围:}0 到 1{p_end}
{p2colreset}{...}