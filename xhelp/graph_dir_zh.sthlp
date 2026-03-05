{smcl}
{* *! version 1.1.7  19oct2017}{...}
{vieweralsosee "[G-2] graph dir" "mansection G-2 graphdir"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph manipulation" "help graph_manipulation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph describe" "help graph_describe_zh"}{...}
{viewerjumpto "Syntax" "graph_dir_zh##syntax"}{...}
{viewerjumpto "Description" "graph_dir_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "graph_dir_zh##linkspdf"}{...}
{viewerjumpto "Options" "graph_dir_zh##options"}{...}
{viewerjumpto "Remarks" "graph_dir_zh##remarks"}{...}
{viewerjumpto "Stored results" "graph_dir_zh##results"}
{help graph_dir:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[G-2] graph dir} {hline 2}}列出内存和磁盘中图形的名称{p_end}
{p2col:}({mansection G-2 graphdir:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 23 2}
{cmdab:gr:aph}
{cmd:dir}
[{it:pattern}]
[{cmd:,}
{it:options}]

{pstd}
其中 {it:pattern} 由 Stata 的 {cmd:strmatch()} 函数允许：
{cmd:*} 表示这里可以有 0 个或多个字符，而 {cmd:?}{space 1} 表示这里必须有一个字符；见 {helpb strmatch()}。

{synoptset 20}{...}
{synopthdr}
{synoptline}
{p2col:{cmdab:m:emory}}
	仅列出存储在内存中的图形{p_end}
{p2col:{cmdab:g:ph}}
	仅列出存储在磁盘上的图形{p_end}
{p2col:{cmdab:d:etail}}
	生成详细列表{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} {cmd:dir} 列出当前目录中存储在内存和磁盘上的图形名称。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection G-2 graphdirQuickstart:快速开始}

        {mansection G-2 graphdirRemarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:memory} 和 {cmd:gph}
	限制列出的内容； {cmd:memory} 仅列出存储在内存中的图形名称，而 {cmd:gph} 仅列出存储在磁盘上的图形名称。

{phang}
{cmd:detail}
	指定除了名称外，还列出创建图形的命令。


{marker remarks}{...}
{title:备注}

{pstd}
请参见 {manhelp graph_manipulation G-2:图形操作} 以获取图形操作命令的介绍。

{pstd}
不带选项的 {cmd:graph} {cmd:dir} 以列格式列出当前目录中存储在内存和磁盘上的图形名称。

	{cmd}. graph dir
{res}{col 13}图形{col 24}figure1.gph{col 41}large.gph{col 55}s7.gph
{col 13}dot.gph{col 24}figure2.gph{col 41}old.gph{col 55}yx_lines.gph{txt}

{pstd}
内存中的图形首先列出，然后是存储在磁盘上的图形。在上面的例子中，我们在内存中只有一个图形：{cmd:Graph}。

{pstd}
您可以指定一个模式来限制列出的文件：

	{cmd}. graph dir fig*
{res}{col 13}figure1.gph{col 26}figure2.gph{txt}

{pstd}
{cmd:detail} 选项列出图形的名称及绘制它们的命令：

	{cmd}. graph dir fig*, detail

	{txt}  名称{col 24}命令
	  {hline 60}
	{res}  figure1.gph{...}
{col 24}{...}
{txt}matrix  h-tempjul, msy(p) name(myview)
	{res}  figure2.gph{...}
{col 24}{...}
{txt}twoway scatter mpg weight, saving(figure2)
	  {hline 60}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:graph} {cmd:dir} 在宏 {cmd:r(list)} 中返回图形的名称。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_dir.sthlp>}