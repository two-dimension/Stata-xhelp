
{help f_ibeta:English Version}
{hline}
{* *! version 1.2.1  02mar2015}{...}
    {cmd:ibeta(}{it:a}{cmd:,}{it:b}{cmd:,}{it:x}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}具有形状参数 {it:a} 和 {it:b} 的累积分布beta分布；如果 {it:x} < 0 则返回 {cmd:0}；如果 {it:x} > 1 则返回 {cmd:1}{p_end}

{p2col:}{cmd:ibeta()} 返回正则化的未完成beta函数，也称为未完成beta函数比率。未正则化的未完成beta函数为
{break}
{cmd:(gamma(}{it:a}{cmd:)*gamma(}{it:b}{cmd:)/gamma(}{it:a}{cmd:+}{it:b}{cmd:))*ibeta(}{it:a}{cmd:,}{it:b}{cmd:,}{it:x}{cmd:)}
{break}
或者，当 {it:a} 或 {it:b} 可能很大时，使用以下表达式更好：
{break} 
{cmd:exp(lngamma(}{it:a}{cmd:)+lngamma(}{it:b}{cmd:)-lngamma(}{it:a}{cmd:+}{it:b}{cmd:))*ibeta(}{it:a}{cmd:,}{it:b}{cmd:,}{it:x}{cmd:)}.

{p2col:}以下是使用正则化未完成beta函数的示例。尽管Stata有累积二项函数（见 {help f_binomiallc_zh:binomial()}），事件在 {it:n} 次试验中发生 {it:k} 次或更少的概率，可以通过以下方式评估：
{cmd:cond(}{it:k}{cmd:==}{it:n}{cmd:,1,1-ibeta(}{it:k}{cmd:+1,}{it:n}{cmd:-}{it:k}{cmd:,}{it:p}{cmd:))}。
反向累积二项（事件发生 {it:k} 次或更多次的概率）可以通过以下方式评估：
{cmd:cond(}{it:k}{cmd:==0,1,ibeta(}{it:k}{cmd:,}{it:n}{cmd:-}{it:k}{cmd:+1,}{it:p}{cmd:))}.{p_end}
{p2col: 域 {it:a}:}1e-10 到 1e+17{p_end}
{p2col: 域 {it:b}:}1e-10 到 1e+17{p_end}
{p2col: 域 {it:x}:}-8e+307 到 8e+307；有趣的域是
	0 {ul:<} {it:x} {ul:<} 1{p_end}
{p2col: 范围：}0 到 1{p_end}
{p2colreset}{...}