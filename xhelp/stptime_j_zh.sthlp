
{smcl}
{* *! version 1.0.1  20nov2013}{...}
{p 0 0 2}
{bf:为什么缺少自助法置信区间？}
{help stptime_j:English Version}
{hline}

{pstd}
{cmd:stptime, jackknife} 在以下情况下不报告自助法置信区间：

{phang}
1. 数据集中包含一个失败或没有失败。

{phang}
2. 数据集中在指定间隔下仅包含一个失败或没有失败
    使用 {cmd:at()} 时。

{phang}
3. 在对数据集进行 {cmd:stset} 时指定了 {cmd:pweight}s 或
    {cmd:iweight}s，而原始数据集中仅包含一个失败或没有失败。

{pstd}
为了确保自助法置信区间在0和1之间，用户对生存率的对数应用自助法。获得的自助法置信区间随后被反变换（指数化）回原始尺度。在上述情况下，自助法计算在包含无失败的重复中失败，因为该重复中的点估计（估计的零生存率的对数）缺失。因此，在情况1、2和3中，自助法置信区间被报告为缺失。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stptime_j.sthlp>}