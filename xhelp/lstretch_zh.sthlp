{smcl}
{* *! version 1.1.0  20mar2015}{...}
{vieweralsosee "[R] set" "mansection R set"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{viewerjumpto "Syntax" "lstretch_zh##syntax"}{...}
{viewerjumpto "Description" "lstretch_zh##description"}{...}
{viewerjumpto "Option" "lstretch_zh##option"}{...}
{viewerjumpto "Examples" "lstretch_zh##examples"}
{help lstretch:English Version}
{hline}{...}
{title:标题}

{phang}
指定是否自动加宽系数表


{marker syntax}{...}
{title:语法}

{p 8 22 2}
	{cmd:set lstretch} [ {cmd:on} | {cmd:off} ]
	[{cmd:,} {cmdab:perm:anently}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:set lstretch} 指定是否自动加宽系数表以适应结果窗口的宽度，从而容纳更长的变量名称。默认行为是 {cmd:on}。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定除了立即更改设置外，还要记住该设置并使其成为启动 Stata 时的默认设置。
{p_end}


{marker examples}{...}
{title:例子}

{pstd}
防止系数表加宽以适应更长的变量名称

{phang2}
{cmd:. set lstretch off}
{p_end}

{pstd}
重置行为为默认值

{phang2}
{cmd:. set lstretch}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lstretch.sthlp>}