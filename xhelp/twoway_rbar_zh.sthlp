{smcl}
{* *! version 1.1.9  17apr2019}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway rbar" "mansection G-2 graphtwowayrbar"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway bar" "help twoway_bar_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway rarea" "help twoway_rarea_zh"}{...}
{vieweralsosee "[G-2] graph twoway rcap" "help twoway_rcap_zh"}{...}
{vieweralsosee "[G-2] graph twoway rcapsym" "help twoway_rcapsym_zh"}{...}
{vieweralsosee "[G-2] graph twoway rconnected" "help twoway_rconnected_zh"}{...}
{vieweralsosee "[G-2] graph twoway rline" "help twoway_rline_zh"}{...}
{vieweralsosee "[G-2] graph twoway rscatter" "help twoway_rscatter_zh"}{...}
{vieweralsosee "[G-2] graph twoway_rspike" "help twoway_rspike_zh"}{...}
{viewerjumpto "语法" "twoway_rbar_zh##syntax"}{...}
{viewerjumpto "菜单" "twoway_rbar_zh##menu"}{...}
{viewerjumpto "描述" "twoway_rbar_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "twoway_rbar_zh##linkspdf"}{...}
{viewerjumpto "选项" "twoway_rbar_zh##options"}{...}
{viewerjumpto "备注" "twoway_rbar_zh##remarks"}
{help twoway_rbar:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[G-2] graph twoway rbar} {hline 2}}带条形的范围图{p_end}
{p2col:}({mansection G-2 graphtwowayrbar:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 60 2}
{cmdab:tw:oway}
{cmd:rbar}
{it:y1var} {it:y2var} {it:xvar}
{ifin}
[{cmd:,}
{it:options}]

{synoptset 22}{...}
{p2col:{it:options}}描述{p_end}
{p2line}
{p2col:{cmdab:vert:ical}}竖直条形；默认值{p_end}
{p2col:{cmdab:hor:izontal}}水平条形{p_end}
{p2col:{cmdab:barw:idth:(}{it:#}{cmd:)}}条形在 {it:xvar} 单位中的宽度{p_end}
{p2col:{cmdab:mw:idth}}使用 {cmd:msize()} 而不是 {cmd:barwidth()}{p_end}
{p2col:{cmdab:msiz:e:(}{it:{help markersizestyle_zh}}{cmd:)}}条形的宽度{p_end}

INCLUDE help gr_baropt

INCLUDE help gr_axlnk

INCLUDE help gr_twopt
{p2line}
{p2colreset}{...}
{p 4 6 2}
选项 {cmd:barwidth()}, {cmd:mwidth}, 和 {cmd:msize()} 是 {it:最右边的}，
而 {cmd:vertical} 和 {cmd:horizontal} 是 {it:唯一的}；请参见 
{help repeated options}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双变量图 (散点图，折线图等)}


{marker description}{...}
{title:描述}

{pstd}
范围图有两个 {it:y} 变量，例如高和低的每日股票价格
或上下 95% 置信区间。

{pstd}
{cmd:twoway} {cmd:rbar} 使用条形连接高低值来绘制范围。

{pstd}
另请参见 {manhelp graph_bar G-2:柱状图} 以获取更传统的柱状图。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-2 graphtwowayrbarQuickstart:快速入门}

        {mansection G-2 graphtwowayrbarRemarksandexamples:备注和示例}

{pstd}
以上部分不包括在本帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:vertical}
和
{cmd:horizontal}
    指定高低 {it:y} 值的展示方式，竖直（默认）或水平。

{pmore}
    在默认的 {cmd:vertical} 情况下，{it:y1var} 和 {it:y2var} 记录
    每个 {it:xvar} 值对应的最小和最大（或最大和最小） {it:y} 值。

{pmore}
    如果指定了 {cmd:horizontal}，则记录在 {it:y1var} 和
    {it:y2var} 的值将沿 {it:x} 方向绘制，{it:xvar} 被视为
    {it:y} 值。

{phang}
{cmd:barwidth(}{it:#}{cmd:)}
    指定条形在 {it:xvar} 单位中的宽度。 默认值为
    {cmd:barwidth(1)}。当绘制条形时，条形位于 {it:x} 的中心，因此其宽度的一半延伸到 {it:x} 之下，另一半延伸到之上。

{phang}
{cmd:mwidth}
和
{cmd:msize(}{it:markersizestyle}{cmd:)}
    变更条形宽度的指定方式。通常，条形的宽度由下方记录的 {cmd:barwidth()} 选项决定。如果指定了 {cmd:mwidth}，则 {cmd:barwidth()} 将不再相关，条形宽度将由 {cmd:msize()} 决定。这一切都与条形宽度的单位相关。

{pmore}
    默认情况下，条形宽度在 {it:xvar} 单位中指定，如果
    没有指定选项 {cmd:barwidth()}，默认宽度为 1 {it:xvar} 单位。

{pmore}
    {cmd:mwidth} 指定您希望条形宽度以大小单位进行测量；请参见 {manhelpi size G-4}。
    当您指定 {cmd:mwidth}，默认值从 1
    {it:xvar} 单位更改为标记符号的默认宽度。

{pmore}
    如果您还指定了 {cmd:msize()}，则条形的宽度会修改为指定的大小。

INCLUDE help gr_baroptf

INCLUDE help gr_axlnkf

INCLUDE help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
备注在以下标题下提供：

	{help twoway rbar##remarks1:典型使用}
	{help twoway rbar##remarks2:高级使用}


{marker remarks1}{...}
{title:典型使用}

{pstd}
我们有 2001 年 S&P 500 日常数据：

	{cmd:. sysuse sp500}

	{cmd:. list date high low close in 1/5}
	{txt}
	     {c TLC}{hline 11}{c -}{hline 9}{c -}{hline 9}{c -}{hline 9}{c TRC}
	     {c |} {res}     date      high       low     close {txt}{c |}
	     {c LT}{hline 11}{c -}{hline 9}{c -}{hline 9}{c -}{hline 9}{c RT}
	  1. {c |} {res}02jan2001   1320.28   1276.05   1283.27 {txt}{c |}
	  2. {c |} {res}03jan2001   1347.76   1274.62   1347.56 {txt}{c |}
	  3. {c |} {res}04jan2001   1350.24   1329.14   1333.34 {txt}{c |}
	  4. {c |} {res}05jan2001   1334.77   1294.95   1298.35 {txt}{c |}
	  5. {c |} {res}08jan2001   1298.35   1276.29   1295.86 {txt}{c |}
	     {c BLC}{hline 11}{c -}{hline 9}{c -}{hline 9}{c -}{hline 9}{c BRC}{txt}

{pstd}
我们将使用这些数据中的前 57 个观察值：

	{cmd:. twoway rbar high low date in 1/57, barwidth(.6)}
	  {it:({stata "gr_example sp500: twoway rbar high low date in 1/57, barwidth(.6)":点击运行})}
{* graph gtrbar1}{...}

{pstd}
我们指定了 {cmd:barwidth(.6)} 来减少条形的宽度。
默认情况下，条形宽度为 1 {it:x} 单位（意味着在我们的数据中为 1 天）。
该默认值导致条形相互接触。 {cmd:barwidth(.6)} 将条形的宽度减少到 .6 天。


{marker remarks2}{...}
{title:高级使用}

{pstd}
{cmd:twoway} {cmd:rbar} 的有用之处在于可以与其他 {helpb twoway} 绘图类型结合使用：

	{cmd}. twoway rbar high low date, barwidth(.6) color(gs7) ||
		 line close date || in 1/57{txt}
	  {it:({stata "gr_example sp500: twoway rbar high low date, barwidth(.6) color(gs7) || line close date || in 1/57":点击运行})}
{* graph gtrbar2}{...}

{pstd}
在上述示例中有两点需要注意：我们指定了 {cmd:color(gs7)}，并且指定范围条形先绘制，随后是线。我们指定了 {cmd:color(gs7)} 来淡化条形：
默认情况下，条形颜色过于鲜艳，使得收盘与日期的线图几乎看不见。
关于顺序，我们输入了

	{cmd}. twoway rbar high low date, barwidth(.6) color(gs7) ||
		 line close date || in 1/57{txt}

{pstd}
以便先绘制条形，然后在其上绘制线。
如果我们指定 

	{cmd}. twoway line close date ||
		 rbar high low date, barwidth(.6) color(gs7) || in 1/57{txt}

{pstd}
条形将位于线的顶部，从而遮挡了线。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_rbar.sthlp>}