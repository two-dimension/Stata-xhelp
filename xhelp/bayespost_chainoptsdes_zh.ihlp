
{help bayespost_chainoptsdes:English Version}
{hline}
{* *! version 1.0.0  04dec2018}{...}
{marker chainsspec}{...}
{phang}
{cmd:chains(_all} | {it:{help numlist_zh}}{cmd:)} 指定要用于计算的 MCMC 样本中的链。默认值为 {cmd:chains(_all)} 或使用所有模拟链。使用多个链，前提是链已经收敛，通常会改善 MCMC 摘要统计。选项 {cmd:chains()} 仅在与 {help bayesmh_zh} 或 {help bayes_zh} 前缀一起指定选项 {cmd:nchains()} 时相关。

{phang}
{opt sepchains} 指定分别为每个链计算结果。默认情况下，使用选项 {opt chains()} 确定的所有链来计算结果。选项 {opt sepchains} 仅在与 {help bayesmh_zh} 或 {help bayes_zh} 前缀一起指定选项 {opt nchains()} 时相关。
{p_end}