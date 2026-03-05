{smcl}
{* *! version 1.2.3  19oct2017}{...}
{viewerdialog "graph drop" "dialog graph_drop"}{...}
{vieweralsosee "[G-2] graph drop" "mansection G-2 graphdrop"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph manipulation" "help graph_manipulation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph close" "help graph_close_zh"}{...}
{vieweralsosee "[P] discard" "help discard_zh"}{...}
{vieweralsosee "[D] erase" "help erase_zh"}{...}
{viewerjumpto "Syntax" "graph_drop_zh##syntax"}{...}
{viewerjumpto "Menu" "graph_drop_zh##menu"}{...}
{viewerjumpto "Description" "graph_drop_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "graph_drop_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "graph_drop_zh##remarks"}
{help graph_drop:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[G-2] graph drop} {hline 2}}从内存中删除图形{p_end}
{p2col:}({mansection G-2 graphdrop:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
从内存中删除命名的图形 

{p 8 23 2}
{cmdab:gr:aph}
{cmd:drop}
{it:name}
[{it:name} ...]


{pstd}
从内存中删除所有图形

{p 8 23 2}
{cmdab:gr:aph}
{cmd:drop}
{cmd:_all}


{phang}
{it:name} 是当前保存在内存中的图形的名称，或者是带有 {cmd:?} 和 {cmd:*} 通配符字符的图形名称的一部分。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 管理图形 > 删除图形}


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph drop} {it:name} 删除（丢弃）指定的图形并关闭与其相关联的图形窗口。

{pstd}
{cmd:graph} {cmd:drop} {cmd:_all} 删除所有图形并关闭所有相关的图形窗口。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection G-2 graphdropQuickstart:快速入门}

        {mansection G-2 graphdropRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
请参阅 {manhelp graph_manipulation G-2:图形操作} 以获取图形操作命令的介绍。

{pstd}
备注以以下标题呈现：

	{help graph drop##remarks1:典型用法}
	{help graph drop##remarks2:graph drop _all 和 discard 之间的关系}
	{help graph drop##remarks3:删除磁盘上的图形}


{marker remarks1}{...}
{title:典型用法}

{pstd}
图形包含其显示的数据，因此当数据集较大时，图形可能会占用大量内存。 {cmd:graph} {cmd:drop} 释放该内存。 {cmd:Graph} 是在未指定其他内容时图形的名称。

{phang2}
	{cmd:. graph twoway scatter faminc educ, ms(p)}

	{cmd:.} ...

	{cmd:. graph drop Graph}

{pstd}
我们经常在内存中使用图形来准备 {cmd:graph}
{cmd:combine} 的组件：

	{cmd:. graph} ... {cmd:,} ... {cmd:name(p1)}

	{cmd:. graph} ... {cmd:,} ... {cmd:name(p2)}

	{cmd:. graph} ... {cmd:,} ... {cmd:name(p3)}

{phang2}
	{cmd:. graph combine p1 p2 p3,} ... {cmd:saving(result, replace)}

	{cmd:. graph drop _all}


{marker remarks2}{...}
{title:graph drop _all 和 discard 之间的关系}

{pstd}
{cmd:discard} 命令执行 {cmd:graph} {cmd:drop} {cmd:_all} 以及更多操作：

{phang2}
    1.  {cmd:discard} 消除先前的估计结果和自动加载的程序，从而释放更多内存。

{phang2}
    2.  {cmd:discard} 关闭任何打开的对话框，从而释放更多内存。

{pstd}
我们几乎总是选择输入 {cmd:discard} 而不是 {cmd:graph}
{cmd:drop} {cmd:_all}，仅仅因为 {cmd:discard} 的字符数更少。唯一的例外是当我们已经拟合了模型并仍打算重新显示先前的结果、在该模型上执行测试或引用 {cmd:_b[]}, {cmd:_se[]} 等时。

{pstd}
请参阅 {manhelp discard P} 以获取 {cmd:discard} 命令的描述。


{marker remarks3}{...}
{title:删除磁盘上的图形}

{pstd}
{cmd:graph} {cmd:drop} 不用于删除 {cmd:.gph} 文件；而是使用 Stata 的标准 {cmd:erase} 命令：

	{cmd:. erase matfile.gph}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_drop.sthlp>}