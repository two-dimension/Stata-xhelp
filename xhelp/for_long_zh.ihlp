
{help for_long:English Version}
{hline}
{* *! version 1.0.0  22jun2019}{...}
{phang}
{opt for(varspec)} 指定一个特定的 lasso，在使用选项 {cmd:selection(cv)} 或 {cmd:selection(adaptive)} 的 {cmd:ds}、{cmd:po} 或 {cmd:xpo} 估计命令后进行拟合。对于除 {cmd:poivregress} 和 {cmd:xpoivregress} 之外的所有命令，{it:varspec} 始终是一个 {varname}；它可以是 {it:depvar}（因变量）或者是用于推断的 {it:varsofinterest} 中的一个变量。

{pmore} 
对于 {cmd:poivregress} 和 {cmd:xpoivregress}，{it:varspec} 可以是 {it:varname} 或 {opt pred(varname)}。对 {it:depvar} 的 lasso 使用其 {it:varname} 指定。每个内生变量都有两个 lasso，通过 {it:varname} 和 {opt pred(varname)} 指定。感兴趣的外生变量只有一个 lasso，由 {opt pred(varname)} 指定。

{pmore} 
此选项在 {cmd:ds}、{cmd:po} 和 {cmd:xpo} 命令后是必需的。

{phang}
{opt xfold(#)} 指定一个特定的 lasso 在 {cmd:xpo} 估计命令后进行拟合。对于每个要进行 lasso 拟合的变量，K 个 lasso 被执行，这些 lasso 是为每个交叉拟合折叠而设，其中 K 是折叠的数量。此选项指定哪个折叠，其中 {it:#} = 1, 2, ..., K。此选项在 {cmd:xpo} 命令后是必需的。

{phang}
{opt resample(#)} 指定一个特定的 lasso 在使用选项 {opt resample(#)} 的 {cmd:xpo} 估计命令后进行拟合。对于每个要进行 lasso 拟合的变量，执行 R x K 个 lasso，其中 R 是重抽样的数量，K 是交叉拟合折叠的数量。此选项指定哪次重抽样，其中 {it:#} = 1, 2, ..., R。此选项与 {opt xfold(#)} 一起，在使用重抽样的 {cmd:xpo} 命令后是必需的。