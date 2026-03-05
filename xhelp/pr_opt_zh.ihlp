
{help pr_opt:English Version}
{hline}
{* *! version 1.0.0  04may2007}{...}
{phang}
{opt pr(a,b)} 计算 {bind:Pr({it:a} < xb + u < {it:b})}，即在区间 ({it:a},{it:b}) 中观察到 y|x 的概率。

{pmore}
{it:a} 和 {it:b} 可以指定为数字或变量名；{it:lb} 和 {it:ub} 是变量名；{break}
{cmd:pr(20,30)} 计算 {bind:Pr(20 < xb + u < 30)}；{break}
{cmd:pr(}{it:lb}{cmd:,}{it:ub}{cmd:)} 计算
{bind:Pr({it:lb} < xb + u < {it:ub})}；并且{break}
{cmd:pr(20,}{it:ub}{cmd:)} 计算 {bind:Pr(20 < xb + u < {it:ub})}。

{pmore}
{it:a} 缺失 {bind:({it:a} {ul:>} .)} 表示负无穷；
{cmd:pr(.,30)} 计算 {bind:Pr(-infinity < xb + u < 30)}；{break}
{cmd:pr(}{it:lb}{cmd:,30)} 计算
{bind:Pr(-infinity < xb + u < 30)} 对于 {bind:{it:lb} {ul:>} . 的观察值；{break} 
并在其他地方计算 {bind:Pr({it:lb} < xb + u < 30)}。

{pmore}
{it:b} 缺失 {bind:({it:b} {ul:>} .)} 表示正无穷；{cmd:pr(20,.)} 
计算 {bind:Pr(+infinity > xb + u > 20)}；{break}
{cmd:pr(20,}{it:ub}{cmd:)} 计算 {bind:Pr(+infinity > xb + u > 20)} 对于
{bind:{it:ub} {ul:>} . 的观察值；{break}
并在其他地方计算 {bind:Pr(20 < xb + u < {it:ub})}。
{p_end}