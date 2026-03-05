{smcl}
{* *! version 1.0.6  10aug2012}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] gs_fileinfo" "help gs_fileinfo_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] gs_filetype" "help gs_filetype_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph describe" "help graph_describe_zh"}{...}
{viewerjumpto "Syntax" "gs_graphinfo_zh##syntax"}{...}
{viewerjumpto "Description" "gs_graphinfo_zh##description"}{...}
{viewerjumpto "Remarks" "gs_graphinfo_zh##remarks"}{...}
{viewerjumpto "Stored results" "gs_graphinfo_zh##results"}
{help gs_graphinfo:English Version}
{hline}{...}
{title:标题}

{p 4 26 2}
{hi:[G-2] gs_graphinfo} {hline 2} 子程序以获取有关存储图形的信息


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:gs_graphinfo}
{it:graphname}


{marker description}{...}
{title:描述}

{pstd}
{cmd:gs_graphinfo} 返回信息，包括生成图形的命令。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:gs_graphinfo} 除错误消息外不生成任何输出。

{pstd}
{cmd:gs_graphinfo} 与 {cmd:gs_fileinfo} 相似；请参见
{help gs_fileinfo_zh}。


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:gs_graphinfo} 在 {cmd:r()} 中存储以下内容：

	local  {cmd:r(fn)}            图形名称
	local  {cmd:r(ft)}            "{cmd:live}"

	local  {cmd:r(scheme)}        模式名称
	local  {cmd:r(ysize)}         {cmd:ysize()} 值
	local  {cmd:r(xsize)}         {cmd:xsize()} 值

	local  {cmd:r(command)}       命令
	local  {cmd:r(command_date)}  运行命令的日期
	local  {cmd:r(command_time)}  运行命令的时间
	local  {cmd:r(family)}        命令所属的系列

	local  {cmd:r(dtafile)}       命令运行时内存中的 .dta 文件
	local  {cmd:r(dtafile_date)}  .dta 文件日期

{pstd}
请注意，{cmd:r(command)}、...、{cmd:r(dtafile_date)} 中的任何一项可能未定义，因此请使用宏引用来访问内容。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gs_graphinfo.sthlp>}