
{smcl}
{* *! version 1.0.3  05dec2012}{...}
{title:使用 mi estimate 进行方差成分估计：xtreg}

{help mi_xtreg_note:English Version}
{hline}
{pstd}
与其他面板数据命令（例如，{cmd:xtlogit} 和 {cmd:xtprobit}）不同，{cmd:xtreg} 命令将方差成分的估计值，或更准确地说，标准差，以标准差度量保存，而不是在估计过程中使用的对数标准差度量。因此，来自 {cmd:{bind:mi estimate: xtreg}} 的这些成分的多重插补（MI）估计是基于将 Rubin 的组合规则应用于标准差度量中的参数。对于其他面板数据和混合效应模型（例如，{cmd:xtlogit} 和 {cmd:mixed}），MI 估计是通过结合对数标准差度量中的方差成分获得的，并通过应用适当的变换（标准差的指数变换和相关性的双曲正切变换）来以标准差度量显示结果。

{pstd}
在小样本中，对数标准差度量下方差成分估计量的采样分布往往更接近正态分布。在大样本中，度量选择的重要性较低。因此，要获取基于对数标准差度量的方差成分的 MI 估计，请使用 {cmd:mi estimate} 与 {help mixed_zh}。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_xtreg_note.sthlp>}