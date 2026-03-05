
{smcl}
{* *! version 1.0.5  17oct2015}{...}
{title:为什么小样本推断不可用或缺失分母自由度？}

{help j_mixed_ddf:English Version}
{hline}
{pstd}
当您拟合一个 {cmd:mixed} 模型并指定选项 {cmd:dfmethod()}，
在使用 {bind:{cmd:test, small}} 或 {bind:{cmd:testparm, small}} 进行线性假设检验后，
或者在使用 {bind:{cmd:contrast, small}} 进行对比检验后
{bind:{cmd:mixed, dfmethod()}}，您可能会看到报告的 F 检验的分母自由度 (DDF) 缺失值。
当您在使用 {bind:{cmd:lincom, small}}、{bind:{cmd:contrast, small}} 或
{bind:{cmd:pwcompare, small}} 之后使用 {bind:{cmd:mixed, dfmethod()}} 时
也可能会看到小样本推断不可用的说明。这可能发生在您使用
{cmd:dfmethod(anova)} 或 {cmd:dfmethod(repeated)} 时。

{pstd}
{cmd:dfmethod(anova)} 和 {cmd:dfmethod(repeated)} 不能在对应的单假设 t 检验的自由度不同时
计算多重假设 F 检验的 DDF。此外，{cmd:dfmethod(anova)} 和 {cmd:dfmethod(repeated)}
无法计算具有不同 DDF 的固定效应的线性组合的 DDF。在这些情况下，小样本推断不可用。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_mixed_ddf.sthlp>}