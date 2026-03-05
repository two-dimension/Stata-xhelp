
{help me_vartype_opt:English Version}
{hline}
{* *! version 1.0.2  21mar2018}{...}
{phang}
{opt covariance(vartype)} 指定随机效应的协方差矩阵结构，并且可以为每个随机效应方程单独指定。 {it:vartype} 是以下选项之一：
{cmd:independent}、{cmd:exchangeable}、{cmd:identity}、{cmd:unstructured}、{opt fixed(matname)} 或 {opt pattern(matname)}。

{phang2}
{cmd:covariance(independent)} 协方差结构允许在一个随机效应方程中每个随机效应具有不同的方差，并假定所有协方差为0。 默认值为 {cmd:covariance(independent)}，除非拟合的是交叉随机效应模型，在这种情况下默认值为 {cmd:covariance(identity)}。

{phang2}
{cmd:covariance(exchangeable)} 结构为所有随机效应指定一个共同的方差和一个共同的成对协方差。

{phang2}
{cmd:covariance(identity)} 是“单位矩阵的倍数”的简写；即，所有方差相等，所有协方差为0。

{phang2}
{cmd:covariance(unstructured)} 允许所有方差和协方差不同。如果方程由 p 个随机效应项构成，则非结构化协方差矩阵将具有 p(p+1)/2 个独特参数。

{phang2}
{cmd:covariance(}{opt fixed(matname)}{cmd:)} 和
{cmd:covariance(}{opt pattern(matname)}{cmd:)} 协方差结构提供了一种方便的方法来对随机效应的方差和协方差施加约束。 每种规范都需要一个 {it:matname}，以定义对方差和协方差施加的限制。 仅使用 {it:matname} 的下三角元素，并忽略 {it:matname} 的行和列名称。 在 {it:matname} 中的缺失值表示给定元素是不受限制的。 在 {opt fixed(matname)} 协方差结构中，(co)方差 (i,j) 被约束为等于 {it:matname} 的第 i,j 项所指定的值。 在 {opt pattern(matname)} 协方差结构中，如果 {it:matname}[i,j] = {it:matname}[k,l]，则 (co)方差 (i,j) 与 (k,l) 被约束为相等。
{p_end}