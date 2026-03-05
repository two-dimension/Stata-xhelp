{smcl}
{* *! version 1.0.4  11feb2011}{...}
{* 此帮助文件由 testanova.dlg 调用}{...}
{vieweralsosee "[R] anova" "help anova_zh"}{...}
{vieweralsosee "[R] anova postestimation" "help anova_postestimation_zh"}{...}
{vieweralsosee "[P] matrix define" "help matrix_define_zh"}
{help mat_anova_example:English Version}
{hline}{...}
{title:使用矩阵测试 anova 后线性表达式的示例}

    在

	{cmd:. anova y a}

{pstd}
其中 {cmd:a} 有四个水平，您可以通过使用命令定义一个矩阵来测试 {cmd:a} 的第一个和第二个水平的系数是否相等

	{cmd:. matrix c = (1,-1,0,0,0)}

{pstd}
或者使用 {dialog matrix_input:matrix input dialog}，然后为 {cmd:test()} 选项提供矩阵名称 {cmd:c} 作为参数。

{pstd}
注意矩阵有五列而不是四列。最后一列是常数，前四列对应 {cmd:a} 的四个水平。如果对列的数量或顺序有疑问，请使用 {bind:{cmd:test, showorder}} 命令，通过在对话框中选择 "{cmd:Show order of columns in the design matrix}" 来检查列的顺序和定义。

    矩阵

	{cmd:. matrix x = (3,-1,-1,-1,0)}

{pstd}
可以用于测试 {cmd:a} 在水平 1 是否等于 {cmd:a} 在水平 2、3 和 4 的平均值。

    矩阵

	{cmd:. matrix z = (1,-1,0,0,0 \ 0,0,1,-1,0)}

{pstd}
可以用来联合测试 {cmd:a} 的水平 1 和 2 是否相等，以及 {cmd:a} 的水平 3 和 4 是否相等。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mat_anova_example.sthlp>}