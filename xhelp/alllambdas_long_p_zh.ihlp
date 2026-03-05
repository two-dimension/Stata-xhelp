
{help alllambdas_long_p:English Version}
{hline}
{* *! version 1.0.0  22jun2019}{...}
{phang3}
{cmd:alllambdas}指定对网格中所有的lambda进行拟合模型，或者直到达到{opt stop(#)}容忍度为止。默认情况下，模型按从大到小的顺序计算lambda，并且每次模型拟合后都会计算CV函数。如果找到CV函数的最小值，计算将在此点结束，而不再评估其他更小的lambda。

{phang3}
{cmd:alllambdas}计算这些额外更小的lambda的模型。由于较小的lambda计算时间更长，因此指定{cmd:alllambdas}可能会显著增加计算时间。通常，仅在希望获得CV函数的完整图形以确保找到真正的最小值时，才会指定{cmd:alllambdas}。无论是否指定{cmd:alllambdas}，所选的lambda*将是相同的。