{smcl}
{* *! version 1.0.0  19jun2019}{...}
{vieweralsosee "[D] frame prefix" "mansection D frameprefix"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] frames intro" "help frames intro"}{...}
{vieweralsosee "[D] frames" "help frames_zh"}{...}
{viewerjumpto "Syntax" "frame_prefix_zh##syntax"}{...}
{viewerjumpto "Description" "frame_prefix_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "frame_prefix_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "frame_prefix_zh##remarks"}
{help frame_prefix:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[D] frame prefix} {hline 2}}框架前缀命令{p_end}
{p2col:}({mansection D frameprefix:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:frame} {it:framename}{cmd::} {it:stata_command}


{p 8 16 2}
{cmd:frame} {it:framename} {cmd:{c -(}}
{p_end}
{p 16 24 2}
{it:在framename的上下文中执行的命令}
{p_end}
{p 8 16 2}
{cmd:{c )-}}
{p_end}


{marker description}{...}
{title:描述}

{pstd}
{cmd:frame} 前缀允许您在另一个框架中执行一个或多个Stata命令，同时保持当前框架不变。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D frameprefixQuickstart:快速入门}

        {mansection D frameprefixRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{help frame_prefix##interactive:交互使用示例}
	{help frame_prefix##program:程序中使用示例}


{marker interactive}{...}
{title:交互使用示例}

{pstd}
您在两个框架中都有数据。在当前框架中，您有包含公司在四个地区销售详细信息的数据。您的同事刚刚给您发送了一封电子邮件，附上了名为 {cmd:sales.dta} 的摘要数据集，该数据集应该包含每个地区的总销售额。您希望确保摘要数据集是基于与详细数据集相同的基础销售信息创建的。

{pstd}
在您当前的数据集中，从 {cmd:summarize} 中您知道南部地区的总销售额为 $532,399，而商品销售的总成本为 $330,499。您检查刚收到的数据集是否与这些总数匹配：

{phang2}{cmd:. frame create summary}{p_end}
{phang2}{cmd:. frame summary: use sales}{p_end}
{phang2}{cmd:. frame summary: list if region=="South"}{p_end}

{pstd}
{cmd:frame} 前缀命令允许您在 {cmd:summary} 框架中加载数据集，并在该数据上运行命令，而不会影响您当前框架中的任何内容。


{marker program}{...}
{title:程序中使用示例}

{pstd}
{cmd:frame} 前缀可以用于一行命令，如上述示例，或者它可以用于在另一个框架中执行一整套命令。在这两种情况下，无论这些命令执行时发生什么，无论它们是成功完成还是因错误退出，当前框架将回到您在调用 {cmd:frame} 前缀命令之前的状态。在程序中，这意味着您不必记住当前框架名称，并在另一个框架中工作后切换回它。

{pstd}
您正在编写一个程序，该程序需要从当前数据集中提取一个子集，对该子集进行一些操作，然后绘制结果。所需的操作会损坏原始数据集。有一种方法是

{pstd}
1. 创建一个临时框架：

{phang2}{cmd:tempname tmpframe}{p_end}

{pstd}
2. 将一个数据子集放入其中：

{phang2}{cmd:frame put if} ... {cmd:, into(`tmpframe')}{p_end}

{pstd}
3. 执行所需的操作并绘制结果：

{phang2}{cmd:frame `tmpframe' {c -(}}{p_end}
{phang3}{it:一些操作数据的命令}{p_end}
{phang3}{cmd:graph twoway} ...{p_end}
{phang2}{c )-}{p_end}

{pstd}
在这段代码的最后，接下来的任何命令都将作用于原始框架，而不是 {cmd:`tmpframe'}。您可以添加一行以删除 {cmd:`tmpframe'}，但没有必要。由于它具有临时名称，框架及其中的数据将在您的程序或do文件完成时自动删除。

{pstd}
上述的另一种工作流程是首先 {cmd:preserve} 您的数据，然后就地进行操作并获取图形。然后您可以 {cmd:restore} 原始数据。您应当使用 {cmd:frame} 前缀方法，还是使用 {cmd:preserve} 和 {cmd:restore} 方法，则取决于您。 {cmd:frame} 方法通常更快，但如果您在内存中的数据集非常大，您可能不想在内存中（即使是暂时）再创建一份完整的副本，因此在这种情况下，第二种方法可能更好。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <frame_prefix.sthlp>}