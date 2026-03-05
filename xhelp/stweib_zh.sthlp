
{smcl}
{* *! version 1.0.2  11feb2011}{...}
{title:过时的命令}

{help stweib:English Version}
{hline}
{pstd}
从 Stata 6.0 开始，上述列出的命令已过时。

{pstd}
替代命令是 {cmd:streg}；请参阅 {manhelp streg ST}。

{pstd}
现在可以通过以下方式使用 {cmd:stereg}：
{cmd:streg} {it:...} {cmd:, dist(exponential)} {it:...}

{pstd}
现在可以通过以下方式使用 {cmd:stweib}：
{cmd:streg} {it:...} {cmd:, dist(weibull)} {it:...}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stweib.sthlp>}