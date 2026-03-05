
{smcl}
{* *! version 1.0.1  20nov2013}{...}
{p 0 0 2}
{bf:为什么杰克刀置信区间缺失？}
{help strate_j:English Version}
{hline}

{pstd}
{cmd:strate, jackknife} 在以下情况下不报告杰克刀置信区间：

{phang}
1. 数据集中包含一个失败或没有失败。

{phang}
2. 指定了 {cmd:cluster()} 选项，且数据集中仅包含一个有失败的聚类。

{phang}
3. 当数据集被 {cmd:stset} 时，指定了 {cmd:pweight}s 或 {cmd:iweight}s，并且原始数据集中仅包含一个失败或没有失败。

{pstd}
为了确保杰克刀置信区间在 0 和 1 之间，用户将杰克刀方法应用于生存率的对数。然后将获得的杰克刀置信区间回归变换（取指数）到原始尺度。在上述情况中，对于包含没有失败的重复样本，杰克刀计算失败，因为该重复样本中点估计（估计的零生存率的对数）缺失。因此，在情况 1、2 和 3 中，杰克刀置信区间被报告为缺失。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <strate_j.sthlp>}