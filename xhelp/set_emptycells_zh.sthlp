{smcl}
{* *! version 1.0.8  21may2018}{...}
{vieweralsosee "[R] set emptycells" "mansection R setemptycells"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] set" "help set_zh"}{...}
{viewerjumpto "Syntax" "set_emptycells_zh##syntax"}{...}
{viewerjumpto "Description" "set_emptycells_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "set_emptycells_zh##linkspdf"}{...}
{viewerjumpto "Option" "set_emptycells_zh##option"}{...}
{viewerjumpto "Remarks" "set_emptycells_zh##remarks"}
{help set_emptycells:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[R] set emptycells} {hline 2}}设置如何处理交互中的空单元格{p_end}
{p2col:}({mansection R setemptycells:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:set}
{cmd:emptycells}
{c -(}{cmd:keep} | {cmd:drop}{c )-}
[{cmd:,} {cmdab:perm:anently}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:set} {cmd:emptycells} 允许您控制 Stata 如何处理包含空单元格的交互项。Stata 可以保留空单元格或将其删除。默认情况下是保留空单元格。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R setemptycellsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定除立即更改外，还应记住该设置并在调用 Stata 时使其成为默认设置。


{marker remarks}{...}
{title:备注}

{pstd}
默认情况下，Stata 保留空单元格，以便在系数表中报告。例如，输入

	{cmd:. webuse auto}
	{cmd:. regress mpg rep78#foreign, baselevels}

{pstd}
您将看到 {cmd:mpg} 对 10 个指标变量的回归，因为 {cmd:rep78} 取 5 个值，{cmd:foreign} 在 {cmd:auto} 数据集中取 2 个值。由于数据中没有观察到 {cmd:foreign} 的价值为 1 或 2 的外国汽车，因此将报告两个单元格为空。

{pstd}
许多实际数据集中包含大量空单元格，这可能会导致“无法分配矩阵”错误消息，{cmd:{search r(915)}}。在这种情况下，输入

	{cmd:. set emptycells drop}

{pstd}
以使 Stata 从系数列表中删除空单元格。如果您通常拟合包含空单元格的模型，可以通过输入以下内容将 Stata 设置为永久删除空单元格：

	{cmd:. set emptycells drop, permanently}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <set_emptycells.sthlp>}