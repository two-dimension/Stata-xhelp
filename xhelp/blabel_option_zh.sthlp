{smcl}
{* *! version 1.1.11  16apr2019}{...}
{vieweralsosee "[G-3] blabel_option" "mansection G-3 blabel_option"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph bar" "help graph_bar_zh"}{...}
{viewerjumpto "语法" "blabel_option_zh##syntax"}{...}
{viewerjumpto "描述" "blabel_option_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "blabel_option_zh##linkspdf"}{...}
{viewerjumpto "选项" "blabel_option_zh##option"}{...}
{viewerjumpto "子选项" "blabel_option_zh##suboptions"}{...}
{viewerjumpto "备注" "blabel_option_zh##remarks"}
{help blabel_option:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[G-3]} {it:blabel_option} {hline 2}}柱形标签选项{p_end}
{p2col:}({mansection G-3 blabel_option:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 23 2}
{cmdab:gr:aph}
{c -(}{cmd:bar}|{cmd:hbar}{c )-}
...{cmd:,}
...
{cmdab:blab:el:(}{it:what} [{cmd:,} {it:where_and_how}]{cmd:)} ...

{synoptset 20}{...}
{synopt:{it:what}}描述{p_end}
{synoptline}
{synopt:{cmd:none}}无标签；默认{p_end}
{synopt:{cmd:bar}}标签为柱的高度{p_end}
{synopt:{cmd:total}}标签为累积柱的高度{p_end}
{synopt:{cmd:name}}标签为 {it:yvar} 的名称{p_end}
{synopt:{cmd:group}}标签为第一个 {cmd:over()} 组{p_end}
{synoptline}

{synopt:{it:where_and_how}}描述{p_end}
{synoptline}
{synopt:{cmdab:pos:ition:(}{cmd:outside}{cmd:)}}将标签放置在柱子上方（{cmd:bar}）或右侧（{cmd:hbar）{p_end}
{synopt:{cmdab:pos:ition:(}{cmd:inside}{cmd:)}}将标签放置在柱子内部顶部（{cmd:bar}）或最右侧（{cmd:hbar}）{p_end}
{synopt:{cmdab:pos:ition:(}{cmd:base}{cmd:)}}将标签放置在柱子的底部{p_end}
{synopt:{cmdab:pos:ition:(}{cmd:center}{cmd:)}}将标签放置在柱子的中心{p_end}
{synopt:{cmd:gap(}{it:{help size_zh}}{cmd:)}}与位置的距离{p_end}
{synopt:{cmd:format(}{help format_zh:{bf:%}{it:fmt}}{cmd:)}}格式化如果是 {cmd:bar} 或 {cmd:total}{p_end}
{synopt:{it:{help textbox_options_zh}}}标签的外观{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
选项 {cmd:blabel()} 用于 {helpb graph bar} 和 {helpb graph hbar}。它在每个柱的顶端或内部添加标签。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 blabel_optionQuickstart:快速开始}

        {mansection G-3 blabel_optionRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:blabel(}{it:what}{cmd:,} {it:where_and_how}{cmd:)}
    指定标签及其相对于柱子的位置。{it:where_and_how} 是可选的，并在
    {it:{help blabel_option##suboptions:子选项}} 中进行了文档说明。{it:what} 指定标签的内容。

{pmore}
    {cmd:blabel(bar)} 指定标签为柱子的高度。在

{phang3}
	    {cmd:. graph bar (mean) empcost, over(division) blabel(bar)}

{pmore}
    标签将为平均员工成本。

{pmore}
    {cmd:blabel(total)} 指定标签为柱子的累积高度。{cmd:blabel(total)} 用于
    {cmd:graph} {cmd:bar} 的 {cmd:stack} 选项。在

{phang3}
	    {cmd:. graph bar (sum) cost1 cost2, stack over(group) blabel(total)}

{pmore}
    标签将是堆叠柱的总高度——成本的总和。此外，{cmd:cost1} 部分的堆叠柱将以其高度标记。

{pmore}
    {cmd:blabel(name)} 指定标签为 {it:yvar} 的名称。在

{phang3}
	    {cmd:. graph bar (mean) y1 y2 y3 y4, blabel(name)}

{pmore}
     标签将是 "y1 的均值"，"y2 的均值"，……，"y4 的均值"。通常，你还想在这里抑制图例，因此可以输入

{phang3}
	    {cmd:. graph bar (mean) y1 y2 y3 y4, blabel(name) legend(off)}

{pmore}
    {cmd:blabel(group)} 指定标签为第一个 {cmd:over()} 组的名称。在

{phang3}
	    {cmd:. graph bar cost, over(division) over(year) blabel(group)}

{pmore}
    标签将是各个部分的名称。通常，你还想抑制坐标轴上部分标签的出现：

{phang3}
	    {cmd:. graph bar cost, over(division, axis(off)) over(year) blabel(group)}


{marker suboptions}{...}
{title:子选项}

{phang}
{cmd:position()}
    指定标签出现的位置。

{pmore}
    {cmd:position(outside)} 是默认选项。标签出现在柱子上方（{cmd:graph} {cmd:bar}）或右侧（{cmd:graph} {cmd:hbar}）。

{pmore}
    {cmd:position(inside)} 指定标签出现在柱子内部，顶部（{cmd:graph} {cmd:bar}）或最右侧（{cmd:graph} {cmd:hbar}）。

{pmore}
    {cmd:position(base)} 指定标签出现在柱子的底部；柱子底部的位置（{cmd:graph} {cmd:bar}）；或柱子的左侧（{cmd:graph} {cmd:hbar}）。

{pmore}
    {cmd:position(center)} 指定标签出现在柱子的中心。

{phang}
{cmd:gap(}{it:size}{cmd:)}
    指定标签与其位置（{cmd:outside}、{cmd:inside}、{cmd:base} 或 {cmd:center}）的距离。默认通常是 {cmd:gap(1.7)}。{cmd:gap()} 可以是正数或负数，你可以指定，例如，{cmd:gap(*1.2)} 和 {cmd:gap(*.8)} 来增加或减少间隔 20%；见 {manhelpi size G-4}。

{phang}
{cmd:format(%}{it:fmt}{cmd:)}
    用于 {cmd:blabel(bar)} 和 {cmd:blabel(total)}；它指定用于格式化高度值的显示格式。见 {manhelp format D}。

{phang}
{it:textbox_options}
    是任何允许与文本框结合使用的选项。重要选项包括 {cmd:size()}，决定文本的大小；{cmd:box}，在文本周围绘制一个框；以及 {cmd:color()}，决定文本的颜色和不透明度。见 {manhelpi textbox_options G-3}。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:blabel()} 有两个目的：增加图表的信息内容（{cmd:blabel(bar)} 和 {cmd:blabel(total)}），或更改柱的标签方式（{cmd:blabel(name)} 和 {cmd:blabel(group)}）。  

{pstd}
备注按以下标题呈现：

	{help blabel_option##remarks1:增加信息内容}
	{help blabel_option##remarks2:更改柱标签方式}


{marker remarks1}{...}
{title:增加信息内容}

{pstd}
在标题 {it:{help graph bar##remarks5:多个柱（重叠柱）}} 中
{manhelp graph_bar G-2:graph bar}，绘制了以下图：

	{cmd}. graph bar (mean) tempjuly tempjan, over(region)
		bargap(-30)
		legend(label(1 "July") label(2 "January"))
		ytitle("华氏度")
		title("七月和一月的平均气温")
		subtitle("按美国各地区")
		note("来源：美国人口普查局，美国商务部"){txt}
	  {it:({stata gr_example2 grbar1:点击运行})}
{* graph grbar1, but do not represent in manual}{...}

{pstd}
在上述基础上，我们现在添加

		{cmd:blabel(bar, position(inside) format(%9.1f))}

{pstd}
这将把平均气温添加到柱子上，位置设置在柱子内部顶部，并使用 {cmd:%9.1f} 格式化其值：

	{cmd}. graph bar (mean) tempjuly tempjan, over(region)
		bargap(-30)
		legend(label(1 "July") label(2 "January"))
		ytitle("华氏度")
		title("七月和一月的平均气温")
		subtitle("按美国各地区")
		note("来源：美国人口普查局，美国商务部")
  {txt:{it:new} ->}        blabel(bar, position(inside) format(%9.1f) color(white)){txt}
	  {it:({stata gr_example2 grbar1lab:点击运行})}
{* graph grbar1lab}{...}

{pstd}
我们还指定了 {it:textbox_option} {cmd:color(white)} 来更改文本的颜色；见 {manhelpi textbox_options G-3}。深色文本在深色柱上会过于融合。


{marker remarks2}{...}
{title:更改柱标签方式}

{pstd}
将标签放置在柱子上与横向柱形图特别配合良好：

	{cmd}. sysuse nlsw88, clear

	. graph hbar (mean) wage,
		 over(occ, axis(off) sort(1))
	       blabel(group, position(base) color(bg))
	       ytitle("")
		   by(union,
		       title("1988 年平均时薪，34-46 岁女性")
		       note("来源：1988 年 NLS 数据，美国劳动部，劳工统计局")
		     ){txt}
	  {it:({stata gr_example2 grblab1:点击运行})}
{* graph grblab1}{...}

{pstd}
将标签从坐标轴移动到柱子上之所以如此有效，是因为节省了大量的水平空间。

{pstd}
在上述命令中，请注意前两行选项：

		 {cmd}over(occ, axis(off) sort(1))
	       blabel(group, position(base) color(bg)){txt}

{pstd}
{cmd:blabel(group)} 将职业标签放在柱子上方，而子选项 {cmd:position(base)} 将标签放置在每根柱子的底部。我们指定 {cmd:over(,axis(off))} 以防止标签出现在坐标轴上。让我们逐一讲解所有选项：

{phang2}
{cmd:over(occ, axis(off) sort(1))}{break}
     指定图表根据职业绘制，且职业标签不显示在坐标轴上，且柱子根据第一（也是唯一的） {it:yvar}，即 {cmd:(mean)} {cmd:wage} 进行排序。

{phang2}
{cmd:ytitle("")}{break}
     指定抑制数值 {it:y} 轴（该横向情况下为横轴）上的标题。

{phang2}
{cmd:by(union, title(...) note(...))}{break}
     指定整个图表按照变量 {cmd:union} 的值重复，并指定标题和注释添加到整体图表中。如果我们在 {cmd:by()} 外部指定了 {cmd:title()} 和 {cmd:note()} 选项，它们将被放置在每个图表上。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <blabel_option.sthlp>}