
{help bayes_reportoptsdes:English Version}
{hline}
{* *! version 1.0.0  10jan2017}{...}
包含 help bayesmh_credintoptsdes

{phang}
  {it:eform_option} 会以指数形式显示系数表；参见 {manhelpi eform_option R}。 估计命令决定允许哪些 {it:eform_option}（{opt eform(string)} 和 {cmd:eform} 始终允许）。

包含 help bayesmh_batchoptdes

{phang}
{cmd:saving(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)} 将仿真结果保存在 {it:filename}{cmd:.dta} 中。 {cmd:replace} 选项指定如果 {it:filename}{cmd:.dta} 已存在，则覆盖它。如果未指定 {opt saving()} 选项，则 {cmd:bayes} 前缀将仿真结果保存在临时文件中，以供后续的事后估计命令访问。每次运行 {cmd:bayes} 前缀时，此临时文件将被覆盖，并且如果当前估计结果被清除，它也会被删除。{cmd:saving()} 可在估计期间或重放时指定。

{pmore}
保存的数据集具有以下结构。方差 {cmd:_index} 记录迭代数字。 {cmd:bayes} 前缀只保存与前一次迭代不同的状态（参数值的集合）和在变量 {cmd:_frequency} 中每个状态的频率。（某些状态可能会在离散参数中重复。）因此，{cmd:_index} 可能不一定包含连续整数。如果需要获取此数据集的任何汇总，请记得使用 {cmd:_frequency} 作为频率权重。 每个参数的值在数据集中以单独的变量保存。包含无方程名称参数值的变量命名为 {cmd:eq0_p}{it:#}，按照在 {cmd:bayes} 前缀中声明参数的顺序。包含有方程名称参数值的变量命名为 {cmd:eq}{it:#}{cmd:_p}{it:#}，同样遵循参数定义的顺序。具有相同方程名称的参数将有相同的变量前缀 {cmd:eq}{it:#}。例如，

{phang3}
  {cmd:. bayes, saving(mcmc):} ...

{pmore}
将创建一个数据集 {cmd:mcmc.dta}，变量名为 {cmd:eq1_p1} 对应于 {cmd:{c -(}y:x1{c )-}}，{cmd:eq1_p2} 对应于 {cmd:{c -(}y:_cons{c )-}}，以及 {cmd:eq0_p1} 对应于 {cmd:{c -(}var{c )-}}。
另请参见宏 {cmd:e(parnames)} 和 {cmd:e(varnames)}，以了解参数名称与变量名称之间的对应关系。

{pmore}
此外，{cmd:bayes} 前缀保存变量 {cmd:_loglikelihood} 以包含每次迭代的对数似然值，变量 {cmd:_logposterior} 以包含每次迭代的后验对数值。

{phang}
{opt nomodelsummary} 抑制指定模型的详细摘要。模型摘要默认情况下会报告。

{phang}
{opt dots} 和 {opt dots(#)} 指定在模拟过程中显示点。{opt dots(#)} 每 {it:#} 次迭代显示一个点。在适应期内，显示符号 {cmd:a} 代替点。如果指定了 {cmd:dots(}...{cmd:,} {opt every(#)}{cmd:)}，则将每 {it:#} 次迭代显示一个迭代数字，而不是点或 {cmd:a}。{cmd:dots(, every(}{it:#}{cmd:))} 等同于 {cmd:dots(1, every(}{it:#}{cmd:))}。{cmd:dots} 每 100 次迭代显示点，每 1,000 次迭代显示迭代数字；它是 {cmd:dots(100), every(1000)} 的同义词。默认情况下，不显示点（{cmd:dots(0)}）。

{marker noshow()}{...}
{phang}
{opth show:(bayesmh##paramref:paramref)} 或
{opth noshow:(bayesmh##paramref:paramref)} 指定要包含在输出中的模型参数列表或要从输出中排除的模型参数列表。默认情况下，所有模型参数都会显示。请不要将 {opt noshow()} 与 {opt exclude()} 混淆，后者是将指定参数从 MCMC 样本中排除。

{phang}
{opt notable} 抑制估计表在输出中的显示。默认情况下，显示包含所有模型参数的摘要表，除了在 {opt exclude()} 和 {opt noshow()} 选项中列出的参数。回归模型参数按方程名称分组。该表包括六列，并报告以下统计信息，使用 MCMC 仿真结果：后验均值、后验标准差、MCMC 标准误差或 MCSE、后验中位数和可信区间。

{phang}
{opt noheader} 在估计或重放时抑制输出标题。

{phang}
{opt title(string)} 指定命令的可选标题，该标题显示在参数估计表的顶部。默认标题与指定的似然模型相关。

包含 help bayesmh_displayoptsdes