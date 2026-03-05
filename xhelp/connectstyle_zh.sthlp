{smcl}
{* *! version 1.1.6  19oct2017}{...}
{vieweralsosee "[G-4] connectstyle" "mansection G-4 connectstyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] connect_options" "help connect_options_zh"}{...}
{viewerjumpto "Syntax" "connectstyle_zh##syntax"}{...}
{viewerjumpto "Description" "connectstyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "connectstyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "connectstyle_zh##remarks"}
{help connectstyle:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[G-4]} {it:connectstyle} {hline 2}}点之间连接方式的选择{p_end}
{p2col:}({mansection G-4 connectstyle:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{it:connectstyle}     同义词     描述
	{hline 65}
	{cmd:none}                {cmd:i}        不连接
	{cmd:direct}              {cmd:l}        用直线连接
	{cmd:ascending}           {cmd:L}        {cmd:direct}，但仅当 x[j+1] > x[j]
	{cmd:stairstep}           {cmd:J}        平坦，然后垂直
	{cmd:stepstair}                    垂直，然后平坦
	{hline 65}

{pin}
其他 {it:connectstyles} 可能可用；输入

		{cmd:.} {bf:{stata graph query connectstyle}}

{pin}
以获取您计算机上安装的完整列表。


{marker description}{...}
{title:描述}

{pstd}
{it:connectstyle} 指定是否以及如何在散点图中连接点，例如，通过直线或阶梯连接。

{pstd}
{it:connectstyle} 在 {cmd:connect()} 选项中指定，该选项允许与 {cmd:scatter} 一起使用，例如：

	{cmd:. scatter} ...{cmd:, connect(}{it:connectstylelist}{cmd:)} ...

{pstd}
在这里允许使用 {it:connectstylelist}。
{it:connectstylelist} 是由空格分隔的一系列 {it:connectstyles}。允许使用简写以简化列表的指定；请参阅 {manhelpi stylelists G-4}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-4 connectstyleRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
点按数据顺序连接，因此在指定 {cmd:connect(}{it:connectstyle}{cmd:)} 选项之前，请确保数据按所需顺序（通常是 {it:x} 的升序值）排列。
提供 {cmd:connect()} 的命令还提供 {cmd:sort} 选项，该选项会根据 {it:x} 变量为您排序。

{pstd}
{cmd:connect(l)} 是最常见的选择。

{pstd}
{cmd:connect(J)} 是连接经验累积分布函数 (CDF) 点的适当方式。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <connectstyle.sthlp>}