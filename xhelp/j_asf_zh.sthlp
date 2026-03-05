{smcl}
{* *! version 1.0.1  29mar2017}{...}
{vieweralsosee "[ERM] eprobit postestimation" "mansection ERM eprobitpostestimation"}
{help j_asf:English Version}
{hline}{...}
{title:什么是 ASF？}

{pstd}
在具有内生协变量的模型中，两个不同协变量值所暗示的条件均值或条件概率的对比，保持其他条件不变，定义了一个与通常关注的结构效应不同的总效应。

{pstd}
内生性使参数解释变得复杂。平均结构函数（ASF）通过边际化内生性所暗示的异质性来解决这些问题。ASF 类似于通过边际化随机效应获得的边际函数。将 ASF 应用于条件均值会生成平均结构均值（ASM）。将 ASF 应用于条件概率会生成平均结构概率（ASP）。

{pstd}
结构效应是通过两个不同协变量值所隐含的 ASMs 或 ASPs 的对比，保持其他条件不变。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_asf.sthlp>}