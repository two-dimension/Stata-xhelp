{smcl}
{* *! version 1.3.2  14may2019}{...}
{findalias asgsmprofile}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] do" "help do_zh"}{...}
{vieweralsosee "[R] doedit" "help doedit_zh"}{...}
{viewerjumpto "Description" "profilem_zh##description"}{...}
{viewerjumpto "Examples" "profilem_zh##examples"}
{help profilem:English Version}
{hline}{...}
{title:标题}

{p 4 16 2}
{findalias gsmprofile}


{marker description}{...}
{title:描述}

{pstd}
Stata 首先查找文件 sysprofile.do，当其被调用时。之后，Stata 查找文件 profile.do。如果找到这两个文件中的任意一个，Stata 将执行它们包含的命令。Stata 首先在 Stata 安装目录中查找，然后在当前目录中查找，接着在你的路径中查找，最后在 ado-path 中查找（见 {helpb adopath}）。我们建议将 profile.do 放在 ~/Documents/Stata 中。

{pstd}
sysprofile.do 旨在供系统管理员使用。此文件的处理方式与 profile.do 相同，除了 Stata 首先查找 sysprofile.do。如果找到该文件，Stata 将执行其中包含的命令。然后，Stata 会查找 profile.do，如果找到该文件，将执行其中的命令。我们建议将 sysprofile.do 放在 Stata 安装目录中。


{marker examples}{...}
{title:示例}

{pstd}
假设每次启动 Stata 时，你想将 {cmd:niceness} 设置为 6（参见 {help memory_zh}）。

{p 8 12 2}在 ~/Documents/Stata 中创建 profile.do，内容为

{p 8 12 2}{cmd:set niceness 6}

{p 8 12 2}当你调用 Stata 时，此命令将被执行：

{p 8 12 2}{res:运行 ~/Documents/Stata/profile.do ...}{p_end}
    {cmd:. _ }

{pstd}
如果系统管理员想更改 Stata 的 SITE 目录路径，则可以在 Stata 目录中创建 {cmd:sysprofile.do}，并包含以下命令

{p 8 12 2}{cmd:sysdir set SITE "~/Documents/Stata"}

{p 8 12 2}当你调用 Stata 时，此命令将被执行：

{p 8 12 2}{res:运行 /Applications/Stata/sysprofile.do ...}{p_end}
        {cmd:. _ }

{p 8 12 2}如果 profile.do 存在，则在 sysprofile.do 完成后，Stata 将运行该文件。

{pstd}
一旦 sysprofile.do 和 profile.do 被执行，它们将被视为任何其他 do 文件；结果就像你启动 Stata 然后输入 {cmd:run sysprofile.do} 或 {cmd:run profile.do} 一样。关于这些 do 文件的唯一特特是 Stata 会自动查找并运行它们。如果 sysprofile.do 或 profile.do 尚未存在，则你需要创建它们。这可以通过创建任何其他 do 文件的方式来完成。

{pstd}
有关这些启动文件的详细讨论，请参见 {findalias gsmprofile}。

{pstd}
有关 do 文件的解释，请参见 {findalias frdofiles}。它们不过是包含一系列 Stata 命令的文本（ASCII）文件。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <profilem.sthlp>}