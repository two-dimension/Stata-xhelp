
{help lasso_opt_iv_long:English Version}
{hline}
{* *! version 1.0.0  22jun2019}{...}
{marker lasso_options}{...}
{phang}
{cmd:lasso(}{it:varlist}{cmd:,} {it:lasso_options}{cmd:)} 让您为不同的 Lasso 设置不同的选项，或为所有 Lasso 设置高级选项。您指定一个 {it:varlist}，后面跟随您希望应用于这些变量的 Lasso 的选项，其中 {it:varlist} 由一个或多个来自 {it:depvar}、{it:exovars} 或 {it:endovars} 的变量组成。可以使用 {cmd:_all} 或 {cmd:*} 来指定 {it:depvar} 及所有 {it:exovars} 和 {it:endovars}。只要在每个规格中给出的变量不同，此选项是可重复的。{it:lasso_options} 包括 {cmd:selection(}...{cmd:)},{cmd:grid(}...{cmd:)}, {opt stop(#)}, {opt tolerance(#)}, {opt dtolerance(#)}，和 {opt cvtolerance(#)}。当指定 {cmd:lasso(}{it:varlist}{cmd:,} {cmd:selection(}...{cmd:))} 时，它会覆盖 {it:varlist} 中变量的任何全局 {cmd:selection()} 选项。它也会覆盖这些变量的全局 {cmd:sqrtlasso} 选项。请参见 {manhelp lasso_options LASSO:lasso options}。