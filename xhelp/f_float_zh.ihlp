
{help f_float:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:float(}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}将 {it:x} 的值四舍五入到 {cmd:float} 精度{p_end}

{p2col:}尽管您可以将数值变量存储为 {cmd:byte}、{cmd:int}、{cmd:long}、{cmd:float} 或 {cmd:double}，Stata 在进行任何计算之前都会将所有数字转换为 {cmd:double}。因此，比较没有有限二进制表示的数字时可能会遇到困难。

{p2col:}例如，如果变量 {cmd:x} 存储为 {cmd:float} 并包含值 {cmd:1.1}（在二进制中是一个重复的“十进制”），则表达式 {cmd:x==1.1} 的结果将为 {it:false}，因为文字 {cmd:1.1} 是 1.1 的 {cmd:double} 表示，与存储在 {cmd:x} 中的 {cmd:float} 表示不同。
（它们相差 2.384 x 10^(-8)。）
表达式 {cmd:x==float(1.1)} 的结果将为 {it:true}，因为 {cmd:float()} 函数在与 {cmd:x} 进行比较之前将文字 {cmd:1.1} 转换为其 {cmd:float} 表示。（有关更多信息，请参见 {findalias frprecision}。）{p_end}
{p2col: 范围：}-1e+38 到 1e+38{p_end}
{p2col: 域：}-1e+38 到 1e+38{p_end}
{p2colreset}{...}