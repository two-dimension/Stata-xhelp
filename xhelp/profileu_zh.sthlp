{smcl}
{* *! version 1.2.2  15may2019}{...}
{findalias asgsuprofile}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] do" "help do_zh"}{...}
{vieweralsosee "[R] doedit" "help doedit_zh"}{...}
{viewerjumpto "Description" "profileu_zh##description"}{...}
{viewerjumpto "Examples" "profileu_zh##examples"}
{help profileu:English Version}
{hline}{...}
{title:标题}

{p 4 16 2}
{findalias gsuprofile} 


{marker description}{...}
{title:描述}

{pstd}
Stata 首先会查找文件 sysprofile.do 当被调用时。之后，Stata 会查找文件 profile.do。如果找到这两个文件中的任何一个，Stata 就会执行它们包含的命令。Stata 首先在 Stata 安装的目录中查找，然后在当前目录中查找，再沿路径查找，最后沿 ado 路径查找（见 {helpb adopath}）。我们建议你将 profile.do 放在你的 bin 目录 $HOME/bin 中。

{pstd}
sysprofile.do 是为系统管理员准备的。此文件的处理方式与 profile.do 相同，不同之处在于 Stata 首先查找 sysprofile.do。如果找到该文件，Stata 将执行其中的任何命令。之后，Stata 将查找 profile.do，如果找到该文件，则执行其中的命令。我们建议将 sysprofile.do 放在 Stata 安装的目录中。


{marker examples}{...}
{title:示例}

{pstd}
假设每次你启动 Stata 时都希望将 {cmd:niceness} 设置为 6（参见 {help memory_zh}）。

{p 8 12 2}创建文件 $HOME/bin/profile.do，内容为

{p 8 12 2}{cmd:set niceness 6}

{p 8 12 2}当你调用 Stata 时，这个命令将被执行：

{p 8 12 2}{res:running /home/mydir/bin/profile.do ...}{p_end}
	{cmd:. _ }

{pstd}
如果系统管理员希望更改 Stata 的 SITE 目录路径，则可以创建 {cmd:sysprofile.do}，其内容为

{p 8 12 2}{cmd:sysdir set SITE /opt/stata/ado}

{p 8 12 2}当你调用 Stata 时，这个命令将被执行：

{p 8 12 2}{res:running /usr/local/stata16/sysprofile.do ...}{p_end}
        {cmd:. _ }

{p 8 12 2}如果 profile.do 存在，Stata 将在 sysprofile.do 完成后运行它。

{pstd}
sysprofile.do 和 profile.do 在执行后将被视为任何其他 do 文件；结果就如你首先启动 Stata 然后输入 {cmd:run sysprofile.do} 或 {cmd:run profile.do} 一样。这些 do 文件的唯一特别之处在于 Stata 会查找并自动运行它们。如果 sysprofile.do 或 profile.do 尚不存在，则需要手动创建它们。这可以像创建任何其他 do 文件一样进行。

{pstd}
关于这些启动文件的完整讨论，请参见 {findalias gsuprofile}。

{pstd}
有关 do 文件的解释，请参见 {findalias frdofiles}。它们只是包含一系列 Stata 要执行的命令的文本（ASCII）文件。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <profileu.sthlp>}