{smcl}
{* *! version 1.0.12  19oct2017}{...}
{vieweralsosee "[D] cd" "mansection D cd"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] copy" "help copy_zh"}{...}
{vieweralsosee "[D] dir" "help dir_zh"}{...}
{vieweralsosee "[D] erase" "help erase_zh"}{...}
{vieweralsosee "[D] mkdir" "help mkdir_zh"}{...}
{vieweralsosee "[D] rmdir" "help rmdir_zh"}{...}
{vieweralsosee "[D] shell" "help shell_zh"}{...}
{vieweralsosee "[D] type" "help type_zh"}{...}
{viewerjumpto "Syntax" "cd_zh##syntax"}{...}
{viewerjumpto "Description" "cd_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "cd_zh##linkspdf"}{...}
{viewerjumpto "Examples" "cd_zh##examples"}
{help cd:English Version}
{hline}{...}
{p2colset 1 11 13 2}{...}
{p2col:{bf:[D] cd} {hline 2}}更改目录{p_end}
{p2col:}({mansection D cd:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
适用于 Windows 的 Stata
	
	{cmd:cd}
{p 8 11 2}{cmd:cd}  [{cmd:"}]{it:directory_name}[{cmd:"}]{p_end}
{p 8 11 2}{cmd:cd}  [{cmd:"}]{it:drive}{cmd::}[{cmd:"}]{p_end}
{p 8 11 2}{cmd:cd}  [{cmd:"}]{it:drive}{cmd::}{it:directory_name}[{cmd:"}]{p_end}
	{cmd:pwd}


{phang}
适用于 Mac 和 Unix 的 Stata
	
	{cmd:cd}
{p 8 11 2}{cmd:cd}  [{cmd:"}]{it:directory_name}[{cmd:"}]{p_end}
	{cmd:pwd}


{phang}
如果您的 {it:directory_name} 中包含空格，请记得用双引号括起来。


{marker description}{...}
{title:描述}

{pstd}
适用于 Windows 的 Stata:
{opt cd} 更改当前工作目录为指定的驱动器和目录。{opt pwd} 相当于输入 {opt cd} 而不带参数；两者都会显示当前工作目录的名称。
注意：您可以进入 Windows 命令提示符；请参见 {manhelp shell D}。
但是，输入 {cmd:!cd} {it:directory_name} 不会更改 Stata 的当前目录；请使用 {opt cd} 命令来更改目录。

{pstd}
适用于 Mac 和 Unix 的 Stata:
{opt cd}（同义词 {opt chdir}）将当前工作目录更改为 {it:directory_name}，如果未指定 {it:directory_name}，则更改为主目录。{opt pwd} 显示当前工作目录的路径。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D cdQuickstart:快速开始}

        {mansection D cdRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{phang}适用于 Windows 的 Stata:{p_end}
{phang2}{cmd:. cd}{p_end}
{phang2}{cmd:. cd \data\city}{p_end}
{phang2}{cmd:. cd d:}{p_end}
{phang2}{cmd:. cd detail}{p_end}

{phang}适用于 Mac 和 Unix 的 Stata:{p_end}
{phang2}{cmd:. pwd}{p_end}
{phang2}{cmd:. cd ~/data/city}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cd.sthlp>}