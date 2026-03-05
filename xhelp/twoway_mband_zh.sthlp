{smcl}
{* *! version 1.0.15  16apr2019}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway mband" "mansection G-2 graphtwowaymband"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway fpfit" "help twoway_fpfit_zh"}{...}
{vieweralsosee "[G-2] graph twoway lfit" "help twoway_lfit_zh"}{...}
{vieweralsosee "[G-2] graph twoway line" "help line_zh"}{...}
{vieweralsosee "[G-2] graph twoway mspline" "help twoway_mspline_zh"}{...}
{vieweralsosee "[G-2] graph twoway qfit" "help twoway_qfit_zh"}{...}
{viewerjumpto "Syntax" "twoway_mband_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_mband_zh##menu"}{...}
{viewerjumpto "Description" "twoway_mband_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_mband_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_mband_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_mband_zh##remarks"}
{help twoway_mband:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[G-2] graph twoway mband} {hline 2}}双变量中位数带图{p_end}
{p2col:}({mansection G-2 graphtwowaymband:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 54 2}
{cmdab:tw:oway}
{cmd:mband}
{it:yvar}
{it:xvar}
{ifin}
[{cmd:,}
{it:选项}]

{synoptset 20}{...}
{synopt:{it:选项}}描述{p_end}
{p2line}
{synopt:{cmdab:b:ands:(}{it:#}{cmd:)}}带的数量{p_end}

INCLUDE help gr_clopt

INCLUDE help gr_axlnk

INCLUDE help gr_twopt
{p2line}
{p 4 6 2}
所有选项都是 {it:最右}; 请参见 {help repeated options}.


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双变量图 (散点图、线图等)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway} {cmd:mband} 计算交叉中位数，并将交叉中位数绘制为线图。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowaymbandQuickstart:快速入门}

        {mansection G-2 graphtwowaymbandRemarksandexamples:备注与示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:bands(}{it:#}{cmd:)}
    指定计算所基于的带的数量。
    默认值为max(10, round(10*log10(N)))，其中N为观察数。

{pmore}
    在中位数带图中，{it:x}轴被划分为{it:#}个等宽间隔，然后在每个间隔中计算{it:y}和{it:x}的中位数。
    正是这些交叉中位数被{cmd:mband}作为线图绘制。

{phang}
{it:cline_options}
     指定中位数带线条的渲染方式及其外观；
     请参见 {manhelpi cline_options G-3}。

INCLUDE help gr_axlnkf

INCLUDE help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下几个标题：

	{help twoway mband##remarks1:典型用法}
	{help twoway mband##remarks2:与by()一起使用}


{marker remarks1}{...}
{title:典型用法}

{pstd}
中位数带提供了一种方便但粗略的方式来显示{it:y}与{it:x}之间关系的趋势：

	{cmd:. sysuse auto}

	{cmd:. scatter mpg weight, msize(*.5) || mband mpg weight}
	  {it:({stata "gr_example auto: scatter mpg weight, msize(*.5) || mband mpg weight":点击运行})}
{* graph gtmband1}{...}

{pstd}
上述重要的一部分是"{cmd:mband} {cmd:mpg} {cmd:weight}"。
在{cmd:scatter}中，我们指定了{cmd:msize(*.5)}以将标记符号的大小减半；请参见 {manhelpi size G-4}。


{marker remarks2}{...}
{title:与by()一起使用}

{pstd}
{cmd:mband} 可以与 {cmd:by()} 一起使用（所有{cmd:twoway} 绘图命令也可以）：

	{cmd:. scatter mpg weight, ms(oh) ||}
	{cmd:  mband mpg weight ||, by(foreign, total row(1))}
	  {it:({stata "gr_example auto: scatter mpg weight, ms(oh) || mband mpg weight ||, by(foreign, total row(1))":点击运行})}
{* graph gtmband2}{...}

{pstd}
在上述图中，我们指定了{cmd:ms(oh)}以使用空心符号；请参见 {manhelpi symbolstyle G-4}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_mband.sthlp>}