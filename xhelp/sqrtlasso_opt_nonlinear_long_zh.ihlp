
{help sqrtlasso_opt_nonlinear_long:English Version}
{hline}
{* *! version 1.0.0  22jun2019}{...}
{marker sqrtlasso_options}{...}
{phang}
{cmd:sqrtlasso(}{varlist}{cmd:,} {it:lasso_options}{cmd:)} 的工作方式与选项 
{cmd:lasso()} 类似，区别在于对 {it:varlist} 中的变量进行平方根套索回归，而不是常规的套索回归。 {it:varlist} 包含来自 {it:varsofinterest} 的一个或多个变量。平方根套索是线性模型，此选项不能与 {depvar} 一起使用。只要每个规格给出不同的变量，该选项是可重复的。 {it:lasso_options} 包括 {cmd:selection(}...{cmd:)}, {cmd:grid(}...{cmd:)}, {opt stop(#)}, 
{opt tolerance(#)}, {opt dtolerance(#)}, 和 {opt cvtolerance(#)}。 当指定 {cmd:sqrtlasso(}{it:varlist}, {cmd:selection(}...{cmd:))} 时，将覆盖 {it:varlist} 中变量的任何全局 {opt selection()} 选项。请参见 {manhelp lasso_options LASSO:lasso options}。