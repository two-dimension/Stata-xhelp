
{help bayes_initoptsdes:English Version}
{hline}
{phang}
{opt initial(initspec)} 指定用于模拟的模型参数的初始值。您可以指定一个参数名称、其初始值、另一个参数名称、其初始值，依此类推。例如，要将标量参数 {cmd:alpha} 初始化为 0.5，并将一个 2x2 矩阵 {cmd:Sigma} 初始化为单位矩阵 {cmd:I(2)}，您可以输入

{phang3}
  {cmd:bayes}{cmd:,} {cmd:initial({c -(}alpha{c )-}} {cmd:0.5} {cmd:{c -(}Sigma,m{c )-}} {cmd:I(2))}{cmd::} ...
 
{pmore}
您还可以使用 {mansection BAYES bayesmhRemarksandexamplesReferringtomodelparameters:{it:Referring to model parameters}} 中描述的任何规范指定参数列表
在 {bf:[BAYES] bayesmh} 中。例如，要将方程 {cmd:y1} 和 {cmd:y2} 的所有回归系数初始化为零，您可以输入

{phang3}
  {cmd:bayes,} {cmd:initial({c -(}y1:{c )-} {c -(}y2:{c )-} 0)}{cmd::} ...
 
{pmore}
{it:initspec} 的一般规范为

{pmore2}
{help bayesmh##paramref:{it:paramref}} {it:#} [{it:paramref} {it:#} [{...}]]

{pmore}
对于标量参数，可以省略花括号，但对于矩阵参数必须指定花括号。使用此选项声明的初始值将覆盖默认初始值或在 {cmd:likelihood()} 选项中声明的任何初始值。有关详细信息，请参见 {mansection BAYES bayesmhRemarksandexamplesSpecifyinginitialvalues:{it:Specifying initial values}} 中的内容
在 {bf:[BAYES] bayesmh} 中。

{phang}
{opt nomleinitial} 抑制使用最大似然估计 (MLE) 起始值作为模型参数的初始值。默认情况下，当未指定初始值时，使用来自 {it:estimation_command} 的 MLE 值作为初始值。如果指定了 {opt nomleinitial} 且未提供初始值，则命令将对正标量参数使用 1，对于其他标量参数使用 0，对于矩阵参数使用单位矩阵。{opt nomleinitial} 在检查 MCMC 收敛性时提供替代起始状态可能非常有用。此选项不能与 {opt initrandom} 结合使用。  

{phang}
{opt initrandom} 请求随机初始化模型参数。随机初始值是从模型参数的先验分布中生成的。如果您希望对某些参数使用固定初始值，可以在 {opt initial()} 选项中或在 {opt likelihood()} 选项中的参数声明期间指定它们。对于具有 {opt flat}、{opt density()}、{opt logdensity()} 和 {opt jeffreys()} 先验的参数，不提供随机初始值；必须为这些参数提供固定初始值。此选项不能与 {opt nomleinitial} 结合使用。{p_end}