
{smcl}
{* *! version 1.0.6  23may2018}{...}
{p 0 0 2}
{bf:为什么在使用} 
{help mi_me_note:English Version}
{hline}
{bf:mi estimate with mixed 时不报告某些随机效应参数的置信区间？}

{pstd}
{cmd:mi estimate} 在以下情况下不会报告某些随机效应参数的置信区间：

{phang}
1.  你在一些随机效应规格中使用了 {cmd:covariance(exchangeable)} 或 {cmd:covariance(unstructured)}，并使用
    {cmd:mi estimate} 的 {cmd:variance} 选项以方差和协方差的形式显示结果，而不是默认的标准差和相关性。

{phang}
2.  你与 {cmd:mixed} 一起使用了 {cmd:residuals(exchangeable)} 或 {cmd:residuals(toeplitz)}，并使用 {bind:{cmd:mi estimate} 的} {cmd:variance} 选项以方差和协方差的形式显示结果，而不是默认的标准差和相关性。

{phang}
3.  你通过 {cmd:residuals()} 的子选项 {cmd:by()} 请求特定组的残差结构与 {cmd:mixed}。

{phang}
4.  你与 {cmd:mixed} 一起使用了 {cmd:residuals(unstructured)} 或 {cmd:residuals(banded)}。

{pstd}
在上述情况下，某些显示的随机效应估计是通过涉及多个参数估计的变换获得的。例如，在情况 1 和 2 中，协方差是作为已估计标准差和相关性的函数来估计的；在情况 3 中，特定组的残差方差作为对应于分组变量基线类别的残差方差的函数获得。当一个变换涉及多个 MI（多重插补）参数估计时，置信区间是围绕变换后的点估计形成的，而对于这样的估计没有 MI 自由度的联合估计。因此，相应的置信区间没有被报告。

{pstd}
你可以通过指定 {cmd:estmetric} 选项来以对数标准差（估计）度量获得置信区间。如果指定了 {cmd:variance} 选项，例如在情况 1 和 2 中，你可以省略它以获得默认标准差度量下的置信区间。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_me_note.sthlp>}