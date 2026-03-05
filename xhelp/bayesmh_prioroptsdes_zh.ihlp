
{help bayesmh_prioroptsdes:English Version}
{hline}
{* *! version 1.0.0  10jan2017}{...}
{phang}
{opth prior:(bayesmh##priorspec:priorspec)} 指定模型参数的先验分布。此选项可以重复。对于任何模型参数，都可以指定先验。未在先验规格中包含的模型参数将被分配默认先验；详情请参见 {mansection BAYES bayesRemarksandexamplesDefaultpriors:{it:Default priors}}。模型参数可以是标量或矩阵，但两种类型不能在一个先验语句中组合。如果多个标量参数被分配一个单一的单变量先验，则它们被视为独立，并且指定的先验将用于每个参数。您可以为 {it:d} 个标量参数分配维数为 {it:d} 的多变量先验。另请参见 {mansection BAYES bayesmhRemarksandexamplesReferringtomodelparameters:{it:Referring to model parameters}} 以及 {manhelp bayesmh BAYES}。

{pstd}
允许所有 {opt likelihood()} 和 {opt prior()} 的组合，但不保证它们对应于合适的后验分布。您需要仔细考虑您正在构建的模型，并充分评估其收敛性。

{phang}
{opt dryrun} 指定显示将拟合的模型的摘要，而实际上并不拟合模型。此选项建议在拟合模型之前检查模型的规格。模型摘要报告关于似然模型和所有模型参数的先验的信息。