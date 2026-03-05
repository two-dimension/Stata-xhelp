{smcl}
{* *! version 1.2.2  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway kdensity" "mansection G-2 graphtwowaykdensity"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] kdensity" "help kdensity_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway histogram" "help twoway_histogram_zh"}{...}
{viewerjumpto "Syntax" "twoway_kdensity_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_kdensity_zh##menu"}{...}
{viewerjumpto "Description" "twoway_kdensity_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_kdensity_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_kdensity_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_kdensity_zh##remarks"}
{help twoway_kdensity:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[G-2] graph twoway kdensity} {hline 2}}核密度图{p_end}
{p2col:}({mansection G-2 graphtwowaykdensity:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 32 2}
{cmdab:tw:oway}
{cmd:kdensity}
	{varname}
	{ifin}
        [{it:{help twoway kdensity##weight:权重}}]
	[{cmd:,}
	{it:选项}]

{synoptset 25}{...}
{p2col:{it:选项}}描述{p_end}
{p2line}
{p2col:{cmdab:bw:idth:(}{it:#}{cmd:)}}平滑参数{p_end}
{synopt: {opth k:ernel(twoway_kdensity##kernel:核函数)}}指定核函数；默认值为{cmd:kernel(epanechnikov)}{p_end}

{p2col:{cmdab:ra:nge:(}{it:#} {it:#}{cmd:)}}图形范围，最小值和最大值{p_end}
{p2col:{opth ra:nge(varname)}}从{it:varname}中获取图形范围{p_end}
{p2col:{cmd:n(}{it:#}{cmd:)}}评估的点数{p_end}
{p2col:{cmd:area(}{it:#}{cmd:)}}重新缩放参数{p_end}
{p2col:{cmdab:hor:izontal}}横向绘图{p_end}
{p2col:{cmd:boundary}}在最大值和最小值之外估计密度一个{cmd:bwidth()}；与{cmd:range()}不允许一起使用{p_end}

INCLUDE help gr_clopt

INCLUDE help gr_axlnk

INCLUDE help gr_twopt
{p2line}

{marker kernel}{...}
{synopt :{it:kernel}}描述{p_end}
{p2line}
{synopt :{opt ep:anechnikov}}Epanechnikov 核函数；默认值{p_end}
{synopt :{opt epan2}}备用 Epanechnikov 核函数{p_end}
{synopt :{opt bi:weight}}双重权重核函数{p_end}
{synopt :{opt cos:ine}}余弦核函数{p_end}
{synopt :{opt gau:ssian}}高斯核函数{p_end}
{synopt :{opt par:zen}}Parzen 核函数{p_end}
{synopt :{opt rec:tangle}}矩形核函数{p_end}
{synopt :{opt tri:angle}}三角核函数{p_end}
{p2line}
{p2colreset}{...}

{marker weight}{...}
{phang}
{cmd:fweight}s 和 {cmd:aweight}s 是允许的；参见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 二维图 (散点图、线图等)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} {cmd:twoway} {cmd:kdensity} 为 {varname} 绘制核密度估计，使用 {helpb graph twoway line}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowaykdensity快速开始:快速开始}

        {mansection G-2 graphtwowaykdensity备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:bwidth(}{it:#}{cmd:)}
和
{cmd:kernel(}{it:kernel}{cmd:)}
    指定如何获取核密度估计，实际上与命令 {cmd:kdensity} 中指定的选项相同；参见 {manhelp kdensity R}。

{pmore}
    {cmd:bwidth(}{it:#}{cmd:)}
    指定平滑参数。

{pmore}
    {cmd:kernel(}{it:kernel}{cmd:)}
    指定要使用的核权重函数。默认值为 {cmd:kernel(epanechnikov)}。

{pmore}
    有关这些选项的更多信息，请参见 {manhelp kdensity R}。

{pmore}
    所有其他 {cmd:graph} {cmd:twoway} {cmd:kdensity} 选项修改结果的显示方式，而不是获取方式。

{phang}
{cmd:range(}{it:#} {it:#}{cmd:)}
和
{opth range(varname)}
    指定绘制核密度估计的值范围。默认值为 {bind:{cmd:range(}{it:m} {it:M}{cmd:)}，其中 {it:m} 和 {it:M} 是在 {cmd:graph} {cmd:twoway} {cmd:kdensity} 命令中指定的 {it:varname} 的最小值和最大值。

{pmore}
    {cmd:range(}{it:#} {it:#}{cmd:)}
    指定一对数字作为最小值和最大值。

{pmore}
    {cmd:range(}{it:varname}{cmd:)}
    指定另一个变量，其最小值和最大值将被使用。

{phang}
{cmd:n(}{it:#}{cmd:)}
    指定评估估计的点数。默认值为 {cmd:n(300)}。

{phang}
{cmd:area(}{it:#}{cmd:)}
    指定绘制之前密度估计调整的乘数。默认值为 {cmd:area(1)}。{cmd:area()} 在将密度估计叠加在不是密度的直方图上时很有用。例如，如果希望将密度估计按频率缩放，则 {cmd:area()} 应指定为非缺失观察的总数。

{phang}
{cmd:horizontal}
    指定结果为横向绘制（即沿着单位线反射）。

{phang}
{cmd:boundary}
    指定结果在 {varname} 的最大值和最小值之外的一个 {cmd:bwidth()} 处进行估计。
    {cmd:boundary} 不能与 {cmd:range()} 一起指定。

{phang}
{it:cline_options}
     指定密度线的渲染方式及其外观；参见 {manhelpi cline_options G-3}。

INCLUDE help gr_axlnkf

INCLUDE help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:graph} {cmd:twoway} {cmd:kdensity} {it:varname} 使用 {cmd:kdensity} 命令获取 {it:varname} 的密度估计，并使用 {cmd:graph} {cmd:twoway} {cmd:line} 绘制结果。

{pstd}
备注按以下标题呈现：

	{help twoway kdensity##remarks1:典型用法}
	{help twoway kdensity##remarks2:与 by() 一起使用}


{marker remarks1}{...}
{title:典型用法}

{pstd}
密度估计通常在直方图上绘制：

	{cmd:. sysuse lifeexp}

	{cmd:. twoway histogram lexp, color(*.5) || kdensity lexp}
	  {it:({stata "gr_example lifeexp: tw histogram lexp, color(*.5) || kdensity lexp":点击运行})}
{* graph gtkden1}{...}

{* 填充区域，调暗和调亮}{...}
{* 索引颜色，调暗和调亮}{...}
{* 索引 color() tt 选项}{...}
{* 索引颜色强度调整}{...}
{* 索引强度、颜色、调整}{...}
{pstd}
请注意使用 {cmd:graph} {cmd:twoway} {cmd:histogram} 的 {cmd:color(*.5)} 选项来调暗条形，使线条更突出；参见 {manhelpi colorstyle G-4}。

{pstd}
还请注意{it:y}和{it:x}轴的标题："密度/kdensity lexp" 和 "出生时的预期寿命/x"。"kdensity lexp" 和 "x" 是由 {cmd:twoway} {cmd:kdensity} 贡献的。当叠加图形时，您几乎总是需要使用 {it:axis_title_options} {cmd:ytitle()} 和 {cmd:xtitle()} 重新指定轴标题；参见 {manhelpi axis_title_options G-3}。


{marker remarks2}{...}
{title:与 by() 一起使用}

{pstd}
{cmd:graph} {cmd:twoway} {cmd:kdensity} 可以与 {cmd:by()} 一起使用：

	{cmd:. sysuse lifeexp, clear}

{phang2}
	{cmd:. twoway histogram lexp, color(*.5) || kdensity lexp ||, by(region)}
{p_end}
	  {it:({stata "gr_example lifeexp: tw histogram lexp, color(*.5) || kdensity lexp ||, by(region)":点击运行})}
{* graph gtkden2}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_kdensity.sthlp>}