
{help des_irt_predict_item:English Version}
{hline}
{* *! version 1.0.0  19feb2015}{...}
{phang}
{opt conditional(ctype)} 和 {cmd:marginal} 指定在计算 {it:statistic} 时如何处理潜在变量。

{phang2}
{opt conditional()} 指定 {it:statistic} 将基于指定或估计的潜在变量进行计算。

{phang3}
{cmd:conditional(ebmeans)}，默认选项，指定使用经验贝叶斯均值作为潜在变量的估计值。
这些估计值也称为潜在变量的后验均值估计。

{phang3}
{cmd:conditional(ebmodes)} 指定使用经验贝叶斯模式作为潜在变量的估计值。
这些估计值也称为潜在变量的后验模式估计。

{phang3}
{cmd:conditional(fixedonly)} 指定所有潜在变量都设置为零，相当于仅使用模型的固定部分。

{phang2}
{opt marginal} 指定预测的 {it:statistic} 相对于潜在变量进行边际计算，这意味着
{it:statistic} 是通过对所有潜在变量在其整个支持区间上的积分来计算的。

{pmore2}
尽管这不是默认选项，但在应用分析中，边际预测通常非常有用。
它们产生通常称为人口平均估计的结果。
{p_end}