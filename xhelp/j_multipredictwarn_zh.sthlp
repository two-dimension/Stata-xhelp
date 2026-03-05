{smcl}
{* *! version 1.0.0  01oct2015}{...}
{vieweralsosee "[R] margins" "help margins_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}
{help j_multipredictwarn:English Version}
{hline}{...}
{title:多记录生存数据的平均预测}

{pstd}
在生存分析中，如果每个个体有多个记录，针对整个数据集的平均预测（通常通过 
{help margins_zh} 计算）可能不合适。一个有效的替代方案是使用
{cmd:at()} 选项，在协变量的固定值下计算预测。

{pstd}
命令 {help margins_zh} 默认计算预测边际，也称为调整后的预测。当每个个体只有一条记录时，样本的平均预测是对总体的这种预测的估计。然而，当个体有多个观察值时，不同个体可能有不同数量的观察值。如果我们对这些值进行平均，有些个体将仅被表示一次，而有些个体将被表示多次。这个平均值对于整体并没有有用的解释。

{pstd}
对于多记录生存时间数据，另一个选择是使用 
{help margins_zh} 和 {cmd:at()} 选项，以计算特定协变量模式下的预测。  
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_multipredictwarn.sthlp>}