{smcl}
{* *! version 1.2.10  19oct2017}{...}
{viewerdialog xtline "dialog xtline"}{...}
{vieweralsosee "[XT] xtline" "mansection XT xtline"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway" "help twoway"}{...}
{vieweralsosee "[TS] tsline" "help tsline_zh"}{...}
{viewerjumpto "Syntax" "xtline_zh##syntax"}{...}
{viewerjumpto "Menu" "xtline_zh##menu"}{...}
{viewerjumpto "Description" "xtline_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtline_zh##linkspdf"}{...}
{viewerjumpto "Options for graph by panel" "xtline_zh##options_by"}{...}
{viewerjumpto "Options for overlaid panels" "xtline_zh##options_overlaid"}{...}
{viewerjumpto "Examples" "xtline_zh##examples"}
{help xtline:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[XT] xtline} {hline 2}}面板数据折线图{p_end}
{p2col:}({mansection XT xtline:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
按面板绘图

{p 8 23 2}
{cmd:xtline} {varlist} {ifin} [{cmd:,} {it:{help xtline##panel:panel_options}}]


{phang}
叠加面板

{p 8 23 2}
{cmd:xtline} {varname} {ifin}{cmd:,} {opt ov:erlay} 
[{it:{help xtline##overlaid:overlaid_options}}]


{marker panel}{...}
{synoptset 25 tabbed}{...}
{synopthdr :panel_options}
{synoptline}
{syntab:主}
{synopt :{opth "i(varname:varname_i)"}}使用
	{it:varname_i} 作为面板 ID 变量{p_end}
{synopt :{opth "t(varname:varname_t)"}}使用
	{it:varname_t} 作为时间变量{p_end}

{syntab:绘图}
{synopt :{it:{help cline_options_zh}}}影响由线连接的绘制点的表现{p_end}

{syntab:添加绘图}
{synopt :{opth "addplot(addplot_option:plot)"}}将其他绘图添加到生成的图形中{p_end}

{syntab:Y 轴、时间轴、标题、图例、整体}
{synopt :{it:twoway_options}}任何除了{opt by()}以外的选项，文档见 
     {manhelpi twoway_options G-3}{p_end}
{synopt :{opth by:opts(by_option:byopts)}}影响合并图形的外观{p_end}
{synoptline}
{p2colreset}{...}

{marker overlaid}{...}
{synoptset 26 tabbed}{...}
{synopthdr :overlaid_options}
{synoptline}
{syntab:主}
{synopt :{opt ov:erlay}}在同一图形中重叠每个面板{p_end}
{synopt :{opth "i(varname:varname_i)"}}使用
	{it:varname_i} 作为面板 ID 变量{p_end}
{synopt :{opth "t(varname:varname_t)"}}使用
	{it:varname_t} 作为时间变量{p_end}

{syntab:绘图}
{synopt :{cmdab:plot:}{ul:{it:#}}{opth "opts(cline_options:cline_options)"}}影响第 {it:#} 面板线的表现{p_end}

{syntab:添加绘图}
{synopt :{opth "addplot(addplot_option:plot)"}}将其他绘图添加到生成的图形中{p_end}

{syntab:Y 轴、时间轴、标题、图例、整体}
{synopt :{it:twoway_options}}任何选项文档见 
        {manhelpi twoway_options G-3}，不包括{cmd:by()}。这些包括用于
图形标题的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 横断面/面板数据 > 折线图}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtline} 为面板数据绘制折线图。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtlineQuickstart:快速入门}

        {mansection XT xtlineRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options_by}{...}
{title:按面板绘图的选项}

{dlgtab:主}

{phang}
{opth "i(varname:varname_i)"}
和
{opt t(varname_t)} 覆盖来自 {help xtset_zh} 的面板设置。
{it:varname_i} 允许为字符串变量。
{it:varname_t} 可以采用非整数值并在面板内具有重复值。也就是说，它可以是您希望指定为图形 x 维度的任何数值变量。指定 {opt i()} 而不指定 {opt t()} 和反之都是错误的。

{dlgtab:绘图}

{phang}
{it:cline_options} 影响由线连接的绘制点的表现；见 {manhelpi cline_options G-3}。

{dlgtab:添加绘图}

{phang}
{opt addplot(plot)} 提供了一种将其他绘图添加到生成的图形中的方式；见 {manhelpi addplot_option G-3}。

{dlgtab:Y 轴、时间轴、标题、图例、整体}

{phang}
{it:twoway_options} 是任何文档见 {manhelpi twoway_options G-3} 的选项，除 {cmd:by()} 外。这些包括用于
图形标题的选项（见 {manhelpi title_options G-3}）和用于将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。

{phang}
{opt byopts(byopts)} 允许所有在 {manhelpi by_option G-3} 中记录的选项。这些选项影响 by-图形的外观。
{opt byopts()} 不能与 {opt overlay} 结合使用。

{marker options_overlaid}{...}
{title:叠加面板的选项}

{dlgtab:主}

{phang}
{opt overlay} 导致每个面板的绘图重叠在同一图形中。默认情况下按面板生成绘图。此选项不能与 {opt byopts()} 结合使用，或在 {varlist} 中指定多个变量时使用。

{phang}
{opth "i(varname:varname_i)"}
和
{opt t(varname_t)} 覆盖来自 {help xtset_zh} 的面板设置。
{it:varname_i} 允许为字符串变量。
{it:varname_t} 可以采用非整数值并在面板内具有重复值。也就是说，它可以是您希望指定为图形 x 维度的任何数值变量。指定 {opt i()} 而不指定 {opt t()} 和反之都是错误的。

{dlgtab:绘图}

{phang}
{cmd:plot}{it:#}{opt opts(cline_options)} 影响第 {it:#} 面板（按排序顺序）的表现。 {it:cline_options} 可以影响点的连接与否以及如何连接；见 {manhelpi cline_options G-3}。

{dlgtab:添加绘图}

{phang}
{opt addplot(plot)} 提供了一种将其他绘图添加到生成的图形中的方式；见 {manhelpi addplot_option G-3}。

{dlgtab:Y 轴、时间轴、标题、图例、整体}

{phang}
{it:twoway_options} 是任何文档见 {manhelpi twoway_options G-3} 的选项，除 {cmd:by()} 外。这些包括用于
图形标题的选项（见 {manhelpi title_options G-3}）和用于将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。

{marker examples}{...}
{title:示例}

{pstd}
假设 Tess、Sam 和 Arnold 记录了一整年的卡路里日志。年末，如果他们将数据汇总，他们将获得一个数据集（例如，{cmd:xtline1.dta}），其中包含每个人 365 天的卡路里消耗。他们可以使用 {cmd:xtset} 来识别日期变量，并将每个人视为一个面板，然后使用 {cmd:xtline} 分别绘制每个人的卡路里与时间的关系。

	{cmd:. sysuse xtline1}
	{cmd:. xtset person day}
	{cmd:. xtline calories, tlabel(#3)}
	  {it:({stata "xtline_ex caloriesby":点击运行})}

{pstd}
指定 {cmd:overlay} 选项，以便在同一图形上绘制数值；这将提供 Tess、Sam 和 Arnold 之间更好的比较。

	{cmd:. xtline calories, overlay}
	  {it:({stata "xtline_ex caloriesover":点击运行})}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtline.sthlp>}