{smcl}
{* *! version 1.0.5  10aug2012}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] gs_graphinfo" "help gs_graphinfo_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] gs_filetype" "help gs_filetype_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph describe" "help graph_describe_zh"}{...}
{viewerjumpto "Syntax" "gs_fileinfo_zh##syntax"}{...}
{viewerjumpto "Description" "gs_fileinfo_zh##description"}{...}
{viewerjumpto "Option" "gs_fileinfo_zh##option"}{...}
{viewerjumpto "Remarks" "gs_fileinfo_zh##remarks"}{...}
{viewerjumpto "Stored results" "gs_fileinfo_zh##results"}
{help gs_fileinfo:English Version}
{hline}{...}
{title:标题}

{p 4 21 2}
{cmd:[G-2] gs_fileinfo} {hline 2} 获取关于 .gph 文件的信息的子程序


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:gs_fileinfo}
{it:filename}
[{cmd:,}
{cmd:suffix}
]


{marker description}{...}
{title:描述}

{pstd}
{cmd:gs_fileinfo} 返回 {it:filename} 是旧的、原始的还是实时的，如果是实时的，返回包括生成图形的命令在内的其他信息。


{marker option}{...}
{title:选项}

{phang}
{cmd:suffix}
    指定如果 {it:filename} 不包含后缀，则使用 {cmd:.gph} 作为后缀。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:gs_fileinfo} 只产生错误信息，没有其他输出。

{pstd}
{cmd:gs_fileinfo} 是通过 {cmd:gs_filetype} 实现的；请参见 {help gs_filetype_zh}。


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:gs_fileinfo} 在 {cmd:r()} 中存储以下内容：

	local  {cmd:r(fn)}            {it:filename} 或 {it:filename}{cmd:.gph}
	local  {cmd:r(ft)}            "{cmd:old}"、"{cmd:asis}" 或 "{cmd:live}"

{pstd}
如果 {cmd:r(ft)}=="{cmd:live}"，那么以下内容也会被存储：

	scalar {cmd:r(fversion)}      文件格式
	scalar {cmd:r(cversion)}      代码格式

	local  {cmd:r(scheme)}        方案名称
	local  {cmd:r(ysize)}         {cmd:ysize()} 值
	local  {cmd:r(xsize)}         {cmd:xsize()} 值

	local  {cmd:r(command)}       命令
	local  {cmd:r(command_date)}  命令运行日期
	local  {cmd:r(command_time)}  命令运行时间
	local  {cmd:r(family)}        命令所属的家族

	local  {cmd:r(dtafile)}       命令运行时内存中的 .dta 文件
	local  {cmd:r(dtafile_date)}  .dta 文件日期

{pstd}
请注意，任何 {cmd:r(command)}、...、{cmd:r(dtafile_date)} 可能未定义，因此请使用宏引用访问内容。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gs_fileinfo.sthlp>}