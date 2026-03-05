{smcl}
{* *! version 1.0.3  11feb2011}{...}
{vieweralsosee "[R] mfx" "help mfx_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "FAQ: Obtaining marginal effects without standard errors" "browse http://www.stata.com/support/faqs/stat/mfx_nose.html"}{...}
{viewerjumpto "Predict expression unsuitable for standard error calculation warning message" "j_mfxunsuitse_zh##warning"}{...}
{viewerjumpto "Examples" "j_mfxunsuitse_zh##examples"}
{help j_mfxunsuitse:English Version}
{hline}{...}
{marker warning}{...}
{title:预测表达式不适合标准误计算的警告信息}

{pstd}
边际效应是模型系数和自变量函数的导数。
{cmd:mfx} 选项 {cmd:predict()} 可用于指定需要求导的函数。如果该函数依赖于除模型系数之外的随机量，或者以非系数矩阵 {cmd:e(b)} 的方式依赖于系数，则 {cmd:mfx} 很可能无法准确评估边际效应的标准误。

{pstd}
在计算边际效应后，{cmd:mfx} 会通过更改特定存储结果的值并重新计算边际效应来检查这一点。如果边际效应已发生变化，它会判断预测表达式不适合计算标准误。

{pstd}
{cmd:mfx} 选项 {cmd:diagnostics(vce)} 显示此检查的结果。选项 {cmd:force} 可用于强制计算标准误，尽管这通常是不明智的。

{marker examples}{...}
{title:示例}

{phang}{cmd:. sysuse auto, clear}{p_end}
{phang}{cmd:. regress mpg weight}{p_end}
{phang}{cmd:. mfx, predict(stdp) diagnostics(vce)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_mfxunsuitse.sthlp>}