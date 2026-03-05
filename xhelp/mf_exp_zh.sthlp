{smcl}
{* *! version 1.2.1  02aug2018}{...}
{vieweralsosee "[M-5] exp()" "mansection M-5 exp()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Scalar" "help m4_scalar_zh"}{...}
{viewerjumpto "Syntax" "mf_exp_zh##syntax"}{...}
{viewerjumpto "Description" "mf_exp_zh##description"}{...}
{viewerjumpto "Conformability" "mf_exp_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_exp_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_exp_zh##source"}
{help mf_exp:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-5] exp()} {hline 2}}指数运算和对数
{p_end}
{p2col:}({mansection M-5 exp():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数值矩阵}
{cmd:exp(}{it:数值矩阵 Z}{cmd:)}

{p 8 12 2}
{it:数值矩阵}
{cmd:ln(}{it:数值矩阵 Z}{cmd:)}

{p 8 12 2}
{it:数值矩阵}
{cmd:log(}{it:数值矩阵 Z}{cmd:)}

{p 8 12 2}
{it:数值矩阵}
{cmd:log10(}{it:数值矩阵 Z}{cmd:)}

{p 8 12 2}
{it:数值矩阵}
{cmd:expm1(}{it:数值矩阵 Z}{cmd:)}

{p 8 12 2}
{it:数值矩阵}
{cmd:ln1p(}{it:数值矩阵 Z}{cmd:)}

{p 8 12 2}
{it:数值矩阵}
{cmd:log1p(}{it:数值矩阵 Z}{cmd:)}

{p 8 12 2}
{it:数值矩阵}
{cmd:ln1m(}{it:数值矩阵 Z}{cmd:)}

{p 8 12 2}
{it:数值矩阵}
{cmd:log1m(}{it:数值矩阵 Z}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:exp(}{it:Z}{cmd:)} 返回 {it:Z} 的逐元素指数。
{cmd:exp()} 当 {it:Z} 为实数时返回实数，当 {it:Z} 为复数时返回复数。

{p 4 4 2}
{cmd:ln(}{it:Z}{cmd:)} 和 {cmd:log(}{it:Z}{cmd:)} 返回 {it:Z} 的逐元素自然对数。这两个函数是同义词。
{cmd:ln()} 和 {cmd:log()} 当 {it:Z} 为实数时返回实数，当 {it:Z} 为复数时返回复数。

{p 8 8 2}
    {cmd:ln(}{it:x}{cmd:)}, {it:x} 是实数，返回 {it:x} 的自然对数，或者在 {it:x} <= 0 时返回缺失值 ({cmd:.})。

{p 8 8 2}
    {cmd:ln(}{it:z}{cmd:)}, {it:z} 是复数，返回 {it:z} 的复自然对数。Im({cmd:ln()}) 选择在区间 (-{it:pi},{it:pi}] 中。

{p 4 4 2}
{cmd:log10(}{it:Z}{cmd:)} 返回 {it:Z} 的逐元素以10为底的对数。
{cmd:log10()} 当 {it:Z} 为实数时返回实数，当 {it:Z} 为复数时返回复数。
{cmd:log10(}{it:Z}{cmd:)} 在数学上和操作上定义为 {cmd:ln(}{it:Z}{cmd:)}/{cmd:ln(10)}。

{p 4 4 2}
{cmd:expm1(}{it:Z}{cmd:)} 返回 {cmd:exp(}{it:z}{cmd:)}-1，对于实矩阵 {it:Z} 中的每个元素 {it:z}。 {cmd:expm1(}{it:z}{cmd:)} 对于 |{it:z}| 的小值比 {cmd:exp(}{it:z}{cmd:)}-1 更准确。

{p 4 4 2}
{cmd:ln1p(}{it:Z}{cmd:)} 和 {cmd:log1p(}{it:Z}{cmd:)} 返回
{cmd:log(}1+{it:z}{cmd:)} 对于实矩阵 {it:Z} 中的每个元素 {it:z}。这两个函数是同义词。 {cmd:ln1p(}{it:z}{cmd:)} 对于 |{it:z}| 的小值比 {cmd:ln(}1+{it:z}{cmd:)} 更准确。

{p 4 4 2}
{cmd:ln1m(}{it:Z}{cmd:)} 和 {cmd:log1m(}{it:Z}{cmd:)} 返回 
{cmd:log(}1-{it:z}{cmd:)} 对于实矩阵 {it:Z} 中的每个元素 {it:z}。这两个函数是同义词。 {cmd:ln1m(}{it:z}{cmd:)} 对于 |{it:z}| 的小值比 {cmd:ln(}1-{it:z}{cmd:)} 更准确。


{marker conformability}{...}
{title:兼容性}

{p 4 4 2}
{cmd:exp(}{it:Z}{cmd:)},
{cmd:ln(}{it:Z}{cmd:)},
{cmd:log(}{it:Z}{cmd:)},
{cmd:log10(}{it:Z}{cmd:)},
{cmd:expm1(}{it:Z}{cmd:)},
{cmd:ln1p(}{it:Z}{cmd:)},
{cmd:log1p(}{it:Z}{cmd:)},
{cmd:ln1m(}{it:Z}{cmd:)},
{cmd:log1m(}{it:Z}{cmd:)}:
{p_end}
	     {it:Z}:  {it:r x c}
	{it:结果}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:exp(}{it:Z}{cmd:)} 当 Re({it:Z})>709 时返回缺失值。

{p 4 4 2}
{cmd:ln(}{it:Z}{cmd:)}, 
{cmd:log(}{it:Z}{cmd:)}, 和
{cmd:log10(}{it:Z}{cmd:)}
当 {it:Z} 为实数且 {it:Z}<=0 时返回缺失值。
此外，当结果为复数时，这些函数对实数参数返回缺失值 ({cmd:.})。例如， 
{cmd:ln(-1)} = {cmd:.}，而 
{cmd:ln(-1+0i)} = 3.14159265i。

{p 4 4 2}
{cmd:expm1(}{it:Z}{cmd:)} 当 {it:Z}>709 时返回缺失值。

{p 4 4 2}
{cmd:ln1p(}{it:z}{cmd:)} 和 {cmd:log1p(}{it:z}{cmd:)} 
当 1+{it:z}<=0 时返回缺失值。

{p 4 4 2}
{cmd:ln1m(}{it:z}{cmd:)} 和 {cmd:log1m(}{it:z}{cmd:)} 
当 1-{it:z}<=0 时返回缺失值。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view log10.mata, adopath asis:log10.mata};
其他函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_exp.sthlp>}