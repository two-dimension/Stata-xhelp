{smcl}
{* *! version 1.0.3  11feb2013}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] ereturn" "help ereturn_zh"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{vieweralsosee "[P] quietly" "help quietly_zh"}{...}
{viewerjumpto "Syntax" "set_coeftabresults_zh##syntax"}{...}
{viewerjumpto "Description" "set_coeftabresults_zh##description"}{...}
{viewerjumpto "Remarks" "set_coeftabresults_zh##remarks"}
{help set_coeftabresults:English Version}
{hline}{...}
{title:标题}

{phang}设置系数表结果是否被保存{p_end}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:set}
{cmd:coeftabresults}
{c -(}{cmd:on} | {cmd:off}{c )-}


{marker description}{...}
{title:描述}

{pstd}
{cmd:set} {cmd:coeftabresults} 允许您控制系数表结果是否存储在 {cmd:r()} 中。默认情况下是存储结果。


{marker remarks}{...}
{title:备注}

{pstd}
如果您输入

	{cmd:. sysuse auto}
	{cmd:. regress mpg turn length}
	{cmd:. return list}

{pstd}
您将看到保存的系数表结果。这些结果包括报告的参数估计值、标准误差、检验统计量、p值和置信区间。

{pstd}
在进行模拟或使用复制方法进行方差估计时，跳过计算这些系数表结果的额外工作可以节省时间。在这种情况下，只需输入

	{cmd:. set coeftabresults off}

{pstd}
而 Stata 在运行 {cmd:quietly} 时将不再进行计算和保存系数表结果到 {cmd:r()} 的工作（请参见 {help quietly_zh:[P] quietly}）。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <set_coeftabresults.sthlp>}