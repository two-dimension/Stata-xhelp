
{smcl}
{* *! version 1.1.8  09may2019}{...}
{hi:文档的交叉引用}

{help manuals:English Version}
{hline}
{pstd}
在阅读 Stata 的帮助文档时，您会看到对 Stata 手册的引用。例如， 
{p_end}

{phang2}
[U] 27 Stata 估计命令的概述
{p_end}
{phang2}
[R] regress
{p_end}
{phang2}
[D] reshape
{p_end}

{pstd}第一个引用的是 {it:Stata 用户指南} 中的第 27 章，{it:Stata 估计命令的概述}；第二个引用的是 {cmd:regress} 条目在 {it:Stata 基础参考手册} 中；第三个引用的是 {cmd:reshape} 条目在 {it:数据管理参考手册} 中。
{p_end}

{pstd}
Stata 文档中的所有手册都有一种简写符号：
{p_end}

{p2colset 9 18 20 2}{...}
{p2col:[GSM]}{it:Mac 上的 Stata 入门}{p_end}
{p2col:[GSU]}{it:Unix 上的 Stata 入门}{p_end}
{p2col:[GSW]}{it:Windows 上的 Stata 入门}{p_end}
{p2col:[U]}{it:Stata 用户指南}{p_end}
{p2col:[R]}{it:Stata 基础参考手册}{p_end}
{p2col:[BAYES]}{it:Stata 贝叶斯分析参考手册}{p_end}
{p2col:[CM]}{it:Stata 选择模型参考手册}{p_end}
{p2col:[D]}{it:Stata 数据管理参考手册}{p_end}
{p2col:[DSGE]}{it:Stata 动态随机一般均衡模型参考手册}{p_end}
{p2col:[ERM]}{it:Stata 扩展回归模型参考手册}{p_end}
{p2col:[FMM]}{it:Stata 有限混合模型参考手册}{p_end}
{p2col:[FN]}{it:Stata 函数参考手册}{p_end}
{p2col:[G]}{it:Stata 图形参考手册}{p_end}
{p2col:[IRT]}{it:Stata 项目反应理论参考手册}{p_end}
{p2col:[LASSO]}{it:Stata Lasso 参考手册}{p_end}
{p2col:[XT]}{it:Stata 纵向数据/面板数据参考手册}{p_end}
{p2col:[META]}{it:Stata 元分析参考手册}{p_end}
{p2col:[ME]}{it:Stata 多层混合效应参考手册}{p_end}
{p2col:[MI]}{it:Stata 多重插补参考手册}{p_end}
{p2col:[MV]}{it:Stata 多变量统计参考手册}{p_end}
{p2col:[PSS]}{it:Stata 功率、精度和样本量参考手册}{p_end}
{p2col:[P]}{it:Stata 编程参考手册}{p_end}
{p2col:[RPT]}{it:Stata 报告参考手册}{p_end}
{p2col:[SP]}{it:Stata 空间自回归模型参考手册}{p_end}
{p2col:[SEM]}{it:Stata 结构方程建模参考手册}{p_end}
{p2col:[SVY]}{it:Stata 调查数据参考手册}{p_end}
{p2col:[ST]}{it:Stata 生存分析参考手册}{p_end}
{p2col:[TS]}{it:Stata 时间序列参考手册}{p_end}
{p2col:[TE]}{it:Stata 处理效应参考手册：潜在结果/反事实结果}{p_end}
{p2col:[I]}{it:Stata 术语表和索引}{p_end}
{p2col:[M]}{it:Mata 参考手册}{p_end}
{p2colreset}{...}

{pstd}Stata 期刊通过其卷和号进行引用：{p_end}

{p2colset 9 17 19 2}{...}
{p2col:SJ-{it:V}-{it:N}}{it:Stata 期刊} 卷 {it:V}，号 {it:N}{p_end}
{p2colreset}{...}

{pstd}Stata 技术公报，作为 Stata 期刊的前身，通过其号进行引用：{p_end}

{p2colset 9 17 19 2}{...}
{p2col:STB-{it:V}}{it:Stata 技术公报}，号 {it:N}{p_end}
{p2colreset}{...}

{pstd}有关 {it:Stata 期刊} 和过去的 {it:Stata 技术公报} 的信息可以在线查找，地址为{p_end}

{phang2}{browse "https://www.stata-press.com/journals/"}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <manuals.sthlp>}