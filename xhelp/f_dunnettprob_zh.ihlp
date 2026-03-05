
{help f_dunnettprob:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:dunnettprob(}{it:k}{cmd:,}{it:df}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}累积多重范围分布，用于 Dunnett 的多重比较方法，具有 {it:k} 个范围和 {it:df} 个自由度； {cmd:0} 如果 {it:x} < 0{p_end}

{p2col:}{cmd:dunnettprob()} 的计算使用了 {help density_functions##M1981:Miller (1981)} 中描述的算法。
{p_end}
{p2col: 域 {it:k}:}2 到 1e+6{p_end}
{p2col: 域 {it:df}:}2 到 1e+6{p_end}
{p2col: 域 {it:x}:}-8e+307 到 8e+307；有趣的域是 {it:x} {ul:>} 0{p_end}
{p2col: 范围:}0 到 1{p_end}
{p2colreset}{...}