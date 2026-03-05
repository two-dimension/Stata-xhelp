
{help irt_int_opts:English Version}
{hline}
{* *! version 1.0.0  11feb2015}{...}
{phang}
{opt intmethod(intmethod)} 指定用于计算对数似然的积分方法。
{opt mvaghermite} 进行均值和方差自适应的高斯-赫尔米特法；
{opt mcaghermite} 进行模态和曲率自适应的高斯-赫尔米特法；
而 {opt ghermite} 则进行非自适应的高斯-赫尔米特法。

{pmore}
默认的积分方法是 {opt mvaghermite}。

{phang}
{opt intpoints(#)} 设置用于积分的积分点数量。
默认值为 {cmd:intpoints(7)}，这意味着使用七个积分点来计算对数似然。

{pmore}
积分点越多，对数似然的近似越准确。然而，计算时间会随着积分点数量的增加而增加。
{p_end}