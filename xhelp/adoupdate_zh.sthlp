{smcl}
{* *! version 1.4.0  12feb2019}{...}
{viewerdialog "ado update" "dialog adoupdate"}{...}
{vieweralsosee "[R] ado update" "mansection R adoupdate"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] net" "help net_zh"}{...}
{vieweralsosee "[R] search" "help search_zh"}{...}
{vieweralsosee "[R] ssc" "help ssc_zh"}{...}
{vieweralsosee "[R] update" "help update_zh"}{...}
{viewerjumpto "Syntax" "adoupdate_zh##syntax"}{...}
{viewerjumpto "Description" "adoupdate_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "adoupdate_zh##linkspdf"}{...}
{viewerjumpto "Options" "adoupdate_zh##options"}{...}
{viewerjumpto "Remarks and examples" "adoupdate_zh##remarks"}{...}
{viewerjumpto "Stored results" "adoupdate_zh##results"}
{help adoupdate:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[R] ado update} {hline 2}}更新社区贡献的包{p_end}
{p2col:}({mansection R adoupdate:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:ado update}
[{it:pkglist}]
[{cmd:,}
{it:options}]

{synoptset 10}{...}
{synopthdr}
{synoptline}
{synopt:{cmd:update}}执行更新；默认列出可更新的包，但不实际更新{p_end}
{synopt:{cmd:all}}包括可能有更新的包；默认仅列出或更新已知有更新的包{p_end}
{synopt:{cmdab:ssc:only}}仅检查从SSC获取的包；默认检查所有已安装的包{p_end}
{synopt:{cmd:dir(}{it:dir}{cmd:)}}检查安装在{it:dir}中的包；默认检查安装在{help sysdir_zh:PLUS}中的包{p_end}
{synopt:{cmd:verbose}}提供帮助以调试网络问题的输出{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:ado update} 检查可用的社区贡献包的更新。要更新包，请使用 {cmd:ado update, update}。默认情况下，仅检查 {cmd:PLUS} 目录中的包。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R adoupdateQuickstart:快速开始}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:update} 指定具有更新的包进行更新。默认仅列出可以更新的包，而不实际执行更新。

{pmore}
    第一次运行 {cmd:ado update} 时，不要指定此选项。一旦您看到 {cmd:ado update} 的工作情况，您会更有信心。然后输入

		. {cmd:ado update, update}

{pmore}
    可以更新的包将列出并进行更新。

{phang}
{cmd:all} 很少指定。有时，{cmd:ado update} 无法确定您之前安装的包是否已更新。
    {cmd:ado update} 可以确定该包仍然在线可用，但不确定该包是否已更改。通常情况下，该包没有更改，但如果您想确保使用最新版本，请从源重新安装。

{pmore}
    指定 {cmd:all} 可以达到这个目的。输入 

		. {cmd:ado update, all}
    
{pmore}
    将此类包添加到需要更新的显示列表中，但不会更新它们。输入

		. {cmd:ado update, update all}

{pmore}
    列出此类包并进行更新。
    
{phang}
{cmd:ssconly} 
    指定 {cmd:ado update} 仅检查从波士顿大学的统计软件组件（SSC）存档获取的包，该存档位于 {browse "http://repec.org"}。有关SSC的更多信息，请参见 {manhelp ssc R}。

{phang}
{cmd:dir(}{it:dir}{cmd:)}
     指定要检查的已安装包。默认值为 {cmd:dir(PLUS)}，这可能是正确的。但是，如果您负责维护一个大型系统，您可能以前在 {cmd:dir(SITE)} 中安装了包，在那里它们是跨用户共享的。有关这些目录代码词的解释，请参见 {manhelp sysdir P}。您还可以指定实际目录名，例如 {cmd:C:\mydir}。

{phang}
{cmd:verbose} 在怀疑网络问题时指定。它提供更详细的输出，可能帮助您诊断该问题。


{marker remarks}{...}
{title:备注和示例}

{pstd}
对Stata的社区贡献添加称为包，可以为Stata增加显著的功能。社区贡献的包由其开发者更新，就像官方Stata软件由StataCorp更新一样。

{pstd}
不要将 {cmd:ado update} 与 {cmd:update} 混淆。使用 {cmd:ado update} 来更新社区贡献的文件。使用 {cmd:update} 来更新官方Stata软件的组件（包括ado文件）。
使用任一命令都必须连接到互联网。

{pstd}
尽管Stata会自动检查更新，并且甚至可以在Windows和Mac版本的Stata中设置为自动更新，但您必须记得输入 {cmd:ado update}。定期执行此操作可以帮助防止意外运行旧版本社区贡献包时发生的错误。

{pstd}
备注按以下标题呈现：

	{help adoupdate##using:使用 ado update}
	{help adoupdate##devnotes:开发者注意事项}


{marker using}{...}
{title:使用 ado update}

{pstd}
第一次尝试 {cmd:ado update} 时，输入 

	. {cmd:ado update}

{pstd}
不带 {cmd:update} 选项的 {cmd:ado update} 生成报告，但不更新任何文件。第一次运行 {cmd:ado update} 时，您可能会看到如下消息 

	. {cmd:ado update}
	  (注意：包 utx 被安装了多次；较旧的副本已删除)
	  {it:(其余输出省略)}

{pstd}
安装相同包的多个副本可能会导致混淆；{cmd:ado update} 会对此进行清理。

{pstd}
要更新所有需要更新的社区贡献包，请输入

	. {cmd:ado update, update}

{pstd}
您还可以更新您包的子集合。您可以在 {cmd:ado update} 命令后指定一个或多个包。您甚至可以使用通配符，如 {cmd:st*} 表示所有以 st 开头的包，或 {cmd:st*8} 表示所有以 st 开头并以 8 结尾的包。例如，如果报告显示包 {cmd:st0008} 有可用更新，请键入以下内容以更新该包：

	. {cmd:ado update st0008, update}


{marker devnotes}{...}
{title:开发者注意事项}

{pstd}
{cmd:ado update} 通过将已安装包的分发日期与网络上可用包的分发日期进行比较，报告该包是否是最新的。

{pstd}
如果您正在分发软件，请在您的 {cmd:.pkg} 文件中包含以下行

	{cmd:d Distribution-Date:}  {it:date}

{pstd}
在您的 {cmd:.pkg} 文件中的某个位置。 {cmd:Distribution-Date} 的大小写没有关系，但请按照所示包含连字符和冒号。日期可以采用两种格式之一编码：

	   全数字：  {it:yyyymmdd}，例如， {cmd:20160701}

	Stata标准： {it:ddMONyyyy}，例如， {cmd:01jul2016}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:ado update} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2:宏}{p_end}
{synopt:{cmd:r(pkglist)}}需要更新的包名称的空格分隔列表（未指定 {cmd:update}）或已更新的包名称（指定了 {cmd:update}）{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <adoupdate.sthlp>}