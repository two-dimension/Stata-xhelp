
{help bayespost_skipoptsdes:English Version}
{hline}
{* *! version 1.0.0  04dec2018}{...}
{phang}
{opt skip(#)} 指定不使用 MCMC 样本中的每 {it:#} 个观测值进行计算。默认值为 {cmd:skip(0)}，即使用 MCMC 样本中的所有观测值。选项 {opt skip()} 可用于对链进行子抽样或稀疏处理。{opt skip(#)} 相当于 {it:#}+1 的稀疏间隔。例如，如果你指定 {cmd:skip(1)}，对应的稀疏间隔为 2，该命令将跳过样本中的每个其他观测值，只在计算中使用观测值 1、3、5 等等。如果你指定 {cmd:skip(2)}，对应的稀疏间隔为 3，该命令将跳过样本中的每 2 个观测值，只在计算中使用观测值 1、4、7 等等。{cmd:skip()} 并不会从样本中实际移除观测值以稀疏链，正如例如 {cmd:bayesmh} 的 {cmd:thinning()} 选项所做的那样。它仅从计算中丢弃所选的观测值，而保持原始样本不变。
{p_end}