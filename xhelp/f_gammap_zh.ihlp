
{help f_gammap:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:gammap(}{it:a}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}累计 gamma 分布，其形状参数为 {it:a}； {cmd:0} 如果 {it:x} < 0{p_end}

{p2col:}累积 Poisson 分布（在期望为 {it:x} 的情况下观察到 {it:k} 或更少事件的概率）可以表示为 
{cmd:1-gammap(}{it:k}{cmd:+1,}{it:x}{cmd:)}。反向累积（观察到 {it:k} 或更多事件的概率）可以表示为 
{cmd:gammap(}{it:k}{cmd:,}{it:x}{cmd:)}。

{p2col:}{cmd:gammap()} 也被称为不完全 gamma 函数（比率）。{p_end}

{p2col:}三参数 gamma 分布的概率（见 {helpb gammaden()}）可以通过对 {it:x} 进行平移和缩放来计算；
也就是说，{cmd:gammap(}{it:a}{cmd:,}({it:x} - {it:g})/{it:b}{cmd:)}。
{p_end}
{p2col: 域 {it:a}:}1e-10 到 1e+17{p_end}
{p2col: 域 {it:x}:}-8e+307 到 8e+307；有趣的域是 {it:x} {ul:>} 0{p_end}
{p2col: 范围：}0 到 1{p_end}
{p2colreset}{...}