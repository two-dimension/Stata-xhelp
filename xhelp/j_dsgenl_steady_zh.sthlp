
{smcl}
{* *! version 1.0.0  01mar2019}{...}
{title:为什么有些标准误报告缺失？}

{help j_dsgenl_steady:English Version}
{hline}
{pstd}
对于在 {bf:estat steady}、{bf:estat policy} 和 {bf:estat transition} 中报告的某些值，标准误并没有被计算。这是因为模型中方程的结构。该结构可能导致在稳态变量、政策参数或过渡参数的值不依赖于模型中估计的任何参数的情况下出现情况。因此，它们被约束为 {cmd:estat} 命令报告的值。这些约束值没有被估算标准误。
{p_end}

{pstd}
请注意，尽管在 {bf:dsgenl} 中没有指定约束，稳态、政策和过渡值可能仍然具有隐含约束。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_dsgenl_steady.sthlp>}