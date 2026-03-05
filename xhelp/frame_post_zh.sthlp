{smcl}
{* *! version 1.0.0  14jun2019}{...}
{vieweralsosee "[P] frame post" "mansection P framepost"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] frames intro" "help frames intro"}{...}
{vieweralsosee "[D] frames" "help frames_zh"}{...}
{vieweralsosee "[D] frame create" "help frame_create_zh"}{...}
{vieweralsosee "[P] postfile" "help postfile"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] simulate" "help simulate_zh"}{viewerjumpto "Syntax" "frame_post##syntax"}{...}
{viewerjumpto "Description" "frame_post_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "frame_post_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "frame_post_zh##remarks"}
{help frame_post:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[P] frame post} {hline 2}}将结果发布到另一个框架中的数据集{p_end}
{p2col:}({mansection P framepost:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
创建一个带有指定变量的新框架以用于 {cmd:frame} {cmd:post}

{p 8 16 2}
{cmd:frame} {cmd:create} {it:newframename} {it:{help newvarlist_zh}}


{pstd}
向声明的框架添加新观察值

{p 8 16 2}
{cmd:frame} {cmd:post} {it:framename} {cmd:(}{it:{help exp_zh}}{cmd:)}
{cmd:(}{it:exp}{cmd:)} {it:...} {cmd:(}{it:exp}{cmd:)}


{marker description}{...}
{title:描述}

{pstd}
这些命令是帮助Stata程序员执行蒙特卡洛类型实验的实用工具。它们类似于Stata的 {cmd:postfile} 功能（见 {manhelp postfile P}），但在内存中的框架数据集上操作，而不是在磁盘上操作。

{pstd}
{cmd:frame} {cmd:create} 声明一个新Stata框架的变量名称和框架名称，用于存储结果。

{pstd}
{cmd:frame} {cmd:post} 向声明的框架中的数据集添加新的观察值。

{pstd}
在您向声明的框架发布所有希望的观察值后，您应该 {cmd:save} 数据到磁盘；见 {manhelp save D}。

{pstd}
这些命令在新框架中处理数据，而不会干扰当前框架内存中的数据。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection P framepostRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:frame} {cmd:post} 命令的典型用法是

	{cmd:tempname memhold}
	{it:...}
	{cmd:frame create `memhold'} {it:...}
	{it:...}
	{cmd:while} {it:...} {cmd:{c -(}}
		{it:...}
		{cmd:frame post `memhold'} {it:...}
		{it:...}
	{cmd:{c )-}}
	{cmd:save} {it:...}
	{it:...}

{pstd}
在我们的示例中，我们从Stata的临时名称功能获取新框架名称（见 {help macro_zh:[P] macro}）。
我们建议 {it:newframename} 通常从 {cmd:tempname} 中获取。这确保了您的程序可以嵌入到任何其他程序中，并确保在发生错误时释放 {cmd:frame} {cmd:post} 使用的内存。当然，您可以根据某些编程情况替换为硬编码的 {it:newframename}。

{pstd}
因为 {cmd:frame} {cmd:create} 接受 {it:{help newvarlist_zh}}，存储类型可以交错，所以您可以有

{phang2}
        {cmd:frame create `memhold' a b str20 c double(d e f)}

{pstd}
请注意，{cmd:frame} {cmd:create} 允许 {cmd:strL} 作为变量存储类型，这不同于 {helpb postfile}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <frame_post.sthlp>}