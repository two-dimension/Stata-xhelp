
{help vce:English Version}
{hline}
{smcl}
{* 2002年9月23日}{...}
{hline}
关于 {hi:vce} 的帮助{right:对话框:  {dialog vce}{space 18}}
{right:{help prdocumented_zh:之前已记录}}
{hline}
{pstd}
{cmd:vce} 仍然可以使用，但从 Stata 9 开始，已不再是 Stata 的官方部分。 这是原始帮助文件，我们将不再对其进行更新，因此某些链接可能不再有效。

{pstd}
请参阅 {helpb estat vce} 获取更新的命令。


{title:在模型估计之后显示估计量的方差-协方差矩阵}

{p 8 12 2}{cmd:vce} [{cmd:,} {cmdab:c:orr} {cmdab:r:ho} ]


{title:描述}

{p 4 4 2}
{cmd:vce} 在模型拟合后显示估计量的方差-协方差矩阵 (VCE)。  {cmd:vce} 可在任何估计命令后使用。

{p 4 4 2}
要获取方差-协方差矩阵的副本以进行操作，请输入 {cmd:matrix V = e(V)}

{p 4 4 2}
{cmd:vce} 只是显示矩阵；它并不会获取它。


{title:选项}

{p 4 8 2}{cmd:corr} 和 {cmd:rho} 是同义词；任一命令将显示作为相关矩阵而不是协方差矩阵的矩阵。


{title:示例}

    {cmd:. regress mpg weight displ}
    {cmd:. vce}

    {cmd:. logistic outcome age sex}
    {cmd:. vce, corr}


{title:另请参见}

{p 4 13 2}
手册:  {hi:[U] 23 估计和后估计命令},{break}
{hi:[R] vce}

{p 4 13 2}
{space 2}帮助:  {help estcom_zh}, {help postest_zh}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <vce.sthlp>}