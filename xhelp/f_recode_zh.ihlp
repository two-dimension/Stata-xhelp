
{help f_recode:English Version}
{hline}
{* *! version 1.1.2  02mar2015}{...}
    {cmd:recode(}{it:x}{cmd:,}{it:x1}{cmd:,}{it:x2}{cmd:,}{it:...}{cmd:,}{it:xn}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}{it:missing} 如果 {it:x1}, {it:x2}, ..., {it:xn} 
    不是弱递增的; {it:x} 如果 {it:x} 是缺失值; {it:x1} 如果
    {it:x} {ul:<} {it:x1}; {it:x2} 如果 
    {it:x} {ul:<} {it:x2}, ...; 否则，{it:xn} 如果
    {it:x} > {it:x1}, {it:x2}, ..., {it:xn-1}。
    {it:xi} {ul:>} {cmd:.} 被解释为 {it:xi} = +inf{p_end}

{p2col:}另见 {helpb autocode()} 和 {helpb irecode()} 以获取其他
    类型的重编码函数。{p_end}
{p2col: 域 {it:x}:}-8e+307 到 8e+307 或 {it:missing}{p_end}
{p2col: 域 {it:x1}:}-8e+307 到 8e+307{p_end}
{p2col: 域 {it:x2}:}{it:x1} 到 8e+307{p_end}
{p2col: ...}{p_end}
{p2col: 域 {it:xn}:}{it:xn-1} 到 8e+307{p_end}
{p2col: 范围:}{it:x1}, {it:x2}, ..., {it:xn} 或 {it:missing}{p_end}
{p2colreset}{...}