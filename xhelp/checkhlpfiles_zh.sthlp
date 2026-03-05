{smcl}
{* *! version 1.2.1  29nov2012}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] checkdlgfiles" "help checkdlgfiles_zh"}{...}
{vieweralsosee "[P] smcl" "help smcl_zh"}{...}
{vieweralsosee "[P] sysdir" "help sysdir_zh"}{...}
{vieweralsosee "contents" "help contents_zh"}{...}
{viewerjumpto "Syntax" "checkhlpfiles_zh##syntax"}{...}
{viewerjumpto "Description" "checkhlpfiles_zh##description"}{...}
{viewerjumpto "Options" "checkhlpfiles_zh##options"}
{help checkhlpfiles:English Version}
{hline}{...}
{title:标题}

{p 4 27 2}
{hi:[P] checkhlpfiles} {hline 2} 帮助文件错误检查


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:check_help}

{p 8 16 2}
{cmd:checkhlpfiles}
{cmd:stata}
[{cmd:,}
{cmd:path(}{it:path}{cmd:)}
{cmdab:s:ystem}
]

{p 8 16 2}
{cmd:checkhlpfiles}
{cmd:doublebang}
[{cmd:,}
{cmd:path(}{it:path}{cmd:)}
{cmdab:s:ystem}
]

{pstd}
以下子命令部分已被弃用；请参见上面的 {cmd:check_help}。

{p 8 16 2}
{cmd:checkhlpfiles}
{cmd:help}
[{cmd:,}
{cmd:path(}{it:path}{cmd:)}
{cmdab:s:ystem}
]

{pstd}
以下子命令主要已被弃用；请参见上面的 {cmd:check_help}。

{p 8 16 2}
{cmd:checkhlpfiles}
{cmd:dialog}
[{cmd:,}
{cmd:path(}{it:path}{cmd:)}
{cmdab:s:ystem}
]


{phang}
{cmd:check_help} 和 {cmd:checkhlpfiles} 还使用以下文件：

		{cmd:*.sthlp}
		{cmd:*.ihlp}
		{cmd:*.hlp}		（如果有的话）
		{cmd:*.dlg}
		{cmd:hlpnotused.maint}
		{cmd:validpdflinks.maint}

		{cmd:ahelp_alias.maint}
		{cmd:bhelp_alias.maint}
		...
		{cmd:zhelp_alias.maint}

		{cmd:fsmcl_alias.maint}
		{cmd:gsmcl_alias.maint} （等）

{phang}
您必须使用 {help statamp_zh:Stata/MP} 或 {help SpecialEdition:Stata/SE} 才能使用 {cmd:checkhlpfiles}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:check_help} 和 {cmd:checkhlpfiles} 是 StataCorp 用于验证 {cmd:*.sthlp} 文件是否包含链接错误的工具。


{title:check_help 的描述}

{pstd}
{cmd:check_help} 检查在基础系统目录中找到的所有以 {cmd:.sthlp} 和 {cmd:.ihlp} 结尾的文件（见 {help sysdir_zh}），以查找来自 {help smcl_zh} 指令的损坏帮助文件链接 {cmd:help}、{cmd:helpb}、{cmd:manhelp}、{cmd:manhelpi}、{cmd:opth}、{cmd:vieweralsosee} 和 {cmd:viewerjumpto}。它还检查来自 {help smcl_zh} 指令的手册链接，{cmd:mansection}、{cmd:manlink}、{cmd:manlinki}、{cmd:findalias} 和 {cmd:vieweralsosee}。


{title:checkhlpfiles dialog 的描述}

{pstd}
{cmd:checkhlpfiles} {cmd:dialog} 检查帮助文件中的所有 {cmd:{c -(}dialog }...{cmd:{c )-}} 链接（{cmd:.sthlp}、{cmd:.hlp} 和 {cmd:.ihlp} 文件）。任何损坏的链接都会被报告；同时列出不存在的对话框和存在但没有被引用的对话框。


{title:checkhlpfiles stata 的描述}

{pstd}
{cmd:checkhlpfiles} {cmd:stata} 检查帮助文件中的所有 {cmd:{c -(}stata} ...{cmd:{c )-}} 链接（{cmd:.sthlp}、{cmd:.hlp} 和 {cmd:.ihlp} 文件）。任何包含无效 Stata 命令（由 {help which_zh} 确定）的文件都会列出，生成两个列表：使用但不存在的命令和使用且存在的命令。


{title:checkhlpfiles doublebang 的描述}

{pstd}
{cmd:checkhlpfiles} {cmd:doublebang} 检查所有 {cmd:*.sthlp}、{cmd:*.hlp}、{cmd:*.ihlp} 和 {cmd:*.maint} 文件，并列出包含两个感叹号（即 ! 并紧随其后 !）的行的文件名。StataCorp 使用“双感叹号”来标记问题。


{title:checkhlpfiles help 的描述（部分弃用）}

{pstd}
对于 {cmd:checkhlpfiles help}，帮助文件分为两个类别：“基础帮助文件”和“内容帮助文件”。“内容”帮助文件是组成帮助文件层次结构的文件，其根是 contents.sthlp。所有这些文件（除了 contents.sthlp）名称以“contents_”开头。所有其他帮助文件都是“基础”的。

{pstd}
{cmd:checkhlpfiles} {cmd:help} 检查所有帮助文件中的 {cmd:{c -(}help }...{cmd:{c )-}}、{cmd:{c -(}helpb }...{cmd:{c )-}}、{cmd:{c -(}manhelp }...{cmd:{c )-}}、{cmd:{c -(}manhelpi }...{cmd:{c )-}} 和 {cmd:{c -(}opth }...{cmd:{c )-}} 链接（{cmd:.sthlp}、{cmd:.hlp} 和 {cmd:.ihlp} 文件）。在下面的解释中，我们仅提到 {cmd:{c -(}help }...{cmd:{c )-}}，但评论同样适用于其他帮助链接 smcl 指令。所有损坏的链接都会被报告，并附有以下列表：

{phang2}
	{bf:空白}{break}
	不包含任何 {cmd:{c -(}help }...{cmd:{c )-}} 链接的帮助文件。

{phang2}
	{bf:来自基础帮助文件：被引用但不存在}{break}
	对不存在的帮助文件的 {cmd:{c -(}help }...{cmd:{c )-}} 链接，这些链接来自所有非 {cmd:contents*.sthlp} 的帮助文件。

{phang2}
	{bf:来自基础帮助文件：存在但未被引用}{break}
	存在但未在所有非 {cmd:contents*.sthlp} 的帮助文件中被引用的帮助文件，移除了在文件 {cmd:hlpnotused.maint} 中列出的名称。

{phang2}
	{bf:来自基础帮助文件：被引用但不应该存在}{break}
	来自非 {cmd:contents*.sthlp} 文件的 {cmd:{c -(}help }...{cmd:{c )-}} 连接，链接到在文件 {cmd:hlpnotused.maint} 中列出的帮助文件。

{phang2}
	{bf:来自内容帮助文件：被引用但不存在}{break}
	对不存在的帮助文件的 {cmd:{c -(}help }...{cmd:{c )-}} 链接，这些链接来自所有 {cmd:contents*.sthlp} 的帮助文件。

{phang2}
	{bf:来自内容帮助文件：存在但未被引用}{break}
	存在但未在所有 {cmd:contents*.sthlp} 的帮助文件中被引用的帮助文件，移除了在文件 {cmd:hlpnotused.maint} 中列出的名称。

{phang2}
	{bf:来自内容帮助文件：被引用但不应该存在}{break}
	来自非 {cmd:contents*.sthlp} 文件的 {cmd:{c -(}help }...{cmd:{c )-}} 连接，链接到在文件 {cmd:hlpnotused.maint} 中列出的帮助文件。

{pstd}
{cmd:helpnotused.maint} 文件的语法如下：

	{cmd:*} 注释
	{it:空白行}

	{it:name} [{cmd:contents}|{cmd:base}|{cmd:both}]

{pstd}
如果没有为 {it:name} 指定 {cmd:contents}、{cmd:base} 或 {cmd:both}，则假定为 {cmd:both}。{it:name} 不带 {cmd:.sthlp} 后缀。


{marker options}{...}
{title:选项}

{phang}
{cmd:path()} 指定搜索路径，用于定位 {cmd:*.sthlp}、{cmd:*.hlp}、{cmd:*.ihlp}、{cmd:*.dlg} 和 {cmd:*.maint} 文件。默认值为 {cmd:path(`c(adopath)')}。

{phang}
{cmd:system} 是指定 {cmd:path()} 的替代方案。指定 {cmd:system} 相当于指定 {cmd:path("BASE")}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <checkhlpfiles.sthlp>}