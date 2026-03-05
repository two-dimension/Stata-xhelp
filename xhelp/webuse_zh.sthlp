{smcl}
{* *! version 1.3.3  15oct2018}{...}
{viewerdialog webuse "dialog webuse"}{...}
{vieweralsosee "[D] webuse" "mansection D webuse"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 1.2.2 示例数据集" "help dta_contents_zh"}{...}
{vieweralsosee "[D] sysuse" "help sysuse_zh"}{...}
{vieweralsosee "[D] use" "help use_zh"}{...}
{viewerjumpto "语法" "webuse_zh##syntax"}{...}
{viewerjumpto "菜单" "webuse_zh##menu"}{...}
{viewerjumpto "描述" "webuse_zh##description"}{...}
{viewerjumpto "链接到 PDF 文档" "webuse_zh##linkspdf"}{...}
{viewerjumpto "选项" "webuse_zh##option"}{...}
{viewerjumpto "示例" "webuse_zh##examples"}
{help webuse:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[D] webuse} {hline 2}}从 Stata 网站使用数据集{p_end}
{p2col:}({mansection D webuse:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
从网络加载数据集

{p 8 16 2}
{cmd:webuse} [{cmd:"}]{it:{help filename_zh}}[{cmd:"}] [{cmd:,} {cmd:clear}]


{phang}
报告将从中获取数据集的 URL

{p 8 16 2}
{cmd:webuse} {cmd:query}


{phang}
指定从中获取数据集的 URL

{p 8 16 2}
{cmd:webuse} {cmd:set} [{cmd:https://}]{it:url}[{cmd:/}]

{p 8 16 2}
{cmd:webuse} {cmd:set} [{cmd:http://}]{it:url}[{cmd:/}]


{phang}
重置 URL 为默认值

{p 8 16 2}
{cmd:webuse} {cmd:set}


{marker menu}{...}
{title:菜单}

{phang}
{bf:文件 > 示例数据集...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:webuse} {it:{help filename_zh}} 加载指定的数据集，通过网络获取。默认情况下，数据集来自
{cmd:https://www.stata-press.com/data/r16/}。
如果指定的 {it:filename} 没有后缀，则假定为 {cmd:.dta}。

{pstd}
{cmd:webuse} {cmd:query} 报告将从中获取数据集的 URL。

{pstd}
{cmd:webuse} {cmd:set} 允许你指定用于获取数据集的 URL。 
不带参数的 {cmd:webuse} {cmd:set} 会将源重置为 {cmd:https://www.stata-press.com/data/r16/}。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection D webuseQuickstart:快速开始}

        {mansection D webuseRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:clear} 指定可以替换内存中的数据，即使当前数据尚未保存到磁盘。


{marker examples}{...}
{title:示例}

{pstd}报告将从中获取数据集的 URL{p_end}
{phang2}{cmd:. webuse query}

{pstd}更改将从中获取数据集的 URL{p_end}
{phang2}{cmd:. webuse set https://www.zzz.edu/users/~sue}

{pstd}将 URL 重置为默认值{p_end}
{phang2}{cmd:. webuse set}

{pstd}加载存储在 
https://www.stata-press.com/data/r16 的 {cmd:lifeexp} 数据集{p_end}
{phang2}{cmd:. webuse lifeexp}

{pstd}等效于上述命令{p_end}
{phang2}{cmd:. use https://www.stata-press.com/data/r16/lifeexp}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <webuse.sthlp>}