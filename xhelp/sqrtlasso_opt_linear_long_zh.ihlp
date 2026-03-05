
{help sqrtlasso_opt_linear_long:English Version}
{hline}
{* *! version 1.0.0  22jun2019}{...}
{marker sqrtlasso_options}{...}
{phang}
{cmd:sqrtlasso(}{it:varlist}{cmd:,} {it:lasso_options}{cmd:)} 的作用与选项 {cmd:lasso()} 相似，不同之处在于对 {it:varlist} 中的变量执行平方根套索而非常规套索。 {it:varlist} 由一个或多个来自 {it:depvar} 或 {it:varsofinterest} 的变量组成。 只要每个规范中给出的变量不同，此选项可以重复使用。 {it:lasso_options} 包括 {cmd:selection(}...{cmd:)}, {cmd:grid(}...{cmd:)}, 
{opt stop(#)}, {opt tolerance(#)}, {opt dtolerance(#)}, 和 
{opt cvtolerance(#)}。 当指定 {cmd:sqrtlasso(}{it:varlist}{cmd:,}
{cmd:selection(}...{cmd:))} 时，它将覆盖 {it:varlist} 中变量的任何全局 {cmd:selection()} 选项。 请参见 
{manhelp lasso_options LASSO:lasso options}。