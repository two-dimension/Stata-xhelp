{smcl}
{* *! version 1.0.0  16may2018}{...}
{vieweralsosee "[BAYES] bayes" "mansection BAYES bayes"}
{help j_bayes_displayre15:English Version}
{hline}{...}
{title:为什么没有显示所有随机效应？}

{pstd}
您在使用 {help bayes_zh} 或 {help bayesmh_zh} 时指定了 {cmd:showreffects} 选项，但并未显示所有随机效应。这发生在总参数数量（包括随机效应）超过当前的 {help matsize_zh} 时。显示和存储在 {cmd:e(b)} 中的参数数量不能超过 {cmd:matsize}。要显示和存储更多的随机效应，您可以增加 {cmd:matsize}。否则，您可以在重放时使用 {cmd:showreffects()} 和 {cmd:show()} 选项，或在估计后使用 {helpb bayesstats summary} 来显示剩余随机效应的子集。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_bayes_displayre15.sthlp>}