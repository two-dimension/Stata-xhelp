{smcl}
{* *! version 1.0.5  10aug2012}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] gs_fileinfo" "help gs_fileinfo_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph describe" "help graph_describe_zh"}{...}
{viewerjumpto "Syntax" "gs_filetype_zh##syntax"}{...}
{viewerjumpto "Description" "gs_filetype_zh##description"}{...}
{viewerjumpto "Option" "gs_filetype_zh##option"}{...}
{viewerjumpto "Remarks" "gs_filetype_zh##remarks"}{...}
{viewerjumpto "Stored results" "gs_filetype_zh##results"}
{help gs_filetype:English Version}
{hline}{...}
{title:标题}

{p 4 21 2}
{hi:[G-2] gs_filetype} {hline 2} 子程序以确定 .gph 文件的类型


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:gs_filetype}
{it:filename}
[{cmd:,}
{cmd:suffix}
]


{marker description}{...}
{title:描述}

{pstd}
{cmd:gs_filetype} 返回 {it:filename} 是旧格式、原格式，还是实时格式。


{marker option}{...}
{title:选项}

{phang}
{cmd:suffix}
    指定如果 {it:filename} 不已经包含后缀，则将其后缀设置为 {cmd:.gph}。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:gs_filetype} 不会产生任何输出，除了错误信息：

	{err:无效的文件规范}
	r(198);

	{err:文件 ____ 未找到}
	r(601);

	{err:文件 ____ 不是 Stata 的 .gph 文件}
	r(610);

	{err:文件 ____ 是一个新格式，该版本的 Stata 不知道如何读取}
	{err:    建议：输入 -update query-}
	r(610);

	{err:文件 ____ 是一个 Stata 不再知道如何读取的旧格式}
	r(610);


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:gs_filetype} 在 {cmd:r()} 中存储以下内容：

	local  {cmd:r(fn)}            {it:filename} 或 {it:filename}{cmd:.gph}
	local  {cmd:r(ft)}            "{cmd:old}"、"{cmd:asis}" 或 "{cmd:live}"
	local  {cmd:r(olddtl)}        "{cmd:real}" 或 "{cmd:emulation}"，如果 {cmd:r(ft)}=="{cmd:old}"
	scalar {cmd:r(fversion)}      文件格式如果 {cmd:live}
	scalar {cmd:r(cversion)}      代码格式如果 {cmd:live}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gs_filetype.sthlp>}