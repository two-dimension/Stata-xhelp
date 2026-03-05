{smcl}
{* *! version 1.1.1  11feb2011}{...}
{vieweralsosee "[R] glm" "help glm_zh"}{...}
{vieweralsosee "[R] binreg" "help binreg_zh"}
{help j_glmadmiss:English Version}
{hline}{...}
{title:我的 glm 输出报告显示一些均值估计是不可接受的}

{pstd}
您的估计结果显示，您的参数估计对估计样本中的一个或多个观测值产生了不可接受的均值预测。因此，您在解读这些参数估计时应谨慎。

{pstd}
如果您收到了这个警告，那么您尝试拟合的是一个带有对数或恒等链接的二项式模型。

{pstd}
如果您通过 {help glm_zh} 或 {help binreg_zh} 使用选项 {cmd:rr} 拟合带有对数链接的二项式模型，那么该警告的出现是因为线性预测器（在 glm 的术语中是 {it:eta}）对于一个或多个观测值大于零。对于这个模型，正事件的估计概率是线性预测器的指数。当线性预测器大于零时，估计概率会大于一，这是不可接受的。

{pstd}
如果您通过 {help glm_zh} 或 {help binreg_zh} 使用选项 {cmd:rd} 拟合带有恒等链接的二项式模型，那么该警告的出现是因为线性预测器对于一个或多个观测值超出了 [0,1] 的范围。因此，正事件的预测概率（在这种情况下就是线性预测器）对于这些观测值超出了其可接受的范围。

{pstd}
您的模型很可能是通过最大似然估计（ML）拟合的，并且估计算法没有收敛。即使算法确实收敛，所得参数估计的解释仍然值得怀疑。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_glmadmiss.sthlp>}