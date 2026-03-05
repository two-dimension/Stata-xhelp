{smcl}
{* *! version 1.0.2  14may2019}{...}
{vieweralsosee "[R] npregress kernel" "mansection R npregresskernel"}
{help n_npe_note:English Version}
{hline}{...}
{title:期望的核观察值}

{pstd}
期望的核观察值是连续核带宽值与用于估计的观察值数量的乘积的四舍五入结果。

{pstd}
非参数核回归对数据中的每个观察值执行回归。每个回归平均使用输出表中报告的期望核观察值的数量。例如，如果观察值数量为10,000，带宽为0.08，则每个回归平均使用800个观察值。

{title:期望核观察值与收敛率之间的关系}

{pstd}
期望核观察值的平方根也是非参数核回归收敛率的一个度量。这个速率比参数速率要慢，参数速率是观察值数量的平方根。两者之间的差异源于带宽的乘积，在大多数情况下小于1。

{pstd}
由于并非所有观察值都用于估计，非参数核回归的收敛率始终比参数速率慢，只要函数是非线性的。当函数是线性的时，观察值的数量与期望核观察值相同，收敛率相等。在这种情况下，线性回归和非参数核回归给出等效的结果。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <n_npe_note.sthlp>}