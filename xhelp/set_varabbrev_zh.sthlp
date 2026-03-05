{smcl}
{* *! version 1.1.7  23oct2017}{...}
{vieweralsosee "[R] set" "mansection R set"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] varabbrev" "help novarabbrev_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{viewerjumpto "Syntax" "set_varabbrev_zh##syntax"}{...}
{viewerjumpto "Description" "set_varabbrev_zh##description"}{...}
{viewerjumpto "Remarks" "set_varabbrev_zh##remarks"}
{help set_varabbrev:English Version}
{hline}{...}
{title:标题}

{phang}
设置是否支持变量缩写{p_end}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:set}
{cmd:varabbrev}
{c -(}{cmd:on} | {cmd:off}{c )-}
{cmd:,} {cmdab:perm:anently}


{marker description}{...}
{title:描述}

{pstd}
{cmd:set} {cmd:varabbrev} 允许您控制是否允许变量缩写。默认情况下，允许变量缩写。

{pstd}
有关 {help novarabbrev_zh:varabbrev} 和 {help novarabbrev_zh} 命令，请参阅 {manlink P varabbrev}。


{marker remarks}{...}
{title:备注}

{pstd}
如果您输入

	{cmd:. sysuse auto}
	{cmd:. summarize mp}

{pstd}
您将会看到变量 {cmd:mpg} 的汇总，因为 {cmd:mp} 是 {cmd:mpg} 的缩写，并且数据集中没有其他变量可以缩写为 {cmd:mp}。

{pstd}
如果您通过输入

	{cmd:. set varabbrev off}

{pstd}
关闭变量缩写，Stata 将在您输入变量列表中的 {cmd:mp} 时找不到变量 {cmd:mpg}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <set_varabbrev.sthlp>}