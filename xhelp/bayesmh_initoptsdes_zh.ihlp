
{help bayesmh_initoptsdes:English Version}
{hline}
{* *! version 1.0.3  04dec2018}{...}
{phang}
{opt initial(initspec)} 指定用于模拟的模型参数的初始值。对于多个链，这个选项相当于指定选项 {cmd:init1()}。你可以指定参数名、其初始值、另一个参数名、其初始值，依此类推。例如，要将标量参数 {cmd:alpha} 初始化为 0.5，并将 2x2 矩阵 {cmd:Sigma} 初始化为单位矩阵 {cmd:I(2)}，你可以输入

{phang3}
  {cmd:bayesmh} ...{cmd:,} {cmd:initial({c -(}alpha{c )-}} {cmd:0.5} {cmd:{c -(}Sigma,m{c )-}} {cmd:I(2))} ...

{pmore}
你也可以使用 {mansection BAYES bayesmhRemarksandexamplesReferringtomodelparameters:{it:Referring to model parameters}} 中描述的任何规范指定参数列表，在 {bf:[BAYES] bayesmh} 中。例如，要将方程 {cmd:y1} 和 {cmd:y2} 的所有回归系数初始化为零，你可以输入

{phang3}
  {cmd:bayesmh} ...{cmd:,} {cmd:initial({c -(}y1:{c )-} {c -(}y2:{c )-} 0)} ...

{pmore}
{it:initspec} 的一般规范为

{pmore2}
{help bayesmh##paramref:{it:paramref}} {it:initval} [{it:paramref} {it:initval} [{...}]]

{pmore}
其中 {it:initval} 可以是一个数字，或者一个评估为数字的 Stata 表达式，或一个用于初始化矩阵参数的 Stata 矩阵。

{pmore}
标量参数的花括号可以省略，但矩阵参数必须指定花括号。使用此选项声明的初始值会覆盖默认的初始值或在 {cmd:likelihood()} 选项中声明的任何初始值。有关详细信息，请参见 {mansection BAYES bayesmhRemarksandexamplesSpecifyinginitialvalues:{it:Specifying initial values}} 中的 {bf:[BAYES] bayesmh}。

{phang}
{cmd:init}{it:#}{cmd:(}{it:{help bayes##initspec:initspec}}{cmd:)} 为第 {it:#} 个链指定模型参数的初始值。这个选项需要 {cmd:nchains()} 选项。 {cmd:init1()} 会覆盖第一个链的默认初始值，{cmd:init2()} 为第二个链，依此类推。你在 {cmd:init}{it:#}{cmd:()} 中指定初始值的方式与在 {cmd:initial()} 选项中相同。有关详细信息，请参见 {mansection BAYES bayesmhRemarksandexamplesSpecifyinginitialvalues:{it:Specifying initial values}} 中的 {bf:[BAYES] bayesmh}。

{phang}
{opth initall:(bayes##initspec:initspec)} 为所有链的模型参数指定初始值。此选项需要 {cmd:nchains()} 选项。你在 {cmd:initall()} 中指定初始值的方式与在 {cmd:initial()} 选项中相同。你应该避免在 {cmd:initall()} 中指定固定的初始值，因为这样所有链将会使用相同的初始值。 {cmd:initall()} 对于在 {cmd:prior()}'s {cmd:density()} 和 {cmd:logdensity()} 子选项中定义自己的先验时指定随机初始值非常有用。有关详细信息，请参见 {mansection BAYES bayesmhRemarksandexamplesSpecifyinginitialvalues:{it:Specifying initial values}} 中的 {bf:[BAYES] bayesmh}。

{phang}
{opt nomleinitial} 抑制使用最大似然估计 (MLE) 作为模型参数的起始值。对于多个链，此选项及以下讨论仅适用于第一个链。默认情况下，当未指定初始值时，使用MLE值（如果可用）作为初始值。如果指定了 {opt nomleinitial} 并且未提供初始值，则该命令对正标量参数使用 1，对其他标量参数使用 0，对矩阵参数使用单位矩阵。 {cmd:nomleinitial} 对于在检查 MCMC 收敛性时提供替代起始状态是有用的。此选项不能与 {cmd:initrandom} 结合使用。

{phang}
{opt initrandom} 请求随机初始化模型参数。随机初始值是从模型参数的先验分布中生成的。如果你想为某些参数使用固定的初始值，你可以在 {opt initial()} 选项中或在 {opt likelihood()} 选项中的参数声明期间指定它们。对于使用 {opt flat}、{opt jeffreys}、{opt density()}、{opt logdensity()} 和 {opt jeffreys()} 先验的参数，随机初始值不可用；你必须为这些参数提供自己的初始值。此选项不能与 {opt nomleinitial} 结合使用。有关详细信息，请参见 {mansection BAYES bayesmhRemarksandexamplesSpecifyinginitialvalues:{it:Specifying initial values}} 中的 {bf:[BAYES] bayesmh}。

{phang}
{opt initsummary} 指定用于模拟的初始值应显示。 
{p_end}