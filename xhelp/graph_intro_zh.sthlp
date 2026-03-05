{smcl}
{* *! version 1.1.18  15may2018}{...}
{vieweralsosee "[G-1] 图形简介" "mansection G-1 Graphintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph" "help graph_zh"}{...}
{vieweralsosee "[G-2] graph other" "help graph_other_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-1] Graph Editor" "help graph_editor_zh"}{...}
{viewerjumpto "备注" "graph intro##remarks"}{...}
{viewerjumpto "参考文献" "graph intro##references"}
{help graph_intro:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[G-1] 图形简介} {hline 2}}图形简介{p_end}
{p2col:}({mansection G-1 Graphintro:查看完整的 PDF 手册内容}){p_end}
{p2colreset}{...}


{marker remarks}{...}
{title:备注}

{pstd}
备注按照以下标题呈现：

	{help graph intro##reading:建议阅读顺序}
	{help graph intro##tour:快速导览}
	{help graph intro##menus:使用菜单}


{marker reading}{...}
{title:建议阅读顺序}

{pstd}
我们建议您按照以下顺序阅读本手册中的条目：

{pmore}首先阅读下面的 {it:{help graph intro##tour:快速导览}}，
然后阅读 {it:{help graph editor##quickstart:快速入门}}
在 {manhelp graph_editor G-1:图形编辑器} 中，然后 ...

{p2colset 9 38 40 2}{...}
{p2col:条目} 描述{p_end}
{p2line}
{p2col:{manhelp graph G-2}}{...}
       {cmd:graph} 命令的概述{p_end}
{p2col:{manhelp twoway G-2}}{...}
       {cmd:graph twoway} 命令的概述{p_end}
{p2col:{manhelp scatter G-2:graph twoway scatter}}{...}
       {cmd:graph twoway scatter} 命令的概述{p_end}
{p2line}

{pstd}
在阅读这些部分时，跟随指向您感兴趣的其他条目的引用。它们会引导您到一些有用的主题，如

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{manhelpi marker_label_options G-3}}{...}
       指定标记标签的选项{p_end}
{p2col:{manhelpi by_option G-3}}{...}
        重复图形命令的选项{p_end}
{p2col:{manhelpi title_options G-3}}{...}
       指定标题的选项{p_end}
{p2col:{manhelpi legend_options G-3}}{...}
       指定图例的选项{p_end}
{p2line}

{pstd}
我们可以列出更多，但您可以自己找到。跟随您感兴趣的引用，忽略其他部分。之后，您将对双重图形有一个工作知识。现在看一下每个

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{manhelp line G-2:graph twoway line}}{...}
        {cmd:graph twoway line} 命令的概述{p_end}
{p2col:{manhelp twoway_connected G-2:graph twoway connected}}{...}
        {cmd:graph twoway connected} 命令的概述等。{p_end}
{p2line}
{pin}
转到 {manhelp twoway G-2:graph twoway}，该部分列出所有不同的 {cmd:graph} {cmd:twoway} 绘图类型，并浏览每个的手册条目。

{pstd}
现在是了解方案的时候，这对图形外观有很大的影响。您可能想在打印图形之前指定一个不同的方案。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{manhelp schemes G-4:方案简介}}{...}
        方案及其作用{p_end}
{p2col:{manhelp set_printcolor G-2:set printcolor}}{...}
        设置图形打印时颜色的处理方式{p_end}
{p2col:{manhelp graph_print G-2:graph print}}{...}
        轻松打印图形{p_end}
{p2col:{manhelp graph_export G-2:graph export}}{...}
        将图形导出到其他文件格式{p_end}
{p2line}

{pstd}
现在您是 {cmd:graph} {cmd:twoway} 命令的专家，您甚至可以打印其生成的图形。

{pstd}
要了解其他类型的图形，请参见

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{manhelp graph_matrix G-2:graph matrix}}{...}
        散点图矩阵{p_end}
{p2col:{manhelp graph_bar G-2:graph bar}}{...}
        条形图和点图{p_end}
{p2col:{manhelp graph_box G-2:graph box}}{...}
        箱型图{p_end}
{p2col:{manhelp graph_dot G-2:graph dot}}{...}
        点图（摘要统计）{p_end}
{p2col:{manhelp graph_pie G-2:graph pie}}{...}
        饼图{p_end}
{p2line}

{pstd}
要了解一些技巧，请参见

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{manhelp graph_save G-2:graph save}}{...}
        将图形保存到磁盘{p_end}
{p2col:{manhelp graph_use G-2:graph use}}{...}
        从磁盘重新显示图形{p_end}
{p2col:{manhelp graph_describe G-2:graph describe}}{...}
        查看 .gph 文件中的内容{p_end}
{p2col:{manhelpi name_option G-3}}{...}
        如何命名内存中的图形{p_end}
{p2col:{manhelp graph_display G-2:graph display}}{...}
        显示存储在内存中的图形{p_end}
{p2col:{manhelp graph_dir G-2:graph dir}}{...}
        获取命名图形的目录{p_end}
{p2col:{manhelp graph_rename G-2:graph rename}}{...}
        重命名命名的图形{p_end}
{p2col:{manhelp graph_copy G-2:graph copy}}{...}
        复制命名的图形{p_end}
{p2col:{manhelp graph_drop G-2:graph drop}}{...}
        消除内存中的图形{p_end}
{p2col:{manhelp graph_close G-2:graph close}}{...}
        关闭图形窗口{p_end}
{p2col:{manhelp graph_replay G-2:graph replay}}{...}
        重放多个图形{p_end}
{p2col:{manhelp discard P}}{...}
       清除内存{p_end}
{p2line}
{p2colreset}{...}

{pstd}
有关 Stata 图形的完全不同且高度可视化的学习方法，请参见 {help graph intro##M2012:Mitchell (2012)}。
有关学术回顾和教程说明的混合，请参见 {help graph intro##C2014:Cox (2014)}。
{help graph intro##H2009:Hamilton (2009)} 在与 Stata 的统计分析更大背景下提供了 50 页的简洁概述。
在 Cleveland ({help graph intro##C1993:1993} 和 {help graph intro##C1994:1994})、{help graph intro##WWPJH1996:Wallgren et al. (1996)} 中可以找到有关在图表中清晰呈现信息的优秀建议，甚至还有关于更大主题的书籍章节，如 {help graph intro##GH2009:Good and Hardin (2009)}。


{marker tour}{...}
{title:快速导览}

{pstd}
{cmd:graph} 使用起来很简单：

	{cmd:. sysuse auto}

	{cmd:. graph twoway scatter mpg weight}
	  {it:({stata "gr_example auto: graph twoway scatter mpg weight":click to run})}
{* graph mpgweight}{...}

{pstd}
本手册中记录的所有命令均以 {cmd:graph} 开头，但 {cmd:graph} 通常是可选的。您可以通过键入

	{cmd:. twoway scatter mpg weight}

{pstd}
获得相同的图形，并且对于 {cmd:scatter}，您也可以省略 {cmd:twoway}：

	{cmd:. scatter mpg weight}

{pstd}
然而，我们将继续输入 {cmd:twoway} 以强调我们演示的图形属于双重图形家族。

{pstd}
双重图形可以与 {cmd:by()} 结合：

	{cmd:. twoway scatter mpg weight, by(foreign)}
	  {it:({stata "gr_example auto: twoway scatter mpg weight, by(foreign)":click to run})}
{* graph mpgweightby}{...}

{pstd}
{cmd:twoway} 家族中的图形也可以重叠。{cmd:twoway} 家族的成员称为 {it:plottypes}；{cmd:scatter} 是一种图形类型，另一种图形类型是 {cmd:lfit}，它计算线性预测并将其绘制为线性图表。当我们希望将一种图形类型叠加到另一种图形类型上时，我们会将命令组合在一起，在中间放置 {cmd:||}：

	{cmd:. twoway scatter mpg weight || lfit mpg weight}
	  {it:({stata "gr_example auto: twoway scatter mpg weight || lfit mpg weight":click to run})}
{* graph grintro3}{...}

{pstd}
另一种表示法称为 {cmd:()} 绑定表示法：

{phang2}
	{cmd:. twoway (scatter mpg weight) (lfit mpg weight)}

{pstd}
使用哪种表示法并不重要。

{pstd}
重叠可以与 {cmd:by()} 结合。这次，用 {cmd:qfitci} 替代 {cmd:lfit}。{cmd:qfitci} 绘制二次回归的预测，并添加置信区间。然后根据预测的标准误差添加置信区间：

{phang2}
	{cmd:. twoway (qfitci mpg weight, stdf) (scatter mpg weight), by(foreign)}
{p_end}
	  {it:({stata "gr_example auto: twoway (qfitci mpg weight, stdf) (scatter mpg weight), by(foreign)":click to run})}
{* graph grintro4}{...}

{pstd}
我们使用 {cmd:()} 绑定表示法只是因为这样更容易看出什么修饰了什么：

		     {cmd:stdf} {it:是一个选项}
			  {it:来自} {cmd:qfitci}
		     {c TLC}{hline 16}{c TRC}
		     {c BT}                {c BT}
	{cmd:. twoway (qfitci mpg weight, stdf) (scatter mpg weight), by(foreign)}
	    {c TT}    {c BLC}{hline 23}{c BRC} {c BLC}{hline 18}{c BRC}        {c TT}
	    {c |}          {it:将此叠加             在此}              {c |}
	    {c |}                                                          {c |}
	    {c BLC}{hline 58}{c BRC}
			 {cmd:by(foreign)} {it:是} {cmd:twoway} 的选项


{pstd}
我们也可以用 {cmd:||} 分隔符语法输入此命令，

{phang2}
	{cmd:. twoway qfitci mpg weight, stdf || scatter mpg weight ||, by(foreign)}

{pstd}
事实上，我们不必将 {cmd:twoway} 选项 {cmd:by(foreign)}（或任何其他 {cmd:twoway} 选项）
与 {cmd:qfitci} 和 {cmd:scatter} 选项分开，所以我们可以输入

{phang2}
	{cmd:. twoway qfitci mpg weight, stdf || scatter mpg weight, by(foreign)}

{pstd}
甚至可以

{phang2}
	{cmd:. twoway qfitci mpg weight, stdf by(foreign) || scatter mpg weight}

{pstd}
所有这些语法问题都在 {manhelp twoway G-2:graph twoway} 中讨论。我们认为 {cmd:()} 绑定表示法更易于阅读，但 {cmd:||} 分隔符表示法更易于输入。您会看到我们使用两者。

{pstd}
将 {cmd:qfitci} 放在第一位，{cmd:scatter} 放在第二位并非偶然。{cmd:qfitci} 阴影了一块区域，如果我们反过来做，阴影就会直接覆盖在我们的散点上并抹去（或至少隐藏）它们。

{pstd}
不同类型或相同类型的图可以重叠：

	{cmd:. sysuse uslifeexp}

	{cmd:. twoway line le_wm year || line le_bm year}
	  {it:({stata "gr_example uslifeexp: twoway line le_wm year || line le_bm year":click to run})}
{* graph grintro5}{...}

{pstd}
这是相同图形的一个相当花哨的版本：{cmd}

	. generate diff = le_wm - le_bm

	. label var diff "差异"

	. twoway line le_wm year, yaxis(1 2) xaxis(1 2)
	      || line le_bm year
	      || line diff  year
	      || lfit diff  year
	      ||,
		 ytitle( "",         axis(2) )
		 xtitle( "",         axis(2) )
		 xlabel( 1918,       axis(2) )
		 ylabel( 0(5)20,     axis(2) grid gmin angle(horizontal) )
		 ylabel( 0 20(10)80,              gmax angle(horizontal) )
		 ytitle( "出生时的预期寿命（年）" )
		 title( "白人和黑人预期寿命" )
		 subtitle( "美国，1900-1999" )
		 note( "来源：国家生命统计，卷50，第6期"
		       "(1918年下跌是由于1918年流感大流行)" )
		 legend( label(1 "白人男性") label(2 "黑人男性") ){txt}
	  {it:({stata gr_example2 line3a:click to run})}
{* graph line3}{...}

{pstd}
此命令有许多选项（除了前两个选项之外，所有选项都可以在图形编辑器中完成；有关编辑器的概述，请参见 {manhelp graph_editor G-1:图形编辑器}）。
去掉明显的选项，如 {cmd:title()}、{cmd:subtitle()} 和 {cmd:note()}，您会留下{cmd}

	. twoway line le_wm year, yaxis(1 2) xaxis(1 2)
	      || line le_bm year
	      || line diff  year
	      || lfit diff  year
	      ||,
		 ytitle( "",         axis(2) )
		 xtitle( "",         axis(2) )
		 xlabel( 1918,       axis(2) )
		 ylabel( 0(5)20,     axis(2) grid gmin angle(horizontal) )
		 ylabel( 0 20(10)80,              gmax angle(horizontal) )
		 legend( label(1 "白人男性") label(2 "黑人男性") ){txt}

{pstd}
我们首先来看最长的选项：

		 {cmd:ylabel( 0(5)20,     axis(2) grid gmin angle(horizontal))}

{pstd}
首先要注意的是选项中还有选项：

		 {cmd:ylabel( 0(5)20,     axis(2) grid gmin angle(horizontal))}
		 {hline 2}{c TT}{hline 2}               {hline 19}{c TT}{hline 15}
		   {c |}                                    {c |}
		   {c BLC}{hline 36}{c BRC}
		     {cmd:axis(2) grid gmin angle(horizontal)}
		     {it:是} {cmd:ylabel()} 的选项

{pstd}
现在回到我们的图形。它有两个 {it:y} 轴，一个在右边，另一个在左边。输入

		 {cmd:ylabel( 0(5)20,     axis(2) grid gmin angle(horizontal))}

{pstd}
使得右轴 -- {cmd:axis(2)} -- 在 0、5、10、15 和 20 处有标签 -- {cmd:0(5)20}。{cmd:grid} 请求为每个标记的刻度线绘制网格线，而 {cmd:gmin} 强制在 0 处绘制网格线，因为默认情况下，{cmd:graph} 不喜欢将网格线绘制得太靠近轴。{cmd:angle(horizontal)} 使得 0、5、10、15 和 20 水平而不是通常的垂直。

{pstd}
您现在可以猜测

		 {cmd:ylabel( 0 20(10)80,         gmax angle(horizontal))}

{pstd}
做了什么。它给左侧的 {it:y} 轴 -- {cmd:axis(1)} 在行话中打了标签 -- 但我们不需要为 {cmd:axis(1)} 指定子选项，因为那正是 {cmd:ylabel()} 的假设。 

		 {cmd:xlabel( 1918,       axis(2))}

{pstd}
的目的现在也显而易见。它在第二个 {it:x} 轴上标记了一个值。

{pstd}
所以现在我们留下的是{cmd}

	. twoway line le_wm year, yaxis(1 2) xaxis(1 2)
	      || line le_bm year
	      || line diff  year
	      || lfit diff  year
	      ||,
		 ytitle( "",         axis(2) )
		 xtitle( "",         axis(2) )
		 legend( label(1 "白人男性") label(2 "黑人男性") ){txt}

{pstd}
选项 {cmd:ytitle()} 和 {cmd:xtitle()} 指定轴标题。
我们不希望第二个轴上有标题，所以我们去掉了它们。{cmd:legend()} 选项，

		 {cmd:legend( label(1 "白人男性") label(2 "黑人男性") )}

{pstd}
仅重新指定了前两个键使用的文本。默认情况下，{cmd:legend()} 使用变量标签，在这种情况下将是变量 {cmd:le_wm} 和 {cmd:le_bm} 的标签。在我们的数据集中，这些标签是“白人男性的预期寿命”和“黑人男性的预期寿命”。不必要地重复“预期寿命”，因此我们指定了一个选项来更改标签。要么这样，要么更改变量标签。

{pstd}
因此现在我们剩下的是{cmd}

	. twoway line le_wm year, yaxis(1 2) xaxis(1 2)
	      || line le_bm year
	      || line diff  year
	      || lfit diff  year{txt}

{pstd}
这几乎是完全可以理解的。{cmd:yaxis()} 和 {cmd:xaxis()} 选项导致创建两个 {it:y} 轴和两个 {it:x} 轴，而不是通常的一个。

{pstd}
理解我们是如何得到{cmd}

	. twoway line le_wm year, yaxis(1 2) xaxis(1 2)
	      || line le_bm year
	      || line diff  year
	      || lfit diff  year
	      ||,
		 ytitle( "",         axis(2) )
		 xtitle( "",         axis(2) )
		 xlabel( 1918,       axis(2) )
		 ylabel( 0(5)20,     axis(2) grid gmin angle(horizontal) )
		 ylabel( 0 20(10)80,              gmax angle(horizontal) )
		 ytitle( "出生时的预期寿命（年）" )
		 title( "白人和黑人预期寿命" )
		 subtitle( "美国，1900-1999" )
		 note( "来源：国家生命统计，卷50，第6期"
		       "(1918年下跌是由于1918年流感大流行)" )
		 legend( label(1 "白人男性") label(2 "黑人男性") ){txt}

{pstd}
我们从第一个图形开始，

	{cmd:. twoway line le_wm year || line le_bm year}

{pstd}
然后，为了强调白人和黑人预期寿命的比较，我们添加了差异,{cmd}

	. twoway line le_wm year,
	      || line le_bm year
	      || line diff  year{txt}

{pstd}
然后，为了强调差异的线性趋势，我们添加了"{cmd:lfit} {cmd:diff} {cmd:year}"，

	{cmd}. twoway line le_wm year,
	      || line le_bm year
	      || line diff  year,
	      || lfit diff  year{txt}

{pstd}
然后我们添加选项，使图形更符合我们的期望。我们逐个引入这些选项。实际上，这相当有趣。随着命令的增长，我们转向使用 Do-file 编辑器，在那里我们可以添加选项并点击 {bf:Do} 按钮查看我们的进展。由于命令相当长，当我们打开 Do-file 编辑器时，我们在第一行输入

	{cmd:#delimit ;}

{pstd}
然后在最后一行输入

	{cmd:;}

{pstd}
然后在中间输入我们不断增长的命令。

{pstd}
我们上面使用的许多选项在大多数图形家族中是常见的，包括 {cmd:twoway}、{cmd:bar}、{cmd:box}、{cmd:dot} 和 {cmd:pie}。如果您了解如何在某个家族中使用 {cmd:title()} 或 {cmd:legend()} 选项，则可以将该知识应用于所有图形，因为这些选项在不同家族中作用相同。

{pstd}
在提到预期寿命时，使用另一数据集，我们绘制了

	{it:({stata "gr_example2 markerlabel3":click to run})}
{* graph markerlabel3}{...}

{pstd}
有关我们如何做到这一点的解释，请参见 {manhelpi marker_label_options G-3}。继续谈论预期寿命，我们生成了

	{it:({stata "gr_example2 combine4":click to run})}
{* graph combine4}{...}

{pstd}
我们是通过分别绘制三个相当简单的图形来绘制的：{cmd}

	. twoway scatter lexp loggnp,
		yscale(alt) xscale(alt)
		xlabel(, grid gmax)              saving(yx)

	. twoway histogram lexp, fraction
		xscale(alt reverse) horiz        saving(hy)

	. twoway histogram loggnp, fraction
		yscale(alt reverse)
		ylabel(,nogrid)
		xlabel(,grid gmax)               saving(hx){txt}

{pstd}
然后将它们组合在一起：

	{cmd}. graph combine hy.gph yx.gph hx.gph,
		hole(3)
		imargin(0 0 0 0) grapharea(margin(l 22 r 22))
		title("出生时的预期寿命与人均 GNP")
		note("来源：1998年数据来自世界银行集团"){txt}

{pstd}
有关更多信息，请参见 {manhelp graph_combine G-2:graph combine}。

{pstd}
回到我们的导览，{cmd:twoway,} {cmd:by()} 可以生成看起来像这样的图形

	{cmd:. sysuse auto, clear}

	{cmd:. scatter mpg weight, by(foreign, total row(1))}
	  {it:({stata "gr_example auto: scatter mpg weight, by(foreign, total row(1))":click to run})}
{* graph mpgweightbyt1r}{...}

{pstd}
或者这样

	{cmd:. scatter mpg weight, by(foreign, total col(1))}
	  {it:({stata "gr_example auto: scatter mpg weight, by(foreign, total col(1))":click to run})}
{* graph mpgweightbyt1c}{...}

{pstd}
或者这样

	{cmd:. scatter mpg weight, by(foreign, total)}
	  {it:({stata "gr_example auto: scatter mpg weight, by(foreign, total)":click to run})}
{* graph mpgweightbyt}{...}

{pstd}
请参见 {manhelpi by_option G-3}。

{pstd}
{cmd:by()} 是在所有图形家族中常见的另一个选项。如果您知道如何在某种图形类型上使用它，那么您就知道如何在任何类型的图形上使用它。

{pstd}
在 {cmd:twoway} 家族中有许多绘图类型，包括区域、条形、尖刺、掉落线和点。仅列举其中一些：

	{cmd}. sysuse sp500

	. replace volume = volume/1000

	. twoway
		rspike hi low date ||
		line   close  date ||
		bar    volume date, barw(.25) yaxis(2) ||
	  in 1/57
	  , yscale(axis(1) r(900 1400))
	    yscale(axis(2) r(  9   45))
	    ylabel(, axis(2) grid)
	    ytitle("                          价格 -- 高、低、收盘")
	    ytitle(" 体量 (百万)", axis(2) bexpand just(left))
	    legend(off)
	    subtitle("S&P 500", margin(b+2.5))
	    note("来源：Yahoo!Finance 和商品系统有限公司。") {txt}
	  {it:({stata "gr_example2 tworspike":click to run})}
{* graph tworspike}{...}

{pstd}
上面的图形在 {manhelp twoway_rspike G-2:graph twoway rspike} 中进行了说明。有关所有可用的 {cmd:twoway} 绘图类型的列表，请参见 {manhelp graph_twoway G-2:graph twoway}。

{pstd}
在 {cmd:twoway} 家族之外，{cmd:graph} 可以绘制散点图矩阵、箱型图、饼图以及条形图和点图。以下是每种的示例。

{pstd}
一个包括变量 {cmd:popgr}、{cmd:lexp}、{cmd:lgnppc} 和 {cmd:safe} 的散点图矩阵：

	{cmd:. sysuse lifeexp, clear}

	{cmd:. generate lgnppc = ln(gnppc)}

{phang2}
	{cmd:. graph matrix popgr lgnppc safe lexp}{p_end}
	  {it:({stata "gr_example2 matrix3a":click to run})}
{* graph matrix3a}{...}

{pstd}
或者，带有网格线和更多的轴标签：

	{cmd}. graph matrix popgr lgnppc safe lexp,
		maxes(ylab(#4, grid) xlab(#4, grid)){txt}
	  {it:({stata "gr_example2 matrix3":click to run})}
{* graph matrix3}{...}

{pstd}
请参见 {manhelp graph_matrix G-2:graph matrix}。

{pstd}
关于血压变量 {cmd:bp} 的箱型图，按变量 {cmd:when} 的每个组和变量 {cmd:sex} 的每个组：

	{cmd:. sysuse bplong, clear}

	{cmd:. graph box bp, over(when) over(sex)}
	  {it:({stata "gr_example2 grbox1a":click to run})}
{* graph grbox1a}{...}

{pstd}
或者，带有完整标题的图形：

	{cmd}. graph box bp, over(when) over(sex)
		ytitle("收缩压")
		title("按性别的治疗反应")
		subtitle("(120名术前患者)" " ")
		note("来源：虚构药物试验，StataCorp，2003"){txt}
	  {it:({stata "gr_example2 grbox1":click to run})}
{* graph grbox1}{...}

{pstd}
请参见 {manhelp graph_box G-2:graph box}。

{pstd}
一个显示变量 {cmd:sales}、{cmd:marketing}、{cmd:research} 和 {cmd:development} 比例的饼图。

	{cmd:. graph pie sales marketing research development}
	  {it:({stata "gr_example2 pie1a":click to run})}
{* graph grpie1a}{...}

{pstd}
或者，带有漂亮标题和更好标签的图形：

	{cmd:. graph pie sales marketing research development,}
		{cmd:plabel(_all name, size(*1.5) color(white))}
		{cmd:legend(off)}
		{cmd:plotregion(lstyle(none))}{col 66}
		{cmd:title("XYZ 公司支出")}
		{cmd:subtitle("2002年")}
		{cmd:note("来源：2002 年财务报告（虚构数据）")}
	  {it:({stata "gr_example2 pie1":click to run})}
{* graph grpie1}{...}

{pstd}
请参见 {manhelp graph_pie G-2:graph pie}。

{pstd}
一个关于变量 {cmd:smsa}、{cmd:married} 和 {cmd:collgrad} 的各组平均工资的垂直条形图：

	{cmd:. sysuse nlsw88}

{phang2}
	{cmd:. graph bar wage, over(smsa) over(married) over(collgrad)}{p_end}
	  {it:({stata "gr_example2 grbar5b0":click to run})}
{* graph grbar5b0}{...}

{pstd}
或者，对于一个更美观的图形，带有重叠的条形、标题和更好标签：

	{cmd}. graph bar wage,
			over( smsa, descend gap(-30) )
			over( married )
			over( collgrad, relabel(1 "未毕业的大学生"
						2 "大学毕业生"    ) )
			ytitle("")
			title("1988年平均每小时工资，34-46岁女性")
			subtitle("按大学毕业、婚姻状况和 SMSA 居住")
			note("来源：1988年数据来自 NLS，美国劳工部统计局，经济分析局"){txt}
	  {it:({stata "gr_example2 grbar5b":click to run})}
{* graph grbar5b}{...}

{pstd}
请参见 {manhelp graph_bar G-2:graph bar}。

{pstd}
一个显示各国私人和公共支出的水平的水平条形图：

	{cmd:. sysuse educ99gdp}

	{cmd:. generate total = private + public}

	{cmd:. graph hbar (asis) public private , over(country)}
	  {it:({stata "gr_example2 grbar7a":click to run})}
{* graph grbar7a}{...}

{pstd}
或者，同样的信息，搭配堆叠的条形、信息性的总支出排序和漂亮的标题：

	{cmd}. graph hbar (asis) public private,
			over(country, sort(total) descending)
			stack
			title("1999年支出占 GDP 的比例", span position(11) )
			subtitle(" ")
			note("来源：OECD，教育概况 2002", span){txt}
	  {it:({stata "gr_example2 grbar7":click to run})}
{* graph grbar7}{...}

{pstd}
请参见 {manhelp graph_bar G-2:graph bar}。

{pstd}
一个关于工资的点图，变量为 {cmd:occ}，分别为大学毕业生和非大学毕业生绘制单独的子图，变量为 {cmd:collgrad}：

	{cmd:. sysuse nlsw88, clear}

	{cmd:. graph dot wage, over(occ) by(collgrad)}
	  {it:({stata gr_example2 grdotby0:click to run})}
{* graph grdotby0}{...}

{pstd}
或者，对于按工资排序的职业并拥有漂亮标题的图形：

	{cmd}. graph dot wage,
		over(occ, sort(1))
		by(collgrad,
		     title("1988年平均每小时工资，34-46岁女性", span)
		     subtitle(" ")
		     note("来源：1988年数据来自 NLS，美国劳工部统计局", span)
		){txt}
	  {it:({stata gr_example2 grdotby:click to run})}
{* graph grdotby}{...}

{pstd}
请参见 {manhelp graph_dot G-2:graph dot}。

{pstd}
祝您玩得开心。遵循我们在上面 {it:{help graph_intro##reading:建议阅读顺序}} 的建议：转向 {manhelp graph G-2}、{manhelp twoway G-2:graph twoway} 和 {manhelp scatter G-2:graph twoway scatter}。


{marker menus}{...}
{title:使用菜单}

{pstd}
除了使用命令行界面，您还可以通过 Stata 的下拉菜单访问大多数 {cmd:graph} 功能。首先加载数据集，选择 {bf:图形}，然后选择您感兴趣的内容。

{pstd}
填写完对话框（不要忘记点击选项卡——许多有用的功能隐藏在那里面）后，点击 {bf:提交}，而不是 {bf:确定}。这样，一旦图形出现，您可以轻松修改它并再次点击 {bf:提交}。

{pstd}
请随意尝试。点击 {bf:提交}（或 {bf:确定}）永远不会有坏处；如果您遗漏了必填字段，系统会告诉您。对话框使您可以轻松查看可以更改的内容。


{marker references}{...}
{title:参考文献}

{marker C1993}{...}
{phang}
Cleveland, W. S. 1993.
{it:数据可视化}.
新泽西州 Summit: Hobart.

{marker C1994}{...}
{phang}
------. 1994.
{it:数据绘图元素}. 修订版。
新泽西州 Summit: Hobart.

{marker C2014}{...}
{phang}
Cox, N. J. 2014.
{browse "http://www.stata-press.com/books/speaking-stata-graphics":{it:讲述 Stata 图形}}.
德克萨斯州 College Station: Stata Press.

{marker GH2009}{...}
{phang}
Good, P. I., 和 J. W. Hardin. 2009.
{browse "http://www.stata.com/bookstore/ceis.html":{it:统计中的常见错误（及如何避免它们）}. 第3版.}
纽约: Wiley.

{marker H2009}{...}
{phang}
Hamilton, L. C. 2009.
{browse "http://www.stata.com/bookstore/sws.html":{it:使用 Stata的统计（更新至版本10）}.}
加利福尼亚州 Belmont: Brooks/Cole.

{marker M2012}{...}
{phang}
Mitchell, M. N. 2012.
{browse "http://www.stata-press.com/books/vgsg3.html":{it:Stata 图形的视觉指南}. 第3版.}
德克萨斯州 College Station: Stata Press.

{marker WWPJH1996}{...}
{phang}
Wallgren, A., B. Wallgren, R. Persson, U. Jorner, 和 J.-A. Haaland. 1996.
{it:绘制统计数据和图表：创建更好的图表}.
加利福尼亚州 Newbury Park: Sage.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_intro.sthlp>}