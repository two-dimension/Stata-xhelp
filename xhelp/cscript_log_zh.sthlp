{smcl}
{* *! version 1.0.10  11feb2011}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] cscript" "help cscript_zh"}{...}
{viewerjumpto "Syntax" "cscript_log_zh##syntax"}{...}
{viewerjumpto "Description" "cscript_log_zh##description"}{...}
{viewerjumpto "Example" "cscript_log_zh##example"}{...}
{viewerjumpto "Reference" "cscript_log_zh##reference"}
{help cscript_log:English Version}
{hline}{...}
{title:标题}

{p 4 25 2}
{cmd:[P] cscript_log} {hline 2} 开始认证脚本日志


{marker syntax}{...}
{title:语法}

{p 8 20 2}
{cmd:cscript_log}
{c -(}{cmd:begin}|{cmd:end}{c )-}
[{it:dirname}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:cscript_log} 是 StataCorp 在其测试程序中用于启动和停止单个日志文件的命令。

{pstd}
建议您忽略并避免使用此命令。此命令与 StataCorp 如何测试 Stata 的组织细节有关，且该命令的语法和操作可能会变更。有关 StataCorp 如何测试 Stata 的详细信息，请参见 {help cscript_log##G2001:Gould (2001)}。有关建议使用的测试命令，请参见 {manhelp cscript P}。

{pstd}
{cmd:cscript_log begin} 开始一个 SMCL 日志。日志的名称将根据 {cmd:$S_CONSOLE}、{cmd:$S_StataSE} 和 {cmd:$S_StataMP} 的值命名为
[{cmd:x}]{cmd:test}[{cmd:-se}]{cmd:.smcl} 或
[{cmd:x}]{cmd:test}[{cmd:-mp}]{cmd:.smcl}。

{pstd}
{cmd:cscript_log end} 关闭日志。

{pstd}
在这两种情况下，如果指定了 {it:dirname}，则在执行 {cmd:cscript_log} 的其他操作之前，当前目录将更改为 {it:dirname}。


{marker example}{...}
{title:示例}

{pstd}
Stata 测试脚本 certall.do 的一部分如下：

	{hline 22}
	{cmd:cscript_log begin base}
	{cmd:do test}
	{cmd:cscript_log end ..}

	{cmd:cscript_log begin ado}
	{cmd:do test}
	{cmd:cscript_log end ..}

	...
	{hline 22}


{marker reference}{...}
{title:参考文献}

{marker G2001}{...}
{phang}
Gould, W. W. 2001.
统计软件认证。
{browse "http://www.stata-journal.com/sjpdf.html?articlenum=pr0001":{it:Stata Journal} 1: 29-50}.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cscript_log.sthlp>}