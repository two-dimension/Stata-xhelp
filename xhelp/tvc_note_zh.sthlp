{smcl}
{* *! version 1.1.5  06mar2015}{...}
{vieweralsosee "[ST] stcox" "help stcox_zh"}{...}
{vieweralsosee "[ST] stcox postestimation" "help stcox_postestimation_zh"}{...}
{vieweralsosee "[ST] stsplit" "help stsplit_zh"}{...}
{viewerjumpto "描述" "tvc_note_zh##description"}{...}
{viewerjumpto "备注" "tvc_note_zh##remarks"}{...}
{viewerjumpto "示例" "tvc_note_zh##example"}
{help tvc_note:English Version}
{hline}{...}
{title:标题}

{p2colset 5 17 19 2}{...}
{p2col:{hi: tvc note} {hline 2}}在失败时间处拆分数据以重现 
{cmd:stcox} 的 {opt tvc()} 选项结果
{p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
此条目通过示例展示了一种替代方法来生成 
{help stcox_zh} 的 {opt tvc()} 选项结果。
我们将根据失败时间（使用 {cmd:stsplit}）拆分数据，并手动生成交互项。
通常，使用 {opt tvc()} 是拟合具有时间变化协变量模型的最有效方式。
然而，手动执行该过程可以使用一些额外功能。


{marker remarks}{...}
{title:备注}

{pstd}
{opt tvc()} 选项提供了一种快速便捷的方式来建模
时间变化协变量。对于在 {opt tvc()} 中指定的每个变量，模型中都会添加一个新的预测因子。
每个新预测因子相当于相应变量与研究时间的函数的乘积。
我们将这些新预测因子称为交互项。

{pstd}
通过在每个失败时间处评估部分似然来拟合 Cox 模型。
如果我们想手动将上述交互项包含在模型中，我们需要生成新的变量。
由于交互项是研究时间的函数，这将要求我们在失败时间处拆分数据集。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse drugtr}

{pstd}查看生存数据的设置{p_end}
{phang2}{cmd:. stset}{p_end}

{pstd}
拟合包含以下协变量的 Cox 模型：
{cmd:drug}， 
{cmd:drug} 作为时间变化协变量，以及
{cmd:age} 仅作为时间变化协变量。
在交互项中使用研究时间的平方。

{phang2}
{cmd:. stcox drug, tvc(drug age) texp(_t^2)}

{pstd}
现在我们将通过使用 {cmd:stsplit} 生成相同的结果。 
这将分四步进行：

{phang}
1. 如果我们尚未拥有，请生成一个主体标识符变量。确保
在 {cmd:stset} 的 {opt id()} 选项中包含该变量。

{phang2}{cmd:. generate id = _n}{p_end}
{phang2}{cmd:. streset, id(id)}{p_end}

{phang}
2. 使用 {cmd:stsplit} 在失败时间处拆分数据。

{phang2}{cmd:. stsplit, at(failures)}{p_end}

{phang}
3. 生成表示交互项的变量。

{phang2}{cmd:. generate agetvc = age*(_t^2)}{p_end}
{phang2}{cmd:. generate drugtvc = drug*(_t^2)}{p_end}

{phang}
4. 拟合 Cox 模型，包括变量 drug 及其与研究时间交互的两个变量。

{phang2}{cmd:. stcox drug drugtvc agetvc}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tvc_note.sthlp>}