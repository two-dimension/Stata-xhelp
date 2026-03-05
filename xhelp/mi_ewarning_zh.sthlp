{smcl}
{* *! version 1.0.4  10aug2012}{...}
{vieweralsosee "[MI] mi estimate" "help mi_estimate_zh"}{...}
{viewerjumpto "估计样本在插补之间变化" "mi_ewarning_zh##remarks1"}{...}
{viewerjumpto "关于使用 {cmd:mi}
{help mi_ewarning:English Version}
{hline} {cmd:estimate} 的变化估计样本的说明" "mi_ewarning_zh##remarks2"}{...}
{marker remarks1}{...}
{title:估计样本在插补之间变化}

{pstd}
所指定的模型存在某些问题，导致估计样本在插补之间有所不同。以下是可能出现这种情况的几种情形：

{phang}
1.  您正在对一个在不同插补之间变化的子样本进行建模。例如，您指定了包含插补变量的 {cmd:if} 表达式。

{phang}
2.  模型特定估计器使用的变量在不同插补之间的值有所不同。这导致用于完全数据分析的观察值集合不同。

{phang}
3.  用于模型中的变量（直接指定或由估计器间接使用）在不同插补之间的观察值集合中含有缺失值。请验证您的 {cmd:mi} 数据是否正确，必要时使用 {help mi_update_zh:mi update} 更新它们。

{pstd}
变化的估计样本可能导致偏倚或效率较低的估计结果。我们建议您在继续分析之前评估导致估计样本变化的记录差异。要确定不同插补之间变化的观察值集合，您可以指定 {cmd:esampvaryok} 选项，并通过使用 {cmd:mi} {cmd:estimate} 的 {cmd:esample()} 选项将估计样本另存为数据中的额外变量（仅在 flong 或 flongsep 样式中）。

{marker remarks2}{...}
{title:关于变化估计样本的说明，使用 {cmd:mi} {cmd:estimate} {cmd:using}}

{pstd}
{cmd:mi} {cmd:estimate} 在估计过程中检查估计样本的变化，并将结果存储在 {cmd:e(esampvary_mi)} 中，如果 {cmd:e(sample)} 变化，则其值为 {cmd:1}，否则为 {cmd:0}。如果与 {cmd:mi} {cmd:estimate} 一起使用了 {opt saving(miestfile)}，变化样本标志 {cmd:e(esampvary_mi)} 也会保存到 {it:miestfile} 中。{cmd:mi} {cmd:estimate} {cmd:using} 会检查该标志，并在其值为 1 时显示警告信息。因此，{cmd:mi} {cmd:estimate} {cmd:using} 即使在合并估计样本可能恒定的插补子集的结果时，也会显示警告信息；您可以通过指定 {cmd:nowarning} 选项来抑制该消息。

{pstd}
要检查所选插补子集的估计样本是否发生变化，您可以使用 {cmd:mi} {cmd:estimate} 在指定子集上重新拟合模型。您还可以在估计过程中通过使用 {cmd:mi} {cmd:estimate} 的 {cmd:esample()} 选项将估计样本保存为额外变量。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_ewarning.sthlp>}