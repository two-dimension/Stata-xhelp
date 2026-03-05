
{help lasso_opt_long:English Version}
{hline}
{* *! version 1.0.0  22jun2019}{...}
{marker lasso_options}{...}
{phang}
{cmd:lasso(}{varlist}{cmd:,} {it:lasso_options}{cmd:)} 让你为不同的lasso设置不同的选项，或者为所有的lasso设置高级选项。你需要指定一个{it:varlist}，后面跟上你想要应用于这些变量的lasso的选项。{it:varlist}由一个或多个来自{depvar}或{it:varsofinterest}的变量组成。可以使用{cmd:_all}或{cmd:*}来指定{it:depvar}和所有的{it:varsofinterest}。只要在每个规格中提供不同的变量，这个选项是可以重复的。{it:lasso_options}包括{cmd:selection(}...{cmd:)}, {cmd:grid(}...{cmd:)}, {opt stop(#)}, 
{opt tolerance(#)}, {opt dtolerance(#)}和{opt cvtolerance(#)}。当指定{cmd:lasso(}{it:varlist}, {cmd:selection(}...{cmd:))}时，它会覆盖{it:varlist}中变量的任何全局{opt selection()}选项。它还会覆盖这些变量的全局{opt sqrtlasso}选项。有关更多信息，请参见{manhelp lasso_options LASSO:lasso options}。