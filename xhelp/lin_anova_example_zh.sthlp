{smcl}
{* *! version 1.0.4  11feb2011}{...}
{* 此帮助文件由 testanova.dlg 调用}{...}
{vieweralsosee "[R] anova" "help anova_zh"}{...}
{vieweralsosee "[R] anova postestimation" "help anova_postestimation_zh"}
{help lin_anova_example:English Version}
{hline}{...}
{title:anova 之后的线性表达式测试示例}

    在执行

{phang2}{cmd:. anova y x1 x2 c.x3 x1#x2 x1#c.x3 x2#c.x3 x1#x2#c.x3}

{pstd}
之后，您可以使用线性表达式测试 x1 的第一和第二水平的系数是否相等

	{cmd:_b[1.x1] = _b[2.x1]}

{pstd}
或等效地写作

	{cmd:1.x1 = 2.x1}

{pstd}
您可以测试 x1 的 2 级与 x2 的 1 级交互的系数是否等于 x1 的 1 级和 3 级与 x2 的 1 级交互系数的平均值，使用

{phang2}{cmd:_b[2.x1#1.x2] = (_b[1.x1#1.x2] + _b[3.x1#1.x2])/2}

{pstd}
或等效地写作

{phang2}{cmd:2.x1#1.x2 = (1.x1#1.x2 + 3.x1#1.x2)/2}

{pstd}
您可以测试与 x1 的 1 级和 x2 的 2 级交互的连续变量 x3 的系数是否等于与 x1 的 2 级和 x2 的 1 级交互的 x3 的系数，使用

{phang2}{cmd:_b[1.x1#2.x2#c.x3] = _b[2.x1#1.x2#c.x3]}

{pstd}
或等效地写作

{phang2}{cmd:1.x1#2.x2#c.x3 = 2.x1#1.x2#c.x3}


{pstd}
{cmd:_coef} 可以替代 {cmd:_b} 使用。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lin_anova_example.sthlp>}