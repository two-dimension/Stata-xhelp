
{help bayes_exprspec:English Version}
{hline}
{* *! version 1.0.3  19jun2019}{...}
{phang}
{it:exprspec} 是一个带可选标签的模型参数表达式，位于括号内：

{p 12 15 2}
{cmd:(}[{it:exprlabel}{cmd::}]{it:expr}{cmd:)}

{p 8 8 2}
{it:exprlabel} 是一个有效的 Stata 名称，而 {it:expr} 是一个标量表达式，不能包含矩阵模型参数。有关示例，请参见 {it:{mansection BAYES BayesianpostestimationRemarksandexamplesSpecifyingfunctionsofmodelparameters:指定模型参数的函数}} 在 {bf:[BAYES] Bayesian后验估计} 中。