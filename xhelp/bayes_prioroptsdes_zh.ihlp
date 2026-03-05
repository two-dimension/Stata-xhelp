
{help bayes_prioroptsdes:English Version}
{hline}
{* *! version 1.0.1  12mar2017}{...}
{phang}
{opth prior:(bayesmh##priorspec:priorspec)} 指定模型参数的先验分布。该选项可以重复使用。可以为模型参数的任何一个指定先验。未在先验规格中包含的模型参数将被分配默认先验；有关详细信息，请参见 {mansection BAYES bayesRemarksandexamplesDefaultpriors:{it:默认先验}}。模型参数可以是标量或矩阵，但两者不能在一个先验声明中结合。如果多个标量参数被分配一个单变量先验，它们被视为独立，并且指定的先验将用于每个参数。你可以为 d 个标量参数分配一个维度为 d 的多变量先验。另请参见 {mansection BAYES bayesmhRemarksandexamplesReferringtomodelparameters:{it:引用模型参数}} 及 {manhelp bayesmh BAYES}。

{pmore}
允许所有 {opt prior()} 分布，但并不保证对于所有似然模型都对应于适当的后验分布。你需要仔细考虑你所构建的模型，并彻底评估其收敛性。

{phang}
{opt dryrun} 指定在不实际拟合模型的情况下显示将要拟合的模型摘要。建议在拟合模型之前检查模型规格时使用此选项。模型摘要报告关于似然模型和所有模型参数的先验的相关信息。