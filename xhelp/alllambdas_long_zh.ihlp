
{help alllambdas_long:English Version}
{hline}
{* *! version 1.0.0  22jun2019}{...}
{phang2}
{cmd:alllambdas} 指定对网格中所有的 lambda 进行模型拟合，或者直到达到 {opt stop(#)} 容忍度。默认情况下，模型是按照从大到小的顺序计算 lambda，并且在每个模型拟合后计算交叉验证（CV）函数。如果找到 CV 函数的最小值，则计算在该点结束，而不再评估额外更小的 lambda。

{pmore2}
{cmd:alllambdas} 为这些额外更小的 lambda 计算模型。因为对于更小的 lambda，计算时间更长，因此指定 {cmd:alllambdas} 可能会显著增加计算时间。通常仅在需要完整绘制 CV 函数以确保找到真正的最小值时，才会指定 {cmd:alllambdas}。无论是否指定 {cmd:alllambdas}，所选的 lambda* 都将是相同的。