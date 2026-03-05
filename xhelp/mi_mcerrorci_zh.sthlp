{smcl}
{* *! version 1.0.3  12jun2011}{...}
{vieweralsosee "[MI] mi estimate" "help mi_estimate_zh"}{...}
{vieweralsosee "[MI] mi estimate using" "help mi_estimate using"}
{help mi_mcerrorci:English Version}
{hline}{...}
{title:蒙特卡洛误差估计未报告置信区间}

{pstd}
在重放时，命令 {cmd:mi estimate, mcerror} 未报告置信区间的蒙特卡洛误差估计。当报告置信区间所使用的置信水平与计算置信区间估计的蒙特卡洛误差估计所使用的置信水平不同时，就会发生这种情况。(用于计算置信区间的蒙特卡洛误差估计的置信水平存储在标量 {bf:e(cilevel_mi)} 中。)

{pstd}
很可能您在估计过程中使用了选项 {cmd:mcerror}与 {helpb mi estimate} 或 {helpb mi estimate using}，然后在重放时指定了选项 {cmd:level()}，其中包含了与默认的 95 置信水平不同的置信水平：

{phang2}{cmd:  . mi estimate, mcerror:}{it: ...}{p_end}
{phang2}{cmd:  . mi estimate, mcerror level(90)}{p_end}

{pstd}
默认情况下，{cmd:mcerror} 为 95% 的置信区间获取蒙特卡洛误差估计。要获取例如 90% 置信区间的蒙特卡洛误差估计，请在估计时指定 {cmd:level()} 选项：

{phang2}{cmd:  . mi estimate, mcerror level(90):}{it: ...}{p_end}

{pstd}
如果您希望为多个不同的置信水平获得蒙特卡洛误差估计，更具计算效率的方法是使用 {cmd: mi estimate using}。

{pstd}
首先，使用 {cmd:mi estimate} 将个别估计结果保存到估计文件中：

{phang2}{cmd:  . mi estimate, saving(miest):}{it: ...}{p_end}

{pstd}
然后使用 {cmd:mi estimate using} 在不重新拟合模型的情况下获得不同置信区间的蒙特卡洛误差估计：
{p_end}

{phang2}{cmd:  . mi estimate using miest, mcerror level(90)}{it: ...}{p_end}
{phang2}{cmd:  . mi estimate using miest, mcerror level(80)}{it: ...}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_mcerrorci.sthlp>}