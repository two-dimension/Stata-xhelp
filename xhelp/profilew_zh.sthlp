{smcl}
{* *! version 1.2.3  14may2019}{...}
{findalias asgswprofile}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] do" "help do_zh"}{...}
{vieweralsosee "[R] doedit" "help doedit_zh"}{...}
{viewerjumpto "Description" "profilew_zh##description"}{...}
{viewerjumpto "Examples" "profilew_zh##examples"}
{help profilew:English Version}
{hline}{...}
{title:标题}

{p 4 16 2}
{findalias gswprofile} 

{marker description}{...}
{title:描述}

{pstd}
Stata 首先查找 sysprofile.do 文件。当该文件未找到时，Stata 将查找 profile.do 文件。如果找到其中任何一个文件，Stata 将执行其包含的命令。Stata 首先在安装 Stata 的目录中查找，然后在当前目录中查找，然后沿着您的路径查找，再接着在由 Windows 的 USERPROFILE 环境变量定义的主目录中查找（通常是 C:\Users\{it:username}），最后沿着 ado-path 查找（参见 {helpb adopath}）。我们建议将 profile.do 放在您的主目录中。

{pstd}
sysprofile.do 文件是为系统管理员设计的。该文件的处理方式与 profile.do 相同，只是在 Stata 首先查找 sysprofile.do。如果找到该文件，Stata 将执行其包含的任何命令。之后，Stata 将查找 profile.do 文件，如果找到该文件，则执行其中的命令。我们建议将 sysprofile.do 放在安装 Stata 的目录中。

{marker examples}{...}
{title:示例}

{pstd}
假设每次启动 Stata 时都希望将 {cmd:niceness} 设置为 6（参见 {help memory_zh}）。

{p 8 12 2}创建文件 C:\Users\mydir\Documents\profile.do，内容为

{p 8 12 2}{cmd:set niceness 6}

{p 8 12 2}当您启动 Stata 时，将执行以下命令：

{p 8 12 2}{res:running C:\Users\mydir\Documents\profile.do ...}{p_end}
	{cmd:. _ }

{pstd}
如果系统管理员想要更改 Stata 的 SITE 目录的路径，则可以创建 sysprofile.do 并包含以下命令

{p 8 12 2}{cmd:sysdir set SITE \\Matador\StataFiles}

{p 8 12 2}当您启动 Stata 时，将执行以下命令：

{p 8 12 2}{res:running C:\Program Files\Stata16\sysprofile.do ...}{p_end}
	{cmd:. _ }

{p 8 12 2}如果 profile.do 存在，则 Stata 会在 sysprofile.do 运行完成后执行该文件。

{pstd}
sysprofile.do 和 profile.do 在执行后被视为任何其他 do 文件；结果就如同您启动 Stata 然后输入 {cmd:run sysprofile.do} 或 {cmd:run profile.do} 一样。这些 do 文件的唯一特别之处在于 Stata 自动查找并运行它们。如果 sysprofile.do 或 profile.do 尚不存在，则您需要手动创建它们。这可以像创建任何其他 do 文件一样进行。

{pstd}
请参考 {findalias gswprofile} 以获取关于这些启动文件的详细讨论。

{pstd}
请参考 {findalias frdofiles} 以了解 do 文件的解释。它们仅仅是包含一系列供 Stata 执行的命令的文本（ASCII）文件。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <profilew.sthlp>}