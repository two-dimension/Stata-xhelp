{smcl}
{* *! version 1.1.6  19dec2012}{...}
{viewerdialog hsearch "dialog hsearch"}{...}
{vieweralsosee "之前记录的" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] net search" "help net_search_zh"}{...}
{vieweralsosee "[R] search" "help search_zh"}{...}
{viewerjumpto "语法" "hsearch_zh##syntax"}{...}
{viewerjumpto "描述" "hsearch_zh##description"}{...}
{viewerjumpto "选项" "hsearch_zh##option"}{...}
{viewerjumpto "备注" "hsearch_zh##remarks"}
{help hsearch:English Version}
{hline}{...}
{pstd}
{cmd:hsearch} 继续有效，但从 Stata 12 开始，不再是 Stata 的官方部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。

{title:标题}

{p2colset 5 20 22 2}{...}
{p2col:{hi:[R] hsearch} {hline 2}}搜索帮助文件{p_end}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{cmd:hsearch} 
{it:字词(们)}

{p 8 8 2}
{cmd:hsearch} 
{it:字词(们)}{cmd:,}
{cmd:build}

{p 8 8 2}
{cmd:hsearch,} 
{cmd:build}


{marker description}{...}
{title:描述}

{pstd}
{cmd:hsearch} {it:字词(们)} 在帮助文件中搜索 {it:字词(们)} 并在查看器中呈现可点击的列表。

{pstd}
{cmd:hsearch} {it:字词(们)}{cmd:, build} 也执行相同的操作，但首先会建立一个新的索引。

{pstd}
{cmd:hsearch,} {cmd:build} 重建索引，但不执行任何搜索。


{marker option}{...}
{title:选项}

{phang}
{opt build} 
    强制 {cmd:hsearch} 使用的索引被建立或重建。

{pmore}
    第一次使用 {cmd:hsearch} 时，索引会自动建立。如果最近通过使用 {cmd:update} 安装了 ado-file 更新，它也会自动重建；请参见 {manhelp update R}。 
    因此， {cmd:build} 选项很少指定。

{pmore}
    如果您最近通过使用 {cmd:net install}（参见 {manhelp net R}）或 {cmd:ssc}（参见 {manhelp ssc R}）安装了用户编写的 ado-files，或者您最近更新了任何自己的帮助文件，则应指定 {cmd:build}。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{help hsearch##remarks1:使用 hsearch}
	{help hsearch##remarks2:hsearch 的替代选项}
	{help hsearch##remarks3:建议}
	{help hsearch##remarks4:hsearch 的工作原理}


{marker remarks1}{...}
{title:使用 hsearch}

{pstd}
您可以使用 {cmd:hsearch} 查找您计算机上已安装的命令和功能。如果您想查找与 Mills' 比例相关的命令，可以输入

	. {cmd:hsearch Mills' ratio}

{pstd}
您也可以输入 

	. {cmd:hsearch Mill's ratio}

{pstd}
或者输入以下任意一种

	. {cmd:hsearch Mills ratio}

	. {cmd:hsearch mills ratio}

{pstd}
甚至可以 

	. {cmd:hsearch ratio mills}

{pstd}
因为词序、大小写和标点无关紧要。


{marker remarks2}{...}
{title:hsearch 的替代选项}

{pstd}
{cmd:hsearch} 的替代选项是 {cmd:search} 和 {cmd:findit}：

	. {cmd:search mills ratio}

	. {cmd:findit mills ratio}

{pstd}
{help search_zh} 与 {cmd:hsearch} 一样，搜索您计算机上已安装的命令。{cmd:search} 搜索关键词；{cmd:hsearch} 搜索帮助文件本身。因此，{cmd:hsearch} 通常找到的结果会比 {cmd:search} 更多且更全面。{cmd:search} 找到的结果则可能更相关。

{pstd}
{help findit_zh} 
同样搜索关键词，但 {cmd:findit} 还会搜索网络以及您的计算机，因此可能找到您希望安装的命令。


{marker remarks3}{...}
{title:建议}

{phang2}
o
一般而言， {cmd:hsearch} 比 {cmd:search} 更好。 {cmd:hsearch} 能找到更多内容并更好地组织其找到的列表。

{phang2}
o
当您知道 Stata 可以执行您想要的操作，但您记不起命令名称，或者您知道您安装了相关的用户编写包时，使用 {cmd:hsearch}。

{phang2}
o
当您不确定 Stata 是否能执行某个任务时，首先使用 {cmd:hsearch}，然后使用 {cmd:findit}。


{marker remarks4}{...}
{title:hsearch 的工作原理}

{pstd}
{cmd:hsearch} 搜索 {cmd:.sthlp} 文件。

{pstd}
如果 {cmd:hsearch} 每次都这样做，将需要很长时间来查找所有这些文件并查看它们。相反，{cmd:hsearch} 构建一个 {cmd:.sthlp} 文件的索引，然后对其进行搜索。

{pstd}
该文件称为 {cmd:sthlpindex.idx}，存储在您的 {help sysdir_zh:PERSONAL} 目录中。

{pstd}
{cmd:hsearch} 会定期自动重建索引，以准确反映您计算机上安装的内容。您可以随时通过输入

	. {cmd:hsearch, build} 强制 {cmd:hsearch} 重建索引。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <hsearch.sthlp>}