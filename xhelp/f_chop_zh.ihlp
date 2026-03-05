
{help f_chop:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:chop(}{it:x}{cmd:,}{it:tol}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}{cmd:round(}{it:x}{cmd:)} 如果
        {cmd:abs(}{it:x}{cmd:-round(}{it:x}{cmd:))} < {it:tol}; 否则,
        {it:x}; 或者 {it:x} 如果 {it:x} 是缺失的{p_end}
{p2col: 范围 {it:x}:}-8e+307 到 8e+307{p_end}
{p2col: 范围 {it:tol}:}-8e+307 到 8e+307{p_end}
{p2col: 值域:}-8e+307 到 8e+307{p_end}
{p2colreset}{...}