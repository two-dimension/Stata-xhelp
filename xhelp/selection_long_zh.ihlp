
{help selection_long:English Version}
{hline}
{* *! version 1.0.0  22jun2019}{...}
{phang}
{cmd:selection(plugin}|{cmd:cv}|{cmd:adaptive)} 指定选择方法以为每个 lasso 或平方根 lasso 估计选择最佳的 lasso 惩罚参数 lambda* 的值。为 {it:depvar} 和 {it:varsofinterest} 中的每个变量分别估计 lasso。当指定 {cmd:selection()} 时，会改变这些 lasso 的选择方法。您可以使用选项 {cmd:lasso()} 或 {cmd:sqrtlasso()} 为不同的 lasso 指定不同的选择方法。当使用 {cmd:lasso()} 或 {cmd:sqrtlasso()} 为某些变量的 lasso 指定不同的选择方法时，它们会覆盖使用 {cmd:selection()} 对指定变量所做的全局设置。

{phang2}
{cmd:selection(plugin)} 是默认选项。它基于依赖于数据的 "plugin" 迭代公式选择 lambda*。请参见 {manhelp lasso_options LASSO:lasso options}。

{phang2}
{cmd:selection(cv)} 
选择能够使 CV 函数最小化的 lambda*。
请参见 {manhelp lasso_options LASSO:lasso options}。

{phang2}
{cmd:selection(adaptive)}
使用自适应 lasso 选择方法选择 lambda*。
当指定 {cmd:sqrtlasso} 时无法使用此选项。
请参见 {manhelp lasso_options LASSO:lasso options}。