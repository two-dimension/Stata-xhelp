
{help bayes_paramspec:English Version}
{hline}
{phang}
{it:paramspec} 可以是以下之一：

{p 8 8 2}
{cmd:{c -(}}{it:eqname}{cmd::}{it:param}{cmd:{c )-}} 指的是方程名称为 {it:eqname} 的参数 {it:param}；

{p 8 8 2}
{cmd:{c -(}}{it:eqname}{cmd::}{cmd:{c )-}} 指的是方程名称为 {it:eqname} 的所有模型参数；

{p 8 8 2}
{cmd:{c -(}}{it:eqname}{cmd::}{it:paramlist}{cmd:{c )-}} 指的是方程名称为 {it:eqname} 且名称在 {it:paramlist} 中的参数；或者

{p 8 8 2}
{cmd:{c -(}}{it:param}{cmd:{c )-}} 指的是所有名称为 {it:param} 的参数，来自所有方程。

{p 8 8 2}
在上述内容中，{it:param} 可以指代一个矩阵名称，这种情况下它将隐含该矩阵的所有元素。请参见 {it:{mansection BAYES BayesianpostestimationRemarksandexamplesDifferentwaysofspecifyingmodelparameters:不同方式指定模型参数}} 在 {bf:[BAYES] Bayesian postestimation} 中的示例。
{p_end}