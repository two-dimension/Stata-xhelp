{smcl}
{* *! version 1.0.5  11feb2011}{...}
{vieweralsosee "[R] mfx" "help mfx_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "FAQ: predict() 选项不适用于边际效应" "browse http://www.stata.com/support/faqs/stat/mfx_unsuit.html"}{...}
{viewerjumpto "预测表达式不适用错误信息" "j_mfxunsuit_zh##error"}{...}
{viewerjumpto "示例" "j_mfxunsuit_zh##examples"}
{help j_mfxunsuit:English Version}
{hline}{...}
{marker error}{...}
{title:预测表达式不适用错误信息}

{pstd}
边际效应是模型系数和自变量函数的导数。
{cmd:mfx} 选项 {cmd:predict()} 可用于指定要微分的函数。 如果该函数依赖于模型系数和自变量以外的数量，{cmd:mfx} 很可能无法准确评估导数。

{pstd}
{cmd:mfx} 通过在数据集中对不同观察结果进行预测来检查对其他数量的依赖性，检查是否获取相同的值。 
如果没有，它就会判断表达式不适用。

{pstd}
{cmd:mfx} 选项 {cmd:diagnostics(beta)} 显示这些检查的结果。 选项 {cmd:force} 可用于强制计算边际效应，尽管通常不建议这样做。

{marker examples}{...}
{title:示例}

{phang}{cmd:. sysuse auto}{p_end}
{phang}{cmd:. regress mpg weight}{p_end}
{phang}{cmd:. mfx, predict(res) diagnostics(beta)}{p_end}

{phang}{cmd:. sysuse auto}{p_end}
{phang}{cmd:. clogit for turn, group(head)}{p_end}
{phang}{cmd:. mfx, predict(pc1) diagnostics(beta)}{p_end}

{phang}{cmd:. sysuse auto}{p_end}
{phang}{cmd:. xtlogit for mpg, i(rep) fe}{p_end}
{phang}{cmd:. mfx, predict(p) diagnostics(beta)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_mfxunsuit.sthlp>}