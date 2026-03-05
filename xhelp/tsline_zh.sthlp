{smcl}
{* *! version 1.2.6  17apr2018}{...}
{viewerdialog tsline "dialog tsline"}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[TS] tsline" "mansection TS tsline"}{...}
{vieweralsosee "[G-2] graph twoway tsline" "mansection G-2 graphtwowaytsline"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtline" "help xtline_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway" "help graph_twoway_zh"}{...}
{viewerjumpto "Syntax" "tsline_zh##syntax"}{...}
{viewerjumpto "Menu" "tsline_zh##menu"}{...}
{viewerjumpto "Description" "tsline_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "tsline_zh##linkspdf"}{...}
{viewerjumpto "Options" "tsline_zh##options"}{...}
{viewerjumpto "Remarks/Examples" "tsline_zh##remarks"}{...}
{viewerjumpto "Video example" "tsline_zh##video"}
{help tsline:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[G-2] graph twoway tsline} {hline 2}}双变量线图{p_end}
{p2col:}({mansection G-2 graphtwowaytsline:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{p2colset 1 16 18 2}{...}
{p2col:{bf:[TS] tsline} {hline 2}}时间序列线图{p_end}
{p2col:}({mansection TS tsline:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{pstd}
时间序列线图

{p 8 24 2}
[{cmdab:tw:oway}]
{cmd:tsline}
	{varlist}
	{ifin}
	[{cmd:,}
	{help tsline##tsline_options:{it:tsline_options}}]

{pstd}
带线的时间序列范围图

{p 8 25 2}
[{cmdab:tw:oway}]
{cmd:tsrline}
	{it:y_1} {it:y_2}
	{ifin}
	[{cmd:,}
	{help tsline##tsrline_options:{it:tsrline_options}}]

{phang}
其中时间变量假定由 {help tsset_zh} 设置，{it:varlist} 的解释为

		{it:y_1} [{it:y_2} ... {it:y_k}]

{marker tsline_options}{...}
{synoptset 20 tabbed}{...}
{synopthdr:tsline_options}
{synoptline}
{syntab:图形}
{synopt:{it:scatter_options}}可以使用的所有选项在 {manhelp scatter G-2:graph twoway scatter} 中都有说明，除了 {it:marker_options}, {it:marker_placement_options} 和 {it:marker_label_options}，这些选项若指定将会被忽略{p_end}

{syntab:Y 轴, 时间轴, 标题, 图例, 总体, 分组}
{synopt :{it:twoway_options}}在 {manhelpi twoway_options G-3} 中文档化的任何选项{p_end}
{synoptline}

{marker tsrline_options}{...}
{synopthdr:tsrline_options}
{synoptline}
{syntab:图形}
{synopt:{it:rline_options}}在 {manhelp twoway_rline G-2:graph twoway rline} 中文档化的任何选项{p_end}

{syntab:Y 轴, 时间轴, 标题, 图例, 总体, 分组}
{synopt :{it:twoway_options}}在 {manhelpi twoway_options G-3} 中文档化的任何选项{p_end}
{synoptline}

{marker menu}{...}
{title:菜单}

    {title:tsline 和 tsrline}

{phang2}
{bf:统计 > 时间序列 > 图形 > 线图}

    {title:twoway tsline 和 twoway tsrline}

{phang2}
{bf:图形 > 双变量图形（散点图、线图等）}

{marker description}{...}
{title:描述}

{pstd}
{cmd:tsline} 为时间序列数据绘制线图。

{pstd}
{cmd:tsrline} 为时间序列数据绘制带线的范围图。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-2 graphtwowaytslineQuickstart:快速开始}

{pstd}
上述章节不包括在本帮助文件中。

{marker options}{...}
{title:选项}

{dlgtab:图形}

{phang}
{it:scatter_options}
    是 {cmd:graph} {cmd:twoway} {cmd:scatter} 命令允许的任何选项，除了 {it:marker_options}，{it:marker_placement_options} 和 {it:marker_label_options} 若指定，将会被忽略；请参见 {manhelp scatter G-2:graph twoway scatter}。

{phang}
{it:rline_options}
    是 {cmd:graph} {cmd:twoway} {cmd:rline} 命令允许的任何选项；见 {manhelp twoway_rline G-2:graph twoway rline}。

{dlgtab:Y 轴, 时间轴, 标题, 图例, 总体, 分组}

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 中文档化的任何选项。这些包括用于命名图形的选项（参考 {manhelpi title_options G-3}），用于将图形保存到磁盘的选项（参考 {manhelpi saving_option G-3}），和 {cmd:by()} 选项，它将允许您同时绘制数据的不同子集（参考 {manhelpi by_option G-3}）。

{pmore}
还可以参见 {cmd:recast()} 选项中讨论的内容 {manhelpi advanced_options G-3}，获取如何绘制尖峰、条形等，而非线条的信息。

{marker remarks}{...}
{title:备注}

    {title:示例 1}

{pstd}
我们模拟了两个独立的时间序列（各 200 个观测值），并将它们放入 Stata 数据集 {cmd:tsline1.dta} 中。第一个系列模拟了一个 AR(2) 过程，{it:phi}_1=0.8 和 {it:phi}_2=0.2；第二个系列模拟了一个 MA(2) 过程，{it:theta}_1=0.8 和 {it:theta}_2=0.2。我们使用 {cmd:tsline} 来绘制这两个系列。

	{cmd:. sysuse tsline1}
	{cmd:. tsset lags}
	{cmd:. tsline ar ma}
	  {it:({stata "tsline_ex arma":点击运行})}

{marker ex2}{...}
    {title:示例 2}

{pstd}
假设我们记录了一整年的卡路里日志。在年末，我们将拥有一个数据集（例如 {cmd:tsline2.dta}），其中包含 365 天的卡路里消耗量。然后我们可以使用 {cmd:tsset} 来识别日期变量，使用 {cmd:tsline} 来绘制卡路里与时间的关系。考虑到我们倾向于在感恩节和圣诞节吃更多的食物，我们使用 {cmd:ttick()} 和 {cmd:ttext()} 选项在时间轴上标出这些日子。

	{cmd:. sysuse tsline2}
	{cmd:. tsset day}
	{cmd:. tsline calories, ttick(28nov2002 25dec2002, tpos(in))}
	{cmd:      ttext(3470 28nov2002 "感恩节"}
	{cmd:            3470 25dec2002 "圣诞节"}
	{cmd:            , orient(vert))}
	  {it:({stata "tsline_ex calories":点击运行})}

{pstd}
与时间轴相关的选项允许指定日期（和时间）作为数字日期（和时间）值的替代。例如，我们使用

{pmore}
{cmd:ttick(28nov2002 25dec2002, tpos(in))}

{pstd}
在指定日期放置刻度标记。这对于 {cmd:tlabel()}，{cmd:tmlabel()} 和 {cmd:tmtick()} 同样有效。

{pstd}
假设我们想为前面提到的假期放置垂直线。我们可以在 {cmd:tline()} 选项中如下指定日期：

	{cmd:. sysuse tsline2}
	{cmd:. tsset day}
	{cmd:. tsline calories, tline(28nov2002 25dec2002)}
	  {it:({stata "tsline_ex calories2":点击运行})}

    {title:示例 3}

{pstd}
我们还可以修改时间轴的格式，以便标记的刻度仅显示年份中的日期：

	{cmd:. sysuse tsline2}
	{cmd:. tsset day}
	{cmd:. tsline calories, tlabel(, format(%tdmd)) ttitle("日期（2002）")}
	  {it:({stata "tsline_ex calories3":点击运行})}

    {title:示例 4}

{pstd}
{cmd:tsline} 和 {cmd:tsrline} 都是命令，且是 {helpb twoway:[G-2] graph twoway} 中定义的 {it:plottype}s。因此 {cmd:tsline} 的语法为

	{cmd:. graph twoway tsline} ...

	{cmd:. twoway tsline} ...

	{cmd:. tsline} ...

{pstd}
{cmd:tsrline} 同样如此。作为图形类型，这些命令可以与 {cmd:twoway} 家族中的其他图形类型组合，如下所示：

{phang2}
	{cmd:. twoway (tsrline} ...{cmd:) (tsline} ...{cmd:) (lfit} ...{cmd:)} ...

{pstd}
这可以等效地写成

{phang2}
	{cmd:. tsrline} ... {cmd:|| tsline} ... {cmd:|| lfit} ... {cmd:||} ...

{pstd}
在 {help tsline##ex2:示例 2} 的第一个图中，我们对准确记录的值不确定，因此还给出了每天的范围。这里是夏季月份的图。

	{cmd:. sysuse tsline2}
	{cmd:. tsset day}
	{cmd:. tsrline lcalories ucalories if tin(1may2002,31aug2002)}
	{cmd:      || tsline calories}
	{cmd:      || if tin(1may2002,31aug2002), ytitle(卡路里)}
	  {it:({stata "tsline_ex rcalories":点击运行})}

{marker video}{...}
{title:视频示例}

{phang2}{browse "http://www.youtube.com/watch?v=JYrnG71zJhM":线图和时间()}  
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tsline.sthlp>}