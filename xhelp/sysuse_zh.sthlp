{smcl}
{* *! version 1.1.8  19oct2017}{...}
{viewerdialog sysuse "dialog sysuse"}{...}
{vieweralsosee "[D] sysuse" "mansection D sysuse"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] webuse" "help webuse_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] findfile" "help findfile_zh"}{...}
{vieweralsosee "[R] net" "help net_zh"}{...}
{vieweralsosee "[R] ssc" "help ssc_zh"}{...}
{vieweralsosee "[D] sysdescribe" "help sysdescribe_zh"}{...}
{vieweralsosee "[P] sysdir" "help sysdir_zh"}{...}
{vieweralsosee "[D] use" "help use_zh"}{...}
{viewerjumpto "Syntax" "sysuse_zh##syntax"}{...}
{viewerjumpto "Menu" "sysuse_zh##menu"}{...}
{viewerjumpto "Description" "sysuse_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sysuse_zh##linkspdf"}{...}
{viewerjumpto "Options" "sysuse_zh##options"}{...}
{viewerjumpto "Example" "sysuse_zh##example"}{...}
{viewerjumpto "Stored results" "sysuse_zh##results"}
{help sysuse:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[D] sysuse} {hline 2}}使用附带数据集{p_end}
{p2col:}({mansection D sysuse:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    使用随 Stata 安装的示例数据集

{p 8 16 2}
{cmd:sysuse}
[{cmd:"}]{it:{help filename_zh}}[{cmd:"}]
[{cmd:,}
{opt clear}]


    列出随 Stata 安装的示例 Stata 数据集

{p 8 16 2}
{opt sysuse dir}
[{cmd:,}
{opt all}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:文件 > 示例数据集...}


{marker description}{...}
{title:描述}

{pstd}
{opt sysuse} {it:{help filename_zh}} 加载指定的 Stata 格式数据集，该数据集随 Stata 一起提供或存储在 {help adopath:ado-path} 中。如果指定 {it:filename} 时未带后缀，则默认为 {opt .dta}。

{pstd}
{opt sysuse dir} 列出随 Stata 提供的数据集名称以及沿 ado-path 存储的任何其他数据集。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D sysuseQuickstart:快速入门}

        {mansection D sysuseRemarksandexamples:备注及示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt clear} 指出可以替换内存中的数据，即使当前数据尚未保存到磁盘。

{phang}
{opt all} 指出列出所有数据集，即使它们的名称中包含下划线 ({opt _})。默认情况下，此类数据集不被列出。


{marker example}{...}
{title:示例}

{pstd}
如果您简单地输入 {cmd:use lifeexp}，您将看到

	{cmd:. use lifeexp}
	{err:file lifeexp.dta not found}
	{search r(601):r(601);}

{pstd}
但是如果输入 {opt sysuse}，数据集将被加载：

	{cmd:. sysuse lifeexp}
	(1998年预期寿命)


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:sysuse dir} 将数据集名称列表存储在宏 {cmd:r(files)} 中。

{pstd}
{cmd:sysuse} {it:filename} 将 {it:filename} 存储在宏 {cmd:r(fn)} 中，包括完整路径规范。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sysuse.sthlp>}