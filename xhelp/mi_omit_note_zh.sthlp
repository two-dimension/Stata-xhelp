
{smcl}
{* *! version 1.0.0  06jul2011}{...}
{title:mi impute 报告插补模型的预测因子集在插补间变化}

{help mi_omit_note:English Version}
{hline}
{pstd}
{cmd:mi impute} 在用于获得插补模型参数估计的预测因子集在插补之间（或在 {cmd:mi impute chained} 的迭代之间）变化时，会发出警告。这可能发生在使用 {cmd:bootstrap} 选项与任何单变量插补方法或与 {cmd:mi impute monotone} 时，或当使用 {cmd:mi impute chained} 命令时。当使用 {cmd:bootstrap} 选项时，参数的估计是在每个插补上使用不同的引导样本进行的，这可能导致预测因子集的变化。当使用 
{cmd:mi impute chained} 命令时，估计是在每次迭代中使用来自该迭代的先前插补数据进行的。

{pstd}
当某些预测因子被省略时，预测因子集可能会有所变化，例如，由于在某些插补（或迭代）中存在共线性而在其他插补中没有。使用因子变量作为回归变量时，预测因子集的变化也可能出现，因为用于估计的数据集的水平集变化。在插补分类数据时，插补变量的类别集可能会在估计数据集中变化。

{pstd}
不同的预测因子在插补期间对最终的多重插补结果的影响尚未进行研究。当缺失数据的比例较高时，被“变化”的省略预测因子的估计在最终的多重插补分析中可能偏向于零。如果预测因子有所变化，您应尝试重新设计您的插补模型，以便在每次插补（迭代）中使用相同的预测因子集。例如，在插补之前从插补模型中移除共线变量。在存在因子变量的情况下，请确保基线水平在插补（或迭代）之间是一致的；有关如何设置基线的详细信息，请参见 {helpb mi_fvset:mi fvset base}。使用 {cmd:noisily} 选项与 {cmd:mi impute} 一起使用，以识别变化的预测因子集。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_omit_note.sthlp>}