{smcl}
{* *! version 1.1.10  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway lowess" "mansection G-2 graphtwowaylowess"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] lowess" "help lowess_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway mspline" "help twoway_mspline_zh"}{...}
{viewerjumpto "语法" "twoway_lowess_zh##syntax"}{...}
{viewerjumpto "菜单" "twoway_lowess_zh##menu"}{...}
{viewerjumpto "描述" "twoway_lowess_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "twoway_lowess_zh##linkspdf"}{...}
{viewerjumpto "选项" "twoway_lowess_zh##options"}{...}
{viewerjumpto "备注" "twoway_lowess_zh##remarks"}{...}
{viewerjumpto "参考文献" "twoway_lowess_zh##reference"}
{help twoway_lowess:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[G-2] graph twoway lowess} {hline 2}}局部线性平滑图{p_end}
{p2col:}({mansection G-2 graphtwowaylowess:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 32 2}
{cmdab:tw:oway}
{cmd:lowess}
	{it:yvar}
	{it:xvar}
	{ifin}
	[{cmd:,}
	{it:options}]

{synoptset 22}{...}
{p2col:{it:options}}描述{p_end}
{p2line}
{p2col:{cmdab:bw:idth:(}{it:#}{cmd:)}}平滑参数{p_end}
{p2col:{cmdab:m:ean}}使用移动平均平滑{p_end}
{p2col:{cmdab:now:eight}}使用无权平滑{p_end}
{p2col:{cmdab:lo:git}}将平滑变换为逻辑{p_end}
{p2col:{cmdab:a:djust}}调整平滑的均值以等于 {it:yvar} 的均值{p_end}

INCLUDE help gr_clopt

INCLUDE help gr_axlnk

INCLUDE help gr_twopt
{p2line}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 二维图（散点图、折线图等）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} {cmd:twoway} {cmd:lowess} 在 {it:xvar} 上绘制 {it:yvar} 的 lowess 平滑曲线，使用 {helpb graph twoway line}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-2 graphtwowaylowessQuickstart:快速入门}

        {mansection G-2 graphtwowaylowessRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:bwidth}{cmd:(}{it:#}{cmd:)}
    指定带宽。 {cmd:bwidth(.8)} 是默认值。
    中心子集由 {it:N}*{cmd:bwidth()} 个观测值（{it:N} = 观测值数量）用于计算数据中每个点的平滑值，端点使用较小的未中心子集。 {cmd:bwidth()} 值越大，平滑效果越强。

{phang}
{cmd:mean}
    指定使用移动平均平滑；默认是使用移动线性最小二乘平滑。

{phang}
{cmd:noweight}
    防止使用 Cleveland 的 ({help twoway lowess##C1979:1979}) 三立方加权函数；默认是使用加权函数。

{phang}
{cmd:logit}
    将平滑后的 {it:yvar} 转换为逻辑值。

{phang}
{cmd:adjust}
    通过乘法调整平滑后的 {it:yvar} 的均值，使其等于 {it:yvar} 的均值。这在平滑二元（0/1）数据时很有用。

{phang}
{it:cline_options}
     指定 lowess 曲线的绘制及外观；请参见 {manhelpi cline_options G-3}。

INCLUDE help gr_axlnkf

INCLUDE help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:graph} {cmd:twoway} {cmd:lowess} {it:yvar xvar} 使用 {cmd:lowess} 命令（参见 {manhelp lowess R}）获得 {it:yvar} 在 {it:xvar} 上的局部线性平滑，并使用 {cmd:graph} {cmd:twoway} {cmd:line} 绘制结果。

{pstd}
备注根据以下标题呈现：

	{help twoway lowess##remarks1:典型用法}
	{help twoway lowess##remarks2:与 by() 一起使用}


{marker remarks1}{...}
{title:典型用法}

{pstd}
局部线性平滑通常与数据图重叠绘制，可能还包括其他回归线：

	{cmd:. sysuse auto}

	{cmd:. twoway scatter mpg weight, mcolor(*.6) ||}
	{cmd:         lfit    mpg weight    ||}
	{cmd:         lowess  mpg weight}
	  {it:({stata "gr_example auto: twoway scatter mpg weight, mcolor(*.6) || lfit mpg weight || lowess mpg weight":click to run})}
{* graph gtlowess1}{...}

{pstd}
注意我们使用 {cmd:mcolor(*.6)} 来使点变暗，从而使线条更突出；详见 {manhelpi colorstyle G-4}。


{marker remarks2}{...}
{title:与 by() 一起使用}

{pstd}
{cmd:graph} {cmd:twoway} {cmd:lowess} 可与 {cmd:by()} 一起使用：

	{cmd:. sysuse auto, clear}

	{cmd:. twoway scatter mpg weight, mcolor(*.6) ||}
	{cmd:         lfit    mpg weight ||}
	{cmd:         lowess  mpg weight ||, by(foreign)}
	  {it:({stata "gr_example auto: tw scatter mpg weight, mcolor(*.6) || lfit mpg weight || lowess mpg weight ||, by(foreign)":click to run})}
{* graph gtlowess2}{...}


{marker reference}{...}
{title:参考文献}

{marker C1979}{...}
{phang}
Cleveland, W. S. 1979. 鲁棒局部加权回归与平滑散点图。 {it:美国统计协会杂志} 74: 829-836.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_lowess.sthlp>}