{smcl}
{* *! version 1.0.5  29nov2012}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] checkhlpfiles" "help checkhlpfiles_zh"}{...}
{viewerjumpto "Syntax" "checkdlgfiles_zh##syntax"}{...}
{viewerjumpto "Description" "checkdlgfiles_zh##description"}{...}
{viewerjumpto "Options" "checkdlgfiles_zh##options"}
{help checkdlgfiles:English Version}
{hline}{...}
{title:标题}

{p 4 27 2}
{hi:[P] checkdlgfiles} {hline 2} 对话框文件错误检查


{marker syntax}{...}
{title:语法}

{p 8 22 2}
{cmd:checkdlgfiles}
{cmd:ado}
[{cmd:,}
{cmd:path(}{it:path}{cmd:)}
{cmdab:s:ystem}
]


{phang}
还被 {cmd:checkdlgfiles} 使用的文件有

		{cmd:*.dlg}
		{cmd:*.ado}
		{cmd:cmddlg.maint}


{marker description}{...}
{title:描述}

{pstd}
{cmd:checkdlgfiles} 是 StataCorp 用于验证 {cmd:*.dlg} 文件中没有链接错误的工具。


{title:checkdlgfiles ado 的描述}

{pstd}
{cmd:checkdlgfiles} {cmd:ado} 检查 Stata 的所有命令（{cmd:*.ado} 和 {cmd:cmddlg.maint} 所添加和移除的内容），并统计

	1.  有 .dlg 文件的命令
	2.  没有 .dlg 文件的命令
	3.  名称中没有 _ 的不匹配 .dlg 文件
	4.  名称中有 _ 的不匹配 .dlg 文件

{pstd}
对于 (2)、(3) 和 (4) 提供了详细的列表。


{marker options}{...}
{title:选项}

{phang}
{cmd:path()} 指定了用于查找 {cmd:*.ado}、{cmd:*.dlg} 和 {cmd:*.maint} 文件的搜索路径。 默认路径为 {cmd:path(`c(adopath)')}。

{phang}
{cmd:system} 是一种替代 {cmd:path()} 的选项。
指定 {cmd:system} 等同于指定 {cmd:path("BASE")}。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <checkdlgfiles.sthlp>}