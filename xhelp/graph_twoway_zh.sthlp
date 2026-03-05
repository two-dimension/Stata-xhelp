{smcl}
{* *! version 1.2.5  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway" "mansection G-2 graphtwoway"}{...}
{viewerjumpto "Syntax" "graph_twoway_zh##syntax"}{...}
{viewerjumpto "Menu" "graph_twoway_zh##menu"}{...}
{viewerjumpto "Description" "graph_twoway_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "graph_twoway_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "graph_twoway_zh##remarks"}
{help graph_twoway:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[G-2] graph twoway} {hline 2}}二维图形{p_end}
{p2col:}({mansection G-2 graphtwoway:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 23 2}
[{cmdab:gr:aph}]
{cmdab:tw:oway}
{it:plot}
{ifin}
[{cmd:,}
{it:{help twoway_options_zh}}]

{pstd}
其中 {it:plot} 的语法为

{pin}
[{cmd:(}]
{it:plottype} {varlist} ...{cmd:,} {it:options}
[{cmd:)}] [{cmd:||}]

{synoptset 20}{...}
{p2col :{it:plottype}}描述{p_end}
{p2line}
{p2col :{help scatter_zh}}散点图{p_end}
{p2col :{help line_zh}}折线图{p_end}
{p2col :{help twoway_connected_zh:connected}}连接线图{p_end}
{p2col :{help twoway_scatteri_zh:scatteri}}{cmd:scatter} 具有即时参数{p_end}

{marker barplots}{...}
{p2col :{help twoway_area_zh:area}}带阴影的折线图{p_end}
{p2col :{help twoway_bar_zh:bar}}条形图{p_end}
{p2col :{help twoway_spike_zh:spike}}尖峰图{p_end}
{p2col :{help twoway_dropline_zh:dropline}}降线图{p_end}
{p2col :{help twoway_dot_zh:dot}}点图{p_end}

{marker rangeplots}{...}
{p2col :{help twoway_rarea_zh:rarea}}带区域阴影的范围图{p_end}
{p2col :{help twoway_rbar_zh:rbar}}带条的范围图{p_end}
{p2col :{help twoway_rspike_zh:rspike}}带尖峰的范围图{p_end}
{p2col :{help twoway_rcap_zh:rcap}}带帽尖峰的范围图{p_end}
{p2col :{help twoway_rcapsym_zh:rcapsym}}带符号帽尖峰的范围图{p_end}
{p2col :{help twoway_rscatter_zh:rscatter}}带标记的范围图{p_end}
{p2col :{help twoway_rline_zh:rline}}带线的范围图{p_end}
{p2col :{help twoway_rconnected_zh:rconnected}}带线和标记的范围图{p_end}

{marker pcplots}{...}
{p2col :{help twoway_pcspike_zh:pcspike}}带尖峰的配对坐标图{p_end}
{p2col :{help twoway_pccapsym_zh:pccapsym}}带符号帽尖峰的配对坐标图{p_end}
{p2col :{help twoway_pcarrow_zh:pcarrow}}带箭头的配对坐标图{p_end}
{p2col :{helpb twoway_pcbarrow:pcbarrow}}带双头箭头的配对坐标图{p_end}
{p2col :{help twoway_pcscatter_zh:pcscatter}}带标记的配对坐标图{p_end}
{p2col :{help twoway_pci_zh:pci}}{cmd:pcspike} 具有即时参数{p_end}
{p2col :{help twoway_pcarrowi_zh:pcarrowi}}{cmd:pcarrow} 具有即时参数{p_end}

{p2col :{help tsline_zh}}时间序列图{p_end}
{p2col :{helpb tsrline}}时间序列范围图{p_end}

{p2col :{help twoway_contour_zh:contour}}带填充区域的轮廓图{p_end}
{p2col :{help twoway_contourline_zh:contourline}}轮廓线图{p_end}

{p2col :{help twoway_mband_zh:mband}}中位数带折线图{p_end}
{p2col :{help twoway_mspline_zh:mspline}}样条折线图{p_end}
{p2col :{help twoway_lowess_zh:lowess}}LOWESS折线图{p_end}
{p2col :{help twoway_lfit_zh:lfit}}线性预测图{p_end}
{p2col :{help twoway_qfit_zh:qfit}}二次预测图{p_end}
{p2col :{help twoway_fpfit_zh:fpfit}}分数多项式图{p_end}
{p2col :{help twoway_lfitci_zh:lfitci}}带置信区间的线性预测图{p_end}
{p2col :{help twoway_qfitci_zh:qfitci}}带置信区间的二次预测图{p_end}
{p2col :{help twoway_fpfitci_zh:fpfitci}}带置信区间的分数多项式图{p_end}

{p2col :{help twoway_function_zh:function}}函数的折线图{p_end}
{p2col :{help twoway_histogram_zh:histogram}}直方图{p_end}
{p2col :{help twoway_kdensity_zh:kdensity}}核密度图{p_end}
{p2col :{help twoway_lpoly_zh:lpoly}}局部多项式平滑图{p_end}
{p2col :{help twoway_lpolyci_zh:lpolyci}}带置信区间的局部多项式平滑图{p_end}
{p2line}
{p2colreset}{...}

{pstd}
前面的 {cmd:graph} 是可选的。
如果第一个（或唯一）{it:plot} 是 {cmd:scatter}，您可以省略 
{cmd:twoway}，此时语法为

{p 8 20 2}
{cmdab:sc:atter} ... [{cmd:,} {it:scatter_options}]
[ {cmd:||}
{it:plot} [{it:plot} [...]]]

{pstd}
同样，这也适用于 {cmd:line}。其他
{it:plottypes} 必须前置 {cmd:twoway}。

{pstd}
无论指令如何指定，
{it:twoway_options}
可以在
{it:scatter_options}、{it:line_options} 等选项中指定，并且它们将被视为与
{cmd:graph} {cmd:twoway} 命令的 {it:twoway_options} 中指定的选项相同。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 二维图形（散点、线等）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway} 是一系列图形，所有图形均适用于数值 {it:y} 和
{it:x} 比例。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowayRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下几个部分：

	{help graph twoway##remarks1:定义}
	{help graph twoway##remarks2:语法}
	{help graph twoway##remarks3:多个 if 和 in 限制}
	{help graph twoway##remarks4:twoway 和绘图选项}


{marker remarks1}{...}
{title:定义}

{pstd}
二维图形展示了数值数据之间的关系。
假设我们有1900年至1940年美国的预期寿命数据：

	{cmd}. sysuse uslifeexp2

	. list in 1/8
	{txt}
	     {c TLC}{hline 6}{c -}{hline 6}{c TRC}
	     {c |} {res}年     le {txt}{c |}
	     {c LT}{hline 6}{c -}{hline 6}{c RT}
	  1. {c |} {res}1900   47.3 {txt}{c |}
	  2. {c |} {res}1901   49.1 {txt}{c |}
	  3. {c |} {res}1902   51.5 {txt}{c |}
	  4. {c |} {res}1903   50.5 {txt}{c |}
	  5. {c |} {res}1904   47.6 {txt}{c |}
	     {c LT}{hline 6}{c -}{hline 6}{c RT}
	  6. {c |} {res}1905   48.7 {txt}{c |}
	  7. {c |} {res}1906   48.7 {txt}{c |}
	  8. {c |} {res}1907   47.6 {txt}{c |}
	     {c BLC}{hline 6}{c -}{hline 6}{c BRC}{txt}


{pstd}
我们可以将这些数据绘制为二维散点图，

{phang2}{cmd:. twoway scatter le year}{p_end}
	  {it:({stata "gr_example uslifeexp2: twoway scatter le year":点击运行})}
{* graph tw1}{...}

{pstd}
或者我们可以将这些数据绘制为二维折线图，

{phang2}{cmd:. twoway line le year}{p_end}
	  {it:({stata "gr_example uslifeexp2: twoway line le year":点击运行})}
{* graph tw2}{...}

{pstd}
或者我们可以将这些数据绘制为二维连接图，同时标记出
点并用直线连接它们，

{phang2}{cmd:. twoway connected le year}{p_end}
	  {it:({stata "gr_example uslifeexp2: twoway connected  le year":点击运行})}
{* graph tw3}{...}

{pstd}
或者我们可以绘制这些数据作为散点图，并在其上放置
{cmd:le} 对 {cmd:year} 的线性回归预测，

{phang2}{cmd:. twoway (scatter le year) (lfit le year)}{p_end}
	  {it:({stata "gr_example uslifeexp2: twoway (scatter le year) (lfit le year)":点击运行})}
{* graph tw4}{...}

{pstd}
或者我们可以用多种其他方式绘制这些数据。

{pstd}
这些都是二维图形的例子。
区别于其他图形的是，二维图形适用于数值 {it:y} 和
{it:x} 轴。

{pstd}
我们上面产生的每个图形称为 {it:graph}。图中显示的内容称为 {it:plots}。在第一个图中，绘图类型是散点；在第二个图中，绘图类型是线；在第三个图中，绘图类型是连接；在第四个图中，有两幅图像：一幅散点与线性拟合的线图结合。

{pstd}
{cmd:twoway} 提供多种不同的绘图类型。有些，比如 {cmd:scatter} 和 {cmd:line}，只是将
数据以不同方式呈现。还有一些，比如 {cmd:lfit}，则转换数据并进行渲染。再还有一些，比如 {cmd:function}，实际上生成数据进行渲染。这最后一类图形便于叠加 {it:y}={it:x} 线或 {it:y=f(x)} 函数到您的图形上。

{pstd}
顺便说一下，如果您在想，上面的数据没有错误。1918年发生了一场被称为1918年流感大流行的流感疫情，在美国，这是有史以来最严重的疫情，造成的死亡人数超过20世纪所有作战死亡的总和。


{marker remarks2}{...}
{title:语法}

{pstd}
如果我们想绘制 y1 对 x 和 y2 对 x，正式的输入方式为

{phang2}{cmd:. graph twoway (scatter y1 x) (scatter y2 x)}{p_end}

{pstd}
如果我们想以实心圆绘制 y1 对 x，并以空心圆绘制 y2 对 x，正式输入为

{phang2}{cmd:. graph twoway (scatter y1 x, ms(O)) (scatter y2 x, ms(Oh))}{p_end}

{pstd}
如果我们想以实心圆绘制 y1 对 x 并以线图绘制 y2 对 x，正式输入为

{phang2}{cmd:. graph twoway (scatter y1 x, ms(O)) (line y2 x, sort)}{p_end}

{pstd}
{cmd:sort} 选项包含在内是基于假定数据尚未按 x 排序的前提下。

{pstd}
我们已经展示了每个请求的正式输入方式，但很少有人会如此输入。首先，大多数用户省略 {cmd:graph}：

{phang2}{cmd:. twoway (scatter y1 x) (scatter y2 x)}{p_end}
{phang2}{cmd:. twoway (scatter y1 x, ms(O)) (scatter y2 x, ms(Oh))}{p_end}
{phang2}{cmd:. twoway (scatter y1 x, ms(O)) (line y2 x, sort)}{p_end}

{pstd}
其次，大多数人使用 {cmd:||}-分隔符符号而不是
{cmd:()}-绑定符号：

{phang2}{cmd:. twoway scatter y1 x || scatter y2 x}{p_end}
{phang2}{cmd:. twoway scatter y1 x, ms(O) || scatter y2 x, ms(Oh)}{p_end}
{phang2}{cmd:. twoway scatter y1 x, ms(O) || line y2 x, sort}{p_end}

{pstd}
第三，现今大多数人省略 {cmd:twoway}：

{phang2}{cmd:. scatter y1 x || scatter y2 x}{p_end}
{phang2}{cmd:. scatter y1 x, ms(O) || scatter y2 x, ms(Oh)}{p_end}
{phang2}{cmd:. scatter y1 x, ms(O) || line y2 x, sort}{p_end}

{pstd}
最后，大多数人很快意识到 {cmd:scatter} 允许我们将多个 {it:y} 变量绘制到同一 {it:x} 变量上：

{phang2}{cmd:. scatter y1 y2 x}{p_end}
{phang2}{cmd:. scatter y1 y2 x, ms(O Oh)}{p_end}
{phang2}{cmd:. scatter y1 x, ms(O) || line y2 x, sort}{p_end}

{pstd}
第三个例子并未改变：在那个例子中，我们结合了
散点图和线图。实际上，在这个特定情况下，我们也可以合并它：

{phang2}{cmd:. scatter y1 y2 x, ms(O i) connect(. l)}{p_end}

{pstd}
能将 {cmd:scatter} 和 {cmd:line} 结合只是我们选择的例子的巧合。了解用于输入请求的任何方式都是有效的，重要的是有时冗长的语法是实现我们想要的唯一方式。如果我们想绘制 y1 对 x1 和 y2 对 x2，输入的唯一方法是

{phang2}{cmd:. scatter y1 x1 || scatter y2 x2}{p_end}

{pstd}
或者输入上述冗长语法中的一种等效写法。
我们必须这样做，因为 {cmd:scatter}
（参见 {manhelp scatter G-2:graph twoway scatter}）
绘制对一个 {it:x} 变量的散点图。因此，如果我们想要两个不同的 {it:x} 变量，必须有两个不同的散点图。

{pstd}
无论如何，我们将经常提及 {cmd:graph} {cmd:twoway} 命令，即使在给定命令时，我们很少会输入 {cmd:graph}，而且大多数情况下我们也不会输入 {cmd:twoway}。


{marker remarks3}{...}
{title:多个 if 和 in 限制}

{pstd}
每个 {it:plot} 可以有自己的 {cmd:if} {it:exp} 和 {cmd:in} {it:range}
限制：

{p 8 17 2}{cmd:. twoway (scatter mpg weight if foreign, msymbol(O))}{break}
		 {cmd:(scatter mpg weight if !foreign, msymbol(Oh))}

{pstd}
在一个 {cmd:graph} {cmd:twoway} 命令中，多个 {it:plots} 绘制一个
包含多个内容的图形。上述命令将产生把 {cmd:mpg} 对 {cmd:weight} 的散点图
用于进口车（实心圆），以及用于国产车的 {cmd:mpg} 对 {cmd:weight}的散点图
（空心圆）。

{pstd}
此外，{cmd:graph} {cmd:twoway} 命令本身可以有
{cmd:if} {it:exp} 和 {cmd:in} {it:range} 限制：

{p 8 17 2}{cmd:. twoway (scatter mpg weight if foreign, msymbol(O))}{break}
		 {cmd:(scatter mpg weight if !foreign, msymbol(Oh)) if mpg>20}

{pstd}
{cmd:if} {cmd:mpg>20} 限制将适用于两个散点图。

{pstd}
我们选择展示这两个带有 {cmd:()}-绑定符号的例子，是因为这样可以清晰地界定每个 {cmd:if} {it:exp} 的范围。
在 {cmd:||}-分隔符符号中，命令将变为

{p 8 17 2}{cmd:. twoway scatter mpg weight if foreign, msymbol(O) ||}{break}
		 {cmd:scatter mpg weight if !foreign, msymbol(Oh)}{p_end}

{pstd}和{p_end}

{p 8 17 2}{cmd:. twoway scatter mpg weight if foreign, msymbol(O) ||}{break}
		 {cmd:scatter mpg weight if !foreign, msymbol(Oh) || if mpg>20}

{pstd}
或者，

{p 8 18 2}{cmd:. scatter mpg weight if foreign, msymbol(O) ||}{break}
		 {cmd:scatter mpg weight if !foreign, msymbol(Oh)}{p_end}

{pstd}和{p_end}

{p 8 18 2}{cmd:. scatter mpg weight if foreign, msymbol(O) ||}{break}
		 {cmd:scatter mpg weight if !foreign, msymbol(Oh) || if mpg>20}

{pstd}
当然，我们也可以仅指定 {cmd:graph} {cmd:twoway} 限制：

{phang2}{cmd:. twoway (scatter mpg weight) (lfit mpg weight) if !foreign}

{phang2}{cmd:. scatter mpg weight || lfit mpg weight || if !foreign}


{marker remarks4}{...}
{title:twoway 和绘图选项}

{pstd}
{cmd:graph} {cmd:twoway} 允许选项，各个 {it:plots} 也允许选项。例如，{cmd:graph} {cmd:twoway} 允许 {cmd:saving()} 选项，而 {manhelp scatter G-2:graph twoway scatter} 允许 {cmd:msymbol()} 选项，用于指定要使用的标记符号。
尽管如此，我们并不需要追踪哪个选项归属于哪个。如果我们输入

{phang2}{cmd:. scatter mpg weight, saving(mygraph) msymbol(Oh)}

{pstd}
结果与我们更正式所输入的内容相同：

{phang2}{cmd:. twoway (scatter mpg weight, msymbol(Oh)), saving(mygraph)}

{pstd}
同样，我们可以输入

{phang2}{cmd:. scatter mpg weight, msymbol(Oh) || lfit mpg weight, saving(mygraph)}{p_end}
{pstd}或{p_end}
{phang2}{cmd:. scatter mpg weight, msymbol(Oh) saving(mygraph) || lfit mpg weight}

{pstd}
无论哪种方式，结果将与我们输入的内容相同：

{p 8 17 2}{cmd:. twoway (scatter mpg weight, msymbol(Oh))}{break}
		 {cmd:(lfit mpg weight), saving(mygraph)}

{pstd}
我们可以将 {cmd:graph} {cmd:twoway} 选项“过于深入”地指定，但不能反之。以下输入将导致错误：

{phang2}{cmd:. scatter mpg weight || lfit mpg weight ||, msymbol(Oh) saving(mygraph)}

{pstd}
这是错误的，因为我们在只能指定 {cmd:graph} {cmd:twoway} 选项的地方指定了 {cmd:scatter} 选项，而根据我们输入的内容，{cmd:graph} {cmd:twoway} 无法判断 {cmd:msymbol()} 选项是指哪一个 {it:plot}。即使在有足够的信息的情况下（比如 {cmd:lfit} 不允许 {cmd:msymbol()} 选项），这仍然会导致错误。 {cmd:graph} {cmd:twoway} 可以获取其选项，但无法从其选项中提取信息并分配回各个 {it:plots}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_twoway.sthlp>}