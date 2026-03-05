
{help intpts3:English Version}
{hline}
{* *! version 1.0.7  05feb2013}{...}
{marker intmethod()}{...}
{dlgtab:积分}

{phang}
{opt intmethod(intmethod)} 指定用于随机效应模型的积分方法。它接受四个参数中的一个：
{opt mvaghermite}，除交叉随机效应模型外的所有模型的默认选项，执行均值和方差自适应的高斯-赫尔米特积分；
{opt mcaghermite} 执行模式和曲率自适应的高斯-赫尔米特积分； {opt ghermite} 执行非自适应的高斯-赫尔米特积分；以及
{opt laplace}，交叉随机效应模型的默认选项，执行拉普拉斯近似。

{phang} {opt intpoints(#)} 指定用于高斯-赫尔米特积分的积分点数量。默认值为 {cmd:intpoints(12)}；最大值为 {cmd:intpoints(195)}。增加此值可以提高精度，但也会增加计算时间。计算时间大致与其值成正比。