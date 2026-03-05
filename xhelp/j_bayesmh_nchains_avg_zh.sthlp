{smcl}
{* *! version 1.0.0  25apr2019}{...}
{vieweralsosee "[BAYES] bayesmh" "mansection BAYES bayesmh"}
{help j_bayesmh_nchains_avg:English Version}
{hline}{...}
{title:平均对数边际似然、接受率和效率是什么？}

{pstd}
您在使用 {help bayesmh_zh} 或 {help bayes_zh} 前缀时指定了选项 {cmd:nchains()}，现在报告的头信息显示平均对数边际似然、平均接受率和平均效率。

{pstd}
对于多个链，这些命令报告在链之间计算的对数边际似然、接受率和效率的平均值。对于具有多个参数的模型，报告最小值、最大值和平均效率的平均值。您可以使用选项 {cmd:chainsdetail} 分别查看每个链的这些值。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_bayesmh_nchains_avg.sthlp>}