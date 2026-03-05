{smcl}
{* *! version 1.1.6  19oct2017}{...}
{vieweralsosee "[R] db" "mansection R db"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{viewerjumpto "Syntax" "db_zh##syntax"}{...}
{viewerjumpto "Description" "db_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "db_zh##linkspdf"}{...}
{viewerjumpto "Options" "db_zh##options"}{...}
{viewerjumpto "Remarks" "db_zh##remarks"}
{help db:English Version}
{hline}{...}
{p2colset 1 11 13 2}{...}
{p2col:{bf:[R] db} {hline 2}}启动对话框{p_end}
{p2col:}({mansection R db:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}db 的语法

{phang2}
{cmd:db}
{it:commandname}


{phang}针对程序员

{phang2}
{cmd:db}
{it:commandname}
[{cmd:,}
{opth message:(strings:string)}
{opt debug}
{opt dryrun}
]


{phang}设置系统参数

{p 8 19 2}
{cmd:set} {cmd:maxdb}
{it:#}
[{cmd:,}
{opt perm:anently}
]


{pstd}其中 {it:#} 必须在 5 和 1,000 之间。


{marker description}{...}
{title:描述}

{pstd}
{cmd:db} 打开指定命令的对话框。希望从帮助文件启动对话框的程序员，请参见 {manhelp smcl P} 以获取有关 {cmd:dialog} SMCL 指令的信息。

{pstd}
{cmd:set} {cmd:maxdb} 设置会话期间从一次调用到下一次调用记住的对话框的最大数量。 {cmd:maxdb} 的默认值为 50。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R dbRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opth message:(strings:string)} 指定将 {it:string} 传递给对话框，在那里可以通过 {cmd:__MESSAGE} 
    {cmd:STRING} 属性进行引用。

{phang}
{opt debug} 指定加载包含调试消息的底层对话框。

{phang}
{opt dryrun} 指定不启动对话框，而是显示 {cmd:db} 将发出以启动对话框的命令。

{phang}
{opt permanently} 指定除了立即进行更改外，
    {cmd:maxdb} 设置将被记住，并成为调用 Stata 时的默认设置。


{marker remarks}{...}
{title:备注}

{pstd}
通常启动对话框的方法是从 {hi:数据}、{hi:图形} 或 {hi:统计} 菜单中下拉并进行选择。然而，当你知道想要运行的命令名称时，{cmd:db} 提供了一种从命令行调用对话框的方法。

{pstd}
{cmd:db} 遵循与 Stata 命令行界面相同的缩写规则。因此，要启动 {cmd:regress} 的对话框，可以键入

	{cmd:. db regress}

{pstd}
或

	{cmd:. db reg}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <db.sthlp>}