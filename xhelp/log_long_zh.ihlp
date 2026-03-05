
{help log_long:English Version}
{hline}
{* *! version 1.0.0  22jun2019}{...}
{phang}
[{cmd:no}]{cmd:log} 显示或抑制一个日志，显示估计的进展。默认情况下，会显示一行消息，指示每次 Lasso 估计开始的时间。指定 {cmd:verbose} 可以查看更详细的日志。

{phang}
{cmd:verbose} 显示一个详细日志，显示每次 Lasso 估计的迭代。这一选项在进行 {cmd:selection(cv)} 或 {cmd:selection(adaptive)} 时非常有用。它允许您监控这些选择方法的 Lasso 估计进展，当在 {cmd:controls()} 中指定了许多 {it:othervars} 时，这可能会耗费时间。