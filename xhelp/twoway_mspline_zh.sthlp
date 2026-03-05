{smcl}
{* *! version 1.1.9  16apr2019}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway mspline" "mansection G-2 graphtwowaymspline"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] mkspline" "help mkspline_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway fpfit" "help twoway_fpfit_zh"}{...}
{vieweralsosee "[G-2] graph twoway lfit" "help twoway_lfit_zh"}{...}
{vieweralsosee "[G-2] graph twoway line" "help line_zh"}{...}
{vieweralsosee "[G-2] graph twoway mband" "help twoway_mband_zh"}{...}
{vieweralsosee "[G-2] graph twoway qfit" "help twoway_qfit_zh"}{...}
{viewerjumpto "Syntax" "twoway_mspline_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_mspline_zh##menu"}{...}
{viewerjumpto "Description" "twoway_mspline_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_mspline_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_mspline_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_mspline_zh##remarks"}
{help twoway_mspline:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[G-2] graph twoway mspline} {hline 2}}双变量中位数样条图{p_end}
{p2col:}({mansection G-2 graphtwowaymspline:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 56 2}
{cmdab:tw:oway}
{cmd:mspline}
{it:yvar}
{it:xvar}
{ifin}
[{cmd:,}
{it:选项}]

{synoptset 20}{...}
{p2col:{it:选项}}描述{p_end}
{p2line}
{p2col:{cmdab:b:ands:(}{it:#}{cmd:)}}中位数交叉结点的数量{p_end}
{p2col:{cmd:n(}{it:#}{cmd:)}}结点之间的点数{p_end}

INCLUDE help gr_clopt

INCLUDE help gr_axlnk

INCLUDE help gr_twopt
{p2line}
{p2colreset}{...}
{p 4 6 2}
所有选项均为 {it:最右}; 请参见 {help repeated options}.


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双变量图（散点，线等）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway} {cmd:mspline} 计算交叉中位数，然后使用这些交叉中位数作为结点拟合三次样条。生成的样条将作为线图绘制。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-2 graphtwowaymsplineQuickstart:快速入门}

        {mansection G-2 graphtwowaymsplineRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:bands(}{it:#}{cmd:)}
    指定用于计算交叉中位数的带的数量。默认值为 max{min(b1,b2),b3}，其中 b1 为 round{10*log10(N)}，b2 为 round{sqrt(N)}，b3 为 min(2,N)，N 为观察数。

{pmore}
    {it:x} 轴被划分为 {it:#} 个等宽区间，然后计算每个区间的 {it:y} 和 {it:x} 的中位数。正是这些交叉中位数被用于拟合三次样条。

{phang}
{cmd:n(}{it:#}{cmd:)}
    指定在结点之间计算的点数。默认值为 {cmd:n(10)}。 {cmd:n()} 不会影响计算结果，但会影响结果的平滑程度。

{phang}
{it:cline_options}
    指定中位数样条线的绘制方式及其外观；请参见 {manhelpi cline_options G-3}。

INCLUDE help gr_axlnkf

INCLUDE help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
备注根据以下标题呈现：

	{help twoway mspline##remarks1:典型用法}
	{help twoway mspline##remarks2:注意事项}
	{help twoway mspline##remarks3:与 by() 一起使用}


{marker remarks1}{...}
{title:典型用法}

{pstd}
中位数样条提供了一种方便的方式来展示 {it:y} 和 {it:x} 之间的关系：

	{cmd:. sysuse auto}

	{cmd:. scatter mpg weight, msize(*.5) || mspline mpg weight}
	  {it:({stata "gr_example auto: scatter mpg weight, msize(*.5) || mspline mpg weight":单击运行})}
{* graph gtmspline1}{...}

{pstd}
上述命令的重要部分是 {cmd:mspline} {cmd:mpg} {cmd:weight}。在 {cmd:scatter} 中，我们指定了 {cmd:msize(*.5)} 以将标记符号的大小减半；请参见 {manhelpi size G-4}。


{marker remarks2}{...}
{title:注意事项}

{pstd}
上述图形展示了该技术的一个常见问题：它跟踪可能不真实的波动，并且如果选择的带数过多，可能会引入波动。改进上述图形的版本是

{phang2}
	{cmd:. scatter mpg weight, msize(*.5) || mspline mpg weight, bands(8)}
{p_end}
	  {it:({stata "gr_example auto: scatter mpg weight, msize(*.5) || mspline mpg weight, bands(8)":单击运行})}
{* graph gtmspline2}{...}


{marker remarks3}{...}
{title:与 by() 一起使用}

{pstd}
{cmd:mspline} 可以与 {cmd:by()} 一起使用（与所有 {cmd:twoway} 绘图命令一样）：

	{cmd:. scatter mpg weight, msize(*.5) ||}
	  {cmd:mspline mpg weight, bands(8)   ||, by(foreign, total row(1))}
	  {it:({stata "gr_example auto: scatter mpg weight, msize(*.5) || mspline mpg weight, bands(8) ||, by(foreign, total row(1))":单击运行})}
{* graph gtmspline3}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_mspline.sthlp>}