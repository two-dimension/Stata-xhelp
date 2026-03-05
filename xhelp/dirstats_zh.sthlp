{smcl}
{* *! version 1.0.5  29nov2012}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] sysdir" "help sysdir_zh"}{...}
{viewerjumpto "Syntax" "dirstats_zh##syntax"}{...}
{viewerjumpto "Description" "dirstats_zh##description"}{...}
{viewerjumpto "Options" "dirstats_zh##options"}{...}
{viewerjumpto "Examples" "dirstats_zh##examples"}{...}
{viewerjumpto "Stored results" "dirstats_zh##results"}
{help dirstats:English Version}
{hline}{...}
{title:标题}

{p 4 22 2}
{hi:[P] dirstats} {hline 2} 目录统计


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:dirstats}
[{cmd:,}
{c -(}{cmd:base}|{cmd:updates}|{cmd:plus}{c )-}
    {cmd:leave}
]


{marker description}{...}
{title:描述}

{pstd}
{cmd:dirstats} 提供 {help sysdir_zh} BASE 或 PLUS 的字母子目录中的文件数量报告。


{marker options}{...}
{title:选项}

{phang}
{cmd:base}、{cmd:updates} 和 {cmd:plus} 指定要报告结果的目录。默认值是 {cmd:base}。

{phang}
{cmd:leave} 指定要留下一个包含变量 {cmd:ltr} 和 {cmd:n} 的数据集。


{marker examples}{...}
{title:示例}

{phang}
{cmd:. sysdir}

{phang}
{cmd:. sysdir, updates}

{phang}
{cmd:. sysdir, updates leave}


{marker results}{...}
{title:存储结果}

{pstd}
许多。执行 {cmd:return list} 以查看 {cmd:sysdir} 后的结果。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dirstats.sthlp>}