
{help f_lndirichletden:English Version}
{hline}
{* *! version 1.0.0  28dec2018}{...}
    {cmd:lndirichletden(}{it:A}{cmd:,}{it:X}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}Dirichlet 分布密度的自然对数，形状参数的向量 {it:A} 和随机向量 {it:X}；如果 {it:A} 或 {it:X} 的任何元素非正，则为 {it:missing}；如果 {it:X} 的元素之和大于或等于 1，则为 {it:missing}{p_end}

{p2col:}Dirichlet 分布的概率密度函数为

	                         1
		               {hline 5} P(A,X) {1 - S(X)}^(A[n+1] - 1) 
	                        B(A)

{p2col:}其中 B(A) 是多元贝塔函数，可以用伽马函数表示：

	  		      gamma(A[1]) gamma(A[2]) ... gamma(A[n+1])
		       B(A) = {hline 41}
			   	      gamma(A[1] + A[2] + ... + A[n+1])

		     P(A,X) = X[1]^(A[1]-1) X[2]^(A[2]-1) ... X[n]^(A[n]-1)

		       S(X) = X[1] + X[2] + ... + X[n]

{p2col: 域 {it:A}:}1 x {it:n}+1 和 {it:n}+1 x 1 向量{p_end}
{p2col: 域 {it:X}:}1 x {it:n} 和 {it:n} x 1 向量{p_end}
{p2col: 范围:}-8e+307 到 8e+307{p_end}
{p2colreset}{...}