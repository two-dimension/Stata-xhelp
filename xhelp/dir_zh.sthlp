{smcl}
{* *! version 1.1.7  19oct2017}{...}
{vieweralsosee "[D] dir" "mansection D dir"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] cd" "help cd_zh"}{...}
{vieweralsosee "[D] copy" "help copy_zh"}{...}
{vieweralsosee "[D] erase" "help erase_zh"}{...}
{vieweralsosee "[D] mkdir" "help mkdir_zh"}{...}
{vieweralsosee "[D] rmdir" "help rmdir_zh"}{...}
{vieweralsosee "[D] shell" "help shell_zh"}{...}
{vieweralsosee "[D] type" "help type_zh"}{...}
{viewerjumpto "Syntax" "dir_zh##syntax"}{...}
{viewerjumpto "Description" "dir_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "dir_zh##linkspdf"}{...}
{viewerjumpto "Option" "dir_zh##option"}{...}
{viewerjumpto "Examples" "dir_zh##examples"}
{help dir:English Version}
{hline}{...}
{p2colset 1 12 14 2}{...}
{p2col:{bf:[D] dir} {hline 2}}显示文件名{p_end}
{p2col:}({mansection D dir:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 13 2}
{{cmd:dir}{c |}{cmd:ls}} [{cmd:"}][{it:filespec}][{cmd:"}]
[{cmd:,} {opt w:ide}]

{phang}
{it:filespec} 是任何有效的Mac、Unix或Windows文件路径或文件
规格（参见 {findalias frfilenames}），并且可以包含 "{cmd:*}" 来
表示任何字符串。

{phang}
注意：如果名称包含空格，则必须使用双引号来包围 {it:filespec}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:dir} 和 {cmd:ls} -- 它们以相同的方式工作 -- 列出指定目录中
的文件名；这些命令的名称来自Unix和Windows计算机上流行的名称。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D dirQuickstart:快速入门}

        {mansection D dirRemarksandexamples:备注和示例}

{pstd}
上述章节不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt wide} 在Mac和Windows下产生类似于在DOS {cmd:dir}命令中
指定 {cmd:/W} 的效果 -- 它通过将多个文件名放在一行
来压缩结果列表。在Unix下，它产生与输入 {cmd:ls -F -C} 相同的效果。
如果没有 {opt wide} 选项，{cmd:ls} 等价于 {cmd:ls -F -l}。


{marker examples}{...}
{title:示例}

    Windows:
	{cmd:. dir}
	{cmd:. dir, w}
	{cmd:. dir *.dta}
	{cmd:. dir \mydata\*.dta}

    Mac和Unix:
	{cmd:. ls}
	{cmd:. ls, w}
	{cmd:. ls *.dta}
	{cmd:. ls ~/mydata/*.dta}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dir.sthlp>}