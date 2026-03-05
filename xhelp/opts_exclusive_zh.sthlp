{smcl}
{* *! version 1.0.6  11feb2011}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] error" "help error_zh"}{...}
{vieweralsosee "[P] exit" "help exit_zh"}{...}
{viewerjumpto "语法" "opts_exclusive_zh##syntax"}{...}
{viewerjumpto "描述" "opts_exclusive_zh##description"}{...}
{viewerjumpto "示例" "opts_exclusive_zh##examples"}
{help opts_exclusive:English Version}
{hline}{...}
{title:标题}

{p2colset 5 27 29 2}{...}
{p2col:{hi:[P] opts_exclusive} {hline 2}}程序员的互斥选项实用工具{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 23 2}
{cmd:opts_exclusive} {cmd:"}{it:opts}{cmd:"}
[[{it:option_name}] {it:return_code}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:opts_exclusive} 是一个程序员命令，用于在遇到互斥选项时显示适当的消息和返回代码。{it:opts} 是互斥选项或子选项的列表。如果在 {it:opts} 中列出的选项少于两个，则 {cmd:opts_exclusive} 默默退出，返回代码为 0。当 {it:opts} 中有超过两个选项时，显示错误消息并设置返回代码。对于子选项，{it:option_name} 表示选项名称。默认返回代码为 198。{it:return_code} 指定不同的返回代码。


{marker examples}{...}
{title:示例}

    {cmd:. opts_exclusive "a b" myopt}
{p 4 4 2}
    {err:选项 myopt() 无效；仅允许 a 或 b 之一}
{p_end}
    {search r(198):r(198);}

    {cmd:. opts_exclusive "this that other" xyz 274}
{p 4 4 2}
    {err:选项 xyz() 无效；仅允许 this、that 或 other 之一}
{p_end}
    {search r(274):r(274);}

    {cmd:. opts_exclusive "green yellow red blue"}
{p 4 4 2}
    {err:仅允许 green、yellow、red 或 blue 之一}
{p_end}
    {search r(198):r(198);}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <opts_exclusive.sthlp>}