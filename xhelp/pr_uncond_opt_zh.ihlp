
{smcl}
{* *! version 1.0.4  18mar2011}{...}
{phang}
{opt pr(a,b)} 计算概率 Pr(a {ul:<} y {ul:<} b)，其中 a 和 b 是可以指定为数字或变量的非负整数；
{help pr_uncond_opt:English Version}
{hline}

{pmore}
b 缺失 {bind:(b {ul:>} .)} 表示正无穷；{break}
{cmd:pr(20,.)}
计算 {bind:Pr(y {ul:>} 20)}；{break}
{cmd:pr(20,}{it:b}{cmd:)} 在使得 {bind:b {ul:>} .} 的观测中计算 {bind:Pr(y {ul:>} 20)}；{break}
并且在其他地方计算 {bind:Pr(20 {ul:<} y {ul:<} b)}。

{pmore}
{cmd:pr(.,}{it:b}{cmd:)} 会产生语法错误。变量 {it:a} 的观测值缺失将导致对于 {opt pr(a,b)} 的该观测值也缺失。{p_end}