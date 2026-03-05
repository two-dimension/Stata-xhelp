{smcl}
{* *! version 1.0.7  11feb2011}{...}
{viewerdialog sysdescribe "dialog sysdescribe"}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] describe" "help describe_zh"}{...}
{vieweralsosee "[R] net" "help net_zh"}{...}
{vieweralsosee "[R] ssc" "help ssc_zh"}{...}
{vieweralsosee "[P] adopath" "help adopath"}{...}
{vieweralsosee "[P] findfile" "help findfile_zh"}{...}
{viewerjumpto "语法" "sysdescribe_zh##syntax"}{...}
{viewerjumpto "描述" "sysdescribe_zh##description"}{...}
{viewerjumpto "选项" "sysdescribe_zh##option"}{...}
{viewerjumpto "示例" "sysdescribe_zh##examples"}{...}
{viewerjumpto "随附的数据集" "sysdescribe_zh##shipped_dta"}{...}
{viewerjumpto "用户安装的数据集" "sysdescribe_zh##user_dta"}
{help sysdescribe:English Version}
{hline}{...}
{title:标题}

{p 4 25 2}
{hi:[D] sysdescribe} {hline 2} 描述随附数据集


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:sysdescribe}
[{cmd:"}]{it:filename}[{cmd:"}]

{p 8 16 2}
{opt sysdescribe dir}
[{cmd:,}
{opt all}]


{marker description}{...}
{title:描述}

{pstd}
{opt sysdescribe} {it:filename} 显示指定 Stata 格式数据集的内容摘要，该数据集是与 Stata 一起随附的或存储在 {help adopath} 中。如果未指定后缀，则假定 {it:filename} 为 {opt .dta}。

{pstd}
{opt sysdescribe dir} 列出与 Stata 随附的所有数据集的名称以及存储在 {help adopath} 中的其他数据集。


{marker option}{...}
{title:选项}

{phang}
{opt all} 指定列出所有数据集，即使数据集中包含下划线 ({opt _}) 也包含在内。此类数据集通常不会被列出。


{marker examples}{...}
{title:示例}

    {cmd:. sysdescribe auto}
    {cmd:. sysdescribe dir}
    {cmd:. describe dir, all}


{marker shipped_dta}{...}
{title:随附的数据集}

{pstd}
Stata 包含少量数据集，存储在系统目录中。这些数据集通常在帮助文件中用于演示某个功能。

{pstd}
输入

	{cmd:. sysdescribe dir, all}

{pstd}
将列出这些数据集的名称。

{pstd}
与 Stata 随附的数据集存储在不同的文件夹（目录）中，以避免与您的数据集混淆。并非所有在手册中使用的数据集都是与 Stata 随附的；随附的数据集仅包括在帮助文件中使用的数据集。要获取其他数据集，请参阅手册数据集帮助页面 {help dta_manuals_zh}，其中提供各手册中数据集的链接。

{pstd}
请注意，用于演示 Stata 的数据集通常是虚构的。


{marker user_dta}{...}
{title:用户安装的数据集}

{pstd}
您使用 {cmd:net} 或 {cmd:ssc} 安装的任何数据集 -- 请参见 {help net_zh} 和 {help ssc_zh} -- 也会被 {cmd:sysdescribe} {cmd:dir} 列出，{cmd:sysdescribe} {it:filename} 将显示其内容的摘要。

{pstd}
您存储在个人 ado 文件夹中的任何数据集 -- 请参见 {help sysdir_zh} -- 也会被 {cmd:sysdescribe} {cmd:dir} 列出，{cmd:sysdescribe} {it:filename} 将显示其内容的摘要。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sysdescribe.sthlp>}