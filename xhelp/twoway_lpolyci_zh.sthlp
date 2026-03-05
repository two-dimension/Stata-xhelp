{smcl}
{* *! version 1.1.10  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway lpolyci" "mansection G-2 graphtwowaylpolyci"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] lpoly" "help lpoly_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway lpoly" "help twoway_lpoly_zh"}{...}
{viewerjumpto "Syntax" "twoway_lpolyci_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_lpolyci_zh##menu"}{...}
{viewerjumpto "Description" "twoway_lpolyci_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_lpolyci_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_lpolyci_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_lpolyci_zh##remarks"}
{help twoway_lpolyci:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[G-2] graph twoway lpolyci} {hline 2}}局部多项式平滑图与置信区间{p_end}
{p2col:}({mansection G-2 graphtwowaylpolyci:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmdab: tw:oway}{cmd: lpolyci} 
	{it:yvar} 
	{it:xvar} {ifin}
        [{it:{help twoway lpolyci##weight:weight}}]
	[{cmd:,} 
 	{it:options}]

{synoptset 20}{...}
{synopt: {it:options}}描述{p_end}
{p2line}
{synopt: {opth k:ernel(twoway_lpolyci##kernel:kernel)}}核函数; 默认是 {cmd:kernel(epanechnikov)}{p_end}
{synopt :{opt bw:idth(#)}}核带宽{p_end}
{synopt :{opt deg:ree(#)}}多项式平滑的度数; 默认是 {cmd:degree(0)}{p_end}
{synopt :{opt n(#)}}在 {it:#} 个点上获取平滑值; 默认是 {bind:min(N, 50)}{p_end}

{synopt :{opt l:evel(#)}}设置信心水平; 默认是 {cmd:level(95)}{p_end}
{synopt :{opt pw:idth(#)}}用于标准误计算的初步带宽{p_end}
{synopt :{opt v:ar(#)}}常数条件方差的估计{p_end}

{synopt :{opt nofit}}不绘制平滑曲线{p_end}
{synopt :{opth fitp:lot(graph_twoway:plottype)}}绘制平滑曲线的方式; 默认是 {cmd:fitplot(line)}{p_end}
{synopt :{opth cip:lot(graph_twoway:plottype)}}绘制置信区间的方式; 默认是 {cmd:ciplot(rarea)}{p_end}

{synopt :{it:{help fcline_options_zh}}}更改平滑线的外观{p_end}
{synopt :{it:{help fitarea_options_zh}}}更改置信区间的外观{p_end}


INCLUDE help gr_axlnk

INCLUDE help gr_twopt
{p2line}

{synoptset 20}{...}
{synopt :{it:kernel}}描述{p_end}
{p2line}
{marker kernel}{...}
{synopt :{opt epa:nechnikov}}Epanechnikov 核函数; 默认值{p_end}
{synopt :{opt epan2}}替代的 Epanechnikov 核函数{p_end}
{synopt :{opt bi:weight}}双权重核函数{p_end}
{synopt :{opt cos:ine}}余弦迹核函数{p_end}
{synopt :{opt gau:ssian}}高斯核函数{p_end}
{synopt :{opt par:zen}}Parzen 核函数{p_end}
{synopt :{opt rec:tangle}}矩形核函数{p_end}
{synopt :{opt tri:angle}}三角核函数{p_end}
{p2line}
{p2colreset}{...}

{marker weight}{...}
{p 4 6 2}
{cmd:fweight}s 和 {cmd:aweight}s 是允许的; 参见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双变量图（散点图、线图等）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} {cmd:twoway} {cmd:lpolyci} 绘制 {it:yvar} 关于 {it:xvar} 的局部多项式平滑图，并使用 {helpb graph twoway line} 绘制，同时使用 {helpb graph twoway rarea} 绘制置信区间。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection G-2 graphtwowaylpolyci快速入门:快速入门}

        {mansection G-2 graphtwowaylpolyci说明和示例:说明和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opth "kernel(twoway_lpolyci##kernel:kernel)"} 指定用于计算加权局部多项式估计的核函数。默认值是 {cmd:kernel(epanechnikov)}。有关此选项的更多信息，请参见 {manhelp kdensity R}。

{phang}
{opt bwidth(#)} 指定核的半宽度，即每个点周围平滑窗口的宽度。如果 {opt bwidth()} 未指定，则会计算并使用一种经验带宽估计; 参见 {manlink R lpoly}。

{phang}
{opt degree(#)} 指定平滑时使用的多项式的度数。默认值是 {cmd:degree(0)}，表示局部均值平滑。

{phang}
{opt n(#)} 指定要评估平滑的位置的点数。默认值是 min(N,50)，其中 N 是观测值的数量。

{phang}
{opt level(#)} 指定置信区间的置信水平，作为百分比。默认值是 {cmd:level(95)} 或由 {helpb set level} 设置。

{phang}
{opt pwidth(#)} 指定用于标准误计算的初步带宽。默认值选为经验带宽选择器的 1.5 倍。

{phang}
{opt var(#)} 指定标准误计算所需的常数条件方差的估计。默认情况下，在每个平滑点上，条件方差通过局部拟合一个 p+2 次的多项式估计，其中 p 是在 {opt degree()} 中指定的度数。

{phang}
{opt nofit} 防止绘制平滑曲线。

{phang}
{opt fitplot(plottype)} 指定预测的绘制方式。默认值是 {cmd:fitplot(line)}，这意味着平滑将通过 {opt graph} {opt twoway} {opt line} 绘制。有关 {it:plottype} 选项列表，请参见 {manhelp twoway G-2:graph twoway}。您可以选择任何一个期望一个 {it:y} 和一个 {it:x} 变量的选项。{cmd:fitplot()} 很少使用。

{phang}
{opt ciplot(plottype)} 指定置信区间的绘制方式。默认值是 {cmd:ciplot(rarea)}，这意味着置信区间的边界将通过 {opt graph} {opt twoway} {opt rarea} 绘制。

{pmore}
一个合理的替代选项是 {cmd:ciplot(rline)}，它将用直线替代平滑区域的阴影。有关 {it:plottype} 选项列表，请参见 {manhelp twoway G-2:graph twoway}。您可以选择任何一个期望两个 {it:y} 变量和一个 {it:x} 变量的选项。

{phang}
{it:fcline_options} 指定 {cmd:lpoly} 线的渲染方式及其外观; 参见 {manhelpi fcline_options G-3}。

{phang}
{it:fitarea_options} 指定置信区间的渲染方式; 参见 {manhelpi fitarea_options G-3}。如果您指定了 {opt ciplot()}，则应指定合适的选项，而不是使用 {it:fitarea_options}。

INCLUDE help gr_axlnkf

INCLUDE help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:graph} {cmd:twoway} {cmd:lpolyci} {it:yvar xvar} 使用 {cmd:lpoly} 命令 -- 参见 {manhelp lpoly R} -- 获取 {it:yvar} 关于 {it:xvar} 的局部多项式平滑图和置信区间，并使用 {cmd:graph} {cmd:twoway} {cmd:line} 和 {cmd:graph} {cmd:twoway} {cmd:rarea} 绘制结果。

{pstd}
备注分为以下几个部分：

        {help twoway lpolyci##remarks1:典型用法}
        {help twoway lpolyci##remarks2:与 by() 一起使用}


{marker remarks1}{...}
{title:典型用法}

{pstd}
{cmd: graph} {cmd: twoway} {cmd: lpolyci} 可用于覆盖来自不同局部多项式平滑的置信带。例如，对于局部均值和局部三次多项式平滑：

        {cmd:. sysuse auto}

        {cmd:. twoway lpolyci weight length, nofit                    ||}
        {cmd:         lpolyci weight length, degree(3) nofit}
	{cmd:                               ciplot(rline) pstyle(ci2) ||}
	{cmd:         scatter weight length, msymbol(o)}
          {it:({stata "gr_example auto: twoway lpolyci weight length, nofit || lpolyci weight length, degree(3) ciplot(rline) pstyle(ci2) nofit || scatter weight length, msymbol(o)":点击运行})} 
{phang}
{* graph gtlpolyci1}{...}

{pstd}
绘制的区域对应于局部均值平滑的置信带，线条对应于局部三次平滑的置信区间。

{pstd}
当您覆盖图形时，几乎总是需要通过使用 {it:axis_title_options} {cmd:ytitle()} 和 {cmd:xtitle()} 来重新指定轴标题；参见 {manhelpi axis_title_options G-3}。


{marker remarks2}{...}
{title:与 by() 一起使用}

{pstd}
{cmd:graph} {cmd:twoway} {cmd:lpolyci} 可以与 {cmd:by()} 一起使用：

        {cmd:. sysuse auto, clear}
        {cmd:. twoway lpolyci weight length             ||}
	{cmd:	      scatter weight length, msymbol(o) ||}
        {cmd:    , by(foreign)}
          {it:({stata "gr_example auto: tw lpolyci weight length || scatter weight length, msymbol(o) ||, by(foreign)":点击运行})}
{* graph gtlpolyci2}{...}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_lpolyci.sthlp>}