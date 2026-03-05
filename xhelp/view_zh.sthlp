{smcl}
{* *! version 1.2.13  01nov2018}{...}
{viewerdialog view "view_d"}{...}
{vieweralsosee "[R] view" "mansection R view"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] help" "help help_zh"}{...}
{vieweralsosee "[R] net" "help net_zh"}{...}
{vieweralsosee "[R] search" "help search_zh"}{...}
{vieweralsosee "[D] type" "help type_zh"}{...}
{vieweralsosee "[R] update" "help update_zh"}{...}
{viewerjumpto "Syntax" "view_zh##syntax"}{...}
{viewerjumpto "Menu" "view_zh##menu"}{...}
{viewerjumpto "Description" "view_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "view_zh##linkspdf"}{...}
{viewerjumpto "Options" "view_zh##options"}{...}
{viewerjumpto "Remarks" "view_zh##remarks"}
{help view:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[R] view} {hline 2}}查看文件和日志{p_end}
{p2col:}({mansection R view:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
在查看器中显示文件

{p 8 15 2}
{cmd:view} [{cmd:file}] [{cmd:"}]{it:{help filename_zh}}[{cmd:"}] 
   [{cmd:,} {cmd:asis adopath}]


{phang}
打开指向指定URL的浏览器

{p 8 15 2}
{cmd:view} {cmd:browse} [{cmd:"}]{it:url}[{cmd:"}]


{phang}
在查看器中显示帮助结果

{p 8 15 2}
[{cmd:view}] {cmd:help} [{it:topic_or_command_name}]


{phang}
在查看器中显示搜索结果

{p 8 15 2}
[{cmd:view}] {cmd:search} {it:keywords}


{phang}
在查看器中显示网络结果

{p 8 15 2}
{cmd:view} {cmd:net} [{it:netcmd}]


{phang}
在查看器中显示ado结果

{p 8 15 2}
{cmd:view} {cmd:ado} [{it:adocmd}]


{phang}
在查看器中显示更新结果

{p 8 15 2}
{cmd:view} {cmd:update} [{it:updatecmd}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:文件 > 查看...}


{marker description}{...}
{title:描述}

{phang}
{cmd:view} 在查看器中显示文件内容。

{phang}
{cmd:view} {cmd:file} 显示指定文件。 {cmd:file} 是可选的，因此
如果您通过输入 {bind:{cmd:log using mylog}} 创建了一个 SMCL 会话日志，
则可以输入 {bind:{cmd:view mylog.smcl}} 来查看它。
{bind:{cmd:view} {cmd:file}} 可以正确显示 {hi:.smcl} 文件（日志等）、{hi:.sthlp} 文件和文本文件。
{bind:{cmd:view} {cmd:file}} 的 {opt asis} 选项指定无论 {it:filename} 的扩展名是什么，文件都应作为纯文本显示。

{phang}
{cmd:view} {cmd:browse} 打开指向 {it:url} 的浏览器。 输入
{bind:{cmd:view} {cmd:browse} {cmd:https://www.stata.com}} 将打开指向 https://www.stata.com 网站的浏览器。

{phang}
[{cmd:view}] {cmd:help} 在查看器中显示指定主题。
例如，要查看 Stata 的 {cmd:print} 命令的帮助，可以输入 {bind:{cmd:help print}}。
有关更多详细信息，请参见 {help help_zh:[R] help}。

{phang}
[{cmd:view}] {cmd:search} 在查看器中显示 {cmd:search} 命令的结果。
例如，要在系统帮助中搜索有关稳健回归的信息，可以输入 {bind:{cmd:search robust regression}}。
有关更多详细信息，请参见 {help search_zh:[R] search}。

{phang}
{cmd:view} {cmd:net} 的功能与 {help net_zh} 命令相同，但结果在查看器中显示。
例如，输入 {bind:{cmd:view net search hausman test}} 将搜索与 Hausman 测试相关的 Stata 附加内容。 输入 
{bind:{cmd:view net from https://www.stata.com}} 将前往 https://www.stata.com 的 Stata 附加下载网站。

{phang}
{cmd:view} {cmd:ado} 的功能与 {helpb ado} 命令相同，但结果在查看器中显示。
例如，输入 {bind:{cmd:view ado dir}} 将显示您已安装的文件列表。

{phang}
{cmd:view} {cmd:update} 的功能与 {help update_zh} 命令相同，但结果在查看器中显示。
输入 {bind:{cmd:view update}} 将显示您已安装的日期，然后您可以单击以比较这些日期与最新可用更新。
输入 {bind:{cmd:view update query}} 将跳过第一步并显示比较结果。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R viewRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt asis}，可与 {cmd:view} {cmd:file} 一起使用，指定文件应
作为文本显示，无论 {it:filename} 的扩展名是什么。
{cmd:view} {cmd:file} 的默认操作是将以 {hi:.smcl} 和 {hi:.sthlp} 结尾的文件显示为 SMCL；请参见 {manhelp smcl P}。

{phang}
{opt adopath}，可与 {cmd:view} {cmd:file} 一起使用，指定 Stata 在 S_ADO 路径中搜索 
{it:filename} 并在找到时显示它。


{marker remarks}{...}
{title:备注}

{pstd}
大多数用户通过选择 {hi:文件 > 查看...} 访问查看器，然后从那里继续。
某些命令允许您跳过该步骤。 一些常见的交互式使用命令在查看器中显示其结果如下：

	{cmd:. view mysession.smcl}
	{cmd:. view mysession.log}

	{cmd:. help print}
	{cmd:. help regress}

	{cmd:. search hausman test}

	{cmd:. view net}
	{cmd:. view ado}

	{cmd:. view update query}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <view.sthlp>}