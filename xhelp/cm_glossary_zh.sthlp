{smcl}
{* *! version 1.0.0  28apr2019}{...}
{vieweralsosee "[CM] Glossary" "mansection CM Glossary"}{...}
{viewerjumpto "Description" "cm_glossary_zh##description"}{...}
{viewerjumpto "Glossary" "cm_glossary_zh##glossary"}
{help cm_glossary:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[CM] Glossary} {hline 2}}术语表{p_end}
{p2col:}({mansection CM Glossary:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}此处定义常用术语。


{marker glossary}{...}
{title:术语表}

{phang}
{bf:替代方案}。
替代方案集是决策者可以选择或排序的可能选择。

{phang}
{bf:特定于替代方案的变量}。
当变量在不同的替代方案中变化时，称为特定于替代方案的变量。特定于替代方案的变量可能仅在替代方案之间变化，也可能在替代方案和案例之间都变化。

{phang}
{bf:替代方案变量}。
一个数字或字符串变量，用于识别替代方案。某些模型需要替代方案变量，而某些模型则不需要。

{phang}
{bf:均衡}。
当每个案例的选择集相同时，我们称其为均衡。

{phang}
{bf:案例}。
这是 Stata 术语，指的是表示单个决策的一组 Stata 观测值。一个案例包含决策者可能选择或排序的每个替代方案的一个观测值。

{phang}
{bf:案例 ID 变量}。
一个识别案例的变量。对于独立的横截面数据，该变量标识决策者。

{phang}
{bf:特定于案例的变量}。
当一个变量在一个案例内保持不变时，称为特定于案例的变量。

{phang}
{bf:选择集}。
决策者可以选择或排序的替代方案集。选择集在不同案例之间可能变化。

{phang}
{bf:离散选择}。
当每个决策者从其可能的替代方案集中选择一个单一的替代方案时，称之为离散选择。

{phang}
{bf:无关替代方案的独立性 (IIA)}。
当向替代方案集中添加另一个替代方案不会改变从最初的替代方案集选择替代方案的相对概率时，IIA 属性为真。

{phang}
{bf:观测}。
对于 Stata 中的选择模型，Stata 观测与统计观测之间存在差异。我们称统计观测为案例。当我们提到观测时，指的是 Stata 观测，即数据集中一行。

{phang}
{bf:面板数据}。
当决策者在不同时间点进行多次选择时，数据为面板数据。面板变量标识决策者，而时间变量标识时间点。

{phang}
{bf:排名替代方案}。
当每个决策者对其可能的替代方案进行排名时，我们说我们有排名替代方案。

{phang}
{bf:不平衡}。
当选择集在每个案例之间不相同时，我们称其为不平衡。

{phang}
{bf:效用}。
选择模型通常使用一个潜在的连续变量来构建，称为效用，用于每个替代方案。每个案例中效用的最大值代表为离散选择选择的替代方案。对于排名替代方案，效用值的排名给出了选择的排名顺序。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cm_glossary.sthlp>}