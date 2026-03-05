{smcl}
{* *! version 1.0.4  11feb2011}{...}
{* 此帮助文件由 testmanova.dlg 调用}{...}
{vieweralsosee "[R] manova" "help manova_zh"}{...}
{vieweralsosee "[R] manova postestimation" "help manova_postestimation_zh"}
{help lin_manova_example:English Version}
{hline}{...}
{title:manova 后要测试的线性表达式示例}

{pstd}
在

{phang2}
{cmd:. manova y1 y2 = x1 x2 c.x3 x1#x2 x1#c.x3 x2#c.x3 x1#x2#c.x3}

{pstd}
之后，您可以使用线性表达式测试方程 y2 中 x1 的第一和第二水平的系数是否相等

{phang2}
{cmd:[y2]_b[1.x1] = [y2]_b[2.x1]}

{pstd}
或者等效的形式为

{phang2}
{cmd:[y2]1.x1 = [y2]2.x1}

{pstd}
对于方程 y1，您可以测试 x1 的水平 2 和 x2 的水平 1 的交互作用的系数是否等于 x1 的水平 1 和 3 以及 x2 的水平 1 的交互作用的系数的平均值，使用

{phang2}
{cmd:[y1]_b[2.x1#1.x2] = ([y1]_b[1.x1#1.x2] + [y1]_b[3.x1#1.x2])/2}

{pstd}
或者等效的形式为

{phang2}
{cmd:[y1]2.x1#1.x2 = ([y1]1.x1#1.x2 + [y1]3.x1#1.x2)/2}

{pstd}
对于方程 y2，您可以测试连续变量 x3 与 x1 的水平 1 和 x2 的水平 2 的交互作用的系数是否等于 x3 与 x1 的水平 2 和 x2 的水平 1 的交互作用的系数，使用

{phang2}{cmd:[y2]_b[1.x1#2.x2#c.x3] = [y2]_b[2.x1#1.x2#c.x3]}

{pstd}
或者等效的形式为

{phang2}{cmd:[y2]1.x1#2.x2#c.x3 = [y2]2.x1#1.x2#c.x3}

{pstd}
{cmd:_coef} 可以用于替代 {cmd:_b}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lin_manova_example.sthlp>}