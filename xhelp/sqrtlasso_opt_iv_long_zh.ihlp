
{help sqrtlasso_opt_iv_long:English Version}
{hline}
{* *! version 1.0.0  22jun2019}{...}
{marker sqrtlasso_options}{...}
{phang}
{cmd:sqrtlasso(}{it:varlist}{cmd:,} {it:lasso_options}{cmd:)} 的功能和
选项 {cmd:lasso()} 相似，只不过对 {it:varlist} 中的变量采用的是平方根套索，而不是常规的套索。{it:varlist} 包含一个或多个来自 {it:depvar}、{it:exovars} 或 {it:endovars} 的变量。只要每个规格中指定不同的变量，此选项可以重复。{it:lasso_options} 包括 {cmd:selection(}...{cmd:)}, {cmd:grid(}...{cmd:)}, {opt stop(#)}, {opt tolerance(#)}, {opt dtolerance(#)} 和 {opt cvtolerance(#)}。当指定 {cmd:sqrtlasso(}{it:varlist}{cmd:,} {cmd:selection(}...{cmd:))} 时，覆盖 {it:varlist} 中变量的任何全局 {cmd:selection()} 选项。请参见 
{manhelp lasso_options LASSO:lasso options}。