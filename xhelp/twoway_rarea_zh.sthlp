{smcl}
{* *! version 1.1.11  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway rarea" "mansection G-2 graphtwowayrarea"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway area" "help twoway_area_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway rbar" "help twoway_rbar_zh"}{...}
{vieweralsosee "[G-2] graph twoway rcap" "help twoway_rcap_zh"}{...}
{vieweralsosee "[G-2] graph twoway rcapsym" "help twoway_rcapsym_zh"}{...}
{vieweralsosee "[G-2] graph twoway rconnected" "help twoway_rconnected_zh"}{...}
{vieweralsosee "[G-2] graph twoway rline" "help twoway_rline_zh"}{...}
{vieweralsosee "[G-2] graph twoway rscatter" "help twoway_rscatter_zh"}{...}
{vieweralsosee "[G-2] graph twoway rspike" "help twoway_rspike_zh"}{...}
{viewerjumpto "Syntax" "twoway_rarea_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_rarea_zh##menu"}{...}
{viewerjumpto "Description" "twoway_rarea_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_rarea_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_rarea_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_rarea_zh##remarks"}
{help twoway_rarea:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[G-2] graph twoway rarea} {hline 2}}带有区域阴影的范围图{p_end}
{p2col:}({mansection G-2 graphtwowayrarea:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 60 2}
{cmdab:tw:oway}
{cmd:rarea}
{it:y1var} {it:y2var} {it:xvar}
{ifin}
[{cmd:,}
{it:选项}]

{synoptset 20}{...}
{p2col:{it:选项}}描述{p_end}
{p2line}
{p2col:{cmdab:垂直}}垂直区域图；默认值{p_end}
{p2col:{cmdab:水平}}水平区域图{p_end}
{p2col:{cmdab:缺失值(}{cmd:y}|{cmd:n}{cmd:)}}缺失值不会强制
       在区域中产生间隙；默认值是 {cmd:cmissing(y)}{p_end}
{p2col:{cmd:sort}}按 {it:xvar} 排序；推荐{p_end}

包含 help gr_areaopt

包含 help gr_axlnk

包含 help gr_twopt
{p2line}
{p2colreset}{...}
{p 4 6 2}
所有显式选项都是 {it:唯一}；请参阅 {help repeated options}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双变量图 (散点图、线图等)}


{marker description}{...}
{title:描述}

{pstd}
范围图有两个 {it:y} 变量，例如每日的最高价和最低价
或 95% 置信区间的上限和下限。

{pstd}
{cmd:twoway} {cmd:rarea} 将范围绘制为阴影区域。

{pstd}
另请参见 {manhelp twoway_area G-2:graph twoway area}，用于填充至
轴的区域图。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-2 graphtwowayrarea快速开始:快速开始}

        {mansection G-2 graphtwowayrarea备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:vertical}
和
{cmd:horizontal}
    指定高低 {it:y} 值的呈现方式
    是垂直的（默认）还是水平的。

{pmore}
    在默认的 {cmd:vertical} 情况下，{it:y1var} 和 {it:y2var} 记录
    要针对每个 {it:xvar} 值绘制的最低和最高（或最高和最低） {it:y}
    值。

{pmore}
    如果指定了 {cmd:horizontal}，在 {it:y1var} 和
    {it:y2var} 中记录的值将沿 {it:x} 方向绘制，并且 {it:xvar} 被视为
    {it:y} 值。

{phang}
{cmd:cmissing(}{cmd:y}|{cmd:n}{cmd:)}
    指定当绘制区域时是否忽略缺失值
    或是否创建区域中的间断。默认是
    {cmd:cmissing(y)}，意味着将其忽略。考虑以下数据：

	    {txt}
		 {c TLC}{hline 6}{c -}{hline 3}{c TRC}
		 {c |} {res}  y    x {txt}{c |}
		 {c LT}{hline 6}{c -}{hline 3}{c RT}
	      1. {c |} {res}  1    1 {txt}{c |}
	      2. {c |} {res}  3    2 {txt}{c |}
	      3. {c |} {res}  5    3 {txt}{c |}
	      4. {c |} {res}  .    . {txt}{c |}
	      5. {c |} {res}  6    5 {txt}{c |}
		 {c LT}{hline 6}{c -}{hline 3}{c RT}
	      6. {c |} {res} 11    8 {txt}{c |}
		 {c BLC}{hline 6}{c -}{hline 3}{c BRC}{txt}

{pmore}
假设您使用 {cmd:twoway} {cmd:rarea} {cmd:y}
{cmd:x} 绘制这些数据。您想要在 3 和 5 之间的区域中有一个间断吗？如果是，则可以输入

	    {cmd:. twoway rarea y x, cmissing(n)}

{pmore}
这样将绘制两个区域，一个用于缺失值观测前的观测，另一个用于缺失值观测后的观测。

{pmore}
如果您省略该选项（或输入 {cmd:cmissing(y)}），则数据将被视为包含

	    {txt}
		 {c TLC}{hline 6}{c -}{hline 3}{c TRC}
		 {c |} {res}  y    x {txt}{c |}
		 {c LT}{hline 6}{c -}{hline 3}{c RT}
	      1. {c |} {res}  1    1 {txt}{c |}
	      2. {c |} {res}  3    2 {txt}{c |}
	      3. {c |} {res}  5    3 {txt}{c |}
	      4. {c |} {res}  6    5 {txt}{c |}
	      5. {c |} {res} 11    8 {txt}{c |}
		 {c BLC}{hline 6}{c -}{hline 3}{c BRC}{txt}

{pmore}
这意味着将在范围 (1,8) 内绘制一个连续的区域。


{phang}
{cmd:sort}
    指定在绘图之前按照 {it:xvar} 对数据进行排序。

{phang}
{it:area_options}
    设置阴影区域的外观。最重要的选项是
    {cmd:color(}{it:colorstyle}{cmd:)}, 它指定区域及其轮廓的颜色和
    不透明度；参阅 {manhelpi colorstyle G-4}
    以获取颜色选择列表。有关其他 {it:area_options} 的信息，请参见 {manhelpi area_options G-3}。

包含 help gr_axlnkf

包含 help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
备注呈现于以下标题下：

        {help twoway_rarea##remarks1:典型使用}
        {help twoway_rarea##remarks2:高级使用}
        {help twoway_rarea##remarks3:注意事项}


{marker remarks1}{...}
{title:典型使用}

{pstd}
我们有记录 2001 年 S&P 500 的每日数据：

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
我们将使用这些数据的前 57 个观测值：

	{cmd:. twoway rarea high low date in 1/57}
	  {it:({stata "gr_example sp500: twoway rarea high low date in 1/57":点击运行})}
{* graph gtrarea1}{...}


{marker remarks2}{...}
{title:高级使用}

{pstd}
{cmd:rarea}
在上限和下限是平滑函数，并且区域只是阴影而不是醒目的颜色时
特别有效：

	{cmd}. sysuse auto, clear

	. quietly regress mpg weight

	. predict hat

	. predict s, stdf

	. generate low = hat - 1.96*s

	. generate hi  = hat + 1.96*s

	. twoway rarea low hi weight, sort color(gs14) ||
		 scatter  mpg weight{txt}
	  {it:({stata "gr_example2 tworarea":点击运行})}
{* graph tworarea}{...}

{pstd}
请注意使用选项 {cmd:color()} 更改阴影区域的颜色。
此外，我们首先绘制阴影区域，然后再绘制散点图。输入

	{cmd:. twoway scatter} ... {cmd:|| rarea} ...

{pstd}
不会产生所需的结果，因为阴影区域将覆盖散点图。

{pstd}
另请参见 {manhelp twoway_lfitci G-2:graph twoway lfitci}。


{marker remarks3}{...}
{title:注意事项}

{pstd}
确保数据按照 {it:xvar} 的顺序排列，或者指定 {cmd:rarea} 的
{cmd:sort} 选项。如果您都不做，您将得到看起来像现代艺术的结果； 
有关示例，请参见 {it:{help twoway area##remarks3:注意事项}} 
在 {manhelp twoway_area G-2:graph twoway area} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_rarea.sthlp>}