{smcl}
{* *! version 1.0.0  24jun2019}{...}
{vieweralsosee "[LASSO] 推断要求" "mansection LASSO Inferencerequirements"}
{help j_lasso_inferential:English Version}
{hline}{...}
{title:推断的要求}

{pstd}
{cmd:ds}、{cmd:po} 和 {cmd:xpo} 命令和其他估计程序一样，需要满足某些条件，以确保它们的推断结果有效。此外，插件和 CV 选择方法具有不同的属性，在某些条件下可能表现不同。


{title:备注}

{pstd}
我们假设您已经阅读了 {manlink LASSO Lasso inference intro}。

{pstd}
我们拟合一个模型，例如，使用默认插件选择方法的 {cmd:dsregress}，然后再使用 CV 重新拟合该模型。我们得到略有不同的结果。哪个结果是正确的？

{pstd}
插件和 CV 不仅仅是用于模型估计的不同数值技术。它们作出不同的假设，具有不同的要求，并且具有不同的属性。询问哪个是正确的只有一个答案。当满足它们的假设和要求时，它们各自都是正确的。

{pstd}
在实际建议方面，我们有两个替代建议。

{pstd}
第一个建议需要大量的计算时间。

{phang2}
1. 使用 {cmd:xpo} 和默认插件拟合模型。

{phang2}
2. 使用 {cmd:xpo} 和 CV 拟合模型。

{phang2}
3. 比较结果。如果相似，则使用步骤 1 的结果。

{pstd}
这个替代方案将节省计算时间。

{phang2}
1. 使用默认插件拟合 {cmd:ds} 模型。

{phang2}
2. 再次使用 CV 拟合 {cmd:ds}。

{phang2}
3. 使用默认插件再次拟合 {cmd:po}。

{phang2}
4. 使用 CV 再次拟合 {cmd:po}。

{phang2}
5. 比较结果。如果相似，您可能处于稳固基础。如果是这样，请执行第 6 步。

{phang2}
6. 使用默认插件再次拟合 {cmd:xpo} 并使用这些结果。

{pstd}
您可以结合这两个建议。从替代方案开始，如果在第 5 步失败，则遵循第一组建议。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_lasso_inferential.sthlp>}